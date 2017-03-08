--Types
CREATE TYPE yacare_admission.t_aspirant AS 
(	
  c_first_name character varying,
  c_other_names character varying,
  c_surnames character varying,
  c_person_gender_id character varying,
  c_dni_number character varying,
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
  year_calendar integer);


CREATE TYPE yacare_admission.t_tutor1 AS 
(	
  t1_family_relationship_type_id character varying,
  t1_first_name character varying,
  t1_other_names character varying,
  t1_surnames character varying,
  t1_person_gender_id character varying,
  t1_dni_number character varying,
  t1_cuil_number character varying,
  t1_birth_date date,
  t1_nationality_country_id character varying,
  t1_address_country_id character varying,
  t1_address_province_id character varying,
  t1_address_locality character varying,
  t1_address_zip_code character varying,
  t1_address_neightbourhood character varying,
  t1_address_street character varying,
  t1_address_street_number character varying,
  t1_address_floor character varying,
  t1_address_room character varying,
  t1_address_building character varying,
  t1_address_comment character varying,
  t1_email character varying,
  t1_phone1_country_id character varying,
  t1_phone1_local_calling_code character varying,
  t1_phone1_number integer,
  t1_phone2_country_id character varying,
  t1_phone2_local_calling_code character varying,
  t1_phone2_number integer,
  t1_profession character varying
 );


CREATE TYPE yacare_admission.t_tutor2 AS 
(	
  t2_family_relationship_type_id character varying,
  t2_first_name character varying,
  t2_other_names character varying,
  t2_surnames character varying,
  t2_person_gender_id character varying,
  t2_dni_number character varying,
  t2_cuil_number character varying,
  t2_birth_date date,
  t2_nationality_country_id character varying,
  t2_address_country_id character varying,
  t2_address_province_id character varying,
  t2_address_locality character varying,
  t2_address_zip_code character varying,
  t2_address_neightbourhood character varying,
  t2_address_street character varying,
  t2_address_street_number character varying,
  t2_address_floor character varying,
  t2_address_room character varying,
  t2_address_building character varying,
  t2_address_comment character varying,
  t2_email character varying,
  t2_phone1_country_id character varying,
  t2_phone1_local_calling_code character varying,
  t2_phone1_number integer,
  t2_phone2_country_id character varying,
  t2_phone2_local_calling_code character varying,
  t2_phone2_number integer,
  t2_profession character varying
 );


---INSERT ADMISSION_FORM

CREATE OR REPLACE FUNCTION yacare_admission.insert_admission(p_aspirant yacare_admssion.t_aspirant, p_tutor1 yacare_admission.t_tutor1, p_tutor2 yacare_admission.t_tutor2)

  RETURNS boolean AS
$BODY$
DECLARE

aspitant yacare_admission.t_aspirant;
tutor1 yacare_admission.t_tutor1;
tutor2 yacare_admission.t_tutor2;

vId varchar;

BEGIN
	aspirant:=t_aspirant;
	tutor1:=t_tutor1;
	tutor2:=t_tutor2;

	
	if(aspirant<>null and aspirant.c_dni_number<>null) then
		

		--Id admission
		SELECT uuid_generate_v1() into vId;
	   
		insert into yacare_admission.admission_form
		(id, date_form, c_first_name, c_other_names, c_surnames, c_person_gender_id, 
		    c_dni_number, c_cuil_number, c_person_blood_factor_id, c_person_blood_group_id, 
		    c_birth_date, c_birth_country_id, c_birth_province_id, c_birth_locality, 
		    c_nationality_country_id, c_address_country_id, c_address_province_id, 
		    c_address_locality, c_address_zip_code, c_address_neightbourhood, 
		    c_address_street, c_address_street_number, c_address_floor, c_address_room, 
		    c_address_building, c_address_comment, s_division, s_others_comment,
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
		    t2_phone2_number, t2_profession, school_shift_id, s_first_name, 
		    s_other_names, s_surnames, s_dni_number, shift_1, 
		    admission_serial, year_calendar)
		values(v_id, );

		

	end if;




END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

