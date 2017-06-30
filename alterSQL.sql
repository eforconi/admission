----------------------ENEAS ACA PONE TUS SCRIPTS-------------------------------

/*----------------------------------------------------------------------------------*/

CREATE TABLE yacare_admission.admission_period
(
  id character varying NOT NULL DEFAULT uuid_generate_v4(),
  erased boolean NOT NULL DEFAULT false,
  code character varying NOT NULL,
  name character varying NOT NULL,
  description character varying,
  from_date time without time zone NOT NULL,
  to_date time without time zone NOT NULL,
  year_calendar_id character varying NOT NULL,
  CONSTRAINT admission_period_pkey PRIMARY KEY (id),
  CONSTRAINT admission_period_year_calendar_id_fkey FOREIGN KEY (year_calendar_id)
      REFERENCES yacare_admission.year_calendar (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT admission_period_code_key UNIQUE (code),
  CONSTRAINT admission_period_name_key UNIQUE (name),
  CONSTRAINT ck_admission_period_code CHECK (code::text ~ '^[a-zA-Z0-9]*$'::text)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE yacare_admission.admission_period
  OWNER TO us_yacare_dev;



/*----------------------------------------------------------------------------------*/


CREATE TABLE yacare_admission.classroom_minicourse
(
  id character varying NOT NULL DEFAULT uuid_generate_v4(),
  erased boolean NOT NULL DEFAULT false,
  code character varying NOT NULL,
  name character varying NOT NULL,
  description character varying,
  capacity integer NOT NULL,
  admission_period_id character varying NOT NULL,
  CONSTRAINT classroom_minicourse_pkey PRIMARY KEY (id),
  CONSTRAINT classroom_minicourse_admission_period_id_fkey FOREIGN KEY (admission_period_id)
      REFERENCES yacare_admission.admission_period (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT classroom_minicourse_code_key UNIQUE (code, admission_period_id),
  CONSTRAINT classroom_minicourse_name_key UNIQUE (name, admission_period_id),
  CONSTRAINT ck_classroom_minicourse_code CHECK (code::text ~ '^[a-zA-Z0-9]*$'::text)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE yacare_admission.classroom_minicourse
  OWNER TO us_yacare_dev;



/*----------------------------------------------------------------------------------*/



CREATE TABLE yacare_admission.classroom_evaluation
(
  id character varying NOT NULL DEFAULT uuid_generate_v4(),
  erased boolean NOT NULL DEFAULT false,
  code character varying NOT NULL,
  name character varying NOT NULL,
  description character varying,
  capacity integer NOT NULL,
  admission_period_id character varying NOT NULL,
  classroom_order integer NOT NULL,
  CONSTRAINT classroom_evaluation_pkey PRIMARY KEY (id),
  CONSTRAINT classroom_evaluation_admission_period_id_fkey FOREIGN KEY (admission_period_id)
      REFERENCES yacare_admission.admission_period (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT classroom_evaluation_code_key UNIQUE (code, admission_period_id),
  CONSTRAINT classroom_evaluation_name_key UNIQUE (name, admission_period_id),
  CONSTRAINT classroom_evaluation_classroom_order_key UNIQUE (classroom_order, admission_period_id),
  CONSTRAINT ck_classroom_evaluation_classroom_order CHECK (classroom_order::integer > 0),
  CONSTRAINT ck_classroom_evaluation_code CHECK (code::text ~ '^[a-zA-Z0-9]*$'::text)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE yacare_admission.classroom_evaluation
  OWNER TO us_yacare_dev;



/*----------------------------------------------------------------------------------*/


ALTER TABLE yacare_admission.admission_form
  ADD COLUMN admission_period_id character varying;
ALTER TABLE yacare_admission.admission_form
  ADD COLUMN classroom_minicourse_id character varying;
ALTER TABLE yacare_admission.admission_form
  ADD COLUMN classroom_evaluation_id character varying;
ALTER TABLE yacare_admission.admission_form
  ADD CONSTRAINT fk_admission_form_admission_period_id FOREIGN KEY (admission_period_id) REFERENCES yacare_admission.admission_period (id) ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE yacare_admission.admission_form
  ADD CONSTRAINT fk_admission_form_classroom_minicourse_id FOREIGN KEY (classroom_minicourse_id) REFERENCES yacare_admission.classroom_minicourse (id) ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE yacare_admission.admission_form
  ADD CONSTRAINT fk_admission_form_classroom_evaluation_id FOREIGN KEY (classroom_evaluation_id) REFERENCES yacare_admission.classroom_evaluation (id) ON UPDATE NO ACTION ON DELETE NO ACTION;


/*----------------------------------------------------------------------------------*/
