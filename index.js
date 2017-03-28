var express = require('express');
var app = express();
var config = require('/run/secrets/service');
var pg = require('pg');
//var session = require('express-session');
var parser = require('body-parser');
//var boolParser = require('express-query-boolean');
var request = require('request');
//var RedisStore = require('connect-redis');
var fs = require('fs');
var path = require('path');
var jasper = require('node-jasper')(config.jasper);

if(process.env.NODE_ENV == 'ci-testing') {
  url += '-ci-testing';
}

const pool = new pg.Pool(config.pool);

app.get('/test', function(req, res, next) {
  res.send('Ok');
});

app.use(parser.json({limit: config.maxSize||'50mb'}));
app.use(parser.urlencoded({extended: true, limit: config.maxSize||'50mb'}));

app.use(function(req, res, next) {
  console.log(req.method+' '+req.originalUrl);
  next();
});

var api = express.Router();

app.use('/api', api);

api.post('/admission', function(req, res, next) {
  pool.connect(function(err, client, done) {
    if(err) return console.log('No se pudo obtener cliente pg '+err);
    var typeSql = `
      select  t.typname,
              t.typtype,
              attname,
              a.typname,
              a.typtype,
              attnum
      from pg_type t
      join pg_class on (reltype = t.oid)
      join pg_attribute on (attrelid = pg_class.oid)
      join pg_type a on (atttypid = a.oid)
      where t.typname = $1
      order by attnum;`;
    Promise.all([
      new Promise(function(resolve, reject) {
        client.query(typeSql, ['t_aspirant'], function(err, result) {
          if(err) return reject(err);
          resolve(result.rows);
        });
      }),
      new Promise(function(resolve, reject) {
        client.query(typeSql, ['t_tutor'], function(err, result) {
          if(err) return reject(err);
          resolve(result.rows);
        });
      })
    ])
    .then(function(types) {
      var data = [];
      var aph = [];
      types[0].forEach(function(att) {
        data.push(req.body.aspirant[att.attname]||null);
        aph.push('$'+(data.length));
      });
      var t1ph = [];
      types[1].forEach(function(att) {
        data.push(req.body.tutor1[att.attname]||null);
        t1ph.push('$'+(data.length));
      });
      var t2ph = [];
      types[1].forEach(function(att) {
        data.push(req.body.tutor2[att.attname]||null);
        t2ph.push('$'+(data.length));
      });
      return new Promise(function(resolve, reject) {
        var sql = "select yacare_admission.insert_admission(ROW("+aph.join(',')+"), ROW("+t1ph.join(',')+"), ROW("+t2ph.join(',')+")) as id";
        client.query(sql, data, function(error, result) {
          done(error);
          if(error) return reject(error);
          resolve(result.rows[0]);
        });
      });
    })
    .then(function(rows) {
      res.json(rows);
    })
    .catch(function(err) {
      console.log(err);
      res.status(500).send('Ha ocurrido un error');
    });
  });
});

api.get('/country', function(req, res, next) {
  var phs = [];
  var data = [];
  if(req.query) {
    for(var i in req.query) {
      data.push(req.query[i]);
      if(['name_iso', 'citizenship'].indexOf(i)!== -1) phs.push(i+" ~* ('^'||$"+data.length+")");
      else phs.push(i+" = $"+data.length);
    }
  }
  var sql = "select * from yacare_admission.country where not erased"+(phs.length?' and '+phs.join(' and '):'')+" order by name_iso";

  pool.connect(function(err, client, done) {
    if(err) return console.log('No se pudo obtener cliente pg '+err);
    client.query(sql, data, function(err, result) {
      done(err);
      if(err) {
        console.log(err);
        return res.status(500).send('Ha ocurrido un error');
      }
      res.json(result.rows);
    });
  });
});

api.get('/province', function(req, res, next) {
  var phs = [];
  var data = [];
  if(req.query) {
    for(var i in req.query) {
      data.push(req.query[i]);
      if(i=='name') phs.push(i+" ~* ('^'||$"+data.length+")");
      else phs.push(i+" = $"+data.length);
    }
  }
  var sql = "select * from yacare_admission.province where not erased"+(phs.length?' and '+phs.join(' and '):'')+" order by name";
  console.log(sql);

  pool.connect(function(err, client, done) {
    if(err) return console.log('No se pudo obtener cliente pg '+err);
    client.query(sql, data, function(err, result) {
      done(err);
      if(err) {
        console.log(err);
        return res.status(500).send('Ha ocurrido un error');
      }
      res.json(result.rows);
    });
  });
});

api.get('/classroom', function(req, res, next) {
  var phs = [];
  var data = [];
  if(req.query) {
    for(var i in req.query) {
      data.push(req.query[i]);
      phs.push(i+'=$'+data.length);
    }
  }
  var sql = "select * from yacare_admission.classroom_exam where not erased"+(phs.length?' and '+phs.join(' and '):'')+" order by order_classroom";
  pool.connect(function(err, client, done) {
    if(err) return console.log('No se pudo obtener cliente pg '+err);
    client.query(sql, data, function(err, result) {
      done(err);
      if(err) res.status(500).send('Ha ocurrido un error');
      res.json(result.rows);
    });
  });
});

api.get('/relationship', function(req, res, next) {
  var phs = [];
  var data = [];
  if(req.query) {
    for(var i in req.query) {
      data.push(req.query[i]);
      phs.push(i+'=$'+data.length);
    }
  }
  var sql = "select * from yacare_admission.family_relationship_type where not erased"+(phs.length?' and '+phs.join(' and '):'')+" order by name";
  pool.connect(function(err, client, done) {
    if(err) return console.log('No se pudo obtener cliente pg '+err);
    client.query(sql, data, function(err, result) {
      done(err);
      if(err) res.status(500).send('Ha ocurrido un error');
      res.json(result.rows);
    });
  });
});

api.get('/blood_factor', function(req, res, next) {
  var phs = [];
  var data = [];
  if(req.query) {
    for(var i in req.query) {
      data.push(req.query[i]);
      phs.push(i+'=$'+data.length);
    }
  }
  var sql = "select * from yacare_admission.person_blood_factor where not erased"+(phs.length?' and '+phs.join(' and '):'')+" order by name";
  pool.connect(function(err, client, done) {
    if(err) return console.log('No se pudo obtener cliente pg '+err);
    client.query(sql, data, function(err, result) {
      done(err);
      if(err) res.status(500).send('Ha ocurrido un error');
      res.json(result.rows);
    });
  });
});

api.get('/blood_group', function(req, res, next) {
  var phs = [];
  var data = [];
  if(req.query) {
    for(var i in req.query) {
      data.push(req.query[i]);
      phs.push(i+'=$'+data.length);
    }
  }
  var sql = "select * from yacare_admission.person_blood_group where not erased"+(phs.length?' and '+phs.join(' and '):'')+" order by name";
  pool.connect(function(err, client, done) {
    if(err) return console.log('No se pudo obtener cliente pg '+err);
    client.query(sql, data, function(err, result) {
      done(err);
      if(err) res.status(500).send('Ha ocurrido un error');
      res.json(result.rows);
    });
  });
});

api.get('/gender', function(req, res, next) {
  var phs = [];
  var data = [];
  if(req.query) {
    for(var i in req.query) {
      data.push(req.query[i]);
      phs.push(i+'=$'+data.length);
    }
  }
  var sql = "select * from yacare_admission.person_gender where not erased"+(phs.length?' and '+phs.join(' and '):'')+" order by name";
  pool.connect(function(err, client, done) {
    if(err) return console.log('No se pudo obtener cliente pg '+err);
    client.query(sql, data, function(err, result) {
      done(err);
      if(err) res.status(500).send('Ha ocurrido un error');
      res.json(result.rows);
    });
  });
});

api.get('/shift', function(req, res, next) {
  var phs = [];
  var data = [];
  if(req.query) {
    for(var i in req.query) {
      data.push(req.query[i]);
      phs.push(i+'=$'+data.length);
    }
  }
  var sql = "select * from yacare_admission.school_shift where not erased"+(phs.length?' and '+phs.join(' and '):'')+" order by name";
  pool.connect(function(err, client, done) {
    if(err) return console.log('No se pudo obtener cliente pg '+err);
    client.query(sql, data, function(err, result) {
      done(err);
      if(err) res.status(500).send('Ha ocurrido un error');
      res.json(result.rows);
    });
  });
});

api.get('/:id/pdf', function(req, res, next) {
  var pdf = jasper.pdf({
    report: {
      jasper: path.join(__dirname,'jasper','rptAdmissionFile.jasper')
    },
    data: req.params
  });
  console.log(req.params);
  res.set('Content-Type', 'application/pdf');
  res.send(pdf);
});

app.listen(80);
