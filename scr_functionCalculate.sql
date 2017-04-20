-- Function: yacare_admission.calculate_confirm()

-- DROP FUNCTION yacare_admission.calculate_confirm();

CREATE OR REPLACE FUNCTION yacare_admission.calculate_confirm()
  RETURNS integer AS
$BODY$
DECLARE


cant_conf integer;
v_year_calendar integer;

BEGIN


	cant_conf:=0;
	--
	RAISE NOTICE 'INIT CALCULATE';

	select
	yacare_admission.getyearcalendaractive()
	into v_year_calendar;

	--CANTIDAD DE CONFIRMADOS
	select count(*)
	into cant_conf
	from yacare_admission.admission_form
	where admission_closed=true
	and year_calendar = v_year_calendar;

	
	RAISE NOTICE 'DONE CALCULATE';


	RETURN cant_conf;



END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
--select yacare_admission.calculate_confirm()

-- Function: yacare_admission.calculate_course_1()

-- DROP FUNCTION yacare_admission.calculate_course_1();

CREATE OR REPLACE FUNCTION yacare_admission.calculate_course_1()
  RETURNS integer AS
$BODY$
DECLARE


result_exam integer;
cant_exam integer;
cant_conf integer;
v_year_calendar integer;

BEGIN


	cant_exam:=0;
	cant_conf:=0;
	result_exam:=0;
	--
	RAISE NOTICE 'INIT CALCULATE VACANT';

	select
	yacare_admission.getyearcalendaractive()
	into v_year_calendar;

	--CANTIDAD DE CONFIRMADOS
	select count(*)
	into cant_conf
	from yacare_admission.admission_form
	where admission_closed=true
	and shift_1 = true
	and year_calendar = v_year_calendar;

	

	result_exam := cant_conf;


	RAISE NOTICE 'DONE CALCULATE VACANT';


	RETURN result_exam;



END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

--select yacare_admission.calculate_course_1()

-- Function: yacare_admission.calculate_course_2()

-- DROP FUNCTION yacare_admission.calculate_course_2();

CREATE OR REPLACE FUNCTION yacare_admission.calculate_course_2()
  RETURNS integer AS
$BODY$
DECLARE


result_exam integer;
cant_exam integer;
cant_conf integer;
v_year_calendar integer;

BEGIN


	cant_exam:=0;
	cant_conf:=0;
	result_exam:=0;
	--
	RAISE NOTICE 'INIT CALCULATE VACANT';

	select
	yacare_admission.getyearcalendaractive()
	into v_year_calendar;

	--CANTIDAD DE CONFIRMADOS
	select count(*)
	into cant_conf
	from yacare_admission.admission_form
	where admission_closed=true
	and shift_1 = false
	and year_calendar = v_year_calendar;


	result_exam := cant_conf;


	RAISE NOTICE 'DONE CALCULATE VACANT';


	RETURN result_exam;



END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
--select yacare_admission.calculate_course_2()

-- Function: yacare_admission.calculate_inscription()

-- DROP FUNCTION yacare_admission.calculate_inscription();

CREATE OR REPLACE FUNCTION yacare_admission.calculate_inscription()
  RETURNS integer AS
$BODY$
DECLARE


cant_inscription integer;
v_year_calendar integer;

BEGIN


	cant_inscription:=0;
	--
	RAISE NOTICE 'INIT CALCULATE';

	select
	yacare_admission.getyearcalendaractive()
	into v_year_calendar;

	--CANTIDAD DE INSCRIPCIONES
	select count(a.*)
	into cant_inscription
	from (
	select distinct c_dni_number
	from yacare_admission.admission_form
	where year_calendar = v_year_calendar) a;
	
	
	RAISE NOTICE 'DONE CALCULATE';


	RETURN cant_inscription;



END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

--select yacare_admission.calculate_inscription()

-- Function: yacare_admission.calculate_vacant_exam()

-- DROP FUNCTION yacare_admission.calculate_vacant_exam();

CREATE OR REPLACE FUNCTION yacare_admission.calculate_vacant_exam()
  RETURNS integer AS
$BODY$
DECLARE

result_exam integer;
cant_exam integer;
cant_conf integer;
v_year_calendar integer;

BEGIN


	cant_exam:=0;
	cant_conf:=0;
	result_exam:=0;
	--
	RAISE NOTICE 'INIT CALCULATE VACANT';

	select
	yacare_admission.getyearcalendaractive()
	into v_year_calendar;

	--CANTIDAD DE CONFIRMADOS
	select count(*)
	into cant_conf
	from yacare_admission.admission_form
	where admission_closed=true
	and year_calendar = v_year_calendar;

	--CALCULATE 
	select order_classroom
	into cant_exam
	from yacare_admission.classroom_exam
	where erased = false
	and is_course = false
	order by order_classroom DESC
	limit 1;

	result_exam := cant_exam - cant_conf;


	RAISE NOTICE 'DONE CALCULATE VACANT';


	RETURN result_exam;



END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
-- select yacare_admission.calculate_vacant_exam()şş