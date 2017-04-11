var express = require('express');
var app = express();
var config = require(process.env.CONF||'/run/secrets/service');
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

api.put('/admission/:id', function(req, res, next) {
  var sql = "select yacare_admission.update_admission_closed($1, $2, $3) as confirmed";
  pool.connect(function(err, client, done) {
    if(err) return console.log('No se pudo obtener cliente pg '+err);
    client.query(sql, [req.params.id, req.body.incomplete_docs, req.body.incomplete_docs_desc], function(err, result) {
      done(err);
      if(err) {
        console.log(err);
        return res.status(500).send('Ha ocurrido un error');
      }
      res.json(result.rows[0]);
    });
  });
});

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

api.get('/admission', function(req, res, next) {
  var phs = [];
  var data = [];
  var orderBy = " order by date_form desc";
  var limit = '';
  if(req.query) {
    if(req.query.filter) {
      var filter = JSON.parse(req.query.filter);
      for(var i in filter) {
        if(filter[i]==='') continue;
        data.push(filter[i]);
        switch (i) {
          case 'date_from':
            phs.push("f.date_form::date >= $"+data.length+"::date");
            break;
          case 'date_to':
            phs.push("f.date_form::date <= $"+data.length+"::date");
            break;
          case 'text':
            var ors = ['f.admission_serial', 'f.c_dni_number', 'f.c_cuil_number', 'f.c_surnames', 'f.c_first_name', 'f.c_other_names', 'e.description', 's.description'].map(function(i) {
              return i+"::varchar ~* ('^'||$"+data.length+"::varchar)";
            });
            phs.push(ors.join(' or '));
            break;
        }
      }
    }
    if(req.query.order) {
      var type = ' asc';
      if(req.query.order[0]=='-') {
        type = ' desc';
        req.query.order = req.query.order.substr(1);
      }
      switch(req.query.order) {
        case "classroom_exam":
          req.query.order = 'e.description';
          break;
        case "school_shift":
          req.query.order = 's.description';
          break;
        case "c_full_name":
          req.query.order = "f.c_surnames||', '||f.c_first_name||coalesce(' '||f.c_other_names,'')";
          break;
        case "shift":
          req.query.order = 'c.shift_1';
          break;
        default:
          req.query.order = 'f.'+req.query.order;
      }
      orderBy = " order by "+req.query.order+type;
    }
    if(req.query.limit) {
      limit = ' limit '+req.query.limit+' offset '+(req.query.offset||'0');
    }
  }
  var sql =
  "select   f.id, "+
          " f.admission_serial, "+
          " to_char(f.date_form, 'DD/MM/YYYY HH:MI') as date_form, "+
          " f.c_dni_number, "+
          " f.c_cuil_number, "+
          " upper(f.c_surnames||', '||f.c_first_name||coalesce(' '||f.c_other_names,'')) as c_full_name, "+
          " f.admission_closed, "+
          " e.description as classroom_exam, "+
          " s.description as school_shift, "+
          " f.incomplete_docs, "+
          " f.incomplete_docs_desc, "+
          " case when f.shift_1 = true then '8:00 a 10:20' when f.shift_1 = false then '10:30 a 12:50' else null end as shift, "+
          " upper(f.t1_surnames||', '||f.t1_first_name||coalesce(' '||f.t1_other_names,'')) as t1_full_name, "+
          " f.t1_dni_number, "+
          " ft1.name as t1_family_relationship_type, "+
          " upper(f.t2_surnames||', '||f.t2_first_name||coalesce(' '||f.t2_other_names,'')) as t2_full_name, "+
          " f.t2_dni_number, "+
          " ft2.name as t2_family_relationship_type, "+
          " date_part('year', age(current_date, f.c_birth_date)) as c_age "+
  "from     yacare_admission.admission_form f "+
  "left join "+
  "         yacare_admission.classroom_exam e "+
  "on       e.id = f.classroom_exam_id "+
  "         and not e.erased "+
  "left join "+
  "         yacare_admission.school_shift s "+
  "on       s.id = f.school_shift_id "+
  "         and not s.erased "+
  "inner join "+
  "         yacare_admission.family_relationship_type ft1 "+
  "on       ft1.id = f.t1_family_relationship_type_id "+
  "         and not ft1.erased "+
  "left join "+
  "         yacare_admission.family_relationship_type ft2 "+
  "on       ft2.id = f.t2_family_relationship_type_id "+
  "         and not ft1.erased "+
  (phs.length?' where '+phs.join(' and '):'')+orderBy+limit;

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

api.get('/:id/confirm', function(req, res, next) {
  var pdf = jasper.pdf({
    report: {
      jasper: path.join(__dirname,'jasper','rptAdmissionConfirm.jasper')
    },
    data: req.params
  });
  console.log(req.params);
  res.set('Content-Type', 'application/pdf');
  res.send(pdf);
});

api.get('/user', function(req, res, next) {
  if(!req.query.user) return res.status(400).send("Bad Request");
  var sql = "select * from yacare_admission.user where name = $1 and not erased";
  pool.connect(function(err, client, done) {
    if(err) return console.log('No se pudo obtener cliente pg '+err);
    client.query(sql, [req.query.user], function(err, result) {
      done(err);
      if(err) {
        console.log(err);
        return res.status(500).send('Ha ocurrido un error');
      }
      if(!result.rows||!result.rows.length) return res.status(403).send("Forbidden Access");
      res.json(result.rows[0]);
    });
  });
});

app.listen(config.port||80);
