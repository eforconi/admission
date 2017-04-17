CREATE OR REPLACE FUNCTION yacare_admission.insert_user(p_user  character varying)
  RETURNS boolean AS
$BODY$
DECLARE

result boolean;
v_name character varying;


BEGIN
	result:=false;

	--
	RAISE NOTICE 'INIT INSERT USER';

	SELECT NAME
	into v_name
	FROM YACARE_ADMISSION.USER
	WHERE trim(upper(NAME)) = trim(upper(p_user));
	

	if(v_name is null or v_name = '') then
		INSERT INTO yacare_admission."user"(
		    id, erased, name)
		VALUES ((SELECT uuid_generate_v1()), false, p_user);

		result:=TRUE;
	end if;
	RAISE NOTICE 'DONE INSERT USER';




	RETURN result;



END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;


select yacare_admission.insert_user('34243419');
select yacare_admission.insert_user('27231058457');
select yacare_admission.insert_user('27906');
select yacare_admission.insert_user('49118');
