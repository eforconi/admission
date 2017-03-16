--Types
DROP TYPE IF EXISTS yacare_admission.t_aspirant CASCADE;
CREATE TYPE yacare_admission.t_aspirant AS 
(	
  c_first_name character varying,
  c_other_names character varying,
  c_surnames character varying,
  c_person_gender_id character varying,
  c_dni_number integer,
  c_cuil_number character varying,
  c_person_blood_factor_id character varying,
  c_person_blood_group_id character varying,
  c_birth_date date,
  c_birth_country_id character varying,
  c_birth_province_id character varying,
  c_birth_locality character varying,
  c_nationality_country_id character varying,
  c_address_country_id character varying,
  c_address_province_id character varying,
  c_address_locality character varying,
  c_address_zip_code character varying,
  c_address_neightbourhood character varying,
  c_address_street character varying,
  c_address_street_number character varying,
  c_address_floor character varying,
  c_address_room character varying,
  c_address_building character varying,
  c_address_comment character varying,
  school_shift_id character varying,
  s_first_name character varying,
  s_other_names character varying,
  s_surnames character varying,
  s_dni_number character varying,
  shift_1 boolean,
  s_division character varying,
  s_others_comment character varying,
  incomplete_docs boolean,
  incomplete_docs_desc character varying,
  year_calendar integer);


DROP TYPE IF EXISTS yacare_admission.t_tutor CASCADE;
CREATE TYPE yacare_admission.t_tutor AS 
(	
  t_family_relationship_type_id character varying,
  t_first_name character varying,
  t_other_names character varying,
  t_surnames character varying,
  t_person_gender_id character varying,
  t_dni_number integer,
  t_cuil_number character varying,
  t_birth_date date,
  t_nationality_country_id character varying,
  t_address_country_id character varying,
  t_address_province_id character varying,
  t_address_locality character varying,
  t_address_zip_code character varying,
  t_address_neightbourhood character varying,
  t_address_street character varying,
  t_address_street_number character varying,
  t_address_floor character varying,
  t_address_room character varying,
  t_address_building character varying,
  t_address_comment character varying,
  t_email character varying,
  t_phone1_country_id character varying,
  t_phone1_local_calling_code character varying,
  t_phone1_number integer,
  t_phone2_country_id character varying,
  t_phone2_local_calling_code character varying,
  t_phone2_number integer,
  t_profession character varying
 );


---INSERT ADMISSION_FORM

CREATE OR REPLACE FUNCTION yacare_admission.insert_admission(p_aspirant yacare_admission.t_aspirant, p_tutor1 yacare_admission.t_tutor, p_tutor2 yacare_admission.t_tutor)

  RETURNS character varying AS
$BODY$
DECLARE

result character varying;

vClosed integer;

aspitant yacare_admission.t_aspirant;
tutor1 yacare_admission.t_tutor;
tutor2 yacare_admission.t_tutor;

vId varchar;

BEGIN
	result:=null;

	aspitant:=t_aspirant;
	tutor1:=t_tutor1;
	tutor2:=t_tutor2;
	vClosed:=0;
	--
	RAISE NOTICE 'INIT INSERT ADMISSION';

	
	if(aspirant is not null and aspirant.c_dni_number is not null) then
		
		SELECT count(*)
		into vClosed
		FROM YACARE_ADMISSION.ADMISSION_FORM
		WHERE c_dni_number = aspirant.c_dni_number 
		and admission_closed=true;


		if(vClosed=0)then

			--Id admission
			SELECT uuid_generate_v1() into vId;
		   
			insert into yacare_admission.admission_form
			(id, date_form, 
			    c_first_name, c_other_names, c_surnames, c_person_gender_id, 
			    c_dni_number, c_cuil_number, c_person_blood_factor_id, c_person_blood_group_id, 
			    c_birth_date, c_birth_country_id, c_birth_province_id, c_birth_locality, 
			    c_nationality_country_id, c_address_country_id, c_address_province_id, 
			    c_address_locality, c_address_zip_code, c_address_neightbourhood, 
			    c_address_street, c_address_street_number, c_address_floor, c_address_room, 
			    c_address_building, c_address_comment,
			    t1_family_relationship_type_id, 
			    t1_first_name, t1_other_names, t1_surnames, t1_person_gender_id, 
			    t1_dni_number, t1_cuil_number, t1_birth_date, t1_nationality_country_id, 
			    t1_address_country_id, t1_address_province_id, t1_address_locality, 
			    t1_address_zip_code, t1_address_neightbourhood, t1_address_street, 
			    t1_address_street_number, t1_address_floor, t1_address_room, 
			    t1_address_building, t1_address_comment, t1_email, t1_phone1_country_id, 
			    t1_phone1_local_calling_code, t1_phone1_number, t1_phone2_country_id, 
			    t1_phone2_local_calling_code, t1_phone2_number, t1_profession, 
			    t2_family_relationship_type_id, t2_first_name, t2_other_names, 
			    t2_surnames, t2_person_gender_id, t2_dni_number, t2_cuil_number, 
			    t2_birth_date, t2_nationality_country_id, t2_address_country_id, 
			    t2_address_province_id, t2_address_locality, t2_address_zip_code, 
			    t2_address_neightbourhood, t2_address_street, t2_address_street_number, 
			    t2_address_floor, t2_address_room, t2_address_building, t2_address_comment, 
			    t2_email, t2_phone1_country_id, t2_phone1_local_calling_code, 
			    t2_phone1_number, t2_phone2_country_id, t2_phone2_local_calling_code, 
			    t2_phone2_number, t2_profession, 
			    school_shift_id, s_first_name, s_other_names, s_surnames,
			    s_dni_number, s_division, s_others_comment, shift_1, 
			    incomplete_docs, incomplete_docs_desc,
			    year_calendar)
			values(vId, (SELECT CURRENT_DATE), 
				aspirant.c_first_name, aspirant.c_other_names, aspirant.c_surnames, aspirant.c_person_gender_id, 
				aspirant.c_dni_number, aspirant.c_cuil_number, aspirant.c_person_blood_factor_id, aspirant.c_person_blood_group_id, 
				aspirant.c_birth_date, aspirant.c_birth_country_id, aspirant.c_birth_province_id, aspirant.c_birth_locality, 
				aspirant.c_nationality_country_id, aspirant.c_address_country_id, aspirant.c_address_province_id, 
				aspirant.c_address_locality, aspirant.c_address_zip_code, aspirant.c_address_neightbourhood, 
				aspirant.c_address_street, aspirant.c_address_street_number, aspirant.c_address_floor, aspirant.c_address_room, 
				aspirant.c_address_building, aspirant.c_address_comment, 
			
			tutor1.t_family_relationship_type_id, 
			    tutor1.t_first_name, tutor1.t_other_names, tutor1.t_surnames, tutor1.t_person_gender_id, 
			    tutor1.t_dni_number, tutor1.t_cuil_number, tutor1.t_birth_date, tutor1.t_nationality_country_id, 
			    tutor1.t_address_country_id, tutor1.t_address_province_id, tutor1.t_address_locality, 
			    tutor1.t_address_zip_code, tutor1.t_address_neightbourhood, tutor1.t_address_street, 
			    tutor1.t_address_street_number, tutor1.t_address_floor, tutor1.t_address_room, 
			    tutor1.t_address_building, tutor1.t_address_comment, tutor1.t_email, tutor1.t_phone1_country_id, 
			    tutor1.t_phone1_local_calling_code, tutor1.t_phone1_number, tutor1.t_phone2_country_id, 
			    tutor1.t_phone2_local_calling_code, tutor1.t_phone2_number, tutor1.t_profession,
			tutor2.t_family_relationship_type_id, 
			    tutor2.t_first_name, tutor2.t_other_names, tutor2.t_surnames, tutor2.t_person_gender_id, 
			    tutor2.t_dni_number, tutor2.t_cuil_number, tutor2.t_birth_date, tutor2.t_nationality_country_id, 
			    tutor2.t_address_country_id, tutor2.t_address_province_id, tutor2.t_address_locality, 
			    tutor2.t_address_zip_code, tutor2.t_address_neightbourhood, tutor2.t_address_street, 
			    tutor2.t_address_street_number, tutor2.t_address_floor, tutor2.t_address_room, 
			    tutor2.t_address_building, tutor2.t_address_comment, tutor2.t_email, tutor2.t_phone1_country_id, 
			    tutor2.t_phone1_local_calling_code, tutor2.t_phone1_number, tutor2.t_phone2_country_id, 
			    tutor2.t_phone2_local_calling_code, tutor2.t_phone2_number, tutor2.t_profession,
			aspirant.school_shift_id, aspirant.s_first_name, aspirant.s_other_names, aspirant.s_surnames,
			aspirant.s_dni_number, aspirant.s_division, aspirant.s_others_comment, aspirant.shift_1,
			aspirant.incomplete_docs,aspirant.incomplete_docs_desc,
			aspirant.year_calendar 
			);

			result:=vId;
			
		end if;
		

	end if;

	RAISE NOTICE 'DONE INSERT ADMISSION';


	

	RETURN result;



END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;






--CALCULATE CLASSROOM EXAM ADMISSION_FORM

CREATE OR REPLACE FUNCTION yacare_admission.calculate_classroom_exam()

  RETURNS character varying AS
$BODY$
DECLARE

vId varchar;
vExamId varchar;

cant_exam integer;

BEGIN


	cant_exam:=0;
	--
	RAISE NOTICE 'INIT CALCULATE ADMISSION';


	--CANTIDAD DE ORDENES VALIDADAS
	select count(*) 
	into cant_exam
	from yacare_admission.admission_form
	where admission_closed=true;
	
	--CALCULATE EXAM_ID
	select id
	into vExamId
	from yacare_admission.classroom_exam
	where erased = false
	and is_course = false
	and order_classroom >= cant_exam
	order by order_classroom
	limit 1;
	

	RAISE NOTICE 'DONE CALCULATE ADMISSION';


	RETURN vExamId;



END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

--select yacare_admission.calculate_classroom_exam();

--CALCULATE CLASSROOM COURSE ADMISSION_FORM

CREATE OR REPLACE FUNCTION yacare_admission.calculate_classroom_course(p_shift boolean)

  RETURNS character varying AS
$BODY$
DECLARE

vId varchar;
vCourseId varchar;

cant_exam integer;

BEGIN


	cant_exam:=0;
	--
	RAISE NOTICE 'INIT CALCULATE ADMISSION';


	--CANTIDAD DE ORDENES VALIDADAS
	select count(*) 
	into cant_exam
	from yacare_admission.admission_form
	where admission_closed=true
	and shift_1 = p_shift;

	--CALCULATE EXAM_ID
	select *
	into vCourseId
	from yacare_admission.classroom_exam
	where erased = false
	and is_course = true
	and order_classroom >= cant_exam
	order by order_classroom
	limit 1;
	

	RAISE NOTICE 'DONE CALCULATE ADMISSION';


	RETURN vCourseId;



END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

--select yacare_admission.calculate_classroom_course(true);

--UPDATE CLOSED ADMISSION_FORM

CREATE OR REPLACE FUNCTION yacare_admission.update_admission_closed(p_admission_form_id character varying, p_incomplete_docs boolean, p_incomplete_docs_desc character varying)

  RETURNS boolean AS
$BODY$
DECLARE

result boolean;

rAdmissionForm record;

vId varchar;
vCourseId varchar;
vExamId varchar;
vShift boolean;

BEGIN
	result:=false;
	vExamId:=null;
	vCourseId:=null;
	
	vId := p_admission_form_id;

	--
	RAISE NOTICE 'INIT UPDATE ADMISSION';

	SELECT *
	INTO rAdmissionForm
	FROM YACARE_ADMISSION.admission_form
	WHERE ID = vId;

	--Calcular aula de examen
	SELECT yacare_admission.calculate_classroom_exam()
	INTO vExamId;

	--Calcular aula de cursado
	SELECT shift_1
	into vShift
	from yacare_admission.admission_form
	where id = vId;

	if(vShift is not null)then
		SELECT yacare_admission.calculate_classroom_course(vShift)
		into vCourseId;
	end if;

	--actualizar admision
	update yacare_admission.admission_form
	set admission_closed=true,
	incomplete_docs = p_incomplete_docs,
	incomplete_docs_desc = p_incomplete_docs_desc,
	classroom_exam_id = vExamId,
	classroom_course_id = vCourseId
	where id = vId;
	
	--borrar solicitudes duplicadas no confirmadas
	delete from yacare_admission.admission_form
	where c_dni_number = rAdmissionForm.c_dni_number
	and admission_closed= false; 
	
	RAISE NOTICE 'DONE UPDATE ADMISSION';


	result:=true;

	RETURN result;



END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

--select yacare_admission.update_admission_closed('3', true, 'NO TRAJO BOLETIN');

--UPDATE ADMISSION_FORM

CREATE OR REPLACE FUNCTION yacare_admission.update_admission_edit(p_admission_form_id character varying, p_aspirant yacare_admission.t_aspirant, p_tutor1 yacare_admission.t_tutor, p_tutor2 yacare_admission.t_tutor)

  RETURNS boolean AS
$BODY$
DECLARE

result boolean;

rAdmissionForm record;

aspitant yacare_admission.t_aspirant;
tutor1 yacare_admission.t_tutor;
tutor2 yacare_admission.t_tutor;

vId varchar;

BEGIN
	result:=false;
	
	
	vId := p_admission_form_id;

	--
	RAISE NOTICE 'INIT UPDATE ADMISSION';

	SELECT *
	INTO rAdmissionForm
	FROM YACARE_ADMISSION.admission_form
	WHERE ID = vId;

	

	--actualizar admision
	update yacare_admission.admission_form
	set  
	    c_first_name=aspirant.c_first_name, c_other_names=aspirant.c_other_names, c_surnames=aspirant.c_surnames, 
	    c_person_gender_id=aspirant.c_person_gender_id, 
	    c_dni_number=aspirant.c_dni_number, c_cuil_number=aspirant.c_cuil_number, 
	    c_person_blood_factor_id=aspirant.c_person_blood_factor_id, c_person_blood_group_id=aspirant.c_person_blood_group_id, 
	    c_birth_date=aspirant.c_birth_date, c_birth_country_id=aspirant.c_birth_country_id, 
	    c_birth_province_id=aspirant.c_birth_province_id, c_birth_locality=aspirant.c_birth_locality, 
	    c_nationality_country_id=aspirant.c_nationality_country_id, c_address_country_id=aspirant.c_address_country_id, 
	    c_address_province_id=aspirant.c_address_province_id, 
	    c_address_locality=aspirant.c_address_locality, c_address_zip_code=aspirant.c_address_zip_code, 
	    c_address_neightbourhood=aspirant.c_address_neightbourhood, 
	    c_address_street=aspirant.c_address_street, c_address_street_number=aspirant.c_address_street_number, 
	    c_address_floor=aspirant.c_address_floor, c_address_room=aspirant.c_address_room, 
	    c_address_building=aspirant.c_address_building, c_address_comment=aspirant.c_address_comment, 
	    s_division=aspirant.s_division, s_others_comment=aspirant.s_others_comment,
	    school_shift_id= aspirant.school_shift_id, s_first_name=aspirant.s_first_name, 
	    s_other_names=aspirant.s_other_names, s_surnames=aspirant.s_surnames, s_dni_number=aspirant.s_dni_number,
	    shift_1 = aspirant.shift_1,
	--------------------------------------------------------------------------------------------	
	    t1_family_relationship_type_id=tutor1.t1_family_relationship_type_id, 
	    t1_first_name=tutor1.t1_first_name, t1_other_names=tutor1.t1_other_names, t1_surnames= tutor1.t1_surnames, 
	    t1_person_gender_id= tutor1.t1_person_gender_id, 
	    t1_dni_number=tutor1.t1_dni_number, t1_cuil_number=tutor1.t1_cuil_number, t1_birth_date=tutor1.t1_birth_date, 
	    t1_nationality_country_id=tutor1.t1_nationality_country_id, 
	    t1_address_country_id=tutor1.t1_address_country_id, t1_address_province_id =  tutor1.t1_address_province_id, 
	    t1_address_locality= tutor1.t1_address_locality, 
	    t1_address_zip_code=tutor1.t1_address_zip_code, t1_address_neightbourhood= tutor1.t1_address_neightbourhood, 
	    t1_address_street=tutor1.t1_address_street, 
	    t1_address_street_number=tutor1.t1_address_street_number, t1_address_floor=tutor1.t1_address_floor, 
	    t1_address_room=tutor1.t1_address_room, 
	    t1_address_building=tutor1.t1_address_building, t1_address_comment=tutor1.t1_address_comment, 
	    t1_email=tutor1.t1_email, t1_phone1_country_id=tutor1.t1_phone1_country_id, 
	    t1_phone1_local_calling_code=tutor1.t1_phone1_local_calling_code, t1_phone1_number=tutor1.t1_phone1_number, 
	    t1_phone2_country_id=tutor1.t1_phone2_country_id, 
	    t1_phone2_local_calling_code=tutor1.t1_phone2_local_calling_code, t1_phone2_number=tutor1.t1_phone2_number, 
	    t1_profession=tutor1.t1_profession, 
	--------------------------------------------------------------------------------------------
	    t2_family_relationship_type_id=tutor2.t1_family_relationship_type_id, 
	    t2_first_name=tutor2.t2_first_name, t2_other_names=tutor2.t2_other_names, t2_surnames=tutor2.t2_surnames,  
	    t2_person_gender_id=tutor2.t2_person_gender_id, 
	    t2_dni_number=tutor2.t2_dni_number, t2_cuil_number=tutor2.t2_cuil_number, 
	    t2_birth_date=tutor2.t2_birth_date, t2_nationality_country_id=tutor2.t2_nationality_country_id, 
	    t2_address_country_id=tutor2.t2_address_country_id, 
	    t2_address_province_id=tutor2.t2_address_province_id, t2_address_locality=tutor2.t2_address_locality, 
	    t2_address_zip_code=tutor2.t2_address_zip_code, 
	    t2_address_neightbourhood=tutor2.t2_address_neightbourhood, t2_address_street=tutor2.t2_address_street, 
	    t2_address_street_number=tutor2.t2_address_street_number,  
	    t2_address_floor=tutor2.t2_address_floor, t2_address_room=tutor2.t2_address_room,
	    t2_address_building=tutor2.t2_address_building, t2_address_comment=tutor2.t2_address_comment,  
	    t2_email=tutor2.t2_email, t2_phone1_country_id=tutor2.t2_phone1_country_id, 
	    t2_phone1_local_calling_code=tutor2.t2_phone1_local_calling_code, 
	    t2_phone1_number=tutor2.t2_phone1_number, t2_phone2_country_id=tutor2.t2_phone2_country_id, 
	    t2_phone2_local_calling_code=tutor2.t2_phone2_local_calling_code, 
	    t2_phone2_number=tutor2.t2_phone2_number, t2_profession=tutor2.t2_profession, 
	--------------------------------------------------------------------------------------------
	    incomplete_docs= aspirant.incomplete_docs,incomplete_docs_desc=aspirant.incomplete_docs_desc
	    
	    
	where id = vId;

	
	RAISE NOTICE 'DONE UPDATE ADMISSION';


	result:=true;

	RETURN result;



END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

--CONSULTAR ADMISSION FORM


