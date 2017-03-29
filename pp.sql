DROP SCHEMA IF EXISTS yacare_admission CASCADE;

CREATE SCHEMA yacare_admission; -- AUTHORIZATION postgres;

-----------------------------------------------------------------------------

DROP TABLE IF EXISTS yacare_admission.classroom_exam CASCADE;

CREATE TABLE yacare_admission.classroom_exam
(
  id character varying NOT NULL DEFAULT uuid_generate_v4(),
  erased boolean NOT NULL DEFAULT false,
  code integer NOT NULL,
  description character varying,
  capacity integer NOT NULL,
  order_classroom integer NOT NULL,
  is_course boolean,

  CONSTRAINT classroom_exam_pkey PRIMARY KEY (id),
  CONSTRAINT classroom_exam_code_key UNIQUE (code)
);

--AULAS EXAMEN
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('1', '1', 42,42,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('2', '2', 40,82,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('3', '3', 44,126,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('4', '4', 38,164,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('5', '5', 44,208,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('6', '6', 41,249,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('7', '7', 33,282,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('8', '8', 45,327,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('9', '9', 45,372,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('10', '10', 45,417,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('11', '11', 40,457,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('12', '12', 40,497,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('13', '13', 30,527,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('14', '14', 31,558,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('16', '16', 30,588,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('17', '17', 37,625,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('18', '18', 39,664,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('19', '19', 40,704,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('20', '20', 39,743,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('21', '21', 40,783,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('22', '22', 35,818,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('23', '23', 42,860,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('24', '24', 41,901,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('25', '25', 35,936,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('26', '26', 35,971,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('27', '27', 36,1007,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('28', 'AULA A', 99,1106,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('29', 'AULA B', 99,1205,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('30', 'AULA C', 99,1304,false);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('31', 'AULA D', 99,1403,false);
--AULAS CURSILLO
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('918', '18', 32,32,true);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('919', '19', 32,64,true);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('920', '20', 32,96,true);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('921', '21', 32,128,true);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('922', '22', 32,160,true);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('923', '23', 32,192,true);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('924', '24', 32,224,true);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('925', '25', 32,256,true);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('926', '26', 32,288,true);
INSERT INTO yacare_admission.classroom_exam (code, description, capacity, order_classroom,is_course) VALUES ('927', '27', 32,320,true);


-- SELECT * FROM yacare_admission.classroom_exam;

-----------------------------------------------------------------------------

DROP TABLE IF EXISTS yacare_admission.year_calendar CASCADE;

CREATE TABLE yacare_admission.year_calendar (

  id character varying(255) NOT NULL,
  state_enable boolean,
  year integer,
  comment character varying(255),
  start_calendar date,
  end_calendar date,
  CONSTRAINT year_calendar_pkey PRIMARY KEY (id)

);

INSERT INTO yacare_admission.year_calendar(
            id, state_enable, year, comment, start_calendar, end_calendar)
    VALUES ('2c9090b551452f0c01515fbba8473a76', true, 2016, null, '2016-03-01', '2017-02-28');
    
INSERT INTO yacare_admission.year_calendar(
            id, state_enable, year, comment, start_calendar, end_calendar)
    VALUES ('2c9090b558f91cb30158f93d63900000', true, 2017, null, '2017-03-01', '2018-02-28');

-----------------------------------------------------------------------------

DROP TABLE IF EXISTS yacare_admission.country CASCADE;

CREATE TABLE yacare_admission.country (

    id character varying NOT NULL,
    erased boolean NOT NULL,
    code_iso_alfa2 character varying NOT NULL,
   -- code_iso_alfa3 character varying NOT NULL,
    --code_iso_num integer NOT NULL,
    name_iso character varying NOT NULL,
    common_name character varying NOT NULL,
    --comment character varying,
    citizenship character varying NOT NULL,
    phone_code character varying,

    CONSTRAINT country_pkey PRIMARY KEY (id),
    CONSTRAINT country_code_key UNIQUE (code_iso_alfa2)
);

INSERT INTO yacare_admission.country
 VALUES ('ccde2625-a0c4-4048-856f-d2604929ce5f', true, 'GU',
  'Guam',
  'Guam', 'guamaní', '1671');
INSERT INTO yacare_admission.country
 VALUES ('c4b168fb-c689-40a0-9510-be7cfaf4eeb3', true, 'GG',
  'Guernsey',
  'Guernsey', 'británica', '44');
INSERT INTO yacare_admission.country
 VALUES ('7ef392f1-5f8d-4fb5-bd9c-52f9ce588fee', true, 'IM',
  'Isla de Man',
  'Isla de Man', 'británica', '44');
INSERT INTO yacare_admission.country
 VALUES ('870e5042-a3b6-46d0-a587-df6235aeaa1d', true, 'JE',
  'Jersey',
  'Jersey', 'británica', '44');
INSERT INTO yacare_admission.country
 VALUES ('1229b477-a916-410a-844d-5c7d3c08d550', true, 'FK',
  'Islas Malvinas',
  'Islas Malvinas', 'británica', '500');
INSERT INTO yacare_admission.country
 VALUES ('c3a7789a-7fcb-43c1-9f75-27694afc9275', false, 'FM',
  'Estados Federados de Micronesia',
  'Estados Federados de Micronesia', 'micronesia', '691');
INSERT INTO yacare_admission.country
 VALUES ('d5bdabf7-8fc9-43a9-bed1-26df31caf79f', false, 'SH',
  'Santa Helena',
  'Santa Helena', 'británica', 'null');
INSERT INTO yacare_admission.country
 VALUES ('3927a53f-09ad-43f7-a132-f13286e961a1', true, 'AN',
  'Antillas Neerlandesas',
  'Antillas Neerlandesas', 'antillana', 'null');
INSERT INTO yacare_admission.country
 VALUES ('35cb287c-2fa2-421d-820b-07cdeda6bba1', true, 'AX',
  'Åland',
  'Åland', 'alandiana', '358');
INSERT INTO yacare_admission.country
 VALUES ('b7da271b-da4d-4c57-b9b1-6b1ccc3f80dc', true, 'AQ',
  'Antártida',
  'Antártida', 'antártico', 'null');
INSERT INTO yacare_admission.country
 VALUES ('f962cc22-86d9-4d7e-9f22-ba144fd92e0e', false, 'AW',
  'Aruba',
  'Aruba', 'holandesa', '297');
INSERT INTO yacare_admission.country
 VALUES ('e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48', false, 'AF',
  'Afganistán',
  'Afganistán', 'afgana', '93');
INSERT INTO yacare_admission.country
 VALUES ('60981715-9cf5-4533-955b-1f925f1dc43f', false, 'AO',
  'Angola',
  'Angola', 'angolano', '244');
INSERT INTO yacare_admission.country
 VALUES ('2663bd28-44bd-406b-90cd-8e868adda610', false, 'AI',
  'Anguila',
  'Anguila', 'anguilana', '1264');
INSERT INTO yacare_admission.country
 VALUES ('f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c', false, 'AL',
  'Albania',
  'Albania', 'albanesa', '355');
INSERT INTO yacare_admission.country
 VALUES ('e0edfea5-9c2a-4a18-a011-65d45e721f26', false, 'AD',
  'Andorra',
  'Andorra', 'andorrana', '376');
INSERT INTO yacare_admission.country
 VALUES ('99d701fc-e676-46fa-8054-7c3672be7f15', false, 'AE',
  'Emiratos Árabes Unidos',
  'Emiratos Árabes Unidos', 'árabe', '971');
INSERT INTO yacare_admission.country
 VALUES ('8bb52cba-161f-4106-b10b-a74c420bcac7', false, 'AR',
  'Argentina',
  'Argentina', 'argentina', '54');
INSERT INTO yacare_admission.country
 VALUES ('5fd41799-57ce-40e0-b6a3-13d4a203c2ac', false, 'AM',
  'Armenia',
  'Armenia', 'armenia', '374');
INSERT INTO yacare_admission.country
 VALUES ('1f04d763-62b9-4db0-8f56-bd021a5854ef', false, 'AS',
  'Samoa Americana',
  'Samoa Americana', 'amerisamoana', '1684');
INSERT INTO yacare_admission.country
 VALUES ('653f5aa1-ab10-442c-aed8-a0bf1b345557', false, 'TF',
  'Territorios Australes
Franceses',
  'Territorios Australes Franceses', 'francesa', 'null');
INSERT INTO yacare_admission.country
 VALUES ('d3267cb3-41c8-4b59-ab59-f5ff8a4d1bc4', false, 'AG',
  'Antigua y Barbuda',
  'Antigua y Barbuda', 'antiguana', '1268');
INSERT INTO yacare_admission.country
 VALUES ('5bc35c20-bd6d-4052-856b-13bac98e378e', false, 'AU',
  'Australia',
  'Australia', 'australiana', '61');
INSERT INTO yacare_admission.country
 VALUES ('d606c268-2cb4-4809-884e-41eb9ea3f0eb', false, 'AT',
  'Austria',
  'Austria', 'austríaca', '43');
INSERT INTO yacare_admission.country
 VALUES ('aa01627b-f51b-46bb-8ddf-482cbf287415', false, 'AZ',
  'Azerbaiyán',
  'Azerbaiyán', 'azerbaiyana', '994');
INSERT INTO yacare_admission.country
 VALUES ('b8b51680-60e9-450b-a82f-314628e9a07d', false, 'BI',
  'Burundi',
  'Burundi', 'burundesa', '257');
INSERT INTO yacare_admission.country
 VALUES ('9bb7fa87-1e18-4775-907f-96d1e8313e0d', false, 'BE',
  'Bélgica',
  'Bélgica', 'belga', '32');
INSERT INTO yacare_admission.country
 VALUES ('e83f01a8-df1d-48ff-a388-c058b73d73d3', false, 'BJ',
  'Benín',
  'Benín', 'benines', '229');
INSERT INTO yacare_admission.country
 VALUES ('0199e08a-1fb1-4172-ab86-e41e74929f35', false, 'BF',
  'Burkina Faso',
  'Burkina Faso', 'burkinesa', '226');
INSERT INTO yacare_admission.country
 VALUES ('6a46ce2a-0127-4a15-a5d8-bc85b8f158d6', false, 'BD',
  'Bangladesh',
  'Bangladesh', 'bengalí', '880');
INSERT INTO yacare_admission.country
 VALUES ('fee4dab2-d21c-4beb-9b71-13dec55e3199', false, 'BG',
  'Bulgaria',
  'Bulgaria', 'búlgara', '359');
INSERT INTO yacare_admission.country
 VALUES ('cbab60a1-6484-418a-8c4e-929f1ae613ac', false, 'BH',
  'Bahréin',
  'Bahréin', 'bahreiní', '973');
INSERT INTO yacare_admission.country
 VALUES ('73fd2618-076c-4eea-b7f3-1be0f30271b5', false, 'BS',
  'Bahamas',
  'Bahamas', 'bahameña', '1242');
INSERT INTO yacare_admission.country
 VALUES ('72953aea-f56d-41ed-ae9c-cb242b72b683', false, 'BA',
  'Bosnia y Herzegovina',
  'Bosnia y Herzegovina', 'bosniaherzegovina', '387');
INSERT INTO yacare_admission.country
 VALUES ('debede63-8950-4870-b164-d7e911bb0348', false, 'BY',
  'Bielorrusia',
  'Bielorrusia', 'bielorrusa', '375');
INSERT INTO yacare_admission.country
 VALUES ('af72931a-566c-43f7-b89b-ba06248d151d', false, 'BZ',
  'Belice',
  'Belice', 'beliceña', '501');
INSERT INTO yacare_admission.country
 VALUES ('62d39cc1-6d17-48cf-bb77-a74bfaf5293f', false, 'BM',
  'Bermudas',
  'Bermudas', 'británica', '1441');
INSERT INTO yacare_admission.country
 VALUES ('a4df6fdd-8dd8-42bf-ab54-3aae1714bede', false, 'BO',
  'Bolivia',
  'Bolivia', 'boliviana', '591');
INSERT INTO yacare_admission.country
 VALUES ('6a0c0fb6-6fba-46a1-be1a-77124d6e7c90', false, 'BR',
  'Brasil',
  'Brasil', 'brasileña', '55');
INSERT INTO yacare_admission.country
 VALUES ('1b1be890-3ade-4f8b-96e1-649022933591', false, 'BB',
  'Barbados',
  'Barbados', 'barbadense', '1246');
INSERT INTO yacare_admission.country
 VALUES ('2e7556ff-a9c5-4a4d-9a0c-ee16183a6ded', false, 'BN',
  'Brunéi',
  'Brunéi', 'bruneana', '673');
INSERT INTO yacare_admission.country
 VALUES ('73254ac7-edf6-437f-81b8-03fe0a7a371d', false, 'BT',
  'Bután',
  'Bután', 'butanesa', '975');
INSERT INTO yacare_admission.country
 VALUES ('4759b474-d456-40f3-9938-e847c7cda86d', false, 'BV',
  'Isla Bouvet',
  'Isla Bouvet', 'noruega', 'null');
INSERT INTO yacare_admission.country
 VALUES ('d2cd43eb-f278-463a-84c3-55769011f1fe', false, 'BW',
  'Botsuana',
  'Botsuana', 'botsuana', '267');
INSERT INTO yacare_admission.country
 VALUES ('4a77f04e-cdd9-40b3-a49d-ddaa745025d1', false, 'CF',
  'República Centroafricana',
  'República Centroafricana', 'centroafricana', '236');
INSERT INTO yacare_admission.country
 VALUES ('be476bf9-b9d5-44d9-8fff-98a92b3df5e7', false, 'CA',
  'Canadá',
  'Canadá', 'canadiense', '1');
INSERT INTO yacare_admission.country
 VALUES ('db7d9b46-aef8-41b2-926a-9514c0001ae7', false, 'CC',
  'Islas Cocos',
  'Islas Cocos', 'australiana', '61');
INSERT INTO yacare_admission.country
 VALUES ('4050a4a0-4c6e-4c60-9796-f79f1f5aa808', false, 'CH',
  'Suiza',
  'Suiza', 'suiza', '41');
INSERT INTO yacare_admission.country
 VALUES ('466dbeb7-15ac-4d74-b0c0-d0cafcf7277d', false, 'CL',
  'Chile',
  'Chile', 'chilena', '56');
INSERT INTO yacare_admission.country
 VALUES ('4ea92c2b-047c-4fb2-83f3-029eba242c45', false, 'CN',
  'China',
  'China', 'china', '86');
INSERT INTO yacare_admission.country
 VALUES ('d98c9cce-20bc-4edd-b466-e35741894681', false, 'CI',
  'Costa de Marfil',
  'Costa de Marfil', 'marfileña', '225');
INSERT INTO yacare_admission.country
 VALUES ('fcbf93aa-f175-419a-a784-53f1378844d4', false, 'CM',
  'Camerún',
  'Camerún', 'camerunesa', '237');
INSERT INTO yacare_admission.country
 VALUES ('4ff610af-8993-422f-a852-cfdc5ea2b0fe', false, 'CD',
  'República Democrática del Congo',
  'República Democrática del Congo', 'democongoleña', '243');
INSERT INTO yacare_admission.country
 VALUES ('8d5b4d4a-0db9-40dd-a49f-15c368ad22e1', false, 'CG',
  'República del Congo',
  'República del Congo', 'congoleña', '242');
INSERT INTO yacare_admission.country
 VALUES ('c58fea8d-5e63-4276-ab3b-a700ff3d7d0a', false, 'CK',
  'Islas Cook',
  'Islas Cook', 'británica', '682');
INSERT INTO yacare_admission.country
 VALUES ('b59cd7d2-e55b-41b5-82fa-515af04bbd14', false, 'CO',
  'Colombia',
  'Colombia', 'colombiana', '57');
INSERT INTO yacare_admission.country
 VALUES ('acceef3b-a09d-4ccf-ba8a-cc73607938a9', false, 'KM',
  'Comoras',
  'Comoras', 'comorense', '269');
INSERT INTO yacare_admission.country
 VALUES ('fb8f1a90-b771-4c59-bbd0-e0a449eb16d3', false, 'CV',
  'Cabo Verde',
  'Cabo Verde', 'caboverdiana', '238');
INSERT INTO yacare_admission.country
 VALUES ('88e4e8b8-65d2-4929-a595-915b04a30116', false, 'CR',
  'Costa Rica',
  'Costa Rica', 'costarricense', '506');
INSERT INTO yacare_admission.country
 VALUES ('947e2b63-8189-4071-abe1-e731e369e6d7', false, 'CU',
  'Cuba',
  'Cuba', 'cubana', '53');
INSERT INTO yacare_admission.country
 VALUES ('f1d9dbab-f919-45a9-b57e-ab2a003b376c', false, 'CX',
  'Isla de Navidad',
  'Isla de Navidad', 'británica', '61');
INSERT INTO yacare_admission.country
 VALUES ('46dd7a4e-fe56-4701-8f04-c98a19d41f44', false, 'KY',
  'Islas Caimán',
  'Islas Caimán', 'británica', '1345');
INSERT INTO yacare_admission.country
 VALUES ('a1deb525-a2af-4403-9a01-e71febde1a63', false, 'CY',
  'Chipre',
  'Chipre', 'chipriota', '357');
INSERT INTO yacare_admission.country
 VALUES ('f1226b93-708b-4944-94cb-4e3e2f88bd73', false, 'CZ',
  'República Checa',
  'República Checa', 'checa', '420');
INSERT INTO yacare_admission.country
 VALUES ('975b9660-39d0-4db9-be9c-2cb7bbc0d332', false, 'DE',
  'Alemania',
  'Alemania', 'alemana', '49');
INSERT INTO yacare_admission.country
 VALUES ('fa386c38-6370-4c51-a7dc-930b10f1dc2b', false, 'DJ',
  'Yibuti',
  'Yibuti', 'yibutiana', '253');
INSERT INTO yacare_admission.country
 VALUES ('a99863c7-e1d8-405a-88e6-ea9ba46c8a6c', false, 'DM',
  'Dominica',
  'Dominica', 'dominiquesa', '1767');
INSERT INTO yacare_admission.country
 VALUES ('1263d4e7-1f07-4441-a5a5-ff61a4230345', false, 'DK',
  'Dinamarca',
  'Dinamarca', 'danesa', '45');
INSERT INTO yacare_admission.country
 VALUES ('357355c8-9e1c-453f-90aa-da8a5131daa4', false, 'DO',
  'República Dominicana',
  'República Dominicana', 'dominicana', '1809 1829 1849');
INSERT INTO yacare_admission.country
 VALUES ('1d9552b2-edfe-4775-a44e-79e94650c748', false, 'DZ',
  'Argelia',
  'Argelia', 'argelina', '213');
INSERT INTO yacare_admission.country
 VALUES ('f7c8b47d-85a8-456b-82ec-33355e516313', false, 'EC',
  'Ecuador',
  'Ecuador', 'ecuatoriana', '593');
INSERT INTO yacare_admission.country
 VALUES ('e0938ceb-674c-49c0-913a-63d38e01b772', false, 'EG',
  'Egipto',
  'Egipto', 'egipcia', '20');
INSERT INTO yacare_admission.country
 VALUES ('89e5ada6-201f-4de5-bedb-80cf9a2674bd', false, 'ER',
  'Eritrea',
  'Eritrea', 'eritrea', '291');
INSERT INTO yacare_admission.country
 VALUES ('fb19e7ed-4b70-4aee-9f46-111ae4f7f284', false, 'EH',
  'Sahara Occidental',
  'Sahara Occidental', 'marroquí', '212');
INSERT INTO yacare_admission.country
 VALUES ('5944a3ac-4337-49c4-8187-61a6c765cd3f', false, 'ES',
  'España',
  'España', 'española', '34');
INSERT INTO yacare_admission.country
 VALUES ('3688e56d-126d-41eb-a83f-9b766cc3ed5e', false, 'EE',
  'Estonia',
  'Estonia', 'estonia', '372');
INSERT INTO yacare_admission.country
 VALUES ('a61c4477-3e55-4cdd-8de7-a0757d1b02ad', false, 'ET',
  'Etiopía',
  'Etiopía', 'etíope', '251');
INSERT INTO yacare_admission.country
 VALUES ('6cabb008-b2dc-40c6-8d07-374097ffbd19', false, 'FI',
  'Finlandia',
  'Finlandia', 'finlandesa', '358');
INSERT INTO yacare_admission.country
 VALUES ('29b52b30-a66c-4b07-b100-8000bc41d985', false, 'FJ',
  'Fiyi',
  'Fiyi', 'fiyiana', '679');
INSERT INTO yacare_admission.country
 VALUES ('7d42b1e2-ecb6-422b-b8dc-247e435b63bc', false, 'FR',
  'Francia',
  'Francia', 'francesa', '33');
INSERT INTO yacare_admission.country
 VALUES ('f5b138e1-7f0e-4090-8bb4-bc8272c3857a', false, 'FO',
  'Islas Feroe',
  'Islas Feroe', 'británica', '298');
INSERT INTO yacare_admission.country
 VALUES ('23c16af3-9fd8-4918-b68f-570087090745', false, 'GA',
  'Gabón',
  'Gabón', 'gabonesa', '241');
INSERT INTO yacare_admission.country
 VALUES ('2783e5fa-4d60-490b-9093-d231ef4cffba', false, 'GB',
  'Reino Unido',
  'Reino Unido', 'británica', '44');
INSERT INTO yacare_admission.country
 VALUES ('a7f83682-139c-46e9-b544-7bcb614acbf1', false, 'GE',
  'Georgia',
  'Georgia', 'georgiana', '995');
INSERT INTO yacare_admission.country
 VALUES ('298551e8-4d86-46c4-9e59-e2b3c13c1fc0', false, 'GH',
  'Ghana',
  'Ghana', 'ghanesa', '233');
INSERT INTO yacare_admission.country
 VALUES ('a09ceb41-efd1-4893-bea0-7c6bc11cb4de', false, 'GI',
  'Gibraltar',
  'Gibraltar', 'británica', '350');
INSERT INTO yacare_admission.country
 VALUES ('6efffe37-d777-419b-bc21-2e33787e66fe', false, 'GN',
  'Guinea',
  'Guinea', 'guineana', '224');
INSERT INTO yacare_admission.country
 VALUES ('56f62f9e-55e0-47bc-a00a-6f90f5b80172', false, 'GP',
  'Guadalupe',
  'Guadalupe', 'guadalupense', '590');
INSERT INTO yacare_admission.country
 VALUES ('622d125e-c9b7-458c-b083-7d9b9edf0fa7', false, 'GM',
  'Gambia',
  'Gambia', 'gambiana', '220');
INSERT INTO yacare_admission.country
 VALUES ('df8732ed-f62d-4115-8d6b-c2e6707d50e0', false, 'GW',
  'Guinea-Bissau',
  'Guinea-Bissau', 'bissaunguineana', '245');
INSERT INTO yacare_admission.country
 VALUES ('e753856b-f501-4089-9836-fddd5595c709', false, 'GQ',
  'Guinea Ecuatorial',
  'Guinea Ecuatorial', 'ecuatoguineana', '240');
INSERT INTO yacare_admission.country
 VALUES ('218ad1d1-b3b0-4291-8165-8a99185a276e', false, 'GR',
  'Grecia',
  'Grecia', 'griega', '30');
INSERT INTO yacare_admission.country
 VALUES ('c5e16682-cbcd-4824-8fc8-33e4e5a59c59', false, 'GD',
  'Granada',
  'Granada', 'granadina', '1473');
INSERT INTO yacare_admission.country
 VALUES ('1d3a9400-22a6-46ca-b05e-1260c1ece6d1', false, 'RO',
  'Rumania',
  'Rumania', 'rumana', '40');
INSERT INTO yacare_admission.country
 VALUES ('eb2bfe60-2a90-46d3-a50a-1fa45291492c', false, 'GL',
  'Groenlandia',
  'Groenlandia', 'groenlandesa', '299');
INSERT INTO yacare_admission.country
 VALUES ('d27e2f07-90f2-44bb-8d91-c54cbaf890a6', false, 'GT',
  'Guatemala',
  'Guatemala', 'guatemalteca', '502');
INSERT INTO yacare_admission.country
 VALUES ('b48b6bf9-f6e4-4df2-8102-cb703c86a295', false, 'GF',
  'Guayana Francesa',
  'Guayana Francesa', 'francoguyanesa', '594');
INSERT INTO yacare_admission.country
 VALUES ('f21ee2ce-127f-458d-8fa4-5e5410bdf13c', false, 'GY',
  'Guyana',
  'Guyana', 'guyanesa', '592');
INSERT INTO yacare_admission.country
 VALUES ('9dad76c2-a943-401e-ab82-faaf3567ebf9', false, 'HN',
  'Honduras',
  'Honduras', 'hondureña', '504');
INSERT INTO yacare_admission.country
 VALUES ('cbaaad45-a2ce-46b9-8cad-2efd64f870c9', false, 'HR',
  'Croacia',
  'Croacia', 'croata', '385');
INSERT INTO yacare_admission.country
 VALUES ('2799e5c9-1292-4640-9c80-e86124bc1f30', false, 'HT',
  'Haití',
  'Haití', 'haitiana', '509');
INSERT INTO yacare_admission.country
 VALUES ('81948368-67a4-4a1a-901b-b97d56ff007a', false, 'HU',
  'Hungría',
  'Hungría', 'húngara', '36');
INSERT INTO yacare_admission.country
 VALUES ('56a770b5-aa74-4a60-b1d1-bbf2878ca7dd', false, 'ID',
  'Indonesia',
  'Indonesia', 'indonesia', '62');
INSERT INTO yacare_admission.country
 VALUES ('a5617e0e-748c-459d-a232-0ab8d8aebfa4', false, 'IN',
  'India',
  'India', 'india', '91');
INSERT INTO yacare_admission.country
 VALUES ('0361146f-0a2a-41f3-a4f4-8d009814026b', false, 'IO',
  'Territorio Británico del Océano Índico',
  'Territorio Británico del Océano Índico', 'británica', '246');
INSERT INTO yacare_admission.country
 VALUES ('c2e443a2-4195-48ef-aac7-d0295a4011b9', false, 'IE',
  'Irlanda',
  'Irlanda', 'irlandesa', '353');
INSERT INTO yacare_admission.country
 VALUES ('316c34a8-f343-4a7b-8e70-b39c4334a751', false, 'IR',
  'Irán',
  'Irán', 'iraní', '98');
INSERT INTO yacare_admission.country
 VALUES ('e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6', false, 'IQ',
  'Iraq',
  'Iraq', 'iraquí', '964');
INSERT INTO yacare_admission.country
 VALUES ('ba26f9da-fa00-40db-ab7b-cfcfc3ac539e', false, 'IS',
  'Islandia',
  'Islandia', 'islandesa', '354');
INSERT INTO yacare_admission.country
 VALUES ('6aef5093-806b-4e3b-be48-cd8136de071b', false, 'IL',
  'Israel',
  'Israel', 'israelí', '972');
INSERT INTO yacare_admission.country
 VALUES ('069169e1-9bab-4769-bc43-6269b266c25d', false, 'IT',
  'Italia',
  'Italia', 'italiana', '39');
INSERT INTO yacare_admission.country
 VALUES ('c1e16cf4-33ca-4e37-b172-0b9986682702', false, 'JM',
  'Jamaica',
  'Jamaica', 'jamaiquina', '1876');
INSERT INTO yacare_admission.country
 VALUES ('d1c3bf39-d2c3-4c70-94a9-d25797b630a8', false, 'JO',
  'Jordania',
  'Jordania', 'jordana', '962');
INSERT INTO yacare_admission.country
 VALUES ('b6b8954a-9743-44cc-9691-023463e9a3d1', false, 'JP',
  'Japón',
  'Japón', 'japonesa', '81');
INSERT INTO yacare_admission.country
 VALUES ('3b71591a-dfc9-45fc-8eea-2101fe981904', false, 'KZ',
  'Kazajistán',
  'Kazajistán', 'kasaja', '76 77');
INSERT INTO yacare_admission.country
 VALUES ('2dcaf655-83ad-4e79-94ee-4fd3df7f8f74', false, 'KE',
  'Kenia',
  'Kenia', 'keniata', '254');
INSERT INTO yacare_admission.country
 VALUES ('79c80298-0fd7-4ab2-a9c8-de66c21bee08', false, 'KG',
  'Kirguistán',
  'Kirguistán', 'kiguísa', '996');
INSERT INTO yacare_admission.country
 VALUES ('5ae0a261-c25e-4d85-b39e-fd24e1b09b7d', false, 'KH',
  'Camboya',
  'Camboya', 'camboyana', '855');
INSERT INTO yacare_admission.country
 VALUES ('48f8f06e-adbc-4da9-a46f-17d13d26a0b2', false, 'KI',
  'Kiribati',
  'Kiribati', 'kiribatiana', '686');
INSERT INTO yacare_admission.country
 VALUES ('c142d62e-3805-47b4-9469-921d565c0689', false, 'KN',
  'San Cristóbal y Nieves',
  'San Cristóbal y Nieves', 'sancristobaleña', '1869');
INSERT INTO yacare_admission.country
 VALUES ('ab7e0d41-67a1-4528-b436-70c13e4c786d', false, 'KR',
  'Corea del Sur',
  'Corea del Sur', 'sudcoreana', '82');
INSERT INTO yacare_admission.country
 VALUES ('d66977be-058e-474f-957d-753e94335925', false, 'KW',
  'Kuwait',
  'Kuwait', 'kuwaití', '965');
INSERT INTO yacare_admission.country
 VALUES ('707697a4-7d70-4fdf-98fb-6ed381ae8832', false, 'LA',
  'Laos',
  'Laos', 'laosiana', '856');
INSERT INTO yacare_admission.country
 VALUES ('c8e1f9a0-ef27-4f0d-bad9-2f142ae55aab', false, 'LB',
  'Líbano',
  'Líbano', 'libanesa', '961');
INSERT INTO yacare_admission.country
 VALUES ('22434b76-a6e0-49e1-9e61-4d1bb3e013a6', false, 'LR',
  'Liberia',
  'Liberia', 'liberiana', '231');
INSERT INTO yacare_admission.country
 VALUES ('9a821f05-bd9f-4467-a7c3-870e34a57847', false, 'LY',
  'Libia',
  'Libia', 'libia', '218');
INSERT INTO yacare_admission.country
 VALUES ('3ed281ed-32fb-459a-a942-8db47d38ebf0', false, 'LC',
  'Santa Lucía',
  'Santa Lucía', 'santalucense', '1758');
INSERT INTO yacare_admission.country
 VALUES ('f47b524a-27f6-431d-9108-6f13f9fca318', false, 'LI',
  'Liechtenstein',
  'Liechtenstein', 'liechtensteiniana', '423');
INSERT INTO yacare_admission.country
 VALUES ('6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f', false, 'LK',
  'Sri Lanka',
  'Sri Lanka', 'esrilanquesa', '94');
INSERT INTO yacare_admission.country
 VALUES ('59a03cdf-4380-47da-921e-f26c5cf5ffd9', false, 'LS',
  'Lesoto',
  'Lesoto', 'lesotense', '266');
INSERT INTO yacare_admission.country
 VALUES ('3e17eeed-3b39-4867-84aa-d9a229184487', false, 'LT',
  'Lituania',
  'Lituania', 'lituana', '370');
INSERT INTO yacare_admission.country
 VALUES ('918527ae-37f1-4eb2-853a-4e9c19a28fdd', false, 'LU',
  'Luxemburgo',
  'Luxemburgo', 'luxemburguesa', '352');
INSERT INTO yacare_admission.country
 VALUES ('074ad336-4108-444a-b867-3306cf5a720d', false, 'LV',
  'Letonia',
  'Letonia', 'letona', '371');
INSERT INTO yacare_admission.country
 VALUES ('9bd1a4d7-f05b-4ba8-ae9e-eda53d4cb161', false, 'MO',
  'Macao',
  'Macao', 'china', '853');
INSERT INTO yacare_admission.country
 VALUES ('cded6598-01a2-49be-bcc9-b0c8741ea4e7', false, 'MA',
  'Marruecos',
  'Marruecos', 'marroquí', '212');
INSERT INTO yacare_admission.country
 VALUES ('565c20f3-8a23-4cc8-aed2-fbc2efd42779', false, 'MC',
  'Mónaco',
  'Mónaco', 'monegasca', '377');
INSERT INTO yacare_admission.country
 VALUES ('49882df6-0887-42a3-b47f-c550b53b10d6', false, 'MD',
  'Moldavia',
  'Moldavia', 'moldava', '373');
INSERT INTO yacare_admission.country
 VALUES ('9b811293-b6ba-488c-8129-68ffc6cf5aa3', true, 'HK',
  'Hong Kong',
  'Hong Kong', 'china', '852');
INSERT INTO yacare_admission.country
 VALUES ('71e03cd6-b56d-491b-8d86-46c9d49b52f2', true, 'HM',
  'Islas Heard y McDonald',
  'Islas Heard y McDonald', 'australiana', 'null');
INSERT INTO yacare_admission.country
 VALUES ('f05efa8c-d902-4d72-8812-bcc944546b29', false, 'MG',
  'Madagascar',
  'Madagascar', 'malgache', '261');
INSERT INTO yacare_admission.country
 VALUES ('92d39be0-4dbd-4f3e-9dc2-3874779bcc35', false, 'MV',
  'Maldivas',
  'Maldivas', 'maldiva', '960');
INSERT INTO yacare_admission.country
 VALUES ('a11a002e-395c-4db4-b0e8-17744d364396', false, 'MX',
  'México',
  'México', 'mexicana', '52');
INSERT INTO yacare_admission.country
 VALUES ('4edd6b47-d926-4384-a0bd-3aaf40bc4f29', false, 'MH',
  'Islas Marshall',
  'Islas Marshall', 'marshalesa', '692');
INSERT INTO yacare_admission.country
 VALUES ('d12df290-e03f-4465-91c0-b9f584bb3a04', false, 'MK',
  'Macedonia',
  'Macedonia', 'macedonia', '389');
INSERT INTO yacare_admission.country
 VALUES ('085db63c-ccf8-4436-ab8c-03c22ba50882', false, 'ML',
  'Malí',
  'Malí', 'maliense', '223');
INSERT INTO yacare_admission.country
 VALUES ('5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c', false, 'MT',
  'Malta',
  'Malta', 'maltesa', '356');
INSERT INTO yacare_admission.country
 VALUES ('b109653f-dc7b-464a-ac19-dc1116430bca', false, 'MM',
  'Birmania',
  'Birmania', 'birmana', '95');
INSERT INTO yacare_admission.country
 VALUES ('32172cb0-4003-4070-988e-107c2556cfe0', false, 'ME',
  'Montenegro',
  'Montenegro', 'montenegrina', '382');
INSERT INTO yacare_admission.country
 VALUES ('3e560995-566a-4159-9632-c286565fa307', false, 'MN',
  'Mongolia',
  'Mongolia', 'mongola', '976');
INSERT INTO yacare_admission.country
 VALUES ('b72b901e-cdb9-4b66-a6d4-51f932298577', false, 'MP',
  'Islas Marianas del Norte',
  'Islas Marianas del Norte', 'normarianense', '1670');
INSERT INTO yacare_admission.country
 VALUES ('dcf7d98f-178a-4173-84f6-d9d2561a78d3', false, 'MZ',
  'Mozambique',
  'Mozambique', 'mozambiqueña', '258');
INSERT INTO yacare_admission.country
 VALUES ('2118e10c-3d43-409a-8603-5e19b1d8fa25', false, 'MR',
  'Mauritania',
  'Mauritania', 'mauritana', '222');
INSERT INTO yacare_admission.country
 VALUES ('df7c62f7-c1c0-4f11-aa5e-3c2f71574be5', false, 'MS',
  'Montserrat',
  'Montserrat', 'británica', '1664');
INSERT INTO yacare_admission.country
 VALUES ('c61847f3-c757-48c9-8377-ad1b85119747', false, 'MQ',
  'Martinica',
  'Martinica', 'francesa', '596');
INSERT INTO yacare_admission.country
 VALUES ('4a286fbb-2ed9-4374-9c3e-a4a0ae302859', false, 'MU',
  'Mauricio',
  'Mauricio', 'mauriciana', '230');
INSERT INTO yacare_admission.country
 VALUES ('26e1cf6e-2bb1-4a8d-98ba-801c5d79109e', false, 'MW',
  'Malaui',
  'Malaui', 'malaui', '265');
INSERT INTO yacare_admission.country
 VALUES ('fc776207-7a82-479c-86c7-dff644152554', false, 'MY',
  'Malasia',
  'Malasia', 'malaya', '60');
INSERT INTO yacare_admission.country
 VALUES ('903dfa66-6428-4874-a838-a006c4e41ff0', false, 'YT',
  'Mayotte',
  'Mayotte', 'francesa', '262');
INSERT INTO yacare_admission.country
 VALUES ('01f31412-8b38-4cf4-8eb8-23c9fbfa9a19', false, 'NA',
  'Namibia',
  'Namibia', 'namibia', '264');
INSERT INTO yacare_admission.country
 VALUES ('e3b69d07-cd52-4029-8066-58ef653f6eef', false, 'NC',
  'Nueva Caledonia',
  'Nueva Caledonia', 'francesa', '687');
INSERT INTO yacare_admission.country
 VALUES ('4d2a1791-b7c0-497e-adc9-9aa8e3d1fccf', false, 'NE',
  'Níger',
  'Níger', 'nigerina', '227');
INSERT INTO yacare_admission.country
 VALUES ('2f7467ae-a802-49f4-bb71-4730b532be9f', false, 'NF',
  'Norfolk',
  'Norfolk', 'británica', '672');
INSERT INTO yacare_admission.country
 VALUES ('6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1', false, 'NG',
  'Nigeria',
  'Nigeria', 'nigeriana', '234');
INSERT INTO yacare_admission.country
 VALUES ('d6e64ec8-deba-4821-8dec-2bd2874c3071', false, 'NI',
  'Nicaragua',
  'Nicaragua', 'nicaragüense', '505');
INSERT INTO yacare_admission.country
 VALUES ('221d6472-651c-47a5-b406-6601ecc1684f', false, 'UN',
  'Niue',
  'Niue', 'niuana', '683');
INSERT INTO yacare_admission.country
 VALUES ('6db6d5db-0bc9-47fd-b23b-3c811c366a45', false, 'NL',
  'Países Bajos',
  'Países Bajos', 'holandesa', '31');
INSERT INTO yacare_admission.country
 VALUES ('48f8fb7d-4199-4d9b-9e2d-cabe48b0616a', false, 'NO',
  'Noruega',
  'Noruega', 'noruega', '47');
INSERT INTO yacare_admission.country
 VALUES ('5b3b15a3-a35e-47a3-8291-1049e42b1fa5', false, 'NP',
  'Nepal',
  'Nepal', 'nepalesa', '977');
INSERT INTO yacare_admission.country
 VALUES ('2df4d2de-5d49-4da0-a757-c655f6b08d77', false, 'NR',
  'Nauru',
  'Nauru', 'nauruana', '674');
INSERT INTO yacare_admission.country
 VALUES ('ff0db778-064f-4d65-b34c-b1dc0b0679a0', false, 'NZ',
  'Nueva Zelanda',
  'Nueva Zelanda', 'neozelandesa', '64');
INSERT INTO yacare_admission.country
 VALUES ('c6eae6c6-aa1e-44f5-bb2f-343dc8927d60', false, 'OM',
  'Omán',
  'Omán', 'omaní', '968');
INSERT INTO yacare_admission.country
 VALUES ('8e39edc6-2fe3-4629-9a8f-b3b40fc9ccab', false, 'PK',
  'Pakistán',
  'Pakistán', 'paquistaní', '92');
INSERT INTO yacare_admission.country
 VALUES ('b37141ed-5904-4bd5-bbe3-147dc359f22a', false, 'PA',
  'Panamá',
  'Panamá', 'panameña', '507');
INSERT INTO yacare_admission.country
 VALUES ('4152c9de-5431-4528-9fa5-3e543326d421', false, 'PN',
  'Islas Pitcairn',
  'Islas Pitcairn', 'británica', '64');
INSERT INTO yacare_admission.country
 VALUES ('68aab402-ec76-4f3a-ad33-1608653474a1', false, 'PE',
  'Perú',
  'Perú', 'peruana', '51');
INSERT INTO yacare_admission.country
 VALUES ('c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e', false, 'PH',
  'Filipinas',
  'Filipinas', 'filipina', '63');
INSERT INTO yacare_admission.country
 VALUES ('24bd8803-dbcf-4543-b8f9-589670933c47', false, 'PW',
  'Palaos',
  'Palaos', 'palauana', '680');
INSERT INTO yacare_admission.country
 VALUES ('0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d', false, 'PG',
  'Papúa Nueva Guinea',
  'Papúa Nueva Guinea', 'papú', '675');
INSERT INTO yacare_admission.country
 VALUES ('8fe75a1e-0ad1-4123-8948-e7ac117aac51', false, 'PL',
  'Polonia',
  'Polonia', 'polaca', '48');
INSERT INTO yacare_admission.country
 VALUES ('05695f06-3ff5-44cf-8b52-78cd5795aa28', false, 'PR',
  'Puerto Rico',
  'Puerto Rico', 'portoriqueña', '1787 1939');
INSERT INTO yacare_admission.country
 VALUES ('4d2a3414-aaaa-4f35-ad03-ac8d0b3075e7', false, 'KP',
  'Corea del Norte',
  'Corea del Norte', 'norcoreana', '850');
INSERT INTO yacare_admission.country
 VALUES ('0cfe53f9-1617-41b7-b125-84e26bb529ea', false, 'PT',
  'Portugal',
  'Portugal', 'portuguesa', '351');
INSERT INTO yacare_admission.country
 VALUES ('16bb534b-a248-4cb3-a29c-01a5804b275d', false, 'PY',
  'Paraguay',
  'Paraguay', 'paraguaya', '595');
INSERT INTO yacare_admission.country
 VALUES ('247aa2be-7957-46fb-881c-8af2be373983', false, 'PS',
  'Palestina (ANP)',
  'Palestina (ANP)', 'palestina', '970');
INSERT INTO yacare_admission.country
 VALUES ('5aecca9a-5335-422e-ab6b-c7a63f62c73c', false, 'PF',
  'Polinesia Francesa',
  'Polinesia Francesa', 'francesa', '689');
INSERT INTO yacare_admission.country
 VALUES ('c2ca5a54-e14d-4ef2-8462-2c069875223b', false, 'QA',
  'Qatar',
  'Qatar', 'catarí', '974');
INSERT INTO yacare_admission.country
 VALUES ('9633535f-81da-40e1-a964-83108608973c', false, 'RE',
  'Reunión',
  'Reunión', 'francesa', '262');
INSERT INTO yacare_admission.country
 VALUES ('52bb83e0-5066-4e3f-a9f1-802952a1bb3e', false, 'RU',
  'Rusia',
  'Rusia', 'rusa', '7');
INSERT INTO yacare_admission.country
 VALUES ('a99ef3fc-7cf9-4e0a-a65c-ccae1980bf14', false, 'RW',
  'Ruanda',
  'Ruanda', 'ruandesa', '250');
INSERT INTO yacare_admission.country
 VALUES ('212dae8e-1627-44cf-9574-c5e25ee87976', false, 'SA',
  'Arabia Saudita',
  'Arabia Saudita', 'saudí', '966');
INSERT INTO yacare_admission.country
 VALUES ('e91e3b87-631c-4111-824c-fbb20d72317e', false, 'SD',
  'Sudán',
  'Sudán', 'sudanesa', '249');
INSERT INTO yacare_admission.country
 VALUES ('235a33db-d9d2-4715-812f-9b95cc11df05', false, 'SN',
  'Senegal',
  'Senegal', 'senegalesa', '221');
INSERT INTO yacare_admission.country
 VALUES ('37dcbc2c-f74e-4900-acd1-5c300f50062c', false, 'SG',
  'Singapur',
  'Singapur', 'singapurense', '65');
INSERT INTO yacare_admission.country
 VALUES ('7c00092f-f919-4293-940a-e9f3b04ebc74', false, 'GS',
  'Islas Georgias del Sur y Sandwich del Sur',
  'Islas Georgias del Sur y Sandwich del Sur', 'británica', '500');
INSERT INTO yacare_admission.country
 VALUES ('80439ba8-5a3d-4ed0-8144-f8fb1a068b90', false, 'SJ',
  'Svalbard y Jan Mayen',
  'Svalbard y Jan Mayen', 'svalbardiana', '4779');
INSERT INTO yacare_admission.country
 VALUES ('fdced2e8-cbd4-43b4-9ac4-e35a6fc073c7', false, 'SB',
  'Islas Salomón',
  'Islas Salomón', 'británica', '677');
INSERT INTO yacare_admission.country
 VALUES ('47e3d7eb-dad6-4381-b218-41d1aff8de3b', false, 'SL',
  'Sierra Leona',
  'Sierra Leona', 'sierraleonesa', '232');
INSERT INTO yacare_admission.country
 VALUES ('60396eca-42a4-4c1e-929a-d0702b36c235', false, 'SV',
  'El Salvador',
  'El Salvador', 'salvadoreña', '503');
INSERT INTO yacare_admission.country
 VALUES ('5e52d70a-9d19-4fbd-a723-396ff144ace8', false, 'SM',
  'San Marino',
  'San Marino', 'sanmarinense', '378');
INSERT INTO yacare_admission.country
 VALUES ('95ff1daa-022e-4a6e-9b80-af384b15c09b', false, 'SO',
  'Somalia',
  'Somalia', 'somalí', '252');
INSERT INTO yacare_admission.country
 VALUES ('d428625d-4abc-4d32-a3f9-e6bc1565ddf7', false, 'PM',
  'San Pedro y Miquelón',
  'San Pedro y Miquelón', 'sanpedrina', '508');
INSERT INTO yacare_admission.country
 VALUES ('1dc41b92-93a7-43d9-b238-c061ccd6f2bd', false, 'RS',
  'Serbia',
  'Serbia', 'serbia', '381');
INSERT INTO yacare_admission.country
 VALUES ('12346457-78d2-4626-99fe-edb7c59c5b42', false, 'ST',
  'Santo Tomé y Príncipe',
  'Santo Tomé y Príncipe', 'santotomense', '239');
INSERT INTO yacare_admission.country
 VALUES ('5fe89ab4-9d2d-4c9e-a19e-52f71a5e04b1', false, 'SR',
  'Surinam',
  'Surinam', 'surinamesa', '597');
INSERT INTO yacare_admission.country
 VALUES ('3e4ccbdb-26b1-473e-baaf-e5e9d73b5afa', false, 'SK',
  'Eslovaquia',
  'Eslovaquia', 'eslovaca', '421');
INSERT INTO yacare_admission.country
 VALUES ('b0f9952d-d205-41de-b41f-24be03d5dba0', false, 'SI',
  'Eslovenia',
  'Eslovenia', 'eslovena', '386');
INSERT INTO yacare_admission.country
 VALUES ('f0640cf5-24ea-4bad-ae7b-794acce5fb82', false, 'SE',
  'Suecia',
  'Suecia', 'sueca', '46');
INSERT INTO yacare_admission.country
 VALUES ('451886be-b521-420e-bceb-a13fba356477', false, 'SZ',
  'Suazilandia',
  'Suazilandia', 'suazilandesa', '268');
INSERT INTO yacare_admission.country
 VALUES ('1ae9590f-073f-412b-8ff3-6c1420b4f9f8', false, 'SC',
  'Seychelles',
  'Seychelles', 'seychellense', '248');
INSERT INTO yacare_admission.country
 VALUES ('e0acdc03-59e1-444a-b139-79276d19777c', false, 'SY',
  'Siria',
  'Siria', 'siria', '963');
INSERT INTO yacare_admission.country
 VALUES ('4546f650-01e2-4967-925d-fe04aea400ca', false, 'TC',
  'Islas Turcas y Caicos',
  'Islas Turcas y Caicos', 'británica', '1649');
INSERT INTO yacare_admission.country
 VALUES ('dcc59896-cdab-4b2e-9b93-ec92ba469b02', false, 'TD',
  'Chad',
  'Chad', 'chadiana', '235');
INSERT INTO yacare_admission.country
 VALUES ('7a026664-33cb-43fe-bc72-12794e9c967a', false, 'TG',
  'Togo',
  'Togo', 'togolesa', '228');
INSERT INTO yacare_admission.country
 VALUES ('e69cc00c-b10a-4f98-9d9c-0acdf32728ea', false, 'TH',
  'Tailandia',
  'Tailandia', 'tailandesa', '66');
INSERT INTO yacare_admission.country
 VALUES ('8dbb4607-eb7f-4980-9079-addcedf2235f', false, 'TJ',
  'Tayikistán',
  'Tayikistán', 'tayika', '992');
INSERT INTO yacare_admission.country
 VALUES ('172bd1dc-e4a8-42e8-81a8-c288101af64d', false, 'TK',
  'Tokelau',
  'Tokelau', 'neozelandesa', '690');
INSERT INTO yacare_admission.country
 VALUES ('9f909158-f75a-4296-8202-ef46253d86f4', false, 'TM',
  'Turkmenistán',
  'Turkmenistán', 'turcomana', '993');
INSERT INTO yacare_admission.country
 VALUES ('69de021b-2925-4d68-9aca-b7128a461528', false, 'TL',
  'Timor Oriental',
  'Timor Oriental', 'timorense', '670');
INSERT INTO yacare_admission.country
 VALUES ('ca5aa9c6-2e4c-446b-8665-a3ed49b7642f', false, 'TO',
  'Tonga',
  'Tonga', 'tongana', '676');
INSERT INTO yacare_admission.country
 VALUES ('a0a3f407-13b1-418e-916c-b6e44cce26fd', false, 'TT',
  'Trinidad y Tobago',
  'Trinidad y Tobago', 'trinitense', '1868');
INSERT INTO yacare_admission.country
 VALUES ('e3c1001d-2e16-40dc-b0af-e26a99f33d57', false, 'TN',
  'Túnez',
  'Túnez', 'tunecina', '216');
INSERT INTO yacare_admission.country
 VALUES ('e5cbe70e-ec74-4b0c-9511-be772354c234', false, 'TR',
  'Turquía',
  'Turquía', 'turca', '90');
INSERT INTO yacare_admission.country
 VALUES ('74e65aad-e2c2-4af6-b059-0d4ed7af776c', false, 'TV',
  'Tuvalu',
  'Tuvalu', 'tuvaluana', '688');
INSERT INTO yacare_admission.country
 VALUES ('c34255ed-2392-4fa1-b236-282d98918a6c', false, 'TW',
  'República de China',
  'República de China', 'taiwanesa', '886');
INSERT INTO yacare_admission.country
 VALUES ('ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf', false, 'TZ',
  'Tanzania',
  'Tanzania', 'tanzana', '255');
INSERT INTO yacare_admission.country
 VALUES ('de86619b-fd90-4467-a63b-0bf4352496fe', false, 'UG',
  'Uganda',
  'Uganda', 'ugandesa', '256');
INSERT INTO yacare_admission.country
 VALUES ('5e7d0d1d-53b1-4846-bfa8-2e94f10231d3', false, 'UA',
  'Ucrania',
  'Ucrania', 'ucraniana', '380');
INSERT INTO yacare_admission.country
 VALUES ('5df97572-c3d8-4e73-9ee3-845e318e348a', false, 'UM',
  'Islas ultramarinas de Estados Unidos',
  'Islas ultramarinas de Estados Unidos', 'estadounidense', 'null');
INSERT INTO yacare_admission.country
 VALUES ('51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08', false, 'UY',
  'Uruguay',
  'Uruguay', 'uruguaya', '598');
INSERT INTO yacare_admission.country
 VALUES ('d9c8168f-691b-4230-9e25-935b4c48d0b5', false, 'US',
  'Estados Unidos',
  'Estados Unidos', 'estadounidense', '1');
INSERT INTO yacare_admission.country
 VALUES ('0f966650-544e-4507-8218-921137ab6bc5', false, 'UZ',
  'Uzbekistán',
  'Uzbekistán', 'uzbeka', '998');
INSERT INTO yacare_admission.country
 VALUES ('fc23af26-9a66-451a-ab59-c956489dc0db', false, 'VA',
  'Vaticano',
  'Ciudad del Vaticano', 'vaticana', '3906698 379');
INSERT INTO yacare_admission.country
 VALUES ('66075d25-b0ae-41eb-9920-be00145c1d40', false, 'VC',
  'San Vicente y las Granadinas',
  'San Vicente y las Granadinas', 'sanvicentina', '1784');
INSERT INTO yacare_admission.country
 VALUES ('7a6059de-540f-4b06-92fb-a1b3f606d1ff', false, 'VE',
  'Venezuela',
  'Venezuela', 'venezolana', '58');
INSERT INTO yacare_admission.country
 VALUES ('652da871-f5d9-4eaf-af33-e18c685d37ca', false, 'VG',
  'Islas Vírgenes Británicas',
  'Islas Vírgenes Británicas', 'británica', '1284');
INSERT INTO yacare_admission.country
 VALUES ('0d159090-27c8-48eb-8f2c-ac1490ad0a7f', false, 'VI',
  'Islas Vírgenes Estadounidenses',
  'Islas Vírgenes Estadounidenses', 'estadounidense', '1340');
INSERT INTO yacare_admission.country
 VALUES ('1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d', false, 'VN',
  'Vietnam',
  'Vietnam', 'vietnamita', '84');
INSERT INTO yacare_admission.country
 VALUES ('1f25f750-805b-41af-b9ae-2369fbb76846', false, 'VU',
  'Vanuatu',
  'Vanuatu', 'vanuatuense', '678');
INSERT INTO yacare_admission.country
 VALUES ('49579302-58cc-4b7c-a3fe-5983f7ee54f9', false, 'WF',
  'Wallis y Futuna',
  'Wallis y Futuna', 'wallisiana', '681');
INSERT INTO yacare_admission.country
 VALUES ('59dcbc8f-e5fa-4780-a330-96de07b96e96', false, 'WS',
  'Samoa',
  'Samoa', 'samoana', '685');
INSERT INTO yacare_admission.country
 VALUES ('1b503978-d705-45aa-94bc-d5f8b672b441', false, 'YE',
  'Yemen',
  'Yemen', 'yemení', '967');
INSERT INTO yacare_admission.country
 VALUES ('430eb2ea-c946-424f-87bf-d94c193affbe', false, 'ZA',
  'Sudáfrica',
  'Sudáfrica', 'sudafricana', '27');
INSERT INTO yacare_admission.country
 VALUES ('93e4b8ae-058d-4377-9b08-cfc0ade6c840', false, 'ZM',
  'Zambia',
  'Zambia', 'zambiana', '260');
INSERT INTO yacare_admission.country
 VALUES ('9a44b31b-11b0-48fd-a018-91d3dd3af848', false, 'ZW',
  'Zimbabue',
  'Zimbabue', 'zimbabuense', '263');


-- SELECT * FROM yacare_admission.country;

-----------------------------------------------------------------------------

DROP TABLE IF EXISTS yacare_admission.province CASCADE;

CREATE TABLE yacare_admission.province (
    id character varying NOT NULL,
    erased boolean NOT NULL,
    code_iso character varying NOT NULL,
    name character varying NOT NULL,
    --description character varying,
    --comment character varying,
    --locale character varying NOT NULL,
    country_id character varying NOT NULL,

    CONSTRAINT province_pkey PRIMARY KEY (id),

    CONSTRAINT province_code_iso_key UNIQUE (code_iso)
);

INSERT INTO yacare_admission.province
 VALUES ('7b1acbf3-6b4c-4c8c-a7e8-b9d9b0ecd471', false, 'AD-07',
  'Andorra La Vella',
  'e0edfea5-9c2a-4a18-a011-65d45e721f26');
INSERT INTO yacare_admission.province
 VALUES ('7407bc4b-5adf-4766-b099-3df6a1797867', false, 'AD-02',
  'Canillo',
  'e0edfea5-9c2a-4a18-a011-65d45e721f26');
INSERT INTO yacare_admission.province
 VALUES ('d6ddef66-9183-4d86-8e39-8f8cfb79670b', false, 'AD-03',
  'Encamp',
  'e0edfea5-9c2a-4a18-a011-65d45e721f26');
INSERT INTO yacare_admission.province
 VALUES ('1ee1325b-18e0-4f69-92f7-da04a6c06fd5', false, 'AD-08',
  'Escaldes-Engordany',
  'e0edfea5-9c2a-4a18-a011-65d45e721f26');
INSERT INTO yacare_admission.province
 VALUES ('970f1231-2f05-4d20-a369-cde202954d1d', false, 'AD-04',
  'La Massana',
  'e0edfea5-9c2a-4a18-a011-65d45e721f26');
INSERT INTO yacare_admission.province
 VALUES ('7029acaa-3105-43b4-ae55-a67dc7713e94', false, 'AD-05',
  'Ordino',
  'e0edfea5-9c2a-4a18-a011-65d45e721f26');
INSERT INTO yacare_admission.province
 VALUES ('f798621c-9a87-4b73-b989-8906e0beb373', false, 'AD-06',
  'Sant Julià de Lòria',
  'e0edfea5-9c2a-4a18-a011-65d45e721f26');
INSERT INTO yacare_admission.province
 VALUES ('9179c804-5adf-42c9-916c-6303ab8e49f2', false, 'AE-AZ',
  'Abu Dhabi',
  '99d701fc-e676-46fa-8054-7c3672be7f15');
INSERT INTO yacare_admission.province
 VALUES ('9a91401f-4c66-4f1b-b70f-b42bdcebeb7b', false, 'AE-AJ',
  'Ajman',
  '99d701fc-e676-46fa-8054-7c3672be7f15');
INSERT INTO yacare_admission.province
 VALUES ('696688e0-8b70-4f11-adeb-cb7701465594', false, 'AE-DU',
  'Dubai',
  '99d701fc-e676-46fa-8054-7c3672be7f15');
INSERT INTO yacare_admission.province
 VALUES ('4794c114-d94d-4273-9842-2922dc351c1a', false, 'AE-FU',
  'Fujairah',
  '99d701fc-e676-46fa-8054-7c3672be7f15');
INSERT INTO yacare_admission.province
 VALUES ('e5bdccc9-b762-4f02-9d04-cc9f24cfdeb8', false, 'AE-RK',
  'Ras Al Khaimah',
  '99d701fc-e676-46fa-8054-7c3672be7f15');
INSERT INTO yacare_admission.province
 VALUES ('e5ea9c1a-677d-456e-b74c-3ba6c5b33734', false, 'AE-SH',
  'Sharjah',
  '99d701fc-e676-46fa-8054-7c3672be7f15');
INSERT INTO yacare_admission.province
 VALUES ('b4510029-f400-41e7-afa0-b6fe7df4e8c3', false, 'AE-UQ',
  'Um Al Quwain',
  '99d701fc-e676-46fa-8054-7c3672be7f15');
INSERT INTO yacare_admission.province
 VALUES ('239cb518-243b-430c-966a-5ac127deb562', false, 'AF-BDS',
  'Badakhshan',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('f6cdeec6-4e34-4f7b-8b4a-d23dd4d3785f', false, 'AF-BDG',
  'Badghis',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('80077703-c496-4a69-80bc-538bb8dd0fd9', false, 'AF-BGL',
  'Baghlan',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('b26f61f3-c34c-4df6-9799-6944e65450d8', false, 'AF-BAL',
  'Balkh',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('ca5c1a57-e4e2-4efa-b5ed-f14e0a8dc375', false, 'AF-BAM',
  'Bamyan',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('35a5174a-da24-4601-8c68-64ca260590a6', false, 'AF-DAY',
  'Daykundi',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('d02603c1-858a-451e-b646-2fbfd29c7c84', false, 'AF-FRA',
  'Farah',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('d5655cc3-7b10-4401-8e51-00162dff3d82', false, 'AF-FYB',
  'Faryab',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('54190f28-3b25-40e9-9f74-b0ea9cb2b71b', false, 'AF-GHA',
  'Ghazni',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('2e3d8c69-0ddf-488e-9f04-c29e4ef45ebe', false, 'AF-GHO',
  'Ghor',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('f40e3c7b-b0d0-44cc-acb7-492b52ebdf25', false, 'AF-HEL',
  'Helmand',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('05204699-93ca-46fe-b71c-7595bb6b7951', false, 'AF-HER',
  'Herat',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('c4322ad3-0693-4bf3-9ea8-bcf1e42e874a', false, 'AF-JOW',
  'Jowzjan',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('cedae3f3-ba06-44f2-921b-144e716cf268', false, 'AF-KAB',
  'Kabul',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('2ada67ac-80a6-4e1a-a74a-76de97a830b5', false, 'AF-KAN',
  'Kandahar',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('fb4e8e36-020c-47df-ad37-9bfadc75a1d1', false, 'AF-KAP',
  'Kapisa',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('c6cc53b4-a138-4569-a5f5-1ffc44e31b5b', false, 'AF-KHO',
  'Khost',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('1b38298d-8f24-420c-b14c-345ade359d04', false, 'AF-KNR',
  'Kunar',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('c0e73f9a-74fc-4bba-bcb4-396ca8dd00cb', false, 'AF-KDZ',
  'Kunduz',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('4dff0227-4e49-492c-b326-541c3bd281d8', false, 'AF-LAG',
  'Laghman',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('4e075fa0-e32d-415f-912f-f9c0f2b91593', false, 'AF-LOW',
  'Logar',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('d5097c02-291d-4a1e-8e06-17e41201cc13', false, 'AF-NAN',
  'Nangarhar',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('62cefd88-a1cc-4beb-b23b-7fe488ed8bcc', false, 'AF-NIM',
  'Nimruz',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('c576e2dc-5ed9-4a68-87ed-d9d25e8154c8', false, 'AF-NUR',
  'Nurestan',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('f3a6ed18-b15d-4b52-928e-329f3d974155', false, 'AF-ORU',
  'Oruzgan',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('383dedc7-00d8-49c9-9aa6-df09bf84edc5', false, 'AF-PIA',
  'Paktia',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('496aac08-6676-4f13-b26f-62658d95d1ae', false, 'AF-PKA',
  'Paktika',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('a107f33d-b606-4174-a802-d0636f4cc4c5', false, 'AF-PAN',
  'Panjshir',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('b5fa4161-bac0-4a58-853f-520a3a1760a6', false, 'AF-PAR',
  'Parwan',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('5e3b921d-138d-4d72-a4dc-1c7a618ef36b', false, 'AF-SAM',
  'Samangan',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('7c29ea73-ed5d-4c79-a436-9f515dfb7ddf', false, 'AF-SAR',
  'Sar-e Pol',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('76943975-b0a0-4479-b6c2-673d02461a29', false, 'AF-TAK',
  'Takhar',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('a8274746-57e0-4d99-b5dc-93106e38e383', false, 'AF-WAR',
  'Wardak',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('981b00d8-19f3-4449-8864-74cd030e1b3f', false, 'AF-ZAB',
  'Zabul',
  'e0b88d8a-0b18-4c7e-b41f-1ff5efec9f48');
INSERT INTO yacare_admission.province
 VALUES ('a556dd0d-fd63-424b-b351-c49d9f93fcf0', false, 'AG-10',
  'Barbuda',
  'd3267cb3-41c8-4b59-ab59-f5ff8a4d1bc4');
INSERT INTO yacare_admission.province
 VALUES ('14567993-3d04-4d9f-9245-32c66162b648', false, 'AG-11',
  'Redonda',
  'd3267cb3-41c8-4b59-ab59-f5ff8a4d1bc4');
INSERT INTO yacare_admission.province
 VALUES ('6792a188-d538-4025-9eb6-1678bffa379d', false, 'AG-03',
  'Saint George',
  'd3267cb3-41c8-4b59-ab59-f5ff8a4d1bc4');
INSERT INTO yacare_admission.province
 VALUES ('7e7f84c1-74eb-46c6-b398-82bfbd194c85', false, 'AG-04',
  'Saint John''s',
  'd3267cb3-41c8-4b59-ab59-f5ff8a4d1bc4');
INSERT INTO yacare_admission.province
 VALUES ('7684514b-6e22-4971-8cb1-ede1a5a8198f', false, 'AG-05',
  'Saint Mary',
  'd3267cb3-41c8-4b59-ab59-f5ff8a4d1bc4');
INSERT INTO yacare_admission.province
 VALUES ('66160ab7-8c0c-4ea2-8c51-3a9c83698ada', false, 'AG-06',
  'Saint Paul',
  'd3267cb3-41c8-4b59-ab59-f5ff8a4d1bc4');
INSERT INTO yacare_admission.province
 VALUES ('e94e3108-3978-462a-935b-c9834d814bab', false, 'AG-07',
  'Saint Peter',
  'd3267cb3-41c8-4b59-ab59-f5ff8a4d1bc4');
INSERT INTO yacare_admission.province
 VALUES ('f4e8a766-8902-4419-8607-8b367ea0964f', false, 'AG-08',
  'Saint Philip',
  'd3267cb3-41c8-4b59-ab59-f5ff8a4d1bc4');
INSERT INTO yacare_admission.province
 VALUES ('ed246931-2856-448a-8a65-1170a7474989', false, 'AL-BR',
  'Berat',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('df097c4f-2c25-4eda-9074-48e62265aaa6', false, 'AL-BU',
  'Bulqizë',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('6aeff5b9-304d-4178-b254-dc1b73a15240', false, 'AL-DL',
  'Delvinë',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('995076fc-9c13-4d9f-846b-c3e172b427de', false, 'AL-DV',
  'Devoll',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('0463c684-f6a6-4ad2-aa7e-baafeb331edf', false, 'AL-DI',
  'Dibër',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('3bb7680b-a100-4ee9-83d7-0231a85c6945', false, 'AL-DR',
  'Durrës',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('1899091c-c017-4ab9-a533-4d62d7e478a4', false, 'AL-EL',
  'Elbasan',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('5553c1b7-1fb7-4b2a-85e9-a34347e40ccd', false, 'AL-FR',
  'Fier',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('a1982922-fcf0-4269-b518-3e29f99571ce', false, 'AL-GJ',
  'Gjirokastër',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('99c2bb8f-d127-4485-8b31-5c3075603bd7', false, 'AL-GR',
  'Gramsh',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('2136a50c-63d4-4bf9-a932-6b93ff10bcee', false, 'AL-HA',
  'Has',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('d14b556e-7c4e-4808-aa0f-0431a829b946', false, 'AL-KA',
  'Kavajë',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('1506482e-8497-4459-be15-13f816f55c09', false, 'AL-ER',
  'Kolonjë',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('b5152f30-d67b-48dc-a9e0-4c0d2f0a44b6', false, 'AL-KO',
  'Korçë',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('9bd560c4-ff2b-42c8-8699-87c354c59d12', false, 'AL-KR',
  'Krujë',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('1db85ff4-16d6-47f4-9ec5-c8242533831e', false, 'AL-KC',
  'Kuçovë',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('a1e80739-66d5-4900-a3eb-e17e4c369813', false, 'AL-KU',
  'Kukës',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('9909c89e-0cc6-4095-aee9-f13e20f32063', false, 'AL-KB',
  'Kurbin',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('eee88a59-23fc-4af1-8aa6-8fb9c476793d', false, 'AL-LE',
  'Lezhë',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('998d3340-abe1-44cf-bf36-34257a063961', false, 'AL-LB',
  'Librazhd',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('a5d687ae-280a-4ba2-9f92-43792f81dd79', false, 'AL-LU',
  'Lushnje',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('55862055-f0a7-4c50-b62d-4f700b57708d', false, 'AL-MM',
  'Malësi e Madhe',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('bd5b1da0-68e5-49d0-bbf9-5fef9cd8f077', false, 'AL-MK',
  'Mallakastër',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('9b928782-5e52-42cd-a06a-758a055b126e', false, 'AL-MT',
  'Mat',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('c247087d-d2dd-41f2-a383-5d477725db12', false, 'AL-MR',
  'Mirditë',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('8166b054-8677-4fa9-a648-ecc4a44a257b', false, 'AL-PQ',
  'Peqin',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('17656bf4-b075-4513-b134-0228daa4c232', false, 'AL-PR',
  'Përmet',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('c35779d8-e120-407e-b267-18ca82af9084', false, 'AL-PG',
  'Pogradec',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('6bea41df-d9d1-40e8-9998-20b3b742e4fa', false, 'AL-PU',
  'Pukë',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('ed53d7ab-fd68-4f09-a189-2d720bc8cad6', false, 'AL-SR',
  'Sarandë',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('bdaa4404-2bd9-473a-883b-086c49013666', false, 'AL-SH',
  'Shkodër',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('e32a56f0-24ba-49b1-8b1e-3d4c309a9547', false, 'AL-SK',
  'Skrapar',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('63482153-0f7c-4961-9b0d-f77a3555f7b6', false, 'AL-TE',
  'Tepelenë',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('490efbb3-2eb1-4046-804f-e45070823661', false, 'AL-TR',
  'Tiranë',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('2829345e-1f87-480b-a133-9c7b42d9b9a8', false, 'AL-TP',
  'Tropojë',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('a2752bb0-afd6-4f28-9015-95427bec6919', false, 'AL-VL',
  'Vlorë',
  'f4639d40-f8b9-4d9e-9e31-ef1941f1cd7c');
INSERT INTO yacare_admission.province
 VALUES ('0cdd04f1-b9cb-425c-97ce-a0679be17991', false, 'AM-AG',
  'Aragatsotn',
  '5fd41799-57ce-40e0-b6a3-13d4a203c2ac');
INSERT INTO yacare_admission.province
 VALUES ('cc400d7d-df3b-4d40-8876-9993824d685b', false, 'AM-AR',
  'Ararat',
  '5fd41799-57ce-40e0-b6a3-13d4a203c2ac');
INSERT INTO yacare_admission.province
 VALUES ('0e7d3e74-b010-46b1-bd86-36ea44da8dc9', false, 'AM-AV',
  'Armavir',
  '5fd41799-57ce-40e0-b6a3-13d4a203c2ac');
INSERT INTO yacare_admission.province
 VALUES ('be2858f4-8070-4545-93ba-3c020aea771a', false, 'AM-GR',
  'Gegharkunik',
  '5fd41799-57ce-40e0-b6a3-13d4a203c2ac');
INSERT INTO yacare_admission.province
 VALUES ('1887fc3e-57ed-4f94-9d26-c3039f3b239a', false, 'AM-KT',
  'Kotayk',
  '5fd41799-57ce-40e0-b6a3-13d4a203c2ac');
INSERT INTO yacare_admission.province
 VALUES ('b0ae9cbf-c1d5-4bf9-8335-c70a4e31df71', false, 'AM-LO',
  'Lori',
  '5fd41799-57ce-40e0-b6a3-13d4a203c2ac');
INSERT INTO yacare_admission.province
 VALUES ('8823bae1-89fb-461c-9363-6cc717ec1565', false, 'AM-SH',
  'Shirak',
  '5fd41799-57ce-40e0-b6a3-13d4a203c2ac');
INSERT INTO yacare_admission.province
 VALUES ('ea8f12e0-6437-44df-a63c-4cb1be1c9788', false, 'AM-SU',
  'Syunik',
  '5fd41799-57ce-40e0-b6a3-13d4a203c2ac');
INSERT INTO yacare_admission.province
 VALUES ('9affe900-1b92-48ba-b8fd-674acc7f9509', false, 'AM-TV',
  'Tavush',
  '5fd41799-57ce-40e0-b6a3-13d4a203c2ac');
INSERT INTO yacare_admission.province
 VALUES ('5542ff4a-f17d-4fc6-8434-d3fd6f3a6384', false, 'AM-VD',
  'Vayots Dzor',
  '5fd41799-57ce-40e0-b6a3-13d4a203c2ac');
INSERT INTO yacare_admission.province
 VALUES ('a9781c12-edb0-485c-84f8-3e877d7c9a40', false, 'AM-ER',
  'Yerevan',
  '5fd41799-57ce-40e0-b6a3-13d4a203c2ac');
INSERT INTO yacare_admission.province
 VALUES ('07360c42-18eb-4b96-b9d7-cced80e1f393', false, 'AO-BGO',
  'Bengo',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('3b743c49-2c35-4846-9ca1-4d0c9ac96ea8', false, 'AO-BGU',
  'Benguela',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('7f334ff0-0d19-42d7-8060-06f8c5c258f2', false, 'AO-BIE',
  'Bié',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('7f8bac20-4b13-48ab-9d31-d5ef1df75427', false, 'AO-CAB',
  'Cabinda',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('72fd8e01-9ce3-42ec-be5b-431316797ffa', false, 'AO-CCU',
  'Cuando Cubango',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('0769805a-1036-470c-a482-2fb8cce5451d', false, 'AO-CNO',
  'Cuanza Norte',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('3de8b68b-0a3b-45d2-8aa3-7b2a9405ee00', false, 'AO-CUS',
  'Cuanza Sul',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('0a371838-c6b1-43c7-af43-ac0839c7ee72', false, 'AO-CNN',
  'Cunene',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('b62e396e-fe6b-48b5-b79f-982863f90bff', false, 'AO-HUA',
  'Huambo',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('0cfa5a9d-89b8-4565-a985-c1564db3e6eb', false, 'AO-HUI',
  'Huíla',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('4507a0d6-def9-4df9-8baa-537a0f42ee97', false, 'AO-LUA',
  'Luanda',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('34674ee4-4a1f-47d0-91fb-d65ba658eeb1', false, 'AO-LNO',
  'Lunda Norte',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('c20446bb-e18d-4712-9643-0e76a2c9ab0f', false, 'AO-LSU',
  'Lunda Sul',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('29f7a26b-cc51-4763-9cf3-9301c8268d35', false, 'AO-MAL',
  'Malanje',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('1479caa6-7563-4a1d-9af8-cdc7b88a73e8', false, 'AO-MOX',
  'Moxico',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('df7edbae-8753-4f39-aae5-33d2595d51fe', false, 'AO-NAM',
  'Namibe',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('930b9636-c30d-4e7d-8d6b-333b1f065c75', false, 'AO-UIG',
  'Uíge',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('e8d2275e-fb35-4c0e-b62b-3392ca1f92fa', false, 'AO-ZAI',
  'Zaire',
  '60981715-9cf5-4533-955b-1f925f1dc43f');
INSERT INTO yacare_admission.province
 VALUES ('b1effc95-3264-49ff-aff8-b20ec400cbda', false, 'AR-B',
  'Buenos Aires',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('1571d7e6-c39e-4e99-89fa-4f5f6bc1b359', false, 'AR-C',
  'Ciudad Autónoma de Buenos Aires',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('457d4d4b-ba2f-4d85-9d46-fdce5fa83de2', false, 'AR-K',
  'Catamarca',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('05393e52-dff3-49bd-9084-16111ed5c43a', false, 'AR-H',
  'Chaco',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('61849838-ae44-4598-9419-7589f3bff06e', false, 'AR-U',
  'Chubut',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('50c323f7-8d22-49a4-9096-0b8e3f259137', false, 'AR-X',
  'Córdoba',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('151c1a91-14c8-4fc1-b83e-165ca2e7e739', false, 'AR-W',
  'Corrientes',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('907d4aa5-e266-4aee-afe6-411efce2c3fc', false, 'AR-E',
  'Entre Ríos',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('1a50880b-06a7-4837-8412-e94157633457', false, 'AR-P',
  'Formosa',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('9591f245-54a9-43db-881f-b170aca076e0', false, 'AR-Y',
  'Jujuy',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('9b2005a6-5320-4343-bb48-29581201f3ea', false, 'AR-L',
  'La Pampa',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('bb4783a7-b311-49cf-a974-ff0e2f2033aa', false, 'AR-F',
  'La Rioja',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('83060dc5-c387-4fea-ace9-b7bcac447f4b', false, 'AR-M',
  'Mendoza',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('4ee519b5-4b39-4aaa-a41d-5642a076cc95', false, 'AR-N',
  'Misiones',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('d58f850c-5990-4314-9cb1-39e0346606e5', false, 'AR-Q',
  'Neuquén',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('6f3d60c2-7053-4252-b4d6-abcfc3fb9d88', false, 'AR-R',
  'Río Negro',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('5cfe7fb5-9749-4d01-b460-39a5acc65250', false, 'AR-A',
  'Salta',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('79b05949-2a43-4cd1-8795-76495caa1aa5', false, 'AR-J',
  'San Juan',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('73c08e4b-47de-4183-bb6c-98ff9bb1c5d8', false, 'AR-D',
  'San Luis',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('db7d14c4-fc59-410c-8c78-5c26928569e6', false, 'AR-Z',
  'Santa Cruz',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('ad1476fe-15fc-4764-8010-2040893f337f', false, 'AR-S',
  'Santa Fe',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('86a9e66e-ac3a-4381-9f8d-58e480b53226', false, 'AR-G',
  'Santiago del Estero',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('d445606c-8961-406f-bac8-2ca12e9b81df', false, 'AR-V',
  'Tierra del Fuego, Antártida e Islas del Atlántico Sur',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('b28d9d6e-b8dc-48ad-84b9-b01fbcc010c7', false, 'AR-T',
  'Tucumán',
  '8bb52cba-161f-4106-b10b-a74c420bcac7');
INSERT INTO yacare_admission.province
 VALUES ('04c423fa-bdeb-498c-9213-0f318d1da093', false, 'AT-1',
  'Burgenland',
  'd606c268-2cb4-4809-884e-41eb9ea3f0eb');
INSERT INTO yacare_admission.province
 VALUES ('473a7b48-ec72-4a17-9f3a-ba5d21d4aace', false, 'AT-2',
  'Kärnten',
  'd606c268-2cb4-4809-884e-41eb9ea3f0eb');
INSERT INTO yacare_admission.province
 VALUES ('9e0b6410-3e4d-4c9e-a4cc-b0600fb441c9', false, 'AT-3',
  'Niederösterreich',
  'd606c268-2cb4-4809-884e-41eb9ea3f0eb');
INSERT INTO yacare_admission.province
 VALUES ('cdc4a66d-81d8-4214-a3fc-a6dc00ebf6c1', false, 'AT-4',
  'Oberösterreich',
  'd606c268-2cb4-4809-884e-41eb9ea3f0eb');
INSERT INTO yacare_admission.province
 VALUES ('e71ed730-707a-4578-ba79-3ba885e068c2', false, 'AT-5',
  'Salzburg',
  'd606c268-2cb4-4809-884e-41eb9ea3f0eb');
INSERT INTO yacare_admission.province
 VALUES ('928c861d-d995-44c2-b511-ece70957912d', false, 'AT-6',
  'Steiermark',
  'd606c268-2cb4-4809-884e-41eb9ea3f0eb');
INSERT INTO yacare_admission.province
 VALUES ('b604390b-433e-4a6e-a288-3bf421393914', false, 'AT-7',
  'Tirol',
  'd606c268-2cb4-4809-884e-41eb9ea3f0eb');
INSERT INTO yacare_admission.province
 VALUES ('e87aeec5-769e-4813-9855-bdd8a87850cc', false, 'AT-8',
  'Vorarlberg',
  'd606c268-2cb4-4809-884e-41eb9ea3f0eb');
INSERT INTO yacare_admission.province
 VALUES ('21fd275e-055e-46cd-8942-8e31ed32a2ec', false, 'AT-9',
  'Wien',
  'd606c268-2cb4-4809-884e-41eb9ea3f0eb');
INSERT INTO yacare_admission.province
 VALUES ('3254b98f-d9f6-4ce8-8a05-0a1e4bc43843', false, 'AU-ACT',
  'Australian Capital Territory',
  '5bc35c20-bd6d-4052-856b-13bac98e378e');
INSERT INTO yacare_admission.province
 VALUES ('495e78aa-1b08-4b21-9d3c-0c3e71325f13', false, 'AU-NSW',
  'New South Wales',
  '5bc35c20-bd6d-4052-856b-13bac98e378e');
INSERT INTO yacare_admission.province
 VALUES ('a49a1d05-7f8b-4d41-8512-ae3d31a21a42', false, 'AU-NT',
  'Northern Territory',
  '5bc35c20-bd6d-4052-856b-13bac98e378e');
INSERT INTO yacare_admission.province
 VALUES ('002ecc31-3f0c-49b3-b096-873eb0b4cd1e', false, 'AU-QLD',
  'Queensland',
  '5bc35c20-bd6d-4052-856b-13bac98e378e');
INSERT INTO yacare_admission.province
 VALUES ('e04f9df3-144f-435b-9848-841d4cc602b9', false, 'AU-SA',
  'South Australia',
  '5bc35c20-bd6d-4052-856b-13bac98e378e');
INSERT INTO yacare_admission.province
 VALUES ('86c676d9-df6b-416e-b7b6-67382b00e939', false, 'AU-TAS',
  'Tasmania',
  '5bc35c20-bd6d-4052-856b-13bac98e378e');
INSERT INTO yacare_admission.province
 VALUES ('466c9fae-f873-4ffa-9e4a-157736638181', false, 'AU-VIC',
  'Victoria',
  '5bc35c20-bd6d-4052-856b-13bac98e378e');
INSERT INTO yacare_admission.province
 VALUES ('e5522cf1-fca4-441f-af8f-89ecfd64a1cf', false, 'AU-WA',
  'Western Australia',
  '5bc35c20-bd6d-4052-856b-13bac98e378e');
INSERT INTO yacare_admission.province
 VALUES ('2e05620d-9ff5-4fd7-9d0b-ade3e9b7e509', false, 'AZ-ABS',
  'Abşeron',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('5df0dad0-49a3-498c-904d-203d7b60bcdb', false, 'AZ-AGC',
  'Ağcabədi',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('a4ec5d73-4e04-4ec6-be6c-40ba8ec7c469', false, 'AZ-AGM',
  'Ağdam',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('a542b208-3fed-41c2-a2a2-bc31133a9c2f', false, 'AZ-AGS',
  'Ağdaş',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('0e8f82c7-c89e-4388-bd8a-81bbb9a8146e', false, 'AZ-AGA',
  'Ağstafa',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('b84e225b-b8a3-4ff0-959f-680623dc8343', false, 'AZ-AGU',
  'Ağsu',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('edf2e86d-a8b3-49ad-bd26-3495f974b288', false, 'AZ-AST',
  'Astara',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('bf5a0bbe-9394-4d11-b139-7c7f9da69db5', false, 'AZ-BAB',
  'Babək',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('4d09cfea-2820-40a6-beb1-0eb66541a56e', false, 'AZ-BA',
  'Bakı',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('0cc30680-708b-492f-a362-ee70e53d9428', false, 'AZ-BAL',
  'Balakən',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('21680b8e-5789-4357-b87c-b6675ae289bf', false, 'AZ-BAR',
  'Bərdə',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('c82e45d0-4770-42e3-a235-983ad2b813eb', false, 'AZ-BEY',
  'Beyləqan',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('a69d81b0-41f3-4da1-ab71-8e35845efdb3', false, 'AZ-BIL',
  'Biləsuvar',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('7879e386-ab53-4445-9d26-0dd548f59fe5', false, 'AZ-CAB',
  'Cəbrayıl',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('6d22e85a-5b3c-4d5f-a912-47f60ad6d6d4', false, 'AZ-CAL',
  'Cəlilabad',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('ec17a8a9-5540-410c-bb3a-01fd1621a419', false, 'AZ-CUL',
  'Culfa',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('5db771e5-91cd-453b-b296-b58e5de06388', false, 'AZ-DAS',
  'Daşkəsən',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('d23a9677-a3c7-42d6-ae38-0b7552580616', false, 'AZ-DAV',
  'Dəvəçi',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('84bb62b9-8ca4-46b9-98a7-d795dc0ab8a6', false, 'AZ-AB',
  'Əli-Bayramlı',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('4bf05342-7af3-4acd-a595-e79ecfea8069', false, 'AZ-FUZ',
  'Füzuli',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('85a0c8e4-e0c0-4764-b5c3-83f29f2e49d2', false, 'AZ-GAD',
  'Gədəbəy',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('a9b8c1a3-57cf-43b7-8fe0-94b7c69c77fc', false, 'AZ-GA',
  'Gəncə',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('b9e4df97-cea0-42fb-a3d5-cdc96824825d', false, 'AZ-GOR',
  'Goranboy',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('1181549a-77a0-4216-8245-79eeddb697ad', false, 'AZ-GOY',
  'Göyçay',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('95a535f8-01dd-4a6e-91fe-30560131c1de', false, 'AZ-XAN',
  'Goygol',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('5e9cc293-a6e7-48a5-ba17-995516242a24', false, 'AZ-HAC',
  'Hacıqabul',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('18dddaae-14c5-48cd-8203-caee055a776d', false, 'AZ-IMI',
  'İmişli',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('1c083762-219e-4131-9085-84fce95d1839', false, 'AZ-ISM',
  'İsmayıllı',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('da9e3c09-0ed8-4565-891f-9d340f5c34e6', false, 'AZ-KAL',
  'Kəlbəcər',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('a4251aa7-1a7d-4033-98c1-df4c6ca0395d', false, 'AZ-KUR',
  'Kürdəmir',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('bdb5f1a2-6773-424a-9e25-a6b26b7ec95c', false, 'AZ-LAC',
  'Laçın',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('6b2d4e17-89e1-4a84-8872-4de7964ef9fc', false, 'AZ-LAN',
  'Lənkəran',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('a71ffd02-3fce-4697-afda-5bb4d0b96d43', false, 'AZ-LA',
  'Lənkəran city',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('a47dc354-d1f1-4038-8157-4f67b6304209', false, 'AZ-LER',
  'Lerik',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('09a74c57-383a-4bdb-b468-ad3c061dcd42', false, 'AZ-MAS',
  'Masallı',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('f207e212-bdbb-4304-b910-48d7749654cf', false, 'AZ-MI',
  'Mingəçevir',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('59e547b0-7d64-4363-ba5a-e4d2ad997482', false, 'AZ-NA',
  'Naftalan',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('c1d17a64-a6c8-4397-b87e-2e91fee74bcf', false, 'AZ-NX',
  'Naxçıvan',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('d5122c07-adad-4cc4-9a82-79fbb2e1c5a7', false, 'AZ-NEF',
  'Neftçala',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('9183c36b-957e-400d-a9ec-7e5148b25237', false, 'AZ-OGU',
  'Oğuz',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('3904d035-f178-4755-836e-2a1e80251601', false, 'AZ-ORD',
  'Ordubad',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('1ebb9e37-2def-4b86-a7b5-6745c83433da', false, 'AZ-QAX',
  'Qax',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('047359c1-7c40-44b5-9856-963c8e322c78', false, 'AZ-QAZ',
  'Qazax',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('f517849f-28f0-4045-931e-e4231df7b0ed', false, 'AZ-QAB',
  'Qəbələ',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('844ecc64-7923-4cdc-b6d9-175919feb747', false, 'AZ-QOB',
  'Qobustan',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('f3444fe9-90c8-481e-b8c6-b06891d9c37c', false, 'AZ-QBA',
  'Quba',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('e3dbbdd6-53f2-4a25-b3fc-4137c4a99be8', false, 'AZ-QBI',
  'Qubadlı',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('1a9c056f-b145-4943-97a1-cfc07c1e21b0', false, 'AZ-QUS',
  'Qusar',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('a5010c19-497b-43b3-b4a7-f4c8ed3c1da3', false, 'AZ-SAT',
  'Saatlı',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('1bfa0fcc-b911-46b8-856a-4d5274c1dda8', false, 'AZ-SAB',
  'Sabirabad',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('4e571475-8753-434e-998d-2872dc8ea417', false, 'AZ-SAH',
  'Şahbuz',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('a8f996d9-667c-45ca-812a-bc4ff931246d', false, 'AZ-SAL',
  'Salyan',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('ad9d1431-7988-4595-b7ef-99a0651583cc', false, 'AZ-SMI',
  'Şamaxı',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('03acdad8-3115-4fcd-9d8b-a47b57ee8158', false, 'AZ-SMX',
  'Samux',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('a1dab0a2-6531-46e6-9ee5-8477c3455be4', false, 'AZ-SAD',
  'Sədərək',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('f7c84105-5b0e-415c-a99d-fd7bbb0f8e35', false, 'AZ-SAK',
  'Şəki',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('b05533f0-9470-490e-9a80-f3f7ba0cf289', false, 'AZ-SA',
  'Şəki city',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('7ba1a015-d1de-4388-84ec-22edcf5de86f', false, 'AZ-SKR',
  'Şəmkir',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('eb1449e4-5d49-4ee8-ade8-732f906c9bf2', false, 'AZ-SAR',
  'Şərur',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('9c47e925-949f-4c52-a8fd-a1691b371bad', false, 'AZ-SIY',
  'Siyəzən',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('49ad2aae-db5d-4559-8b39-d0c04baf485d', false, 'AZ-SM',
  'Sumqayit',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('40a871cf-0871-4bc3-94c2-ffbd0643972a', false, 'AZ-SUS',
  'Şuşa',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('d64d0506-6f2f-4f3b-9932-cc11e9d5c461', false, 'AZ-SS',
  'Şuşa city',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('c6e0d493-756c-428b-a68f-78205262aa07', false, 'AZ-TAR',
  'Tər-Tər',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('e9ba85fd-7426-4879-a6d8-de8741b3019a', false, 'AZ-TOV',
  'Tovuz',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('e7b9f8dd-1927-470d-8ab1-6c39ce10b1b2', false, 'AZ-UCA',
  'Ucar',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('50ca04d9-242e-4bb5-a40a-5961a07af896', false, 'AZ-XAC',
  'Xaçmaz',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('85452650-fc64-4100-bd31-5efe697b5900', false, 'AZ-XA',
  'Xankəndi',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('f129fa31-b909-4dcb-adf0-41958aadec85', false, 'AZ-XIZ',
  'Xızı',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('c1aebedf-5b57-451c-ab4b-9b29b6a67bdc', false, 'AZ-XCI',
  'Xocalı',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('870f4efb-71dd-40ad-8bfe-e9542674514f', false, 'AZ-XVD',
  'Xocavənd',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('c520b73d-c700-4989-8ecc-f2a75292c412', false, 'AZ-YAR',
  'Yardımlı',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('bbd0f43a-dab5-44b9-8a30-d71dfecfb0fd', false, 'AZ-YEV',
  'Yevlax',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('75839742-603d-4330-9c87-f7d06bb1ec68', false, 'AZ-YE',
  'Yevlax city',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('563b6a5a-48c8-4f21-a183-99abff582773', false, 'AZ-ZAQ',
  'Zaqatala',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('4a9beaa5-050f-4acf-8375-e1d26927baa7', false, 'AZ-ZAN',
  'Zəngilan',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('7a6a6df6-24a6-4648-85d1-71632d41ae0b', false, 'AZ-ZAR',
  'Zərdab',
  'aa01627b-f51b-46bb-8ddf-482cbf287415');
INSERT INTO yacare_admission.province
 VALUES ('873a99c1-a956-404a-b0bd-acc8e9335ebb', false, 'BA-BRC',
  'Brčko Distrikt',
  '72953aea-f56d-41ed-ae9c-cb242b72b683');
INSERT INTO yacare_admission.province
 VALUES ('773488b5-74b7-4ca4-948e-3debd7b9ac6c', false, 'BA-BIH',
  'Federacija Bosne i Hercegovine',
  '72953aea-f56d-41ed-ae9c-cb242b72b683');
INSERT INTO yacare_admission.province
 VALUES ('4f4f1ea2-f2ba-46d9-8633-c0301f485379', false, 'BA-SRP',
  'Republika Srpska',
  '72953aea-f56d-41ed-ae9c-cb242b72b683');
INSERT INTO yacare_admission.province
 VALUES ('c1c2a556-6eb3-4945-99be-9d74295b65eb', false, 'BB-01',
  'Christ Church',
  '1b1be890-3ade-4f8b-96e1-649022933591');
INSERT INTO yacare_admission.province
 VALUES ('45ee065b-c1ad-4f3d-bcb3-724dc3297711', false, 'BB-02',
  'Saint Andrew',
  '1b1be890-3ade-4f8b-96e1-649022933591');
INSERT INTO yacare_admission.province
 VALUES ('06837119-7168-4766-b6cc-30cf4c795cc8', false, 'BB-03',
  'Saint George',
  '1b1be890-3ade-4f8b-96e1-649022933591');
INSERT INTO yacare_admission.province
 VALUES ('9036aa7b-ed75-470e-9fac-b6608f6fd869', false, 'BB-04',
  'Saint James',
  '1b1be890-3ade-4f8b-96e1-649022933591');
INSERT INTO yacare_admission.province
 VALUES ('ccd09016-044d-48d6-892e-63c564d4f620', false, 'BB-05',
  'Saint John',
  '1b1be890-3ade-4f8b-96e1-649022933591');
INSERT INTO yacare_admission.province
 VALUES ('0edbbe19-a43c-4936-8ef8-298ebc5f1d60', false, 'BB-06',
  'Saint Joseph',
  '1b1be890-3ade-4f8b-96e1-649022933591');
INSERT INTO yacare_admission.province
 VALUES ('9144834b-13a6-464c-83f6-35d69c34be32', false, 'BB-07',
  'Saint Lucy',
  '1b1be890-3ade-4f8b-96e1-649022933591');
INSERT INTO yacare_admission.province
 VALUES ('3778e72c-011d-4586-9af0-41fabaca000d', false, 'BB-08',
  'Saint Michael',
  '1b1be890-3ade-4f8b-96e1-649022933591');
INSERT INTO yacare_admission.province
 VALUES ('bc4c6680-3cbb-4067-b814-aa33acfa352a', false, 'BB-09',
  'Saint Peter',
  '1b1be890-3ade-4f8b-96e1-649022933591');
INSERT INTO yacare_admission.province
 VALUES ('e8c01dad-0477-42e1-901f-67df73bbf847', false, 'BB-10',
  'Saint Philip',
  '1b1be890-3ade-4f8b-96e1-649022933591');
INSERT INTO yacare_admission.province
 VALUES ('aa87017b-3713-4df7-bd9f-2f2c9b47ff2c', false, 'BB-11',
  'Saint Thomas',
  '1b1be890-3ade-4f8b-96e1-649022933591');
INSERT INTO yacare_admission.province
 VALUES ('cb191328-1820-4126-8559-2b66e0bcfbb0', false, 'BD-05',
  'Bagerhat',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('cdf9e4b3-719a-4a8f-89b9-ba426bae2386', false, 'BD-01',
  'Bandarban',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('646c4eb0-0165-4b00-b36e-023b560466bb', false, 'BD-02',
  'Barguna',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('21c212b5-da57-43ba-b8ed-9ca601087a4f', false, 'BD-06',
  'Barisal',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('8174157c-538a-43db-9673-3cc8bc0e6d51', false, 'BD-07',
  'Bhola',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('0ada3999-5624-4f1b-a52d-7d2d5348c756', false, 'BD-03',
  'Bogra',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('a4508fce-0b17-43a3-9276-e448f5a855d3', false, 'BD-04',
  'Brahmanbaria',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('44dd8c6b-d97f-41fe-b9f1-b2668cd67f6e', false, 'BD-09',
  'Chandpur',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('970df8bd-1036-44ef-801f-c69788d96601', false, 'BD-45',
  'Chapai Nawabganj',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('a2dcf6a7-57c8-4aa9-8bb8-40e59fb00d04', false, 'BD-10',
  'Chittagong',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('317bd964-a083-4930-80cf-76f6e82071dd', false, 'BD-12',
  'Chuadanga',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('9086c8fc-3281-4726-bd4f-00c0930f534b', false, 'BD-08',
  'Comilla',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('a1b8aef4-8219-441f-ae40-cd5a1e8956bb', false, 'BD-11',
  'Cox''s Bazar',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('b5ea4e9d-a559-4a5a-b576-5e9729736b65', false, 'BD-13',
  'Dhaka',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('1f359067-b05b-49fa-b19a-f4fe75d83ce8', false, 'BD-14',
  'Dinajpur',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('84cb8ec8-453b-4b0f-ac4f-653c664a1b73', false, 'BD-15',
  'Faridpur',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('aaff979c-4ae7-4713-b006-8b258e4bd0d5', false, 'BD-16',
  'Feni',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('a9574d99-8d21-4753-90ac-c51a7654b148', false, 'BD-19',
  'Gaibandha',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('819642b4-acf3-42ed-a980-828b7dda1b9c', false, 'BD-18',
  'Gazipur',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('dfe5dfd2-cf9f-4cb2-a550-d378b9e60275', false, 'BD-17',
  'Gopalganj',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('f16e202e-dacf-4f3b-82b0-064fd5c32c6b', false, 'BD-20',
  'Hobiganj',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('03628d38-17d2-47e8-8b5b-ce35d7afb48e', false, 'BD-21',
  'Jamalpur',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('07065db3-2a88-4502-bdec-8bc1a3d17e95', false, 'BD-22',
  'Jessore',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('cc0d114a-aa37-4776-a69b-08141dac7f98', false, 'BD-25',
  'Jhalokati',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('6135d3b6-09e5-428e-9480-47b625df6cf0', false, 'BD-23',
  'Jinaidaha',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('5c551a4c-c2bb-4f77-9b2e-94c385e92414', false, 'BD-24',
  'Joypurhat',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('109622ff-2eef-434d-ac63-5b1daf0b7b76', false, 'BD-29',
  'Khagrachari',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('440e4787-5a46-4085-ba73-6c43c62af327', false, 'BD-27',
  'Khulna',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('03c2eefe-b790-448a-9ac3-b861822f1bb4', false, 'BD-26',
  'Kishoreganj',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('4fadf1f1-6499-4392-bf81-7af0ccce692f', false, 'BD-28',
  'Kurigram',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('f4cf8df3-e38b-4508-84de-1088e0cd5605', false, 'BD-30',
  'Kustia',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('f87e2793-fd80-48da-8963-08b3d4758e46', false, 'BD-31',
  'Lakshmipur',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('7ea007f1-f0db-4c07-8161-c236f6f67546', false, 'BD-32',
  'Lalmonirhat',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('6e5e1fad-4333-4535-abdd-6549dfd8fae5', false, 'BD-36',
  'Madaripur',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('b018f65a-9fed-4bc5-a3e7-7ded47614faf', false, 'BD-37',
  'Magura',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('c4d8788c-1dfe-4ae3-b93e-c9ba96d720d9', false, 'BD-33',
  'Manikganj',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('e54635a6-1b06-44d9-b532-ddad4df07e04', false, 'BD-39',
  'Meherpur',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('f36f1a14-41e0-4761-9bc2-729e60abfa25', false, 'BD-38',
  'Moulvibazar',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('eca6aa3b-aedb-4485-87b7-e1cbb2da2cf3', false, 'BD-35',
  'Munshiganj',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('e4424524-8beb-42f5-9288-47592c47524a', false, 'BD-34',
  'Mymensingh',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('d1c174b1-eb4c-4e11-bfb0-af7bc6f8a156', false, 'BD-48',
  'Naogaon',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('93b47df5-df20-46a6-8078-727539f112fe', false, 'BD-43',
  'Narail',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('e5c4d40a-012f-4948-bb47-05254452a251', false, 'BD-40',
  'Narayanganj',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('3c79e15f-8f7f-4f1c-89b5-5f5da6e3d351', false, 'BD-42',
  'Narshingdi',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('80c6db75-3f29-43fa-9b70-6cf9c6f75a48', false, 'BD-44',
  'Natore',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('1649bf52-ac1a-4bf9-ba56-4b0a771b4831', false, 'BD-41',
  'Netrakona',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('08e3a65c-cef7-4257-916c-1d08268a89a9', false, 'BD-46',
  'Nilphamari',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('edce5b92-47c8-4fa9-b8ed-21b3467f81fd', false, 'BD-47',
  'Noakhali',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('ac90747f-2099-4872-a6e5-ad87e71066bc', false, 'BD-49',
  'Pabna',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('23c1ec82-6d72-4c02-a606-92389672c9f4', false, 'BD-52',
  'Panchagarh',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('b613eb43-cb30-4935-9cf4-26abc5c09470', false, 'BD-50',
  'Pirojpur',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('f3e0a5a3-1ba8-4c72-8342-9fb98d3ddc2b', false, 'BD-51',
  'Potuakhali',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('fd82b28d-7e6e-483a-babc-457a0b472a10', false, 'BD-53',
  'Rajbari',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('b4b179d8-20d6-4351-a8cd-fb2be3c59359', false, 'BD-54',
  'Rajshahi',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('2bae5b49-9695-42b6-8bdf-020bd185062f', false, 'BD-56',
  'Rangamati',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('e3b86e6c-02bc-4f06-876d-178cbc222eae', false, 'BD-55',
  'Rangpur',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('d7ea2b31-f467-40d6-9276-a5f103ad447e', false, 'BD-58',
  'Satkhira',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('6dd8d664-59dc-46a1-a72b-fd087d676857', false, 'BD-62',
  'Shariatpur',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('437cd02c-d340-4ffe-85f2-9783e18f8d92', false, 'BD-57',
  'Sherpur',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('9e422ead-6a60-4761-956f-dae75a2d75ae', false, 'BD-59',
  'Sirajganj',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('ac3fbb57-6c8e-466e-af93-fc0764949bf2', false, 'BD-61',
  'Sunamganj',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('04627982-e367-4ebd-bf2d-6961f60e91df', false, 'BD-60',
  'Sylhet',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('fc796bb1-ac55-4393-997c-747442bb9d8f', false, 'BD-63',
  'Tangail',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('f6524dca-0f35-4091-9b28-6d98a667b91f', false, 'BD-64',
  'Thakurgaon',
  '6a46ce2a-0127-4a15-a5d8-bc85b8f158d6');
INSERT INTO yacare_admission.province
 VALUES ('df7df506-7c04-4c54-97e3-8cbc81e5ed61', false, 'BE-VAN',
  'Anvers',
  '9bb7fa87-1e18-4775-907f-96d1e8313e0d');
INSERT INTO yacare_admission.province
 VALUES ('ac621dc3-6d2d-4f7c-94cd-4b2c58d38190', false, 'BE-VBR',
  'Brabant Flamand',
  '9bb7fa87-1e18-4775-907f-96d1e8313e0d');
INSERT INTO yacare_admission.province
 VALUES ('02615622-f0ba-4778-9074-d14fe0358417', false, 'BE-WBR',
  'Brabant Wallon',
  '9bb7fa87-1e18-4775-907f-96d1e8313e0d');
INSERT INTO yacare_admission.province
 VALUES ('467f62ee-247a-4889-881b-46102ad818ed', false, 'BE-BRU',
  'Bruxelles-Capitale',
  '9bb7fa87-1e18-4775-907f-96d1e8313e0d');
INSERT INTO yacare_admission.province
 VALUES ('98d83b8b-33bb-4fa8-bf11-2c76fd710715', false, 'BE-VWV',
  'Flandre Occidentale',
  '9bb7fa87-1e18-4775-907f-96d1e8313e0d');
INSERT INTO yacare_admission.province
 VALUES ('8b47113a-6aca-4e92-87ea-aed15f8e256c', false, 'BE-VOV',
  'Flandre Orientale',
  '9bb7fa87-1e18-4775-907f-96d1e8313e0d');
INSERT INTO yacare_admission.province
 VALUES ('957b30b2-3a39-453c-ab52-22789912add8', false, 'BE-WHT',
  'Hainaut',
  '9bb7fa87-1e18-4775-907f-96d1e8313e0d');
INSERT INTO yacare_admission.province
 VALUES ('22f452c6-7e16-4a80-8565-212f33df3b43', false, 'BE-WLG',
  'Liège',
  '9bb7fa87-1e18-4775-907f-96d1e8313e0d');
INSERT INTO yacare_admission.province
 VALUES ('eb81f417-d5a1-477f-bd71-d4c8d9332ded', false, 'BE-VLI',
  'Limbourg',
  '9bb7fa87-1e18-4775-907f-96d1e8313e0d');
INSERT INTO yacare_admission.province
 VALUES ('e9412bfa-f905-4136-a259-6fa740419a88', false, 'BE-WLX',
  'Luxembourg',
  '9bb7fa87-1e18-4775-907f-96d1e8313e0d');
INSERT INTO yacare_admission.province
 VALUES ('1b173ef7-659c-4b87-8747-8e4e2e990c0d', false, 'BE-WNA',
  'Namur',
  '9bb7fa87-1e18-4775-907f-96d1e8313e0d');
INSERT INTO yacare_admission.province
 VALUES ('618ba88c-06e0-4199-b2b0-22c13a3a70dd', false, 'BF-BAL',
  'Balé',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('2db9bb60-5c5e-462e-b90f-b12243cfd107', false, 'BF-BAM',
  'Bam',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('af0cf3d6-106b-49bc-b077-8209bf991be6', false, 'BF-BAN',
  'Banwa',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('2b11ac9e-7dfd-47c4-a0e7-904fd64cb2b9', false, 'BF-BAZ',
  'Bazèga',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('75a90ba3-b2d9-426d-bc3b-86bc10182a41', false, 'BF-BGR',
  'Bougouriba',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('76a8842b-6bca-42e5-a6d3-2c82e4fe5b4a', false, 'BF-BLG',
  'Boulgou',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('eefc5040-4677-4d87-89fd-8b2ba12ccfd6', false, 'BF-BLK',
  'Boulkiemdé',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('8cdf2047-9b67-4ed9-834b-1013f77bed6e', false, 'BF-COM',
  'Comoé',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('cea89e95-ab5f-49d5-a2f8-b315a3bcca2c', false, 'BF-GAN',
  'Ganzourgou',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('0fc8796a-1082-4650-ba0c-8905fe49a872', false, 'BF-GNA',
  'Gnagna',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('74062e60-3ac8-4255-9f3f-69ae205737d7', false, 'BF-GOU',
  'Gourma',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('a4c50e18-3d5e-4724-8939-b9bc75a27b07', false, 'BF-HOU',
  'Houet',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('c334a268-d33d-4d78-a24e-6a66b7b8793d', false, 'BF-IOB',
  'Ioba',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('bcedeee0-6f41-457c-bf71-5e018bfcd001', false, 'BF-KAD',
  'Kadiogo',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('eea501ef-1e05-4e2b-8a80-5dac91f5031f', false, 'BF-KEN',
  'Kénédougou',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('f0c7c3c4-ec76-4ba3-9ad0-8e6e07bdf375', false, 'BF-KMD',
  'Komondjari',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('22dfeefa-2455-4ebf-b162-e2328864c913', false, 'BF-KMP',
  'Kompienga',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('56e28d53-7e76-40db-b63e-2182e9617963', false, 'BF-KOS',
  'Kossi',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('334f0f27-dc8e-4325-b00d-2a6dcb783b63', false, 'BF-KOP',
  'Koulpélogo',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('5ae3a7e9-8555-4ced-a7a0-78864442ed6c', false, 'BF-KOT',
  'Kouritenga',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('d2c117be-44c6-4ac0-96db-6fb37eb894c2', false, 'BF-KOW',
  'Kourwéogo',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('bdf17075-beaa-46d2-ad47-ea0b999ed29f', false, 'BF-LER',
  'Léraba',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('0bb6572c-5fa6-4ea5-9036-fcd9a91943f5', false, 'BF-LOR',
  'Loroum',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('6d3c0dc2-759e-469f-945e-1097875b9065', false, 'BF-MOU',
  'Mouhoun',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('61c9bfd1-59ea-4f4d-a344-45683873c128', false, 'BF-NAO',
  'Nahouri',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('32b0057e-e04e-494c-b9e4-763ec3477fa4', false, 'BF-NAM',
  'Namentenga',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('b8f41d41-e830-4ad7-a8d9-bb3b5ec6a11a', false, 'BF-NAY',
  'Nayala',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('21409e53-8341-4e20-a615-5d4929e85f72', false, 'BF-NOU',
  'Noumbiel',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('6ae77bb6-c1ba-4674-9de8-acbbc612ad78', false, 'BF-OUB',
  'Oubritenga',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('a99f76a1-596a-45e8-8bb4-b28da849ee88', false, 'BF-OUD',
  'Oudalan',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('edda39af-f00d-4274-8585-d3af71510e93', false, 'BF-PAS',
  'Passoré',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('64cf783c-bf84-4cb8-83f6-ee086954c3ad', false, 'BF-PON',
  'Poni',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('9e802e1e-5910-49ec-a77f-ca344a34ff8b', false, 'BF-SNG',
  'Sanguié',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('0bde22ac-c622-4c92-8d8a-9a2ca9a09c58', false, 'BF-SMT',
  'Sanmatenga',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('064779d9-c2a0-41fd-a515-aa85b31c4d03', false, 'BF-SEN',
  'Séno',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('ec58a6ea-70cc-4a85-b57a-9bdf19e45ffe', false, 'BF-SIS',
  'Sissili',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('6616b948-275c-46c4-beb9-2efd93f40f3d', false, 'BF-SOM',
  'Soum',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('feb8f9e8-206f-4c5b-a3a8-173d7b8ecd87', false, 'BF-SOR',
  'Sourou',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('3ab623f2-a6eb-4199-a02a-fead04dbc429', false, 'BF-TAP',
  'Tapoa',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('860e47ed-9f9a-4c22-8adf-deb25bfbb788', false, 'BF-TUI',
  'Tui',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('8a7c0b5d-9ab5-4269-ad8d-386784e1577d', false, 'BF-YAG',
  'Yagha',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('614295f8-26e4-4ef3-880e-67de0ae324fc', false, 'BF-YAT',
  'Yatenga',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('df7dc6ad-882e-4d1b-9160-4db2e7ee4ca9', false, 'BF-ZIR',
  'Ziro',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('08ff7182-57bb-4557-9f1b-717d974e8f5b', false, 'BF-ZON',
  'Zondoma',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('016f7019-2e5e-474a-8fc9-154d82909744', false, 'BF-ZOU',
  'Zoundwéogo',
  '0199e08a-1fb1-4172-ab86-e41e74929f35');
INSERT INTO yacare_admission.province
 VALUES ('d01f5047-ca0d-42d8-90f5-b11a6387696d', false, 'BG-01',
  'Благоевград',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('7872e0c4-5262-454a-941a-02171b043c34', false, 'BG-02',
  'Бургас',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('0e484047-cf55-4fbe-8357-d0c6059ffde1', false, 'BG-03',
  'Варна',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('f8f4cdae-74a0-4977-aa49-4139f38789f7', false, 'BG-04',
  'Велико Търново',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('0d38cfe3-0913-476f-a439-d312e63dab90', false, 'BG-05',
  'Видин',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('0803dbf6-50c1-4ca5-936a-e16dfe3e295d', false, 'BG-06',
  'Враца',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('174ca3fd-e5dd-4815-ac98-11b10c5b09a5', false, 'BG-07',
  'Габрово',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('ff6e37a3-f938-4bdd-a253-7846191cce16', false, 'BG-08',
  'Добрич',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('cc01163d-8ad0-4a07-b6e6-e850d33a9d1c', false, 'BG-09',
  'Кърджали',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('88b11e1d-0ce0-4e63-ba91-272e3f9b6ca4', false, 'BG-10',
  'Кюстендил',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('3a46af06-4109-4cbe-b429-2251e262fa98', false, 'BG-11',
  'Ловеч',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('4600152e-2f1b-418e-8d9e-4612b41df19a', false, 'BG-12',
  'Монтана',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('9cdbb406-b5a1-4375-80c2-d13beb90b076', false, 'BG-13',
  'Пазарджик',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('c00e53da-bd55-460d-8aaa-00ab2d1fbb90', false, 'BG-14',
  'Перник',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('78d41593-8746-4b99-978f-a37b486997d0', false, 'BG-15',
  'Плевен',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('78613e9e-a9fb-42cf-b25a-17c75f756ad3', false, 'BG-16',
  'Пловдив',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('eac153de-ea0e-4b5b-acfd-585389c3c951', false, 'BG-17',
  'Разград',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('922af555-9e0c-4397-b7a7-5e41eaf1ffa4', false, 'BG-18',
  'Русе',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('9db51650-6842-4eb8-aaa2-ac99873ffeec', false, 'BG-19',
  'Силистра',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('45e73027-1f62-40dd-bccb-f98b2c71f0d7', false, 'BG-20',
  'Сливен',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('932f55ab-3d6c-497c-8abb-39f0dd17b2fa', false, 'BG-21',
  'Смолян',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('dae876fa-5d7a-44c4-979e-f5be3ea50ed5', false, 'BG-23',
  'София',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('b8888c63-092f-4a92-a4e9-d221cbcd7bfa', false, 'BG-22',
  'София-град',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('70c19156-c9cc-409c-9654-50e4eb963f7f', false, 'BG-24',
  'Стара Загора',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('3ea2ac51-8f13-438b-9ae2-626993ed60d4', false, 'BG-25',
  'Търговище',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('45ce9f84-d5e4-4eac-9a09-83c4da229eab', false, 'BG-26',
  'Хасково',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('ac84f097-e11c-4674-8c5a-d3d57d95d2f5', false, 'BG-27',
  'Шумен',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('38e3d9d8-26bc-4cf0-93eb-cfb1fe113231', false, 'BG-28',
  'Ямбол',
  'fee4dab2-d21c-4beb-9b71-13dec55e3199');
INSERT INTO yacare_admission.province
 VALUES ('15c3c519-a415-4c19-bb75-9bd4bf0a2bb9', false, 'BH-13',
  'Capital Governorate',
  'cbab60a1-6484-418a-8c4e-929f1ae613ac');
INSERT INTO yacare_admission.province
 VALUES ('d0dd0805-1cb6-449c-af2f-c04e3a8d82b6', false, 'BH-16',
  'Central Governorate',
  'cbab60a1-6484-418a-8c4e-929f1ae613ac');
INSERT INTO yacare_admission.province
 VALUES ('86c92d3b-d9c0-4ae6-81bc-8f01e6adea93', false, 'BH-15',
  'Muharraq Governorate',
  'cbab60a1-6484-418a-8c4e-929f1ae613ac');
INSERT INTO yacare_admission.province
 VALUES ('ae983107-111e-4e22-881e-2d9c4c709f78', false, 'BH-17',
  'Northern Governorate',
  'cbab60a1-6484-418a-8c4e-929f1ae613ac');
INSERT INTO yacare_admission.province
 VALUES ('2fff7a84-0853-416e-87ac-095d34f225c9', false, 'BH-14',
  'Southern Governorate',
  'cbab60a1-6484-418a-8c4e-929f1ae613ac');
INSERT INTO yacare_admission.province
 VALUES ('c5bb27d6-627e-495f-9d07-89edb84b8ff9', false, 'BI-BB',
  'Bubanza',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('622aa232-2114-43b6-918d-83822f2d4da7', false, 'BI-BM',
  'Bujumbura Mairie',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('cf634232-94d2-4940-98f7-5ffb470ddb3d', false, 'BI-BL',
  'Bujumbura Rural',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('d2d09edd-bd73-4d0b-a5b5-3e94227edfb2', false, 'BI-BR',
  'Bururi',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('9873eee6-1342-4f93-ab24-9b7d9cf6f942', false, 'BI-CA',
  'Cankuzo',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('4ca22d74-2e54-43d8-b427-20f38c9f8393', false, 'BI-CI',
  'Cibitoke',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('16b4d3d2-288e-4771-81df-d01dea2eea83', false, 'BI-GI',
  'Gitega',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('1afe7411-0b2a-4c79-bc19-104fcdc3e714', false, 'BI-KR',
  'Karuzi',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('898462e7-2f15-4f53-9bdf-cecbae298ffb', false, 'BI-KY',
  'Kayanza',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('f874383a-65d0-433d-8c37-f02cc8e21e72', false, 'BI-KI',
  'Kirundo',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('7bc777b1-cd12-4a8c-86c3-799590bcdde6', false, 'BI-MA',
  'Makamba',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('ff1a8bf4-b716-4249-a853-315edca25a15', false, 'BI-MU',
  'Muramvya',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('9d5e02d2-7a73-4cc9-9a26-b56c297f8e08', false, 'BI-MY',
  'Muyinga',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('87413885-2d58-4162-b4ea-11ed2c60dd3b', false, 'BI-MW',
  'Mwaro',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('69a705ae-4722-4597-be0c-710359fd003b', false, 'BI-NG',
  'Ngozi',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('193d2437-e0ad-4d93-b957-4f894be1a324', false, 'BI-RT',
  'Rutana',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('c7b3ac73-4092-4896-a262-66a2865a4ac7', false, 'BI-RY',
  'Ruyigi',
  'b8b51680-60e9-450b-a82f-314628e9a07d');
INSERT INTO yacare_admission.province
 VALUES ('e8767407-a95e-4b51-8622-447f42350513', false, 'BJ-AL',
  'Alibori',
  'e83f01a8-df1d-48ff-a388-c058b73d73d3');
INSERT INTO yacare_admission.province
 VALUES ('21a71856-ca90-4683-bed9-8327b59e011a', false, 'BJ-AK',
  'Atacora',
  'e83f01a8-df1d-48ff-a388-c058b73d73d3');
INSERT INTO yacare_admission.province
 VALUES ('0857b66c-fc0e-428d-a696-a8fb9db4a22e', false, 'BJ-AQ',
  'Atlantique',
  'e83f01a8-df1d-48ff-a388-c058b73d73d3');
INSERT INTO yacare_admission.province
 VALUES ('e7ec1562-314e-4355-a552-4cabd3763d24', false, 'BJ-BO',
  'Borgou',
  'e83f01a8-df1d-48ff-a388-c058b73d73d3');
INSERT INTO yacare_admission.province
 VALUES ('eeb670bb-94ec-4c25-a0f8-0da5a2733ecb', false, 'BJ-CO',
  'Collines',
  'e83f01a8-df1d-48ff-a388-c058b73d73d3');
INSERT INTO yacare_admission.province
 VALUES ('9e9f59f1-7b76-4611-afb0-13b2095423c5', false, 'BJ-KO',
  'Couffo',
  'e83f01a8-df1d-48ff-a388-c058b73d73d3');
INSERT INTO yacare_admission.province
 VALUES ('f92ee9fa-32ee-4583-ba5b-45560a69d94f', false, 'BJ-DO',
  'Donga',
  'e83f01a8-df1d-48ff-a388-c058b73d73d3');
INSERT INTO yacare_admission.province
 VALUES ('c5343ffa-19c8-414f-8f77-be315c4d3688', false, 'BJ-LI',
  'Littoral',
  'e83f01a8-df1d-48ff-a388-c058b73d73d3');
INSERT INTO yacare_admission.province
 VALUES ('e8f05165-8f15-40e1-8355-8861f4c92adb', false, 'BJ-MO',
  'Mono',
  'e83f01a8-df1d-48ff-a388-c058b73d73d3');
INSERT INTO yacare_admission.province
 VALUES ('3ac1f357-63f1-4410-beaf-dd58a8f9326f', false, 'BJ-OU',
  'Ouémé',
  'e83f01a8-df1d-48ff-a388-c058b73d73d3');
INSERT INTO yacare_admission.province
 VALUES ('bc618046-430f-4ad7-b13d-fa374c24f322', false, 'BJ-PL',
  'Plateau',
  'e83f01a8-df1d-48ff-a388-c058b73d73d3');
INSERT INTO yacare_admission.province
 VALUES ('05841795-a92a-416f-a0a0-0342e3bcd197', false, 'BJ-ZO',
  'Zou',
  'e83f01a8-df1d-48ff-a388-c058b73d73d3');
INSERT INTO yacare_admission.province
 VALUES ('7e6623e1-0095-48a4-97e6-b97a37f234d5', false, 'BN-BE',
  'Belait',
  '2e7556ff-a9c5-4a4d-9a0c-ee16183a6ded');
INSERT INTO yacare_admission.province
 VALUES ('bed6928d-77bf-4169-9fd9-43974f53cd95', false, 'BN-BM',
  'Brunei Muara',
  '2e7556ff-a9c5-4a4d-9a0c-ee16183a6ded');
INSERT INTO yacare_admission.province
 VALUES ('f783b008-9129-4534-a886-2d81e4f4d6a1', false, 'BN-TE',
  'Temburong',
  '2e7556ff-a9c5-4a4d-9a0c-ee16183a6ded');
INSERT INTO yacare_admission.province
 VALUES ('2785ae29-6eeb-4e32-8bb3-d176255282c2', false, 'BN-TU',
  'Tutong',
  '2e7556ff-a9c5-4a4d-9a0c-ee16183a6ded');
INSERT INTO yacare_admission.province
 VALUES ('a0c8d2d8-0a41-4033-9855-6c293b2181ce', false, 'BO-B',
  'Beni',
  'a4df6fdd-8dd8-42bf-ab54-3aae1714bede');
INSERT INTO yacare_admission.province
 VALUES ('fc922a0e-dbf0-4470-86ab-0312406ede69', false, 'BO-H',
  'Chuquisaca',
  'a4df6fdd-8dd8-42bf-ab54-3aae1714bede');
INSERT INTO yacare_admission.province
 VALUES ('5560f175-bc1a-421b-974d-ce9ccd0aa043', false, 'BO-C',
  'Cochabamba',
  'a4df6fdd-8dd8-42bf-ab54-3aae1714bede');
INSERT INTO yacare_admission.province
 VALUES ('6b436a92-f6c3-4b4b-a67d-ad92f8a5f21b', false, 'BO-L',
  'La Paz',
  'a4df6fdd-8dd8-42bf-ab54-3aae1714bede');
INSERT INTO yacare_admission.province
 VALUES ('c5b445fc-dd06-436e-b4c0-0d895d62ec20', false, 'BO-O',
  'Oruro',
  'a4df6fdd-8dd8-42bf-ab54-3aae1714bede');
INSERT INTO yacare_admission.province
 VALUES ('4e5a45aa-4a12-43ca-8344-a8a57a89ba9b', false, 'BO-N',
  'Pando',
  'a4df6fdd-8dd8-42bf-ab54-3aae1714bede');
INSERT INTO yacare_admission.province
 VALUES ('1afdf88b-fc60-43b9-b2e9-b0568f9c95a4', false, 'BO-P',
  'Potosí',
  'a4df6fdd-8dd8-42bf-ab54-3aae1714bede');
INSERT INTO yacare_admission.province
 VALUES ('f61a2c8b-518a-4d98-a2f5-3febc793f89d', false, 'BO-S',
  'Santa Cruz',
  'a4df6fdd-8dd8-42bf-ab54-3aae1714bede');
INSERT INTO yacare_admission.province
 VALUES ('a2d25299-d973-4e2f-8c89-bedd0be0d4fd', false, 'BO-T',
  'Tarija',
  'a4df6fdd-8dd8-42bf-ab54-3aae1714bede');
INSERT INTO yacare_admission.province
 VALUES ('3470e176-09f8-46ae-94f4-9aee4395cba2', false, 'BR-AC',
  'Acre',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('5145c6e2-b1fb-4272-9924-cdc848b44ce8', false, 'BR-AL',
  'Alagoas',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('dbab4bb9-c79a-43f3-8f71-238b49bdc3c1', false, 'BR-AP',
  'Amapá',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('fb607a77-f3ce-45f5-85f3-a46c840fac03', false, 'BR-AM',
  'Amazonas',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('eaa7c2f3-d6ca-428a-92c6-3cbfbf4e74bd', false, 'BR-BA',
  'Bahia',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('64c34e66-783d-4b1b-97fa-ee73be01c370', false, 'BR-CE',
  'Ceará',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('2a9680ab-8767-4950-94a7-4423cf4a8dc8', false, 'BR-DF',
  'Distrito Federal',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('ac21ea4a-6973-4676-a2a6-f3204f950867', false, 'BR-ES',
  'Espírito Santo',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('5cfa95da-47ac-45af-bd8d-0e5b01ae3105', false, 'BR-GO',
  'Goiás',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('47657e00-64d7-4045-be45-b9ce8b597184', false, 'BR-MA',
  'Maranhão',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('c8dcb129-89a4-4d65-8e98-3389f9841fb5', false, 'BR-MT',
  'Mato Grosso',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('acb1a78e-71ec-43a3-9fca-7712ef920bc2', false, 'BR-MS',
  'Mato Grosso do Sul',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('2cd99976-be0c-4049-9622-4a88222f3b86', false, 'BR-MG',
  'Minas Gerais',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('4e53f27b-57fe-4015-877b-dc7aace8a2b8', false, 'BR-PA',
  'Pará',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('87f21969-2e91-41be-ad73-763805cc5f2c', false, 'BR-PB',
  'Paraíba',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('9c9f32e4-a301-4061-8000-28817748d874', false, 'BR-PR',
  'Paraná',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('31fab175-e7b0-405a-b68a-71d81c812949', false, 'BR-PE',
  'Pernambuco',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('48cf6b98-a018-4872-844f-27698fea55bc', false, 'BR-PI',
  'Piauí',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('d9debbd8-f4b6-4e88-a068-88dfd22a0b79', false, 'BR-RJ',
  'Rio de Janeiro',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('b03eb4f4-a064-43c6-8ba5-ebab6423122e', false, 'BR-RN',
  'Rio Grande do Norte',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('5dcae893-aed5-4874-bc01-3e7df56c12f3', false, 'BR-RS',
  'Rio Grande do Sul',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('379f5cac-4580-436d-8a39-a25f8d35c1e5', false, 'BR-RO',
  'Rondônia',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('ac9c67dd-0b55-47fa-8843-4023d94944b8', false, 'BR-RR',
  'Roraima',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('452f5ddc-77ad-47fc-842a-65d0ec66472d', false, 'BR-SC',
  'Santa Catarina',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('dafbea07-a86e-41f9-9459-7f4472c2fec1', false, 'BR-SP',
  'São Paulo',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('6239f06f-c728-45ff-b4c9-c713846370b1', false, 'BR-SE',
  'Sergipe',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('6602839f-b60e-457d-82e8-e914b8081f1b', false, 'BR-TO',
  'Tocantins',
  '6a0c0fb6-6fba-46a1-be1a-77124d6e7c90');
INSERT INTO yacare_admission.province
 VALUES ('426b62d8-460c-432f-a19b-136b20e71807', false, 'BS-AC',
  'Acklins and Crooked Islands',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('bbe76b05-1b07-47eb-8a7c-e56ffd79fbc8', false, 'BS-BI',
  'Bimini',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('412a3152-045e-4a6d-9b4b-a9c0ea48bb4a', false, 'BS-CI',
  'Cat Island',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('c264c38f-88d2-4889-a3e4-5cb5eb9a5e56', false, 'BS-EX',
  'Exuma',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('7a649f8a-e502-4f3f-a56a-b4185d45655c', false, 'BS-FP',
  'Freeport',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('6759cf85-e128-4ccd-8f34-e34f73ba0f5e', false, 'BS-FC',
  'Fresh Creek',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('da71cd90-abcc-4f0b-9098-05a1fe11495d', false, 'BS-GH',
  'Governor''s Harbour',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('01d0a92d-8490-435b-ab90-84dea7dd9722', false, 'BS-GT',
  'Green Turtle Cay',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('8544aafc-1dcd-4ef8-b4b7-231fa5eb985c', false, 'BS-HI',
  'Harbour Island',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('1dd5e99e-7fd1-4047-87fd-bb2da4ee1e36', false, 'BS-HR',
  'High Rock',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('de3dcc6f-0710-4407-b2c7-005ed61105b1', false, 'BS-IN',
  'Inagua',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('c1024e08-25c6-41bb-be0c-9b8975739b2e', false, 'BS-KB',
  'Kemps Bay',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('bbf099b2-5a2e-4064-bdbe-923432c9e8cc', false, 'BS-LI',
  'Long Island',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('b2f0da58-71f1-496a-ae45-e914505b3028', false, 'BS-MH',
  'Marsh Harbour',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('a2b4eca7-92a7-4d0c-863d-55b79cf4ae44', false, 'BS-MG',
  'Mayaguana',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('aec3fae8-a93d-4d28-86a9-ebd7dde5af84', false, 'BS-NP',
  'New Providence',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('d6b7dd00-cbec-4535-94f8-7aac35294e09', false, 'BS-NB',
  'Nicholls Town and Berry Islands',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('52ac58f0-add3-4066-8513-a336c44faf4b', false, 'BS-RI',
  'Ragged Island',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('d10df400-5970-44a7-ae3a-67c6b9463b86', false, 'BS-RS',
  'Rock Sound',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('8c1e10a2-c3fa-482e-856f-34f1a3ea7e33', false, 'BS-SR',
  'San Salvador and Rum Cay',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('1caa93a4-d69f-4138-83a6-e82c8ccc41e2', false, 'BS-SP',
  'Sandy Point',
  '73fd2618-076c-4eea-b7f3-1be0f30271b5');
INSERT INTO yacare_admission.province
 VALUES ('1ddbd4a4-f884-47b3-a098-6cebe77ee329', false, 'BT-33',
  'Bumthang',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('a820f3e1-f6be-4e67-aea3-0c2ae6816f77', false, 'BT-12',
  'Chhukha',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('8143ce17-c77b-4b6c-8d36-0fed9678368d', false, 'BT-22',
  'Dagana',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('a0287a6a-ccfa-4b49-84a9-8c0ef3cae832', false, 'BT-GA',
  'Gasa',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('803cb69c-1e52-4ec7-914d-05ee061275cf', false, 'BT-13',
  'Ha',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('1499fcf5-3d3c-4c93-8c7b-f294d6e2132b', false, 'BT-44',
  'Lhuntse',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('2b49ee36-c1d8-491c-9ecb-8e9f9a4224fa', false, 'BT-42',
  'Mongar',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('dc3fa9e8-1c57-4a48-b087-5ea73522a3d3', false, 'BT-11',
  'Paro',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('f619d6d9-a3df-4424-936b-3802f1877f92', false, 'BT-43',
  'Pemagatshel',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('9e7ed502-5b4b-4df7-b5af-28a6b5f19fa8', false, 'BT-23',
  'Punakha',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('0db21631-40b1-4b1a-9606-563fc9d66d12', false, 'BT-45',
  'Samdrup Jongkhar',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('74835d5f-0c0d-4c84-bed5-9bd344caa299', false, 'BT-14',
  'Samtse',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('844c7112-b51e-4e4f-9028-5381ce07b0eb', false, 'BT-31',
  'Sarpang',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('80bb6613-f727-485e-8aa7-c9ff1311f6f6', false, 'BT-15',
  'Thimphu',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('205b8854-f786-410e-91ca-c2469bd51989', false, 'BT-41',
  'Trashigang',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('b68d8928-296a-456a-bd81-e86465d362e7', false, 'BT-TY',
  'Trashiyangtse',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('77578b99-43ba-4729-87b3-15f9b73f0ddf', false, 'BT-32',
  'Trongsa',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('af9e567d-bc21-4f89-aa14-498b355179ac', false, 'BT-21',
  'Tsirang',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('54ee88b4-e243-4c08-9d74-c1cdb2c0ea1a', false, 'BT-24',
  'Wangdue Phodrang',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('4ba53190-d3e1-48a0-9af1-c441a0308d27', false, 'BT-34',
  'Zhemgang',
  '73254ac7-edf6-437f-81b8-03fe0a7a371d');
INSERT INTO yacare_admission.province
 VALUES ('d1e2316c-3feb-4cd6-90ed-c50957286619', false, 'BW-CE',
  'Central',
  'd2cd43eb-f278-463a-84c3-55769011f1fe');
INSERT INTO yacare_admission.province
 VALUES ('fa726b30-127c-4c5a-945f-212e1f85cd50', false, 'BW-GH',
  'Ghanzi',
  'd2cd43eb-f278-463a-84c3-55769011f1fe');
INSERT INTO yacare_admission.province
 VALUES ('954b3886-ca93-406f-8d11-354ea0563db1', false, 'BW-KG',
  'Kgalagadi',
  'd2cd43eb-f278-463a-84c3-55769011f1fe');
INSERT INTO yacare_admission.province
 VALUES ('d8a36964-e6a0-4ff9-ac3d-0e205b8c47a5', false, 'BW-KL',
  'Kgatleng',
  'd2cd43eb-f278-463a-84c3-55769011f1fe');
INSERT INTO yacare_admission.province
 VALUES ('9d14a5d2-c944-4899-95d1-e266e9e27133', false, 'BW-KW',
  'Kweneng',
  'd2cd43eb-f278-463a-84c3-55769011f1fe');
INSERT INTO yacare_admission.province
 VALUES ('ac40fe6e-19aa-4d8c-8ff0-3982ddd333a4', false, 'BW-NE',
  'North-East',
  'd2cd43eb-f278-463a-84c3-55769011f1fe');
INSERT INTO yacare_admission.province
 VALUES ('98867950-f60c-4872-aa27-353129798f2e', false, 'BW-NW',
  'North-West',
  'd2cd43eb-f278-463a-84c3-55769011f1fe');
INSERT INTO yacare_admission.province
 VALUES ('4758090f-3850-4cb8-bfb6-7d0908b82002', false, 'BW-SE',
  'South-East',
  'd2cd43eb-f278-463a-84c3-55769011f1fe');
INSERT INTO yacare_admission.province
 VALUES ('2f04040d-f605-4e90-b394-97cadc7b7970', false, 'BW-SO',
  'Southern',
  'd2cd43eb-f278-463a-84c3-55769011f1fe');
INSERT INTO yacare_admission.province
 VALUES ('b91745aa-d727-4f06-9e45-70b4948a0861', false, 'BY-BR',
  'Брестская область',
  'debede63-8950-4870-b164-d7e911bb0348');
INSERT INTO yacare_admission.province
 VALUES ('e3fee000-07bf-4f88-9cbc-9d00058fba56', false, 'BY-VI',
  'Витебская область',
  'debede63-8950-4870-b164-d7e911bb0348');
INSERT INTO yacare_admission.province
 VALUES ('d2ed84e2-a869-4242-9e07-673001a4c4b3', false, 'BY-HO',
  'Гомельская область',
  'debede63-8950-4870-b164-d7e911bb0348');
INSERT INTO yacare_admission.province
 VALUES ('ef75ae84-d203-4ea9-a467-c02bab8b1b13', false, 'BY-HR',
  'Гродненская область',
  'debede63-8950-4870-b164-d7e911bb0348');
INSERT INTO yacare_admission.province
 VALUES ('f9bb6263-d9b7-46d3-9ba2-7c438aee8a5e', false, 'BY-MI',
  'Минская область',
  'debede63-8950-4870-b164-d7e911bb0348');
INSERT INTO yacare_admission.province
 VALUES ('196f9100-b38b-4bb8-a4e4-865fc4508327', false, 'BY-MA',
  'Могилёвская область',
  'debede63-8950-4870-b164-d7e911bb0348');
INSERT INTO yacare_admission.province
 VALUES ('4f8784cc-9e93-4800-8950-8575c8fea17b', false, 'BZ-BZ',
  'Belize',
  'af72931a-566c-43f7-b89b-ba06248d151d');
INSERT INTO yacare_admission.province
 VALUES ('fce8f0a6-f5dc-4bf3-9453-126bd7b689a9', false, 'BZ-CY',
  'Cayo',
  'af72931a-566c-43f7-b89b-ba06248d151d');
INSERT INTO yacare_admission.province
 VALUES ('24c6ff39-d7e9-40fb-a4d6-f8bf61de0054', false, 'BZ-CZL',
  'Corozal',
  'af72931a-566c-43f7-b89b-ba06248d151d');
INSERT INTO yacare_admission.province
 VALUES ('c26cb6a6-bd4e-4286-b481-0fded4241e93', false, 'BZ-OW',
  'Orange Walk',
  'af72931a-566c-43f7-b89b-ba06248d151d');
INSERT INTO yacare_admission.province
 VALUES ('ed2ceb19-11b0-4145-a759-084452fab35e', false, 'BZ-SC',
  'Stann Creek',
  'af72931a-566c-43f7-b89b-ba06248d151d');
INSERT INTO yacare_admission.province
 VALUES ('82a4a1d2-225e-4240-b5f2-cc7e3e0f4613', false, 'BZ-TOL',
  'Toledo',
  'af72931a-566c-43f7-b89b-ba06248d151d');
INSERT INTO yacare_admission.province
 VALUES ('59e68c74-6e15-4377-a282-1daa1c557dd5', false, 'CA-AB',
  'Alberta',
  'be476bf9-b9d5-44d9-8fff-98a92b3df5e7');
INSERT INTO yacare_admission.province
 VALUES ('d1892b4a-472f-4e83-9b2b-d5a4c6eae772', false, 'CA-BC',
  'British Columbia / Colombie Britanique',
  'be476bf9-b9d5-44d9-8fff-98a92b3df5e7');
INSERT INTO yacare_admission.province
 VALUES ('5df12843-421c-4da2-865b-6956280ac289', false, 'CA-MB',
  'Manitoba',
  'be476bf9-b9d5-44d9-8fff-98a92b3df5e7');
INSERT INTO yacare_admission.province
 VALUES ('684645ee-91ee-4cb7-978c-0fea630efff3', false, 'CA-NB',
  'New Brunswick / Nouveau-Brunswick',
  'be476bf9-b9d5-44d9-8fff-98a92b3df5e7');
INSERT INTO yacare_admission.province
 VALUES ('714f7315-7cea-4883-99a9-facb9aa29c00', false, 'CA-NL',
  'Newfoundland & Labrador / Terre-Neuve-et-Labrador',
  'be476bf9-b9d5-44d9-8fff-98a92b3df5e7');
INSERT INTO yacare_admission.province
 VALUES ('b7e60525-10e0-4206-b594-dd7d9c70c01f', false, 'CA-NT',
  'Northwest Territories',
  'be476bf9-b9d5-44d9-8fff-98a92b3df5e7');
INSERT INTO yacare_admission.province
 VALUES ('36ba08cd-f1ab-4fa8-983b-b3b12df034d3', false, 'CA-NS',
  'Nova Scotia / Nouvelle-Écosse',
  'be476bf9-b9d5-44d9-8fff-98a92b3df5e7');
INSERT INTO yacare_admission.province
 VALUES ('29ecfa05-6a1c-4ca7-b97d-2c6031e8ebcd', false, 'CA-NU',
  'Nunavut',
  'be476bf9-b9d5-44d9-8fff-98a92b3df5e7');
INSERT INTO yacare_admission.province
 VALUES ('b894bf1c-73ea-4e5d-8bc5-b296d7701f29', false, 'CA-ON',
  'Ontario',
  'be476bf9-b9d5-44d9-8fff-98a92b3df5e7');
INSERT INTO yacare_admission.province
 VALUES ('ee84e8fb-e3f7-491f-bdde-e24a81f5c620', false, 'CA-PE',
  'Prince Edward Island / Île-du-Prince-Édouard',
  'be476bf9-b9d5-44d9-8fff-98a92b3df5e7');
INSERT INTO yacare_admission.province
 VALUES ('e02d4279-cd82-4948-934f-9197be259a4c', false, 'CA-QC',
  'Quebec / Québec',
  'be476bf9-b9d5-44d9-8fff-98a92b3df5e7');
INSERT INTO yacare_admission.province
 VALUES ('9318e8d8-6ec1-4e19-9419-05aa05121331', false, 'CA-SK',
  'Saskatchewan',
  'be476bf9-b9d5-44d9-8fff-98a92b3df5e7');
INSERT INTO yacare_admission.province
 VALUES ('c788ad0f-e74c-4aae-8827-a2c03b5737c3', false, 'CA-YT',
  'Yukon',
  'be476bf9-b9d5-44d9-8fff-98a92b3df5e7');
INSERT INTO yacare_admission.province
 VALUES ('b289b8f4-27bf-4c72-b929-a23735360f84', false, 'CD-BN',
  'Bandundu',
  '4ff610af-8993-422f-a852-cfdc5ea2b0fe');
INSERT INTO yacare_admission.province
 VALUES ('dbb04a88-ee94-4d55-8571-a0ba80a42741', false, 'CD-BC',
  'Bas-Congo',
  '4ff610af-8993-422f-a852-cfdc5ea2b0fe');
INSERT INTO yacare_admission.province
 VALUES ('9e2b9fac-b1da-4c00-b167-25e953982a56', false, 'CD-EQ',
  'Équateur',
  '4ff610af-8993-422f-a852-cfdc5ea2b0fe');
INSERT INTO yacare_admission.province
 VALUES ('3af0ed4a-37d0-4a21-b72b-956f4f724a6d', false, 'CD-KW',
  'Kasai-Occidental',
  '4ff610af-8993-422f-a852-cfdc5ea2b0fe');
INSERT INTO yacare_admission.province
 VALUES ('33b7d57b-f87d-47f8-b525-f5d07b2fc6c9', false, 'CD-KE',
  'Kasai-Oriental',
  '4ff610af-8993-422f-a852-cfdc5ea2b0fe');
INSERT INTO yacare_admission.province
 VALUES ('08d33b40-fc7e-4520-ba5d-34126f87b6b0', false, 'CD-KA',
  'Katanga',
  '4ff610af-8993-422f-a852-cfdc5ea2b0fe');
INSERT INTO yacare_admission.province
 VALUES ('8efd4123-efa0-44b9-a5a0-1405e1f0edb2', false, 'CD-KN',
  'Kinshasa',
  '4ff610af-8993-422f-a852-cfdc5ea2b0fe');
INSERT INTO yacare_admission.province
 VALUES ('11c09f98-3244-441b-a516-6eea0be03a8c', false, 'CD-MA',
  'Maniema',
  '4ff610af-8993-422f-a852-cfdc5ea2b0fe');
INSERT INTO yacare_admission.province
 VALUES ('392b00c2-6145-4871-89dd-3c0332a5be26', false, 'CD-NK',
  'Nord-Kivu',
  '4ff610af-8993-422f-a852-cfdc5ea2b0fe');
INSERT INTO yacare_admission.province
 VALUES ('6f138d40-2dbf-4e59-bfc2-c7123b7f9a07', false, 'CD-OR',
  'Orientale',
  '4ff610af-8993-422f-a852-cfdc5ea2b0fe');
INSERT INTO yacare_admission.province
 VALUES ('e43440b5-da60-4bee-bbb1-617af58369bd', false, 'CD-SK',
  'Sud-Kivu',
  '4ff610af-8993-422f-a852-cfdc5ea2b0fe');
INSERT INTO yacare_admission.province
 VALUES ('b86eea67-5c1c-4b82-8144-bd96ecb21b8e', false, 'CF-BB',
  'Bamingui-Bangoran',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('d2ff373f-4cc5-494c-8ce7-1747ab6604e0', false, 'CF-BGF',
  'Bangui',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('3b88a05b-aaf8-4baf-81cd-88a1ab21f886', false, 'CF-BK',
  'Basse-Kotto',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('2bfc869d-67b3-433e-9caa-9858675a1217', false, 'CF-HK',
  'Haute-Kotto',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('f719e9f5-c41e-49da-9c79-50e1643d74dc', false, 'CF-HM',
  'Haut-Mbomou',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('8fce8471-cb66-4ab1-8a12-cfeb829e065f', false, 'CF-KG',
  'Kémo',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('21e2d403-9c94-4b4f-94ad-a52cd41b359d', false, 'CF-LB',
  'Lobaye',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('0fc918d2-8664-45ea-8ebf-cb47cdd81670', false, 'CF-HS',
  'Mambéré-Kadéï',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('a3731eb1-d089-4846-a3b7-cf9f13ec875c', false, 'CF-MB',
  'Mbomou',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('4d200c7f-4c30-47c7-ad8d-6db348c315dd', false, 'CF-KB',
  'Nana-Grébizi',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('0a3676fa-5eee-4220-a00a-a0152db9655e', false, 'CF-NM',
  'Nana-Mambéré',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('930e22f7-8e9a-4a1e-8ecc-64cf050aa3ff', false, 'CF-MP',
  'Ombella-Mpoko',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('b0ac6731-83ea-4bad-be6a-a6af9e507add', false, 'CF-UK',
  'Ouaka',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('b1e5d9f0-ced5-4a02-92fb-e17d68741aee', false, 'CF-AC',
  'Ouham',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('34a1e16d-e4bf-4430-b416-1fccee1e2ef4', false, 'CF-OP',
  'Ouham-Pendé',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('50636e00-8832-4484-89b9-2392820792f1', false, 'CF-SE',
  'Sangha-Mbaéré',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('ad32959b-e761-41ac-911b-9ad4304fbda2', false, 'CF-VK',
  'Vakaga',
  '4a77f04e-cdd9-40b3-a49d-ddaa745025d1');
INSERT INTO yacare_admission.province
 VALUES ('04cb83de-70b2-42c2-9722-e117d95fc521', false, 'CG-11',
  'Bouenza',
  '8d5b4d4a-0db9-40dd-a49f-15c368ad22e1');
INSERT INTO yacare_admission.province
 VALUES ('879bd1d6-2a21-4ca0-ba72-ed944c98d6e2', false, 'CG-BZV',
  'Brazzaville',
  '8d5b4d4a-0db9-40dd-a49f-15c368ad22e1');
INSERT INTO yacare_admission.province
 VALUES ('3b3c69d7-8fd6-4ac2-95d4-80741a894c01', false, 'CG-8',
  'Cuvette',
  '8d5b4d4a-0db9-40dd-a49f-15c368ad22e1');
INSERT INTO yacare_admission.province
 VALUES ('94b87fcb-fa1e-4d87-a1e4-3b25d374952b', false, 'CG-15',
  'Cuvette-Ouest',
  '8d5b4d4a-0db9-40dd-a49f-15c368ad22e1');
INSERT INTO yacare_admission.province
 VALUES ('54bc73cf-088b-4421-b17d-17b589f8066a', false, 'CG-5',
  'Kouilou',
  '8d5b4d4a-0db9-40dd-a49f-15c368ad22e1');
INSERT INTO yacare_admission.province
 VALUES ('512fbe3b-4171-4d2e-abe8-3a264516a619', false, 'CG-2',
  'Lékoumou',
  '8d5b4d4a-0db9-40dd-a49f-15c368ad22e1');
INSERT INTO yacare_admission.province
 VALUES ('52e257c2-c9f2-4800-8d82-4d5de9815b27', false, 'CG-7',
  'Likouala',
  '8d5b4d4a-0db9-40dd-a49f-15c368ad22e1');
INSERT INTO yacare_admission.province
 VALUES ('db112bec-53ae-4c6e-84b9-b1e83824ea06', false, 'CG-9',
  'Niari',
  '8d5b4d4a-0db9-40dd-a49f-15c368ad22e1');
INSERT INTO yacare_admission.province
 VALUES ('51733e67-4b18-450e-bc11-3fc67e213377', false, 'CG-14',
  'Plateaux',
  '8d5b4d4a-0db9-40dd-a49f-15c368ad22e1');
INSERT INTO yacare_admission.province
 VALUES ('2b364b95-ebab-41d7-a909-7e084e0ded30', false, 'CG-12',
  'Pool',
  '8d5b4d4a-0db9-40dd-a49f-15c368ad22e1');
INSERT INTO yacare_admission.province
 VALUES ('f4515a22-1de5-454b-9372-52b4d248e51c', false, 'CG-13',
  'Sangha',
  '8d5b4d4a-0db9-40dd-a49f-15c368ad22e1');
INSERT INTO yacare_admission.province
 VALUES ('3bf3dd75-05a6-4b7b-af19-e06e6d569e8f', false, 'CH-AG',
  'Aargau',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('76ff2032-fe29-434e-95ef-08bb1102b6dc', false, 'CH-AR',
  'Appenzell Ausserrhoden',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('ed91197f-835e-4a87-b1f4-7ab5eeb68f9e', false, 'CH-AI',
  'Appenzell Innerrhoden',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('2ee5dfe9-9802-4d41-9550-f682ac8ef732', false, 'CH-BL',
  'Basel-Landschaft',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('298e0b53-dfe4-4eef-aa6f-65a9a513c7dc', false, 'CH-BS',
  'Basel-Stadt',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('2b6f5e8d-74cd-438f-bf47-4b00fbfc4eee', false, 'CH-BE',
  'Bern',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('28206c02-f43a-4a7f-ae0f-4946e31765e8', false, 'CH-FR',
  'Freiburg',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('2aa59740-c13e-4396-9001-70dae897d5d3', false, 'CH-GE',
  'Genf',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('69dce7a2-e079-4108-8db6-3605afd4c91f', false, 'CH-GL',
  'Glarus',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('6cf0c049-d2a4-4e23-9cb4-0f3583fd5143', false, 'CH-GR',
  'Graubünden',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('93281ac9-2254-42d6-95d7-1f79799438e4', false, 'CH-JU',
  'Jura',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('f9aac660-2bf6-4e8a-b642-7548f1d0b707', false, 'CH-LU',
  'Luzern',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('b8ad15ea-e670-4456-9d5b-094c9e60baf7', false, 'CH-NE',
  'Neuenburg',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('24f4e8cf-b6d5-498c-ba0c-4cd62941b1c4', false, 'CH-NW',
  'Nidwalden',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('513f0cea-3e30-4ea6-ad77-cca11d917994', false, 'CH-OW',
  'Obwalden',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('161f21e0-a44c-4584-8010-132b7dfd5c9e', false, 'CH-SG',
  'Sankt Gallen',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('d08c0f78-158a-4489-b408-b47b71a63e7d', false, 'CH-SH',
  'Schaffhausen',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('a837e3e8-4d07-4458-ad9d-06444b65d663', false, 'CH-SZ',
  'Schwyz',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('7557ceef-4e30-4ffc-987d-599760c1cb56', false, 'CH-SO',
  'Solothurn',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('77c79b22-8e7b-4073-b1ff-eaaae2b1b295', false, 'CH-TG',
  'Thurgau',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('3205f332-eae7-4937-8dff-4c7f6cb87f2e', false, 'CH-TI',
  'Ticino',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('1b406f76-f4f0-4550-bd6b-fd29ca4848ae', false, 'CH-UR',
  'Uri',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('fa0ac617-a139-4eb5-930c-73f7a357c55c', false, 'CH-VD',
  'Waadt',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('81009ce1-a06e-4198-91e7-d508c1428e5f', false, 'CH-VS',
  'Wallis',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('c1520ff2-effa-48d0-8a4a-b0cc0b374674', false, 'CH-ZG',
  'Zug',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('b487fddb-37be-4a16-8165-d6884307924d', false, 'CH-ZH',
  'Zürich',
  '4050a4a0-4c6e-4c60-9796-f79f1f5aa808');
INSERT INTO yacare_admission.province
 VALUES ('08bc1bb4-2fd9-4a83-8f4d-68fffe42791e', false, 'CI-16',
  'Agnéby',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('58fd471d-a7e1-4790-bdd2-c4dfb1f4a7dd', false, 'CI-17',
  'Bafing',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('c2cbca1f-3a7d-451f-a418-a0a1a8ffa1e3', false, 'CI-09',
  'Bas-Sassandra',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('cb5ed4db-9851-479e-89fb-8384e174e742', false, 'CI-10',
  'Denguélé',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('acc7eadd-fbe7-4b6e-9a7e-b294239144b5', false, 'CI-06',
  'Dix-huit Montagnes',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('eb58e2ab-1d34-429c-b612-a8d4ada0b152', false, 'CI-18',
  'Fromager',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('1aee6bc6-1325-40c6-b78f-e51d4d4edda4', false, 'CI-02',
  'Haut-Sassandra',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('cef76123-d47b-4f0f-9ca2-3abfd49a9bd7', false, 'CI-07',
  'Lacs',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('24a252b5-9a61-462b-98f3-e0d09bfb9bb5', false, 'CI-01',
  'Lagunes',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('b3ef6c1d-408a-42b9-b15d-fe42dac75926', false, 'CI-12',
  'Marahoué',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('dfde7b50-d0af-4c64-ba57-7f9c06c0edae', false, 'CI-19',
  'Moyen-Cavally',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('abc1919e-5461-4fd7-8a09-00c54f05c927', false, 'CI-05',
  'Moyen-Comoé',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('f07e442d-ea47-4136-9f85-9110b0eda8f5', false, 'CI-11',
  'N''zi-Comoé',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('3631f67b-5a63-42b8-8333-a23e45e49494', false, 'CI-03',
  'Savanes',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('293b62a6-3507-4ded-bbaf-50e5d5d7884e', false, 'CI-15',
  'Sud-Bandama',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('f7ad35aa-6a9c-4098-855a-df7b2e9fc4ae', false, 'CI-13',
  'Sud-Comoé',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('de3a27d2-0372-4585-b873-a65d865e7b8e', false, 'CI-04',
  'Vallée du Bandama',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('74133429-efc2-467c-a9f5-a31474822eea', false, 'CI-14',
  'Worodougou',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('7c03bc9c-6fcf-4fd2-9b5b-dedf21d95f26', false, 'CI-08',
  'Zanzan',
  'd98c9cce-20bc-4edd-b466-e35741894681');
INSERT INTO yacare_admission.province
 VALUES ('a947a674-bc60-4401-b8eb-f02d2f6e71ee', false, 'CL-AN',
  'Antofagasta',
  '466dbeb7-15ac-4d74-b0c0-d0cafcf7277d');
INSERT INTO yacare_admission.province
 VALUES ('dd30529d-5d96-4d88-9d3c-aecfeb597b5f', false, 'CL-AP',
  'Arica y Parinacota',
  '466dbeb7-15ac-4d74-b0c0-d0cafcf7277d');
INSERT INTO yacare_admission.province
 VALUES ('ef855963-f1e3-4da8-940e-72456bd48ec0', false, 'CL-AT',
  'Atacama',
  '466dbeb7-15ac-4d74-b0c0-d0cafcf7277d');
INSERT INTO yacare_admission.province
 VALUES ('55a7bc8f-8bea-4c77-a027-fdc81563b63b', false, 'CL-AI',
  'Aysen del General Carlos Ibáñez del Campo',
  '466dbeb7-15ac-4d74-b0c0-d0cafcf7277d');
INSERT INTO yacare_admission.province
 VALUES ('96ea5d22-b728-4cfc-9262-33d426226830', false, 'CL-BI',
  'Bío-Bío',
  '466dbeb7-15ac-4d74-b0c0-d0cafcf7277d');
INSERT INTO yacare_admission.province
 VALUES ('3e01553b-8f92-45f4-ae02-84e8f7e00564', false, 'CL-CO',
  'Coquimbo',
  '466dbeb7-15ac-4d74-b0c0-d0cafcf7277d');
INSERT INTO yacare_admission.province
 VALUES ('73ffc5f8-da80-4787-9da9-fa91bb6f28c7', false, 'CL-AR',
  'La Araucanía',
  '466dbeb7-15ac-4d74-b0c0-d0cafcf7277d');
INSERT INTO yacare_admission.province
 VALUES ('4ad44f45-df45-4924-b4c7-ee49ce66b02f', false, 'CL-LI',
  'Libertador General Bernardo O''Higgins',
  '466dbeb7-15ac-4d74-b0c0-d0cafcf7277d');
INSERT INTO yacare_admission.province
 VALUES ('f5beee0e-b976-43a8-8b59-eb536af05fb3', false, 'CL-LL',
  'Los Lagos',
  '466dbeb7-15ac-4d74-b0c0-d0cafcf7277d');
INSERT INTO yacare_admission.province
 VALUES ('c1a19d23-0f55-4842-98bb-c2a1c949f70d', false, 'CL-LR',
  'Los Ríos',
  '466dbeb7-15ac-4d74-b0c0-d0cafcf7277d');
INSERT INTO yacare_admission.province
 VALUES ('cf0b0e7d-9add-4cc8-a50c-b009a662b6b2', false, 'CL-MA',
  'Magallanes y de La Antártica Chilena',
  '466dbeb7-15ac-4d74-b0c0-d0cafcf7277d');
INSERT INTO yacare_admission.province
 VALUES ('051c58fe-ab62-406a-be5b-4bf753bcdfed', false, 'CL-ML',
  'Maule',
  '466dbeb7-15ac-4d74-b0c0-d0cafcf7277d');
INSERT INTO yacare_admission.province
 VALUES ('34bd459a-db3c-4ec5-a01b-14a00f150f2b', false, 'CL-RM',
  'Región Metropolitana de Santiago',
  '466dbeb7-15ac-4d74-b0c0-d0cafcf7277d');
INSERT INTO yacare_admission.province
 VALUES ('854cd352-ad2c-4eb5-994e-f0a68c1f0b5b', false, 'CL-TA',
  'Tarapacá',
  '466dbeb7-15ac-4d74-b0c0-d0cafcf7277d');
INSERT INTO yacare_admission.province
 VALUES ('bfe4106d-9ce6-450e-86e2-572b0c851c04', false, 'CL-VS',
  'Valparaíso',
  '466dbeb7-15ac-4d74-b0c0-d0cafcf7277d');
INSERT INTO yacare_admission.province
 VALUES ('f6ac7410-39f1-4ba6-b3ed-632b6cbf46d1', false, 'CM-AD',
  'Adamaoua',
  'fcbf93aa-f175-419a-a784-53f1378844d4');
INSERT INTO yacare_admission.province
 VALUES ('bfa7ecdb-054c-4d21-ada3-52ed2cb0d9f9', false, 'CM-CE',
  'Centre',
  'fcbf93aa-f175-419a-a784-53f1378844d4');
INSERT INTO yacare_admission.province
 VALUES ('7770f28f-6f44-4ac8-b5bf-4aaeed01c206', false, 'CM-ES',
  'Est',
  'fcbf93aa-f175-419a-a784-53f1378844d4');
INSERT INTO yacare_admission.province
 VALUES ('58548594-edab-4e4e-8a94-da3b5557b4bd', false, 'CM-EN',
  'Extrême-Nord',
  'fcbf93aa-f175-419a-a784-53f1378844d4');
INSERT INTO yacare_admission.province
 VALUES ('77f1b7a3-80a9-429b-bfba-483486df64e6', false, 'CM-LT',
  'Littoral',
  'fcbf93aa-f175-419a-a784-53f1378844d4');
INSERT INTO yacare_admission.province
 VALUES ('2c56d668-bbf7-497f-a903-6ebf114f817a', false, 'CM-NO',
  'Nord',
  'fcbf93aa-f175-419a-a784-53f1378844d4');
INSERT INTO yacare_admission.province
 VALUES ('0667d145-7689-4893-957a-676442cb1df8', false, 'CM-NW',
  'Nord-Ouest',
  'fcbf93aa-f175-419a-a784-53f1378844d4');
INSERT INTO yacare_admission.province
 VALUES ('20d5250e-abdb-476c-9407-326a5b4cc888', false, 'CM-OU',
  'Ouest',
  'fcbf93aa-f175-419a-a784-53f1378844d4');
INSERT INTO yacare_admission.province
 VALUES ('051a96ab-cf2c-46da-9a2b-436c942c9c63', false, 'CM-SU',
  'Sud',
  'fcbf93aa-f175-419a-a784-53f1378844d4');
INSERT INTO yacare_admission.province
 VALUES ('308facd9-8069-4fa1-89c0-b84a050cbc75', false, 'CM-SW',
  'Sud-Ouest',
  'fcbf93aa-f175-419a-a784-53f1378844d4');
INSERT INTO yacare_admission.province
 VALUES ('fc5c3b9b-416f-4d37-bfdb-f58465ac8555', false, 'CN-34',
  'Anhui',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('45c3d4c1-0e0b-4824-bc5e-d77dec67f9a2', false, 'CN-11',
  'Beijing',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('c125d55d-8978-4426-8326-14e6ee91304e', false, 'CN-50',
  'Chongqing',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('a8cdf7a2-a57e-4a00-90cf-99284d97b5f3', false, 'CN-35',
  'Fujian',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('39263714-da73-4c32-8e39-558b5d4cf595', false, 'CN-62',
  'Gansu',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('a63c227d-71c4-477d-9f4d-42b9400fff66', false, 'CN-44',
  'Guangdong',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('f774beb9-d814-4a66-9f13-6bf12ef43fcd', false, 'CN-45',
  'Guangxi',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('46a639b6-ee82-47ee-9b74-b9b702fe9905', false, 'CN-52',
  'Guizhou',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('6a9a4e37-d8f4-4b88-b8c9-10105598818d', false, 'CN-46',
  'Hainan',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('88cc9da6-0823-47a8-9d64-512ea50b1d1e', false, 'CN-13',
  'Hebei',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('b57d0199-2b72-4ba4-b38d-f8e83711e418', false, 'CN-23',
  'Heilongjiang',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('b7009c42-113b-4770-b7d8-8c58c3208220', false, 'CN-41',
  'Henan',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('4dff4c46-c61d-498c-9685-ded0b1db6ea2', false, 'CN-91',
  'Hong Kong',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('afbafd5a-e1e0-4836-abb9-6db040f37454', false, 'CN-42',
  'Hubei',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('edfc5a68-6c89-4e19-91aa-4bdee3b68760', false, 'CN-43',
  'Hunan',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('86630d68-f9db-41eb-a746-14fda49581da', false, 'CN-15',
  'Inner Mongolia',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('cb4b3de1-363c-4edc-998a-6eee262f1122', false, 'CN-32',
  'Jiangsu',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('3d87c1cf-6cc1-463b-95f2-cd38544a3eda', false, 'CN-36',
  'Jiangxi',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('daf63cee-dd77-403a-bf4a-d86176626f36', false, 'CN-22',
  'Jilin',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('1109f6a6-1c09-44ea-90fe-2cf08e2845fa', false, 'CN-21',
  'Liaoning',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('1a67ea77-947e-4c9a-afd2-3a54b73dc012', false, 'CN-92',
  'Macau',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('34672ce7-fd56-4b79-a5f5-cf3dbf08ef64', false, 'CN-64',
  'Ningxia',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('cf5073b6-de0d-45f5-8c70-9fb81fc02215', false, 'CN-63',
  'Qinghai',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('5b67e807-fa43-47a2-9ca5-f6970ec0d2c2', false, 'CN-61',
  'Shaanxi',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('2053ed0f-e4b9-45aa-b574-63eb83d2ad73', false, 'CN-37',
  'Shandong',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('70cc8a62-fd2d-422b-8c87-b1ac143cc88c', false, 'CN-31',
  'Shanghai',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('c1b44a50-f12f-4782-87b5-f99693d12d8d', false, 'CN-14',
  'Shanxi',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('a6245d84-d99e-42ce-bcb7-fac7339e5572', false, 'CN-51',
  'Sichuan',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('4122d47d-cd4b-4e9a-a403-9fb1506fb1e8', false, 'CN-12',
  'Tianjin',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('99158ac8-bb4c-4a0f-9937-8d1749eddd60', false, 'CN-54',
  'Tibet',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('2e0c63b9-9e9d-4f65-a88d-7e2c94f71750', false, 'CN-65',
  'Xinjiang',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('26329d2c-285e-4b96-acc8-13fc763f7001', false, 'CN-53',
  'Yunnan',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('819bb036-3d45-4b01-a952-cfdeb471c2a4', false, 'CN-33',
  'Zhejiang',
  '4ea92c2b-047c-4fb2-83f3-029eba242c45');
INSERT INTO yacare_admission.province
 VALUES ('0fa0217f-d276-4ec8-a9f9-c3d949073db2', false, 'CO-AMA',
  'Amazonas',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('3b03c0d1-2d08-4cf2-97ca-ba8662621e65', false, 'CO-ANT',
  'Antioquia',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('8ed79b8d-ed1f-44a7-bd12-d372be3ddab6', false, 'CO-ARA',
  'Arauca',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('049f31fa-9cfe-4287-b7a3-f627e94dd8cc', false, 'CO-SAP',
  'Archipiélago de San Andrés',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('41e86013-fdb0-4e4d-ab5e-c54c9863f5b8', false, 'CO-ATL',
  'Atlántico',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('0eb5aac8-0b30-4932-ad53-3496c870cbe7', false, 'CO-DC',
  'Bogotá D.C.',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('1202bb89-e418-4e54-b931-9ebc5ad59b6d', false, 'CO-BOL',
  'Bolívar',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('12ecbe76-1cb3-4e37-b16f-8ba096879847', false, 'CO-BOY',
  'Boyacá',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('72a57195-e2a2-4926-9c66-6d8251c91712', false, 'CO-CAL',
  'Caldas',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('bdd12b8b-9d01-4ee4-9c94-46b57f4665e4', false, 'CO-CAQ',
  'Caquetá',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('0bd47e45-17dd-4f9c-98ad-664927f67d1f', false, 'CO-CAS',
  'Casanare',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('6a620a53-3fe0-4eb3-9a6d-db8d4bcb86fa', false, 'CO-CAU',
  'Cauca',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('0442cf38-f76f-42f2-9453-38dcac4e32e7', false, 'CO-CES',
  'Cesar',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('c496475f-c6bb-47f8-9caa-08435af7a830', false, 'CO-CHO',
  'Chocó',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('53e4aed9-d290-4988-8329-4a339b439e0a', false, 'CO-COR',
  'Córdoba',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('caefed44-44e8-490d-b46b-a6e0b4a372a4', false, 'CO-CUN',
  'Cundinamarca',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('e3da4cd3-fca1-40a0-bc43-8298806d5765', false, 'CO-GUA',
  'Guainía',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('d0e4d9eb-3637-49c0-8873-69597cca6688', false, 'CO-GUV',
  'Guaviare',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('873cf091-4e0d-43a8-a3ec-d1efc2e9d0eb', false, 'CO-HUI',
  'Huila',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('0f3386f3-115a-46a3-8099-f8a3dc5eeb80', false, 'CO-LAG',
  'La Guajira',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('e556fee3-bbeb-41ab-a4f1-cb84b51727e3', false, 'CO-MAG',
  'Magdalena',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('aeb80f11-5e9c-41f7-907e-5e2de6c87f18', false, 'CO-MET',
  'Meta',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('8ed3d03c-bc52-46fa-acbb-34c3767f98dd', false, 'CO-NAR',
  'Nariño',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('6403ec0a-7137-45f2-b76e-11979f41d836', false, 'CO-NSA',
  'Norte de Santander',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('c64ff103-490a-4334-acb8-6c68c2ce8853', false, 'CO-PUT',
  'Putumayo',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('8bce4067-834f-43ec-b8d5-c101bdf5d32a', false, 'CO-QUI',
  'Quindío',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('db23d2b8-e597-4df8-a9ae-cf97a4bdc687', false, 'CO-RIS',
  'Risaralda',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('eb007954-a3c3-4550-adbb-51113525fda7', false, 'CO-SAN',
  'Santander',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('5bd97b35-152b-4d05-b298-af1ec9355047', false, 'CO-SUC',
  'Sucre',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('6983bb48-500f-4625-9f0b-b20474c962c8', false, 'CO-TOL',
  'Tolima',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('ac50b2e3-4f41-43c9-af28-b3214c80ea63', false, 'CO-VAC',
  'Valle del Cauca',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('d6f50b20-261f-40eb-ada7-0bae70ada996', false, 'CO-VAU',
  'Vaupés',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('a26e4cb5-51d2-4b97-a638-589206cfa04f', false, 'CO-VID',
  'Vichada',
  'b59cd7d2-e55b-41b5-82fa-515af04bbd14');
INSERT INTO yacare_admission.province
 VALUES ('853ddbe8-0d08-4b4d-b42f-da1b2158c602', false, 'CR-A',
  'Alajuela',
  '88e4e8b8-65d2-4929-a595-915b04a30116');
INSERT INTO yacare_admission.province
 VALUES ('d22e71c0-6652-48af-854a-947b0e0bfed0', false, 'CR-C',
  'Cartago',
  '88e4e8b8-65d2-4929-a595-915b04a30116');
INSERT INTO yacare_admission.province
 VALUES ('96b85297-8978-4b26-a5e4-f5780645c30d', false, 'CR-G',
  'Guanacaste',
  '88e4e8b8-65d2-4929-a595-915b04a30116');
INSERT INTO yacare_admission.province
 VALUES ('4125e189-59cf-4c3b-ab11-fb11440aaa91', false, 'CR-H',
  'Heredia',
  '88e4e8b8-65d2-4929-a595-915b04a30116');
INSERT INTO yacare_admission.province
 VALUES ('60e4b635-e7c8-4e86-a531-9957ab3cf9ac', false, 'CR-L',
  'Limón',
  '88e4e8b8-65d2-4929-a595-915b04a30116');
INSERT INTO yacare_admission.province
 VALUES ('7daac6e4-2231-4ae8-adc2-dbddae3db2e1', false, 'CR-P',
  'Puntarenas',
  '88e4e8b8-65d2-4929-a595-915b04a30116');
INSERT INTO yacare_admission.province
 VALUES ('dbda3959-8662-41a0-a636-437d37cea48e', false, 'CR-SJ',
  'San José',
  '88e4e8b8-65d2-4929-a595-915b04a30116');
INSERT INTO yacare_admission.province
 VALUES ('490d75b6-dccf-49ce-af2a-2f45e2d19f33', false, 'CU-09',
  'Camagüey',
  '947e2b63-8189-4071-abe1-e731e369e6d7');
INSERT INTO yacare_admission.province
 VALUES ('0a373f9b-57fd-4d6d-a3a0-2dd84a7ab725', false, 'CU-08',
  'Ciego de Ávila',
  '947e2b63-8189-4071-abe1-e731e369e6d7');
INSERT INTO yacare_admission.province
 VALUES ('b7e9ad6d-7354-4f71-a45f-a81c0c60fdb0', false, 'CU-06',
  'Cienfuegos',
  '947e2b63-8189-4071-abe1-e731e369e6d7');
INSERT INTO yacare_admission.province
 VALUES ('bb89d4c7-5267-4821-a532-28b7ef4e7ecf', false, 'CU-03',
  'Ciudad de La Habana',
  '947e2b63-8189-4071-abe1-e731e369e6d7');
INSERT INTO yacare_admission.province
 VALUES ('9960184c-ae36-4e36-bc08-58247571d2ec', false, 'CU-12',
  'Granma',
  '947e2b63-8189-4071-abe1-e731e369e6d7');
INSERT INTO yacare_admission.province
 VALUES ('06227a9b-e927-4b0b-97bd-bac55707194e', false, 'CU-14',
  'Guantánamo',
  '947e2b63-8189-4071-abe1-e731e369e6d7');
INSERT INTO yacare_admission.province
 VALUES ('39c2788f-2ab2-4558-a03e-c1fb5d37d269', false, 'CU-11',
  'Holguín',
  '947e2b63-8189-4071-abe1-e731e369e6d7');
INSERT INTO yacare_admission.province
 VALUES ('23d2c485-315f-41f1-b20b-7c7bd0208ef2', false, 'CU-99',
  'Isla de la Juventud',
  '947e2b63-8189-4071-abe1-e731e369e6d7');
INSERT INTO yacare_admission.province
 VALUES ('1236de87-17d0-4768-9a25-46a550b2e8fe', false, 'CU-02',
  'La Habana',
  '947e2b63-8189-4071-abe1-e731e369e6d7');
INSERT INTO yacare_admission.province
 VALUES ('5f41bc81-e1e1-41ea-a0b8-164e2274eadb', false, 'CU-10',
  'Las Tunas',
  '947e2b63-8189-4071-abe1-e731e369e6d7');
INSERT INTO yacare_admission.province
 VALUES ('15bba98a-055f-4848-a336-21e551106c8f', false, 'CU-04',
  'Matanzas',
  '947e2b63-8189-4071-abe1-e731e369e6d7');
INSERT INTO yacare_admission.province
 VALUES ('a361c58b-ad66-4b61-a198-da2dac706d92', false, 'CU-01',
  'Pinar del Río',
  '947e2b63-8189-4071-abe1-e731e369e6d7');
INSERT INTO yacare_admission.province
 VALUES ('735bc9ae-ffaf-4e49-825e-6e44adc6bb6a', false, 'CU-07',
  'Sancti Spíritus',
  '947e2b63-8189-4071-abe1-e731e369e6d7');
INSERT INTO yacare_admission.province
 VALUES ('a7bb7099-4d81-4a1b-a99f-5cb1969a04ec', false, 'CU-13',
  'Santiago de Cuba',
  '947e2b63-8189-4071-abe1-e731e369e6d7');
INSERT INTO yacare_admission.province
 VALUES ('eb213464-220f-4879-87a4-d4f5201570ee', false, 'CU-05',
  'Villa Clara',
  '947e2b63-8189-4071-abe1-e731e369e6d7');
INSERT INTO yacare_admission.province
 VALUES ('1cb78cad-cdc4-44ba-a34c-3181a3acc1e8', false, 'CV-BV',
  'Boa Vista',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('1ccfcaaf-10c9-4016-8c87-1e4df2239b89', false, 'CV-BR',
  'Brava',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('89e93662-c0f2-4b8a-8bd4-53a8c8d4b347', false, 'CV-MA',
  'Maio',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('c03f0620-9230-412c-9d54-71f46231105f', false, 'CV-MO',
  'Mosteiros',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('4bb282c1-3395-47ab-9c74-c57c892cf168', false, 'CV-PA',
  'Paúl',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('68f48980-bb50-4456-9780-a6e436b60cc2', false, 'CV-PN',
  'Porto Novo',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('f4f16d9f-1bd5-45e8-b9b0-4809927ebcf9', false, 'CV-PR',
  'Praia',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('84a74a04-ca98-4cd4-a721-2b29830322b8', false, 'CV-RB',
  'Ribeira Brava',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('9ff5f61d-dba8-4539-b2fd-23a43ea3932b', false, 'CV-RG',
  'Ribeira Grande',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('bffd4c47-e780-4852-a819-ea353823ee68', false, 'CV-RS',
  'Ribeira Grande de Santiago',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('221f8f43-8897-474e-80bc-02226572979c', false, 'CV-SL',
  'Sal',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('9e31a8ff-76c9-4267-ae0c-9b486e98161b', false, 'CV-CA',
  'Santa Catarina',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('cf82c963-7be7-4045-8984-8c4a8f0d4330', false, 'CV-CF',
  'Santa Catarina do Fogo',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('558c6859-e314-48f0-af48-bccd65fd5624', false, 'CV-CR',
  'Santa Cruz',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('5e93733d-c2d0-4945-b99f-8b6b8a50a790', false, 'CV-SD',
  'São Domingos',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('8a7a546f-36e4-40db-99a6-2ab697a3adc1', false, 'CV-SF',
  'São Filipe',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('b11f03d0-413b-43cb-b139-7326f3a9ab2a', false, 'CV-CM',
  'São Miguel',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('dc43d184-4c7a-4aa8-b446-2051f1626114', false, 'CV-SS',
  'São Salvador do Mundo',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('203d7f6a-cf4b-4e8b-954d-d8e30eb8e9a8', false, 'CV-SV',
  'São Vicente',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('635daa02-a110-4b5d-a555-a5e3f5c120c4', false, 'CV-TA',
  'Tarrafal',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('03390ee6-e1eb-470e-8795-41fad916f3f1', false, 'CV-TS',
  'Tarrafal de São Nicolau',
  'fb8f1a90-b771-4c59-bbd0-e0a449eb16d3');
INSERT INTO yacare_admission.province
 VALUES ('2b8dc7a8-881b-4ce5-ad8d-dc69d2ec2dbe', false, 'CY-04',
  'Αμμόχωστος',
  'a1deb525-a2af-4403-9a01-e71febde1a63');
INSERT INTO yacare_admission.province
 VALUES ('11bf1ee4-2bdf-443f-83df-451b8a596e2e', false, 'CY-06',
  'Κερύνεια',
  'a1deb525-a2af-4403-9a01-e71febde1a63');
INSERT INTO yacare_admission.province
 VALUES ('969e1307-2991-47dc-9a47-5b0379419122', false, 'CY-03',
  'Λάρνακα',
  'a1deb525-a2af-4403-9a01-e71febde1a63');
INSERT INTO yacare_admission.province
 VALUES ('3544d5aa-587a-48d5-b5ed-dc3742876238', false, 'CY-02',
  'Λεμεσός',
  'a1deb525-a2af-4403-9a01-e71febde1a63');
INSERT INTO yacare_admission.province
 VALUES ('50c3f7a4-e31e-4b21-8835-bf70419f64e6', false, 'CY-01',
  'Λευκωσία',
  'a1deb525-a2af-4403-9a01-e71febde1a63');
INSERT INTO yacare_admission.province
 VALUES ('d65df6ec-a55e-4470-ab2f-e3365fa17d75', false, 'CY-05',
  'Πάφος',
  'a1deb525-a2af-4403-9a01-e71febde1a63');
INSERT INTO yacare_admission.province
 VALUES ('f08faf65-92ad-4617-ab32-9824be446ea4', false, 'CZ-PR',
  'Hlavní město Praha',
  'f1226b93-708b-4944-94cb-4e3e2f88bd73');
INSERT INTO yacare_admission.province
 VALUES ('9b879b36-d504-4045-ba47-8f737071e4bf', false, 'CZ-JC',
  'Jihočeský kraj',
  'f1226b93-708b-4944-94cb-4e3e2f88bd73');
INSERT INTO yacare_admission.province
 VALUES ('8b62fd2e-e8cd-42d5-b51f-6fd46d0f7f19', false, 'CZ-JM',
  'Jihomoravský kraj',
  'f1226b93-708b-4944-94cb-4e3e2f88bd73');
INSERT INTO yacare_admission.province
 VALUES ('20b29484-3efb-4030-b3e4-7d9dd11291a6', false, 'CZ-KA',
  'Karlovarský kraj',
  'f1226b93-708b-4944-94cb-4e3e2f88bd73');
INSERT INTO yacare_admission.province
 VALUES ('7469b01e-71bb-443b-8c94-3974204a25fa', false, 'CZ-KR',
  'Královéhradecký kraj',
  'f1226b93-708b-4944-94cb-4e3e2f88bd73');
INSERT INTO yacare_admission.province
 VALUES ('e3a95673-47b3-4c45-a8fa-5847b317d552', false, 'CZ-LI',
  'Liberecký kraj',
  'f1226b93-708b-4944-94cb-4e3e2f88bd73');
INSERT INTO yacare_admission.province
 VALUES ('04265a35-a8e6-4830-b0c1-86fef96fe0ec', false, 'CZ-MO',
  'Moravskoslezský kraj',
  'f1226b93-708b-4944-94cb-4e3e2f88bd73');
INSERT INTO yacare_admission.province
 VALUES ('303c2fe1-ee1c-4263-881c-7d27836b38dd', false, 'CZ-OL',
  'Olomoucký kraj',
  'f1226b93-708b-4944-94cb-4e3e2f88bd73');
INSERT INTO yacare_admission.province
 VALUES ('e54cb53a-82fa-438f-a061-876a15441145', false, 'CZ-PA',
  'Pardubický kraj',
  'f1226b93-708b-4944-94cb-4e3e2f88bd73');
INSERT INTO yacare_admission.province
 VALUES ('d9fb0c61-d711-49a1-8f85-6b8362e97d18', false, 'CZ-PL',
  'Plzeňský kraj',
  'f1226b93-708b-4944-94cb-4e3e2f88bd73');
INSERT INTO yacare_admission.province
 VALUES ('49dc9b61-6898-4cf8-a3a7-537d31388bb6', false, 'CZ-ST',
  'Středočeský kraj',
  'f1226b93-708b-4944-94cb-4e3e2f88bd73');
INSERT INTO yacare_admission.province
 VALUES ('3acd6959-9cc1-43f3-8d2a-eb9fccfc13fc', false, 'CZ-US',
  'Ústecký kraj',
  'f1226b93-708b-4944-94cb-4e3e2f88bd73');
INSERT INTO yacare_admission.province
 VALUES ('a3760a8b-ac3d-4a5f-ad8b-c81eb4335129', false, 'CZ-VY',
  'Vysočina',
  'f1226b93-708b-4944-94cb-4e3e2f88bd73');
INSERT INTO yacare_admission.province
 VALUES ('bcc7a216-d364-4b7b-be21-cf12cabefd38', false, 'CZ-ZL',
  'Zlínský kraj',
  'f1226b93-708b-4944-94cb-4e3e2f88bd73');
INSERT INTO yacare_admission.province
 VALUES ('4fab473a-56aa-4e87-a4a7-0b5eeaf99b29', false, 'DE-BW',
  'Baden-Württemberg',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('3f7500d5-6cf2-489c-b2c1-dc4b664fec2f', false, 'DE-BY',
  'Bayern',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('2f8ea900-fec3-4760-9141-881e77c72473', false, 'DE-BE',
  'Berlin',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('04bf3c3c-e7cd-4a32-9e15-0baa27809202', false, 'DE-BB',
  'Brandenburg',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('47023c94-11b8-4ccd-a4ac-dc7f13181118', false, 'DE-HB',
  'Bremen',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('61519f44-6b1c-43f0-a167-29fe2ffad3bf', false, 'DE-HH',
  'Hamburg',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('b43c150f-6f2b-42fb-9591-e7b2968a8e81', false, 'DE-HE',
  'Hessen',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('6e0855d4-4a88-4e1e-a7b5-1af512b0f57e', false, 'DE-MV',
  'Mecklenburg-Vorpommern',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('12cdadd5-f510-4263-9b3b-bc396d308200', false, 'DE-NI',
  'Niedersachsen',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('633e11fe-68de-41bc-9616-f8687d9f8399', false, 'DE-NW',
  'Nordrhein-Westfalen',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('455f78fc-fc45-4feb-964c-eba5961f5a54', false, 'DE-RP',
  'Rheinland-Pfalz',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('367b9340-ecb1-4360-a808-e39c9f54da20', false, 'DE-SL',
  'Saarland',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('4d4212e8-a86a-4ee4-b28c-6b985f90a8da', false, 'DE-SN',
  'Sachsen',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('df61549b-1646-435f-89cf-283c2aa2bd99', false, 'DE-ST',
  'Sachsen-Anhalt',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('2d02d7e6-a156-4753-b168-f62d03b847ad', false, 'DE-SH',
  'Schleswig-Holstein',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('a18e8984-59ab-4742-9691-63a2e8fddfdb', false, 'DE-TH',
  'Thüringen',
  '975b9660-39d0-4db9-be9c-2cb7bbc0d332');
INSERT INTO yacare_admission.province
 VALUES ('a021caf7-5ab7-4f8a-87af-a820d8d4ffc7', false, 'DJ-AS',
  'Ali Sabieh',
  'fa386c38-6370-4c51-a7dc-930b10f1dc2b');
INSERT INTO yacare_admission.province
 VALUES ('1e8478a2-46c5-4616-85a2-6b46ab92129b', false, 'DJ-AR',
  'Arta',
  'fa386c38-6370-4c51-a7dc-930b10f1dc2b');
INSERT INTO yacare_admission.province
 VALUES ('8a7f95a2-6272-46e5-a01f-2a5ead26a448', false, 'DJ-DI',
  'Dikhil',
  'fa386c38-6370-4c51-a7dc-930b10f1dc2b');
INSERT INTO yacare_admission.province
 VALUES ('1d894011-8a01-4e86-b0f5-6c91704b395f', false, 'DJ-DJ',
  'Djibouti',
  'fa386c38-6370-4c51-a7dc-930b10f1dc2b');
INSERT INTO yacare_admission.province
 VALUES ('55d5ea92-61e4-40d2-9fa8-7a7890f94c5f', false, 'DJ-OB',
  'Obock',
  'fa386c38-6370-4c51-a7dc-930b10f1dc2b');
INSERT INTO yacare_admission.province
 VALUES ('56dfb6e8-7276-462a-9264-49ef4a29082d', false, 'DJ-TA',
  'Tadjourah',
  'fa386c38-6370-4c51-a7dc-930b10f1dc2b');
INSERT INTO yacare_admission.province
 VALUES ('8a045088-817e-45d9-bbbc-660167674a0d', false, 'DK-84',
  'Hovedstaden',
  '1263d4e7-1f07-4441-a5a5-ff61a4230345');
INSERT INTO yacare_admission.province
 VALUES ('37c2aeb3-13bb-47ae-b207-3073a0c3f2c3', false, 'DK-82',
  'Midtjylland',
  '1263d4e7-1f07-4441-a5a5-ff61a4230345');
INSERT INTO yacare_admission.province
 VALUES ('82b78546-9c7e-49a7-81ea-c74e77d6c935', false, 'DK-81',
  'Nordjylland',
  '1263d4e7-1f07-4441-a5a5-ff61a4230345');
INSERT INTO yacare_admission.province
 VALUES ('2b28f640-2f1e-4728-a0e0-ad318a849f0a', false, 'DK-85',
  'Sjælland',
  '1263d4e7-1f07-4441-a5a5-ff61a4230345');
INSERT INTO yacare_admission.province
 VALUES ('0ef84de8-06ca-46ec-8e83-0d4933ca8328', false, 'DK-83',
  'Syddanmark',
  '1263d4e7-1f07-4441-a5a5-ff61a4230345');
INSERT INTO yacare_admission.province
 VALUES ('4818d9b4-5390-4c69-a86c-da22ac76e0fc', false, 'DM-02',
  'Saint Andrew',
  'a99863c7-e1d8-405a-88e6-ea9ba46c8a6c');
INSERT INTO yacare_admission.province
 VALUES ('c6031d75-d775-45e1-a6f6-eb214e3f8470', false, 'DM-03',
  'Saint David',
  'a99863c7-e1d8-405a-88e6-ea9ba46c8a6c');
INSERT INTO yacare_admission.province
 VALUES ('68735390-beaf-46ac-9876-e7ee58748475', false, 'DM-04',
  'Saint George',
  'a99863c7-e1d8-405a-88e6-ea9ba46c8a6c');
INSERT INTO yacare_admission.province
 VALUES ('97a4ea00-14e6-48b5-a5cd-639ce5e187d7', false, 'DM-05',
  'Saint John',
  'a99863c7-e1d8-405a-88e6-ea9ba46c8a6c');
INSERT INTO yacare_admission.province
 VALUES ('59a04293-71d2-4dc3-972c-0fc17f8336a9', false, 'DM-06',
  'Saint Joseph',
  'a99863c7-e1d8-405a-88e6-ea9ba46c8a6c');
INSERT INTO yacare_admission.province
 VALUES ('60147e32-de65-4c5c-bc0a-f2389ee76479', false, 'DM-07',
  'Saint Luke',
  'a99863c7-e1d8-405a-88e6-ea9ba46c8a6c');
INSERT INTO yacare_admission.province
 VALUES ('e027170a-f61c-419c-9006-6df48d078201', false, 'DM-08',
  'Saint Mark',
  'a99863c7-e1d8-405a-88e6-ea9ba46c8a6c');
INSERT INTO yacare_admission.province
 VALUES ('9964c3cf-7279-4d8e-8ed0-7449afced523', false, 'DM-09',
  'Saint Patrick',
  'a99863c7-e1d8-405a-88e6-ea9ba46c8a6c');
INSERT INTO yacare_admission.province
 VALUES ('25be0fe6-8f71-4ef4-96df-2b9c70828a95', false, 'DM-10',
  'Saint Paul',
  'a99863c7-e1d8-405a-88e6-ea9ba46c8a6c');
INSERT INTO yacare_admission.province
 VALUES ('e72a44a0-c122-4ba6-b17b-005b780b3f10', false, 'DM-11',
  'Saint Peter',
  'a99863c7-e1d8-405a-88e6-ea9ba46c8a6c');
INSERT INTO yacare_admission.province
 VALUES ('2fd9ad9b-35a0-4bd5-9640-e7ae738f23b1', false, 'DO-02',
  'Azua',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('112cfb36-0649-408e-a117-ce2cf059c10b', false, 'DO-03',
  'Bahoruco',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('684534b7-9ee4-49d2-9004-55066d01e578', false, 'DO-04',
  'Barahona',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('cf813123-5d5b-41e6-b8c6-44395bae2a4e', false, 'DO-05',
  'Dajabón',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('088488a1-830d-41c3-8fdf-8f6157306d32', false, 'DO-01',
  'Distrito Nacional (Santo Domingo)',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('1e240fd6-7263-48de-9cf1-43f3f0bcd388', false, 'DO-06',
  'Duarte',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('a5b79967-45cf-47fa-b2c5-d0d67f13a635', false, 'DO-08',
  'El Seibo',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('c1339be0-48d4-46f3-a70f-d8872f3acd4d', false, 'DO-07',
  'Elías Piña',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('e31d72d4-993e-4dc3-b803-3c0dd7c7eeba', false, 'DO-09',
  'Espaillat',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('91b17a0d-2a52-448c-abff-d5f66c7c1ebc', false, 'DO-30',
  'Hato Mayor',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('fc9c507a-eda6-436b-863c-fb3525ee23af', false, 'DO-19',
  'Hermanas Mirabal',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('5b2327d5-2617-41ca-8ce9-e8a30e495fb1', false, 'DO-10',
  'Independencia',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('bda71217-111f-4773-9d64-e4cb8c7dbfd8', false, 'DO-11',
  'La Altagracia',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('fa24139e-035e-4f92-96ca-b6839138370a', false, 'DO-12',
  'La Romana',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('75814bdf-684f-4c64-8390-55fad9cbfad8', false, 'DO-13',
  'La Vega',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('2f40747b-83ce-47e2-b4f5-b67bec3491a4', false, 'DO-14',
  'María Trinidad Sánchez',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('902e54d5-cf95-4513-9d1f-911279a01e0c', false, 'DO-28',
  'Monseñor Nouel',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('401e0c52-c153-4c17-a01a-114deefb4b07', false, 'DO-15',
  'Monte Cristi',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('3771778f-251b-443a-995d-ad8e4ac8d79e', false, 'DO-29',
  'Monte Plata',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('78e54999-6bae-4ed8-8309-8bfe7b76d0c3', false, 'DO-16',
  'Pedernales',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('b98e9762-117d-4803-bfd7-6f3ae30e7cba', false, 'DO-17',
  'Peravia',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('75d28786-c7a1-4c39-90e8-a804d65c2368', false, 'DO-18',
  'Puerto Plata',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('39f5344f-f741-431d-85d6-501235365672', false, 'DO-20',
  'Samaná',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('9634a278-8775-47ed-b071-2a8c1dde5fa0', false, 'DO-21',
  'San Cristóbal',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('cb012c7a-c969-46d7-ba51-d2ebc23852d6', false, 'DO-31',
  'San José de Ocoa',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('9a07ee3d-3f31-4ff7-87d7-ed77637e5880', false, 'DO-22',
  'San Juan',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('7239499d-ba8f-4734-9daa-a034ed63ce84', false, 'DO-23',
  'San Pedro de Macorís',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('709c1b4c-1e46-46b0-8f07-e7aacb086255', false, 'DO-24',
  'Sánchez Ramírez',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('0b83d7ff-1317-41dc-b64c-7f4cdf3cef43', false, 'DO-25',
  'Santiago',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('c0ee5ea4-c256-4360-abd8-c7b220f0f0c6', false, 'DO-26',
  'Santiago Rodríguez',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('41cf95f7-8ce2-49ff-b25b-1922e817e30a', false, 'DO-32',
  'Santo Domingo',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('d62306da-bcf4-4807-b053-ab40975f526f', false, 'DO-27',
  'Valverde',
  '357355c8-9e1c-453f-90aa-da8a5131daa4');
INSERT INTO yacare_admission.province
 VALUES ('1e19799d-04b1-4267-aa89-e847bc1500a9', false, 'DZ-01',
  'Adrar',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('8b92e5e6-2bc3-4ad5-8110-e276be69d2e4', false, 'DZ-44',
  'Aïn-Defla',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('b1e981ea-914e-450d-9a74-1d6bd35adb89', false, 'DZ-46',
  'Aïn-Témouchent',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('d129e317-ddd3-429f-8060-55793d6bd527', false, 'DZ-16',
  'Alger',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('1b2a8a3f-81fd-4951-8041-f93152f7d813', false, 'DZ-23',
  'Annaba',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('a158aa44-4cc3-4f48-88a4-f1cd182f8c53', false, 'DZ-05',
  'Batna',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('af3215d6-f786-434b-9160-58e192428170', false, 'DZ-08',
  'Béchar',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('99184665-f4a2-4f92-8af5-630bea07d300', false, 'DZ-06',
  'Béjaïa',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('109927dc-db56-4637-9d13-217c02eae5b8', false, 'DZ-07',
  'Biskra',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('469be142-c60c-461a-bbf8-a35b15d163b9', false, 'DZ-09',
  'Blida',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('ecdd4f7c-6845-4233-ab3e-481dab144ebb', false, 'DZ-34',
  'Bordj-Bou-Arreridj',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('f543403b-d739-427a-893e-1e24f77311c7', false, 'DZ-10',
  'Bouira',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('87451fd5-aa3a-46a8-996e-5f5b302e4353', false, 'DZ-35',
  'Boumerdès',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('f8d0313a-aa6d-4354-94f0-0b12536f8e85', false, 'DZ-02',
  'Chlef',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('ad4932ac-f5fe-409e-8b8a-efed3c8dff8d', false, 'DZ-25',
  'Constantine',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('343bc5ed-f5cb-4380-8be0-65a32cb21165', false, 'DZ-17',
  'Djelfa',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('5731215c-b57a-4894-bcf0-4eb29f81d8d7', false, 'DZ-32',
  'El-Bayadh',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('3b4ab420-c015-48dd-af57-7404d2a04e41', false, 'DZ-39',
  'El-Oued',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('a1ed1772-1395-4529-95bb-ebb043ad6892', false, 'DZ-36',
  'El-Taref',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('ede2532f-b3e6-4a97-b73d-6747a5cabee1', false, 'DZ-47',
  'Ghardaia',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('ea946989-62e4-46ce-95c1-3f5f552db568', false, 'DZ-24',
  'Guelma',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('96bfb5db-be31-483d-85b3-907ebc309366', false, 'DZ-33',
  'Illizi',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('a25e7a4b-6da5-48bf-b619-d2130095dc3d', false, 'DZ-18',
  'Jijel',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('21206205-a4ff-42ab-bf1c-f589adfe83a2', false, 'DZ-40',
  'Khenchela',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('52d40a76-a58b-4d1d-b62d-43ab107b8208', false, 'DZ-03',
  'Laghouat',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('955af1d4-b30b-468b-8911-32f7ea615b35', false, 'DZ-29',
  'Mascara',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('476631ba-a0d0-4986-901b-c214db4c8bc0', false, 'DZ-26',
  'Médéa',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('831a8716-658b-4df6-9d7b-3f1887e5ea6f', false, 'DZ-43',
  'Mila',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('8bf5feb1-8ac0-432f-aa07-570e086981bf', false, 'DZ-27',
  'Mostaganem',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('f4dab390-f5cc-4ab9-af8f-44617d985a19', false, 'DZ-28',
  'M''Sila',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('f0dece2a-eb13-461e-b450-212d452970a7', false, 'DZ-45',
  'Naâma',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('a86c6da5-76ee-4148-9947-b8df341199a3', false, 'DZ-31',
  'Oran',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('0a715816-9f8a-4b8e-af01-dedac78e8e02', false, 'DZ-30',
  'Ouargla',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('da641694-927e-43ed-a40d-464bc072105f', false, 'DZ-04',
  'Oum-El-Bouaghi',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('d6b1764b-6d72-41bb-983c-2d081e6cf6f4', false, 'DZ-48',
  'Relizane',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('73095a4d-486f-47ae-88f9-1719ec8ea4db', false, 'DZ-20',
  'Saida',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('04655075-29b1-48a7-af90-609ac4b3f175', false, 'DZ-19',
  'Sétif',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('e3097045-b341-46b3-9c56-133efbe36ad8', false, 'DZ-22',
  'Sidi-Bel-Abbès',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('2de9f432-f07e-413e-b645-2a3743d395b9', false, 'DZ-21',
  'Skikda',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('731b63a1-08ed-4e61-af3d-fe8c2a062e35', false, 'DZ-41',
  'Souk-Ahras',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('cc1c2d31-0fc5-4af2-bf06-53e49618d3e4', false, 'DZ-11',
  'Tamanrasset',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('a6e72ace-a1a2-46a8-9ef5-bb2b6b39e4ee', false, 'DZ-12',
  'Tébessa',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('946c7702-37fc-4c99-85e1-a8a2d6e78bb3', false, 'DZ-14',
  'Tiaret',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('31931aba-e660-41ac-bd27-70cd937efdfd', false, 'DZ-37',
  'Tindouf',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('a3bc2023-aa5a-4ab7-a95b-f51e513cbcfc', false, 'DZ-42',
  'Tipaza',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('466bf891-7360-4cef-a3da-f7b04a7506c1', false, 'DZ-38',
  'Tissemsilt',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('d921ac0e-1ccc-436d-88bf-6eec22623b5b', false, 'DZ-15',
  'Tizi-Ouzou',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('8484c8b3-7f8b-4340-9c3d-96b75fb3ffb9', false, 'DZ-13',
  'Tlemcen',
  '1d9552b2-edfe-4775-a44e-79e94650c748');
INSERT INTO yacare_admission.province
 VALUES ('de79f25f-1479-453e-a3a7-76c98aaf9591', false, 'EC-A',
  'Azuay',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('13ca8ab2-abb0-4352-9e75-aacb9f5d8691', false, 'EC-B',
  'Bolívar',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('d178f7fc-a516-4ac1-96b0-b9747d14c95d', false, 'EC-F',
  'Cañar',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('bb472d70-bd06-46be-8a81-c8af4d7bb928', false, 'EC-C',
  'Carchi',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('cf8d022a-8016-4a7b-a5f7-ecd3d05e7c9c', false, 'EC-H',
  'Chimborazo',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('262f94e0-f101-4ff0-96ae-e657bedcb8ca', false, 'EC-X',
  'Cotopaxi',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('7116ff8e-18c7-4f74-83ec-6356763f5919', false, 'EC-O',
  'El Oro',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('a12e4ace-2ce1-4f13-bd51-863994928821', false, 'EC-E',
  'Esmeraldas',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('a81c537e-b741-4625-a66b-9b34a653b395', false, 'EC-W',
  'Galápagos',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('acdf7317-99c3-4aa1-9188-281cae69144b', false, 'EC-G',
  'Guayas',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('3b86b45a-adb6-491f-a577-a4c494af957b', false, 'EC-I',
  'Imbabura',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('03a0ff93-0d26-46fa-a5ba-0581e5953d2d', false, 'EC-L',
  'Loja',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('0d952a5f-abdc-4e95-8057-361040c1f0e0', false, 'EC-R',
  'Los Ríos',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('465fa846-b596-48da-9fa2-f9b7d4576fd7', false, 'EC-M',
  'Manabí',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('92e4ec9c-afd6-406d-9f98-333d6b1b8bdc', false, 'EC-S',
  'Morona-Santiago',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('356e83f3-01ba-4aa8-9b70-1c8a68055ae4', false, 'EC-N',
  'Napo',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('0db8acd8-c09f-4391-b6ff-3df2881f3bed', false, 'EC-D',
  'Orellana',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('3256c93c-035a-4574-b207-892556e50e2f', false, 'EC-Y',
  'Pastaza',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('d5fbd05c-cfa3-4cd0-bb0f-45d86eaa3448', false, 'EC-P',
  'Pichincha',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('7674feba-a53c-415a-a53b-5bf0aa8ad167', false, 'EC-SE',
  'Santa Elena',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('0584de8d-bc06-463e-916c-1d3b9bc7ce60', false, 'EC-SD',
  'Santo Domingo de los Tsáchilas',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('1447593b-68b8-41cf-8b5f-3e484a11dcbe', false, 'EC-U',
  'Sucumbíos',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('d68d0d77-12de-43f4-8ae6-588e7131e118', false, 'EC-T',
  'Tungurahua',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('6cabe14b-dbf9-4da6-8b36-276ae12b2a42', false, 'EC-Z',
  'Zamora-Chinchipe',
  'f7c8b47d-85a8-456b-82ec-33355e516313');
INSERT INTO yacare_admission.province
 VALUES ('7a22aea6-5f6b-43ea-ab61-447f3c3f089f', false, 'EE-37',
  'Harjumaa',
  '3688e56d-126d-41eb-a83f-9b766cc3ed5e');
INSERT INTO yacare_admission.province
 VALUES ('99505f59-3c9c-4490-87f6-6598e9551565', false, 'EE-39',
  'Hiiumaa',
  '3688e56d-126d-41eb-a83f-9b766cc3ed5e');
INSERT INTO yacare_admission.province
 VALUES ('4c4259a2-c604-4abf-8013-28b61521ab26', false, 'EE-44',
  'Ida-Virumaa',
  '3688e56d-126d-41eb-a83f-9b766cc3ed5e');
INSERT INTO yacare_admission.province
 VALUES ('3250a5e6-de02-4a45-b064-fc0e6f48fca0', false, 'EE-51',
  'Järvamaa',
  '3688e56d-126d-41eb-a83f-9b766cc3ed5e');
INSERT INTO yacare_admission.province
 VALUES ('5a80eec1-7a09-4965-9db1-d6f3d9d9f49b', false, 'EE-49',
  'Jõgevamaa',
  '3688e56d-126d-41eb-a83f-9b766cc3ed5e');
INSERT INTO yacare_admission.province
 VALUES ('4a5123a8-92ff-41d8-9e18-c10d1c6055d5', false, 'EE-57',
  'Läänemaa',
  '3688e56d-126d-41eb-a83f-9b766cc3ed5e');
INSERT INTO yacare_admission.province
 VALUES ('3a62743d-0d46-49f1-9272-b2d9c8da632f', false, 'EE-59',
  'Lääne-Virumaa',
  '3688e56d-126d-41eb-a83f-9b766cc3ed5e');
INSERT INTO yacare_admission.province
 VALUES ('8a256089-7e03-4790-9b20-0fb55bdb5f7d', false, 'EE-67',
  'Pärnumaa',
  '3688e56d-126d-41eb-a83f-9b766cc3ed5e');
INSERT INTO yacare_admission.province
 VALUES ('98e9812d-f14d-4769-a2a3-fbae0ffcce21', false, 'EE-65',
  'Põlvamaa',
  '3688e56d-126d-41eb-a83f-9b766cc3ed5e');
INSERT INTO yacare_admission.province
 VALUES ('607b0b0d-7eea-42a3-9acc-4252390a3450', false, 'EE-70',
  'Raplamaa',
  '3688e56d-126d-41eb-a83f-9b766cc3ed5e');
INSERT INTO yacare_admission.province
 VALUES ('e8c338a7-cfbb-469e-ac6c-e0aeffc17679', false, 'EE-74',
  'Saaremaa',
  '3688e56d-126d-41eb-a83f-9b766cc3ed5e');
INSERT INTO yacare_admission.province
 VALUES ('69b1a825-5b03-4136-b681-cb20ffcee1bb', false, 'EE-78',
  'Tartumaa',
  '3688e56d-126d-41eb-a83f-9b766cc3ed5e');
INSERT INTO yacare_admission.province
 VALUES ('8ee43e80-b984-4f89-9d18-e810a8e8f05d', false, 'EE-82',
  'Valgamaa',
  '3688e56d-126d-41eb-a83f-9b766cc3ed5e');
INSERT INTO yacare_admission.province
 VALUES ('a7122c35-42bb-4230-96d3-54e3b355c247', false, 'EE-84',
  'Viljandimaa',
  '3688e56d-126d-41eb-a83f-9b766cc3ed5e');
INSERT INTO yacare_admission.province
 VALUES ('3d505c82-2dd3-48cd-9982-8aff26090dba', false, 'EE-86',
  'Võrumaa',
  '3688e56d-126d-41eb-a83f-9b766cc3ed5e');
INSERT INTO yacare_admission.province
 VALUES ('7e97223f-7fb3-42f9-9753-e687db3a3805', false, 'EG-ALX',
  'Alexandria',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('a77c05fa-1211-43a5-829e-1df0eaaee306', false, 'EG-SU',
  'As Sadis min Uktubar',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('d2d30a37-bbd1-46c2-a22c-d405e53ad64f', false, 'EG-ASN',
  'Aswan',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('7c7e3172-24c2-4b28-8b8d-90fd702f7dc8', false, 'EG-AST',
  'Asyut',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('16b26bf4-fc43-48b9-a578-a9ecbf337e5e', false, 'EG-BH',
  'Beheira',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('3e1de2ce-1cda-4306-bf84-250da9a58253', false, 'EG-BNS',
  'Beni Suef',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('1a9eaa35-a82a-4b59-8cc4-4e514318cac2', false, 'EG-C',
  'Cairo',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('69efe33b-8b4a-4baf-a8e8-8c478d06023a', false, 'EG-DK',
  'Dakahlia',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('4100bb12-de96-400f-9907-890b9f67a7c3', false, 'EG-DT',
  'Damietta',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('4ca37c66-7ae0-4ecd-b3ff-40c81a436015', false, 'EG-FYM',
  'Faiyum',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('d0d9affd-ccf2-47f0-8b8f-a90386801797', false, 'EG-GH',
  'Gharbia',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('d36d0da2-141e-4702-8f56-28bdc7c2c519', false, 'EG-GZ',
  'Giza',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('e3bc3a5f-7e58-4a9a-8cf5-c420b997b497', false, 'EG-HU',
  'Hulwan',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('27e14235-7ccb-4364-a1d0-af9c2a949028', false, 'EG-IS',
  'Ismailia',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('69118db8-e197-4a10-b7ee-6876de8aa420', false, 'EG-KFS',
  'Kafr el-Sheikh',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('884606dc-668c-4742-8508-4571cd71383a', false, 'EG-LX',
  'Luxor',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('6fe471c6-5b73-46d2-b33b-774a286b99a1', false, 'EG-MT',
  'Matruh',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('854de3a0-e7f8-437e-9c93-a48e90290b71', false, 'EG-MN',
  'Minya',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('df053539-bbec-419d-95b8-5cce209fbec4', false, 'EG-MNF',
  'Monufia',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('4c630f51-aad0-4909-834d-1c99f62d5c7b', false, 'EG-WAD',
  'New Valley',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('231cee05-16e1-43d8-96b2-8f2da22e820e', false, 'EG-SIN',
  'North Sinai',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('1f9b757d-2282-47ae-8ced-e3a17ffdb056', false, 'EG-PTS',
  'Port Said',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('d8a2cba0-5c7a-4dd2-8750-ad6d0b0ce2b3', false, 'EG-KB',
  'Qalyubia',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('11387d40-f6ae-49fe-b2aa-477b9f44e6f9', false, 'EG-KN',
  'Qena',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('1307e71c-34b7-46a3-9455-f691abb302fb', false, 'EG-BA',
  'Red Sea',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('b128d2bc-b75b-40d7-856e-3e1dc82e6448', false, 'EG-SHR',
  'Sharqia',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('de062224-e432-477b-9c75-ac588af5e39e', false, 'EG-SHG',
  'Sohag',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('33be3ae9-efef-4063-88f0-81eb9d83e7c7', false, 'EG-JS',
  'South Sinai',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('af03c80b-2445-4c0e-9cf5-ce7687c77029', false, 'EG-SUZ',
  'Suez',
  'e0938ceb-674c-49c0-913a-63d38e01b772');
INSERT INTO yacare_admission.province
 VALUES ('b673d0eb-4a72-488e-b7ec-7393c7e27939', false, 'EH-BOD',
  'Boujdour',
  'fb19e7ed-4b70-4aee-9f46-111ae4f7f284');
INSERT INTO yacare_admission.province
 VALUES ('cee1b549-67c6-4818-a160-ad7ac150e824', false, 'EH-ESM',
  'Es Semara',
  'fb19e7ed-4b70-4aee-9f46-111ae4f7f284');
INSERT INTO yacare_admission.province
 VALUES ('23dd10cc-3f3b-478c-9433-3c71d467aa04', false, 'EH-LAA',
  'Laayoune',
  'fb19e7ed-4b70-4aee-9f46-111ae4f7f284');
INSERT INTO yacare_admission.province
 VALUES ('bbabd04e-324d-42f0-9fa0-7a82aedec122', false, 'EH-OUD',
  'Oued el Dahab',
  'fb19e7ed-4b70-4aee-9f46-111ae4f7f284');
INSERT INTO yacare_admission.province
 VALUES ('83775c11-99da-4d3c-9f29-fbedb6fd5cd6', false, 'ER-AN',
  'Anseba',
  '89e5ada6-201f-4de5-bedb-80cf9a2674bd');
INSERT INTO yacare_admission.province
 VALUES ('8a463f88-4480-42c9-b70a-9b6a5d5dc9e8', false, 'ER-MA',
  'Central',
  '89e5ada6-201f-4de5-bedb-80cf9a2674bd');
INSERT INTO yacare_admission.province
 VALUES ('6a5a881f-3072-4127-acf3-0ca5040e00f2', false, 'ER-GB',
  'Gash-Barka',
  '89e5ada6-201f-4de5-bedb-80cf9a2674bd');
INSERT INTO yacare_admission.province
 VALUES ('f4fc051f-ccbd-433e-916d-86aaae6887d9', false, 'ER-SK',
  'Northern Red Sea',
  '89e5ada6-201f-4de5-bedb-80cf9a2674bd');
INSERT INTO yacare_admission.province
 VALUES ('15e41dfd-017c-4028-be1e-1490d62aefa8', false, 'ER-DU',
  'Southern',
  '89e5ada6-201f-4de5-bedb-80cf9a2674bd');
INSERT INTO yacare_admission.province
 VALUES ('61eb2805-64d1-474e-98ee-a936dcef6d65', false, 'ER-DK',
  'Southern Red Sea',
  '89e5ada6-201f-4de5-bedb-80cf9a2674bd');
INSERT INTO yacare_admission.province
 VALUES ('8cf4262c-b830-44d5-ab83-a4c65e36290b', false, 'ES-VI',
  'Álava',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('b6e36c79-7036-4ff7-a4c8-2985157c273f', false, 'ES-AB',
  'Albacete',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('85c22847-5437-495b-8a75-1a4b803364f3', false, 'ES-A',
  'Alicante',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('87183c15-0a3e-4dbb-9700-5733f5faa9b0', false, 'ES-AL',
  'Almería',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('cb5af938-f7ad-4a9b-afa1-9ec2edf8e775', false, 'ES-O',
  'Asturias',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('bf359097-01c5-48b8-b907-61ce63896d3c', false, 'ES-AV',
  'Ávila',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('db7c5b33-e81e-45cc-bc76-175a49f9e06b', false, 'ES-BA',
  'Badajoz',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('4eb404a7-a663-4e8f-b413-6fff3d3f94ab', false, 'ES-B',
  'Barcelona',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('3a7d5bdf-878c-440a-83f4-24f042c8e77e', false, 'ES-BU',
  'Burgos',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('093dcb24-491a-42a1-96ed-7d3592d43bea', false, 'ES-CC',
  'Cáceres',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('b57cfac5-9f05-415a-bcee-3816c634b4cb', false, 'ES-CA',
  'Cádiz',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('e25e81a5-2493-4bb9-9619-4fabd9c1b1da', false, 'ES-S',
  'Cantabria',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('05ca4402-9992-469a-90cc-9f2ba40961bb', false, 'ES-CS',
  'Castellón',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('d3345a0d-ffe6-496b-bc96-4dc723c10234', false, 'ES-CE',
  'Ceuta',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('9d256627-79d7-4a43-9976-a7560f9f2034', false, 'ES-CR',
  'Ciudad Real',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('4e720b66-b72c-4959-b033-87fcf6bb349b', false, 'ES-CO',
  'Córdoba',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('1088f6d9-9952-4209-bb93-d0410b37e7f1', false, 'ES-CU',
  'Cuenca',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('a344a442-b18c-403b-b112-86d281bca62d', false, 'ES-GI',
  'Girona',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('60493ab4-4bc7-43f4-ac6c-1dd5c8351a74', false, 'ES-GR',
  'Granada',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('ae9c00a1-9425-40a3-b36e-b9c07011e1a5', false, 'ES-GU',
  'Guadalajara',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('6f7b0f13-8567-4370-b62f-499d2adb3220', false, 'ES-SS',
  'Guipúzcoa',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('28c714c6-9986-4899-bb5b-0880c162f893', false, 'ES-H',
  'Huelva',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('18b0f05a-8f21-46d6-9c25-07320573f878', false, 'ES-HU',
  'Huesca',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('90ff32a4-eeee-4821-a670-759e7d7d8ed7', false, 'ES-PM',
  'Islas Baleares',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('ab77eb44-c92b-43c3-910a-ad9011c6feb4', false, 'ES-J',
  'Jaén',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('7cf10953-9702-403d-a8bf-50b786cf869d', false, 'ES-C',
  'La Coruña',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('7cafced9-49ed-40c2-91e2-f0ddb9f4fd5d', false, 'ES-LO',
  'La Rioja',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('bf6ea4fe-59f7-4a4a-b1aa-24a7b1a62c9e', false, 'ES-GC',
  'Las Palmas',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('cd008de7-c8a6-49f8-af7f-55a981323886', false, 'ES-LE',
  'León',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('5208cb2b-7af6-4044-9dc8-5a492b4aab47', false, 'ES-L',
  'Lleida',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('4a0130ea-e6ae-4bd4-8f89-6711f3bff45f', false, 'ES-LU',
  'Lugo',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('1b800e30-ebb8-4968-a7f4-12e1eae9fed9', false, 'ES-M',
  'Madrid',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('ec3a4f35-fdf0-4822-8bd3-5831c633ee06', false, 'ES-MA',
  'Málaga',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('3a3c213a-0202-4216-8a62-391b6c6c0a64', false, 'ES-ML',
  'Melilla',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('a6e99299-09fb-4d91-8520-d45c6b2bd013', false, 'ES-MU',
  'Murcia',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('1b9539b2-4b8d-43f6-94fc-39d384b21e4f', false, 'ES-NA',
  'Navarra',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('89c7cd2e-52ea-474f-a397-69d197ba1d9f', false, 'ES-OR',
  'Ourense',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('8ca0f46d-0545-4883-b02f-2ea82af89a8e', false, 'ES-P',
  'Palencia',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('e6d4d1c9-0a28-4376-920f-ef683a4374ce', false, 'ES-PO',
  'Pontevedra',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('9732cf9d-be73-43b5-a7c1-330e1b0f2085', false, 'ES-SA',
  'Salamanca',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('6f2119ae-9f2d-46f4-afae-81dd55597b0a', false, 'ES-TF',
  'Santa Cruz de Tenerife',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('a1c38201-bcee-457a-ad5e-f0c34388a9c8', false, 'ES-SG',
  'Segovia',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('67e54ec3-831f-4000-a04d-4ecaf2aa4965', false, 'ES-SE',
  'Sevilla',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('a3b487eb-6856-4027-8869-d407fe933553', false, 'ES-SO',
  'Soria',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('99e58dfc-e85a-4e26-971d-393a3e203f41', false, 'ES-T',
  'Tarragona',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('21c7d9fa-6baa-424f-81a4-fd0e6cffbb94', false, 'ES-TE',
  'Teruel',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('b85555eb-4fe3-41d0-b4d7-2a3943281b2c', false, 'ES-TO',
  'Toledo',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('167fecbb-3d95-4ed6-b9c9-1ef7ca23b450', false, 'ES-V',
  'Valencia',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('622cf910-1e92-4a36-9b4f-213dffacfb5b', false, 'ES-VA',
  'Valladolid',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('52d99dee-3083-4269-976a-52d4ea4ab736', false, 'ES-BI',
  'Vizcaya',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('f37f1e2f-6fc9-4bd5-b9a3-c429081c7511', false, 'ES-ZA',
  'Zamora',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('7e3aa726-53b4-4f4b-a922-457aee716743', false, 'ES-Z',
  'Zaragoza',
  '5944a3ac-4337-49c4-8187-61a6c765cd3f');
INSERT INTO yacare_admission.province
 VALUES ('69dcf11b-1108-43d4-bbc8-d12a660a3df8', false, 'ET-AA',
  'Addis Ababa',
  'a61c4477-3e55-4cdd-8de7-a0757d1b02ad');
INSERT INTO yacare_admission.province
 VALUES ('38e500c0-de37-4ed2-9d26-05b8f91c0dda', false, 'ET-AF',
  'Afar',
  'a61c4477-3e55-4cdd-8de7-a0757d1b02ad');
INSERT INTO yacare_admission.province
 VALUES ('8022685e-09fc-4109-a40f-b8b28cc40bdd', false, 'ET-AM',
  'Amhara',
  'a61c4477-3e55-4cdd-8de7-a0757d1b02ad');
INSERT INTO yacare_admission.province
 VALUES ('694cf21f-452f-41fa-91c4-4c18dd1fdb80', false, 'ET-BE',
  'Benishangul-Gumuz',
  'a61c4477-3e55-4cdd-8de7-a0757d1b02ad');
INSERT INTO yacare_admission.province
 VALUES ('bfb096a1-33ab-40c2-9749-99c395e165f7', false, 'ET-DD',
  'Dire Dawa',
  'a61c4477-3e55-4cdd-8de7-a0757d1b02ad');
INSERT INTO yacare_admission.province
 VALUES ('60de2644-ec4c-49b6-8db9-91fe3fc4c124', false, 'ET-GA',
  'Gambela',
  'a61c4477-3e55-4cdd-8de7-a0757d1b02ad');
INSERT INTO yacare_admission.province
 VALUES ('3c0d23b1-f831-4bdf-895d-adcac6bce7ae', false, 'ET-HA',
  'Harari',
  'a61c4477-3e55-4cdd-8de7-a0757d1b02ad');
INSERT INTO yacare_admission.province
 VALUES ('0375a393-14c2-4a93-821c-f3ae882c4a43', false, 'ET-OR',
  'Oromia',
  'a61c4477-3e55-4cdd-8de7-a0757d1b02ad');
INSERT INTO yacare_admission.province
 VALUES ('a9e410a4-c553-4d48-91db-e4b0721b9963', false, 'ET-SO',
  'Somali',
  'a61c4477-3e55-4cdd-8de7-a0757d1b02ad');
INSERT INTO yacare_admission.province
 VALUES ('f970792b-73fe-4a7b-ae56-706f2ecd4c77', false, 'ET-SN',
  'Southern Nations',
  'a61c4477-3e55-4cdd-8de7-a0757d1b02ad');
INSERT INTO yacare_admission.province
 VALUES ('bc227ee9-7eb9-4878-bc35-3af6691e2490', false, 'ET-TI',
  'Tigray',
  'a61c4477-3e55-4cdd-8de7-a0757d1b02ad');
INSERT INTO yacare_admission.province
 VALUES ('1f503c9a-0b92-436b-b9c8-2e91fee7aa14', false, 'FI-AL',
  'Ahvenanmaan lääni',
  '6cabb008-b2dc-40c6-8d07-374097ffbd19');
INSERT INTO yacare_admission.province
 VALUES ('e7235091-7961-4ff4-bcac-fa5161e578a0', false, 'FI-ES',
  'Etelä-Suomen lääni',
  '6cabb008-b2dc-40c6-8d07-374097ffbd19');
INSERT INTO yacare_admission.province
 VALUES ('ac6ede03-9aed-455a-95dc-3f0b3bc9dd16', false, 'FI-IS',
  'Itä-Suomen lääni',
  '6cabb008-b2dc-40c6-8d07-374097ffbd19');
INSERT INTO yacare_admission.province
 VALUES ('f7046df4-a3e9-41f9-a590-7aeab2efbc45', false, 'FI-LS',
  'Länsi-Suomen lääni',
  '6cabb008-b2dc-40c6-8d07-374097ffbd19');
INSERT INTO yacare_admission.province
 VALUES ('8c99d730-40cd-4599-95f4-8b9982a77966', false, 'FI-LL',
  'Lapin lääni',
  '6cabb008-b2dc-40c6-8d07-374097ffbd19');
INSERT INTO yacare_admission.province
 VALUES ('104ff692-b219-4f57-bf1a-6d38facb10bf', false, 'FI-OL',
  'Oulun lääni',
  '6cabb008-b2dc-40c6-8d07-374097ffbd19');
INSERT INTO yacare_admission.province
 VALUES ('08144df5-c873-40da-8f46-89b0015c7309', false, 'FJ-C',
  'Central',
  '29b52b30-a66c-4b07-b100-8000bc41d985');
INSERT INTO yacare_admission.province
 VALUES ('cd9d12ff-a7c9-41a4-8b4c-5e86d5b5b4c4', false, 'FJ-E',
  'Eastern',
  '29b52b30-a66c-4b07-b100-8000bc41d985');
INSERT INTO yacare_admission.province
 VALUES ('5cc582dc-55e5-46f7-a81a-c29f5466763a', false, 'FJ-N',
  'Northern',
  '29b52b30-a66c-4b07-b100-8000bc41d985');
INSERT INTO yacare_admission.province
 VALUES ('0eb5bb0b-a802-4cba-b84d-3b8b4d4f87e1', false, 'FJ-R',
  'Rotuma',
  '29b52b30-a66c-4b07-b100-8000bc41d985');
INSERT INTO yacare_admission.province
 VALUES ('47d9503f-d24b-493b-8931-47b2381774d4', false, 'FJ-W',
  'Western',
  '29b52b30-a66c-4b07-b100-8000bc41d985');
INSERT INTO yacare_admission.province
 VALUES ('ce892f8e-42d1-48d2-8cd5-ecb4942bbfc2', false, 'FM-TRK',
  'Chuuk',
  'c3a7789a-7fcb-43c1-9f75-27694afc9275');
INSERT INTO yacare_admission.province
 VALUES ('b2300d5a-6525-4cc0-8cab-ad05b34bd855', false, 'FM-KSA',
  'Kosrae',
  'c3a7789a-7fcb-43c1-9f75-27694afc9275');
INSERT INTO yacare_admission.province
 VALUES ('cbeb0055-2686-4586-a7b7-7b833552ea97', false, 'FM-PNI',
  'Pohnpei',
  'c3a7789a-7fcb-43c1-9f75-27694afc9275');
INSERT INTO yacare_admission.province
 VALUES ('6be17f19-fbec-4d38-a0f0-8debdce865bd', false, 'FM-YAP',
  'Yap',
  'c3a7789a-7fcb-43c1-9f75-27694afc9275');
INSERT INTO yacare_admission.province
 VALUES ('869f81f6-9218-4a50-a1c2-609323b85f1e', false, 'FR-01',
  'Ain',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('a024fe24-8b79-4749-a146-7d62c10504f1', false, 'FR-02',
  'Aisne',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('768d5eb2-1c45-4f01-9fc2-0214c8eb892a', false, 'FR-03',
  'Allier',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('180986c2-a258-4757-b098-8b1560141545', false, 'FR-04',
  'Alpes-de-Haute-Provence',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('a2461691-010c-4d9e-bd2f-a14a4919d458', false, 'FR-06',
  'Alpes-Maritimes',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('5060175e-205c-44a8-89af-8802c8ab011f', false, 'FR-07',
  'Ardèche',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('e5ec984e-2296-4c97-b2ce-bff9c80aa700', false, 'FR-08',
  'Ardennes',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('5fee073b-3077-4ee0-883d-a0c4938534ba', false, 'FR-09',
  'Ariège',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('d3f76f75-3607-4d3b-b5bd-b50c9276b877', false, 'FR-10',
  'Aube',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('e2bc635e-6a8a-4f1b-835b-71b5779688f8', false, 'FR-11',
  'Aude',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('84e5bbd1-8ba2-4574-95a9-dfb25e6726df', false, 'FR-12',
  'Aveyron',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('511fa76d-cfcf-493e-a014-f09c1a69c535', false, 'FR-67',
  'Bas-Rhin',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('9494bbeb-0b35-4afa-abac-fe9412039272', false, 'FR-13',
  'Bouches-du-Rhône',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('79eedf5a-3f2f-4a03-962d-c71bdf6bc99a', false, 'FR-14',
  'Calvados',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('29e69686-c32e-4fb4-b25c-3fb36e571771', false, 'FR-15',
  'Cantal',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('55e27b14-7ecd-4b5f-9db6-fd11977baaad', false, 'FR-16',
  'Charente',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('73d8b00e-12b9-4d06-9727-319460f4703a', false, 'FR-17',
  'Charente-Maritime',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('25298a8c-2f98-468e-ab87-e57b760d7a09', false, 'FR-18',
  'Cher',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('982dc1c6-ed87-4cb5-911a-53348a016758', false, 'FR-19',
  'Corrèze',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('d66cff44-8a6e-4406-922c-c6447278c896', false, 'FR-2A',
  'Corse-du-Sud',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('bf77de3e-8bb6-4c4e-b4c6-9bc72a6851a2', false, 'FR-21',
  'Côte-d''Or',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('3fb9fc21-a3a1-4374-8b07-1699383b2813', false, 'FR-22',
  'Côtes-d''Armor',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('7cb04b6c-cb72-4456-8e59-ac6661fc0b6e', false, 'FR-23',
  'Creuse',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('90bb3c5e-78c6-4a7a-9337-c92f5053452a', false, 'FR-79',
  'Deux-Sèvres',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('1977ba78-faca-4621-9175-6949157a35fb', false, 'FR-24',
  'Dordogne',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('595ee805-369a-497f-b379-4851e8b8a855', false, 'FR-25',
  'Doubs',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('75d7bcb4-248d-422f-a7d8-9dfca1c79862', false, 'FR-26',
  'Drôme',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('66f3855e-b6ad-49e0-b808-9ea0c8fc97be', false, 'FR-91',
  'Essonne',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('30d9d711-f59a-4f95-8b58-51d97e56c8ee', false, 'FR-27',
  'Eure',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('1026825f-a314-4d85-be18-bfbd327c45ba', false, 'FR-28',
  'Eure-et-Loir',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('da06ed5f-88b5-4d29-91cc-f68db266ae9d', false, 'FR-29',
  'Finistère',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('3160ee7d-e909-48a9-a81e-f74e891302a0', false, 'FR-30',
  'Gard',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('eacbd0ea-2d97-4d7a-b40f-38ea80caacb0', false, 'FR-32',
  'Gers',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('f13da130-ed7f-49ff-b142-94c3e4c91656', false, 'FR-33',
  'Gironde',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('8a4154e8-bc4b-4845-803f-6074d14f6fef', false, 'FR-GP',
  'Guadeloupe',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('80c09158-5b50-4d4d-ae12-1b824dfab0a7', false, 'FR-GF',
  'Guyane',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('4b503b90-bd83-4985-9740-30e3bed48754', false, 'FR-2B',
  'Haute-Corse',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('0bfb1838-5f84-4684-ad44-75784ed83856', false, 'FR-31',
  'Haute-Garonne',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('27f2de32-a377-4358-9af9-686a276307cf', false, 'FR-43',
  'Haute-Loire',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('e7e4ec7c-e3d7-4066-9c0e-c0f2de025965', false, 'FR-52',
  'Haute-Marne',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('93f5d5f1-94f4-4118-9220-c6220cdc3bab', false, 'FR-05',
  'Hautes-Alpes',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('3aaf0bb8-0e1e-461a-91a2-abafda1b2d34', false, 'FR-70',
  'Haute-Saône',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('eeb07c47-a40e-4769-be85-ee2b171e6967', false, 'FR-74',
  'Haute-Savoie',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('f0a1e8ba-22a6-406d-9636-71dc1b5010ea', false, 'FR-65',
  'Hautes-Pyrénées',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('afc7924c-c7d2-4fb9-bac0-c414485b425a', false, 'FR-87',
  'Haute-Vienne',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('d0d3069c-c326-4609-9134-a1c20323580d', false, 'FR-68',
  'Haut-Rhin',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('7d78af97-252e-4a42-8be9-554786b97423', false, 'FR-92',
  'Hauts-de-Seine',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('69bf79cd-3c4d-42ad-97a9-250b403ab0d3', false, 'FR-34',
  'Hérault',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('dfafac30-5ef6-438f-ae7b-eee3583f19ed', false, 'FR-35',
  'Ille-et-Vilaine',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('a1f1791b-9175-4310-9e7c-bf3329555f39', false, 'FR-36',
  'Indre',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('00071c33-ff0b-42fe-84ef-94018d7a047f', false, 'FR-37',
  'Indre-et-Loire',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('17cde544-4ec5-4873-9785-8d3e6c3bb7ff', false, 'FR-38',
  'Isère',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('6cb377c8-a8aa-4905-ba44-d2ad09daa371', false, 'FR-39',
  'Jura',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('8226428e-564b-4331-9222-5b5a082ae5e1', false, 'FR-RE',
  'La Réunion',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('a3cde167-7c52-4562-a9d8-560855571898', false, 'FR-40',
  'Landes',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('ba58b3cb-65d4-4463-9879-898e06299c8f', false, 'FR-42',
  'Loire',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('9a326e54-8b0b-48b3-8c5c-c0bb2892b084', false, 'FR-44',
  'Loire-Atlantique',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('af1347a1-561f-41e2-87c8-bb8bf5c5ef60', false, 'FR-45',
  'Loiret',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('13364496-d167-49d0-a468-8dd6da8d7273', false, 'FR-41',
  'Loir-et-Cher',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('e50dd95b-7a0d-41de-84df-aa4dec90f449', false, 'FR-46',
  'Lot',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('b8a01ea3-6f66-4712-95ee-c0a55a9ac05f', false, 'FR-47',
  'Lot-et-Garonne',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('d4578f2e-e449-4cf1-850a-99dd007ec7d7', false, 'FR-48',
  'Lozère',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('3855cdcc-71f4-4959-8f24-58466d43e48d', false, 'FR-49',
  'Maine-et-Loire',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('0c991b09-2618-4d86-bb44-0a83ed99b519', false, 'FR-50',
  'Manche',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('387a0321-5807-4afb-b857-fa22275d4149', false, 'FR-51',
  'Marne',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('87b21811-96da-427f-ae63-2a0f1b0a8f54', false, 'FR-MQ',
  'Martinique',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('72b66ab0-5904-4851-8a77-eba9e6b4d277', false, 'FR-53',
  'Mayenne',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('1aa82154-0b14-4afb-8754-09691b8516cb', false, 'FR-YT',
  'Mayotte',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('bdf52a35-3b91-4bd0-8b1f-b794ae8f432e', false, 'FR-54',
  'Meurthe-et-Moselle',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('42bf50c5-e610-4dea-a662-57bc0ea28e30', false, 'FR-55',
  'Meuse',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('3071ea93-3416-49c9-a1ad-0ca31f790a29', false, 'FR-56',
  'Morbihan',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('d34ed7aa-087c-4292-ab7f-4e6b6a6b0b0b', false, 'FR-57',
  'Moselle',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('c238a2fa-90ef-4427-a318-a597dd86798e', false, 'FR-58',
  'Nièvre',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('fa61963e-a914-434f-aec5-5d490732b132', false, 'FR-59',
  'Nord',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('fa4cd01e-2671-4785-93b3-152023ce873e', false, 'FR-NC',
  'Nouvelle-Calédonie',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('734cdfc6-9886-4fa9-a054-2b64859525c3', false, 'FR-60',
  'Oise',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('2e27698d-09da-4b0f-ac00-45a1c5e06ead', false, 'FR-61',
  'Orne',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('fa98ca2b-6e2b-4880-8324-2790eb194a02', false, 'FR-75',
  'Paris',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('0a7a9a32-99fc-4fec-85b1-5a3d71aefe78', false, 'FR-62',
  'Pas-de-Calais',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('40b4c4b4-bf6b-460f-bb04-ca2fa5f4661c', false, 'FR-PF',
  'Polynésie Française',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('1a9c4a61-2faf-4689-b05f-7945fa43fe9b', false, 'FR-63',
  'Puy-de-Dôme',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('762cd80e-37a5-4f3d-b3b6-2c74f31df6b8', false, 'FR-64',
  'Pyrénées-Atlantiques',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('c5ee9716-648b-4768-8b79-49bf053cb03a', false, 'FR-66',
  'Pyrénées-Orientales',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('d1cd17e9-d504-437b-8e3a-77481317f3d0', false, 'FR-69',
  'Rhône',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('9425f09d-aaf3-415d-9877-ecbfa3c6a54e', false, 'FR-BL',
  'Saint-Barthélemy',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('1972d8fe-d6e7-40a3-b32d-bff735dd4321', false, 'FR-MF',
  'Saint-Martin',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('4ffe35c1-d8f5-4f80-916f-248129612159', false, 'FR-PM',
  'Saint-Pierre et Miquelon',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('85d74947-f0b3-4b1c-9687-3b1b1900db05', false, 'FR-71',
  'Saône-et-Loire',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('eb9f8b99-76ea-47c0-8e82-b79351964be2', false, 'FR-72',
  'Sarthe',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('82e6d49b-3710-4121-bb83-9b8d0031124a', false, 'FR-73',
  'Savoie',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('550eefa5-2c47-46c7-ada9-f90f048b9bd5', false, 'FR-77',
  'Seine-et-Marne',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('d477ef32-9594-4332-98ba-e342a38cf7c7', false, 'FR-76',
  'Seine-Maritime',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('5c14b325-cde0-4530-925b-a97b4ef43851', false, 'FR-93',
  'Seine-Saint-Denis',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('c8a78eef-d146-43ca-b8ae-bd74d6f9356b', false, 'FR-80',
  'Somme',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('45d96d8d-7622-4a54-89e6-c14832e6c729', false, 'FR-81',
  'Tarn',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('cf5930e2-ffa1-42e9-a379-3335e0d73f37', false, 'FR-82',
  'Tarn-et-Garonne',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('cc3870bf-0068-4a0c-a018-b8529a7ec5e6', false, 'FR-TF',
  'Terres australes et antarctiques',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('8b3231c4-e5cb-4f7c-ace5-1c55686f2ea9', false, 'FR-90',
  'Territoire de Belfort',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('ceb03068-f204-4a31-99ba-440ae08a584e', false, 'FR-94',
  'Val-de-Marne',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('86e83321-14c0-4149-9822-53a6debe167c', false, 'FR-95',
  'Val-d''Oise',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('d2620431-b51b-46d7-98b2-4ddd9445d4a2', false, 'FR-83',
  'Var',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('793f2db6-00ec-4063-95d7-fc947a3de59e', false, 'FR-84',
  'Vaucluse',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('dbdfa51e-a140-4a0f-ac11-0a2bcce81b54', false, 'FR-85',
  'Vendée',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('596de0df-7212-4ef8-a5c4-38df4fe6468e', false, 'FR-86',
  'Vienne',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('4f683397-218e-4c9c-9be2-11ea6589bffb', false, 'FR-88',
  'Vosges',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('b8a7f0db-a601-48fe-b3dc-259d3fccb2cb', false, 'FR-WF',
  'Wallis et Futuna',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('025180a5-c925-4a48-9111-a6d0559f23ac', false, 'FR-89',
  'Yonne',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('04a56423-d002-4799-91cd-6f20e93270bc', false, 'FR-78',
  'Yvelines',
  '7d42b1e2-ecb6-422b-b8dc-247e435b63bc');
INSERT INTO yacare_admission.province
 VALUES ('93cf38d9-8821-4366-b28e-77aa48a19d73', false, 'GA-1',
  'Estuaire',
  '23c16af3-9fd8-4918-b68f-570087090745');
INSERT INTO yacare_admission.province
 VALUES ('2c576f83-961f-4db5-b2e6-a618c6d92bff', false, 'GA-2',
  'Haut-Ogooué',
  '23c16af3-9fd8-4918-b68f-570087090745');
INSERT INTO yacare_admission.province
 VALUES ('5c17152f-8206-4e34-9298-b1365b2c4d07', false, 'GA-3',
  'Moyen-Ogooué',
  '23c16af3-9fd8-4918-b68f-570087090745');
INSERT INTO yacare_admission.province
 VALUES ('acc8b667-d076-4ae9-b4e4-27c8ef6d273d', false, 'GA-4',
  'Ngounié',
  '23c16af3-9fd8-4918-b68f-570087090745');
INSERT INTO yacare_admission.province
 VALUES ('ef4cd717-3480-4127-a7fc-a875e3a8072b', false, 'GA-5',
  'Nyanga',
  '23c16af3-9fd8-4918-b68f-570087090745');
INSERT INTO yacare_admission.province
 VALUES ('abcbf4ab-b995-4b16-88b6-415841f3c2e4', false, 'GA-6',
  'Ogooué-Ivindo',
  '23c16af3-9fd8-4918-b68f-570087090745');
INSERT INTO yacare_admission.province
 VALUES ('3c19d422-a2d4-4c17-a5a2-bb1fc4eb9045', false, 'GA-7',
  'Ogooué-Lolo',
  '23c16af3-9fd8-4918-b68f-570087090745');
INSERT INTO yacare_admission.province
 VALUES ('5d52c7b1-6354-4e26-b72d-0e6b5d0b8c5d', false, 'GA-8',
  'Ogooué-Maritime',
  '23c16af3-9fd8-4918-b68f-570087090745');
INSERT INTO yacare_admission.province
 VALUES ('06f50990-585e-48b3-9c02-6a7dd662a3a8', false, 'GA-9',
  'Woleu-Ntem',
  '23c16af3-9fd8-4918-b68f-570087090745');
INSERT INTO yacare_admission.province
 VALUES ('0dccb0e0-20fa-4f08-adf8-a24b370a69e3', false, 'GB-ABE',
  'Aberdeen City',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('f80b9ee2-6f39-43b0-ae33-ddf12269ed88', false, 'GB-ABD',
  'Aberdeenshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('c129bbcb-196d-4840-b5af-cdfc0b9b8b01', false, 'GB-ANS',
  'Angus',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('317a915a-5577-424d-9c5b-5e086abeb47d', false, 'GB-ANT',
  'Antrim',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('f744591c-3189-4f28-a513-a788f8c1b457', false, 'GB-ARD',
  'Ards',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('dac33cc0-a661-488a-85ef-834aa73fe84a', false, 'GB-AGB',
  'Argyll and Bute',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('bbebe91f-8339-49b7-8ac6-945ec8b48139', false, 'GB-ARM',
  'Armagh',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('0988f757-3a0e-4ca2-80d1-739057043bea', false, 'GB-BLA',
  'Ballymena',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('734f42ab-303b-4269-a560-0872c06b0f9b', false, 'GB-BLY',
  'Ballymoney',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('aa8e95fe-d284-48d6-bf14-a73887a4a241', false, 'GB-BNB',
  'Banbridge',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('35901323-e662-41fd-9b00-0c282199a46f', false, 'GB-BDG',
  'Barking and Dagenham',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('343981b4-5cfc-4b87-a81f-15dce502af90', false, 'GB-BNE',
  'Barnet',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('ee82058e-96be-43c1-9550-5e1912d568dc', false, 'GB-BNS',
  'Barnsley',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('14ce82f5-9b12-45f3-9f67-3fad0ae13d60', false, 'GB-BAS',
  'Bath and North East Somerset',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('b549aa5a-9441-43b6-9fd4-d575936703f9', false, 'GB-BDF',
  'Bedford',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('3b8fc1ce-e601-45a6-b5b0-67bc750eb9a0', false, 'GB-BFS',
  'Belfast City',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('aaf284bc-eaac-4f5d-ba26-f7238d1be727', false, 'GB-BEX',
  'Bexley',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('c0e29ac0-0c27-480d-bc1c-ef65653deaf8', false, 'GB-BIR',
  'Birmingham',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('85cdd977-a114-445d-b150-ce398c59cdd6', false, 'GB-BBD',
  'Blackburn with Darwen',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('a9715be9-be90-461f-a913-8e60bd03a293', false, 'GB-BPL',
  'Blackpool',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('d7067590-1089-4c88-b90d-d8ac5953bcb2', false, 'GB-BGW',
  'Blaenau Gwent',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('6fbc3e4f-06e2-4e29-864c-422eb20e6696', false, 'GB-BOL',
  'Bolton',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('f03fb49b-19ad-4fc9-8098-f60dfc9a9536', false, 'GB-BMH',
  'Bournemouth',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('3a6e454e-3ed3-491c-b9fc-94ea793b3232', false, 'GB-BRC',
  'Bracknell Forest',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('b536b905-2f4b-4730-baeb-b4a032815e69', false, 'GB-BRD',
  'Bradford',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('dbe4d111-cc21-44f4-8d86-e5a126e306ee', false, 'GB-BEN',
  'Brent',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('1246c8ad-afaa-4733-8ea8-f9296155d140', false, 'GB-BGE',
  'Bridgend',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('a79d4dd6-02c6-405d-96cd-5c32d6e67a1b', false, 'GB-BRY',
  'Bromley',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('8c25b6cd-17e8-44bc-9cfe-a7666ece9e13', false, 'GB-BKM',
  'Buckinghamshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('d88d4b31-719e-46eb-9c88-a3c27e5c793b', false, 'GB-BUR',
  'Bury',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('81379761-58e4-4f9d-a968-6af3bc893ad4', false, 'GB-CAY',
  'Caerphilly',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('e33e5d85-c1e0-42d7-99ad-caab0cfd9c68', false, 'GB-CLD',
  'Calderdale',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('0174a062-daa6-4532-8d5c-1372068b9068', false, 'GB-CAM',
  'Cambridgeshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('a24bf8d7-9b69-4674-bcf8-6bbfa0aeea49', false, 'GB-CMD',
  'Camden',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('bf0db0ef-c0ab-4514-a189-dbd629101fa5', false, 'GB-CRF',
  'Cardiff',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('e50f96a9-9cc1-4583-9bb1-f68015a6ef3d', false, 'GB-CMN',
  'Carmarthenshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('a1135551-1201-42d7-add7-9862ab61f1f0', false, 'GB-CKF',
  'Carrickfergus',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('1330a585-6262-4662-90c5-3e5e785f70e0', false, 'GB-CSR',
  'Castlereagh',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('251f9dc1-9742-4dc0-afd5-9bc6ee9268a7', false, 'GB-CBF',
  'Central Bedfordshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('19aea0b3-83ba-4f5e-9b54-b051d4ff89b3', false, 'GB-CGN',
  'Ceredigion',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('ccf8410c-00db-40dc-ad5e-2c107704fc63', false, 'GB-CHE',
  'Cheshire East',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('dc038f2a-e84a-410c-be48-dbcfcb56a1b1', false, 'GB-CHW',
  'Cheshire West and Chester',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('82c4cbe1-fb2f-425f-aa8f-0e1e80db04b9', false, 'GB-BST',
  'City of Bristol',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('795f19cf-eac0-4daa-918d-931405caa90e', false, 'GB-DER',
  'City of Derby',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('e17c92f1-d5fa-4ffc-b66b-cf2489424013', false, 'GB-EDH',
  'City of Edinburgh',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('659f9458-6fc0-4542-80d5-0058399f57ff', false, 'GB-LCE',
  'City of Leicester',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('85d0e7f4-50a8-4de6-a94e-c3b5c07c7bad', false, 'GB-LND',
  'City of London',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('11d250dd-0895-4ebb-9333-bdecf584660e', false, 'GB-MAN',
  'City of Manchester',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('f3704e6c-2caa-4827-a102-7a991f1c0f77', false, 'GB-NGM',
  'City of Nottingham',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('3c51d184-f679-4eee-af8b-189e62124d51', false, 'GB-PTE',
  'City of Peterborough',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('9df763c5-7ee1-4b3d-b122-8fad9286893f', false, 'GB-PLY',
  'City of Plymouth',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('0ebc9a00-ae57-4373-83a4-c66d4b473fdd', false, 'GB-POR',
  'City of Portsmouth',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('52b49521-736e-42f0-acbc-1e16ef37696a', false, 'GB-SLF',
  'City of Salford',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('546da162-620e-4963-aaab-1578616025b8', false, 'GB-STH',
  'City of Southampton',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('7f113376-b782-416f-9a03-980a3099b45d', false, 'GB-STE',
  'City of Stoke-on-Trent',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('41fc1df4-ce3d-4501-a70a-a44dc51f7aea', false, 'GB-WSM',
  'City of Westminster',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('7baf1dc2-7436-4fe8-bd99-68de3066c200', false, 'GB-WLV',
  'City of Wolverhampton',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('4149b3b8-04f0-43e9-a899-e799b4e29aab', false, 'GB-CLK',
  'Clackmannanshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('6ba54dda-72d1-49d1-99b6-8c7b867480e4', false, 'GB-CLR',
  'Coleraine',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('58b54bc9-5fb1-4c25-a831-bdb8617580f5', false, 'GB-CWY',
  'Conwy',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('334492c6-2c78-4815-85fc-14c9051ddc5b', false, 'GB-CKT',
  'Cookstown',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('f5754ce0-ca46-44d3-845c-e54a58e8fd3a', false, 'GB-CON',
  'Cornwall',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('464f8e2b-ee56-443b-811d-bc7cbedbb441', false, 'GB-COV',
  'Coventry',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('df148555-965e-4b41-9a24-c7fe2d1902f5', false, 'GB-CGV',
  'Craigavon',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('4427f0a2-f3c5-4345-be03-9425eb27c746', false, 'GB-CRY',
  'Croydon',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('2211dd9d-95b4-4c67-8585-adba60817df4', false, 'GB-CMA',
  'Cumbria',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('ff64f795-41a4-4da6-908c-6fe03d204b5f', false, 'GB-DAL',
  'Darlington',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('7c831be1-5af3-491e-84ed-97138cfb3914', false, 'GB-DEN',
  'Denbighshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('91087ad4-555e-453e-87fb-76fcb39cf83f', false, 'GB-DBY',
  'Derbyshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('eff94717-10c9-4de4-b8fb-b1bdbd1ed598', false, 'GB-DRY',
  'Derry City',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('a41f0019-3059-433d-a3e7-fe5c7c3c81e3', false, 'GB-DEV',
  'Devon',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('b9a5f38f-16da-4531-8982-6b6ea2284384', false, 'GB-DNC',
  'Doncaster',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('a0a16faa-9c35-4330-8a70-aa3536054ddb', false, 'GB-DOR',
  'Dorset',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('40bb10cc-23da-4b76-8c09-d4690db65b38', false, 'GB-DOW',
  'Down',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('d9230b6c-e19b-4fa0-b1bb-bbd1c8fc78a1', false, 'GB-DUD',
  'Dudley',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('8e0730e5-9091-4a32-b8d3-4c5d56ce6c42', false, 'GB-DGY',
  'Dumfries and Galloway',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('322c871a-148f-42e1-8936-84bd36461604', false, 'GB-DND',
  'Dundee City',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('5227264d-25ec-4d67-9dcb-926d87d6e1aa', false, 'GB-DGN',
  'Dungannon and South Tyrone',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('2685a8be-17c5-40ff-90e7-e65d88beb39d', false, 'GB-DUR',
  'Durham',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('f7b17766-4d97-48d2-8d23-df2b4d74fb39', false, 'GB-EAL',
  'Ealing',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('742eb140-efd4-45e7-8c3c-0a4f26e623b2', false, 'GB-EAY',
  'East Ayrshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('131a91e7-3fc5-4e16-a439-3d7e3f168b15', false, 'GB-EDU',
  'East Dunbartonshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('f9822f07-7337-47f2-9517-09f5273ef83b', false, 'GB-ELN',
  'East Lothian',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('7625ec93-2e53-4158-a977-55735c84145c', false, 'GB-ERW',
  'East Renfrewshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('06c79c3b-8771-4429-a09e-946e39dff9de', false, 'GB-ERY',
  'East Riding of Yorkshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('bd9134de-a793-4483-9494-bd1b22fc5354', false, 'GB-ESX',
  'East Sussex',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('c0b581fd-219a-4666-9046-9a9f4717513a', false, 'GB-ENF',
  'Enfield',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('4a985881-a8f1-4085-9532-ab603be62954', false, 'GB-ESS',
  'Essex',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('6e2db2e2-54a8-450e-9d92-744bfe747be7', false, 'GB-FAL',
  'Falkirk',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('fbc4938c-36d5-4a7a-a698-1f926062105c', false, 'GB-FER',
  'Fermanagh',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('614d75d6-88f3-437a-8e3e-fee4fe15900a', false, 'GB-FIF',
  'Fife',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('a214214e-2e92-4c08-afc2-b086c6a4d936', false, 'GB-FLN',
  'Flintshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('e178d642-18bf-4935-a29b-a2de123bed1a', false, 'GB-GAT',
  'Gateshead',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('79f9b3b4-d2b5-4a5f-9720-d9c0980b5339', false, 'GB-GLG',
  'Glasgow City',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('116cff1e-5a1b-45fa-8d64-56b404d96e7b', false, 'GB-GLS',
  'Gloucestershire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('5480ddd6-d22c-4a41-acaf-412a6df04a84', false, 'GB-GRE',
  'Greenwich',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('623420e7-556e-450b-8e1c-33d626f3c817', false, 'GB-GWN',
  'Gwynedd',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('3c23d3f8-3046-4cd1-af2e-7b3031632a15', false, 'GB-HCK',
  'Hackney',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('7be27c5c-115b-46ee-b0d0-68899d53bf0f', false, 'GB-HAL',
  'Halton',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('008027af-2fb7-4ae9-9d65-0a3bcd2d05dc', false, 'GB-HMF',
  'Hammersmith and Fulham',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('dd6b4bf8-3cce-4ff4-b63f-d58b0be069d6', false, 'GB-HAM',
  'Hampshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('b0e9d6fd-ca79-4937-ad62-eb3a55c047c3', false, 'GB-HRY',
  'Haringey',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('a67bc494-bb82-4429-8399-c1b7167f7e75', false, 'GB-HRW',
  'Harrow',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('8d43533d-471a-4186-98ed-67b5aae75f77', false, 'GB-HPL',
  'Hartlepool',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('da335506-a7db-4610-9f30-459494ff4871', false, 'GB-HAV',
  'Havering',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('60f4d11a-2bc2-4c4e-8ce6-c564ebe8fe75', false, 'GB-HEF',
  'Herefordshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('e8ad76c9-19ac-4dbd-b277-6857d12ec064', false, 'GB-HRT',
  'Hertfordshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('cacdbdda-6e40-4102-87c5-342bf4a707a6', false, 'GB-HLD',
  'Highland',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('765d5861-ab36-4a99-b18a-9cd976975b19', false, 'GB-HIL',
  'Hillingdon',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('e5df30ba-eabb-42f7-bde7-229a1898fb98', false, 'GB-HNS',
  'Hounslow',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('c8b5ea33-ffc2-4df7-be04-039253c585b0', false, 'GB-IVC',
  'Inverclyde',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('5c6532bd-1687-4521-90bd-37a2a4cf3bb7', false, 'GB-AGY',
  'Isle of Anglesey',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('18471114-e4c8-4fa9-9a74-142b7b6e51c6', false, 'GB-IOW',
  'Isle of Wight',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('b694859c-9be7-4c7b-b6e8-0d7cf4a4c2a8', false, 'GB-ISL',
  'Islington',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('b3a0de17-203e-4865-8ec5-c3aa3165a6a0', false, 'GB-KEC',
  'Kensington and Chelsea',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('245b3701-6455-4054-85f5-221081cbd232', false, 'GB-KEN',
  'Kent',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('dfdd8215-b12f-4e9e-aee7-70170b0a9606', false, 'GB-KHL',
  'Kingston upon Hull',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('388b1d3d-fb55-45b5-82b7-1a4fbd491ffe', false, 'GB-KTT',
  'Kingston upon Thames',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('c8d0a82c-b27d-4895-892b-fc068054e626', false, 'GB-KIR',
  'Kirklees',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('0f7dee72-382a-42c0-aeea-cbe0ffe2c9b0', false, 'GB-KWL',
  'Knowsley',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('b94b1a28-185f-40cc-811b-0f8b11e3f6cb', false, 'GB-LBH',
  'Lambeth',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('c597e149-2a8c-4cef-a395-89c226af28ab', false, 'GB-LAN',
  'Lancashire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('8c3a5deb-5d98-45eb-8d88-d5f2fd8124ff', false, 'GB-LRN',
  'Larne',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('439c216e-324e-4447-a9a3-93a35e94be52', false, 'GB-LDS',
  'Leeds',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('f9acdda4-25d0-49bd-bfac-ffeace0e09e5', false, 'GB-LEC',
  'Leicestershire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('93fde9e1-e6c1-4f3d-ac47-0349acad9f31', false, 'GB-LEW',
  'Lewisham',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('7914523e-0e69-42cf-97b1-c2e8d923320e', false, 'GB-LMV',
  'Limavady',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('acdc06e7-7158-429a-9b5a-55e4b0e3f3ef', false, 'GB-LIN',
  'Lincolnshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('5a574c3a-b4a4-43e1-b1f5-195f8e1530ff', false, 'GB-LSB',
  'Lisburn',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('7ab8a39d-4729-45ce-b00b-b3d70f6cfb58', false, 'GB-LIV',
  'Liverpool',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('3bfdcfdf-1179-451e-b483-b0116e7dfe2d', false, 'GB-LUT',
  'Luton',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('2d654845-192b-413d-ba41-148957339d7f', false, 'GB-MFT',
  'Magherafelt',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('6214fc01-8ef5-44ad-9b6f-dbc1c06e4f13', false, 'GB-MDW',
  'Medway',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('6e87b49a-8909-4d47-8e2b-3fd19365d2eb', false, 'GB-MTY',
  'Merthyr Tydfil',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('8d3a0d89-6808-4185-8b6c-abf716c560af', false, 'GB-MRT',
  'Merton',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('3c80de43-060a-456b-bd16-fcc10a864884', false, 'GB-MDB',
  'Middlesbrough',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('6dd325de-ac53-42db-bed1-238ffa0fb450', false, 'GB-MLN',
  'Midlothian',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('00014ede-f462-43c7-abaa-46deb46f8f25', false, 'GB-MIK',
  'Milton Keynes',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('efc318e3-7b3e-4611-9ac7-1c1122d404f1', false, 'GB-MON',
  'Monmouthshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('93e6e693-5602-4a2c-9bfb-a4bec88694fb', false, 'GB-MRY',
  'Moray',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('d108eff7-5525-45c7-8489-6373c3ba3296', false, 'GB-MYL',
  'Moyle',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('e7a4b752-f19c-4a52-8706-8308825252d9', false, 'GB-NTL',
  'Neath Port Talbot',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('3abd6e2d-c79b-468f-ad9a-158215bb1e88', false, 'GB-NET',
  'Newcastle upon Tyne',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('9bc190e7-e55e-4621-8ab1-9ac8907a2f4e', false, 'GB-NWM',
  'Newham',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('8a2c3659-f545-4fb2-b735-2c8924061ed5', false, 'GB-NWP',
  'Newport',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('89299628-4f24-438c-959a-82a125736462', false, 'GB-NYM',
  'Newry and Mourne',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('a362c0b4-a8a9-44d1-883c-31de6c496be1', false, 'GB-NTA',
  'Newtownabbey',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('1bee9cd7-1ad0-4272-89f9-935257b9a179', false, 'GB-NFK',
  'Norfolk',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('30c58c39-0d0d-40bf-8054-074c6e4cab0f', false, 'GB-NAY',
  'North Ayrshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('212013e7-1366-438b-8651-387c2aed3192', false, 'GB-NDN',
  'North Down',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('58033f2d-47d4-4ea1-aa41-60fd9405e866', false, 'GB-NEL',
  'North East Lincolnshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('d86b7e9c-6725-4940-8be4-076e70afcdb3', false, 'GB-NLK',
  'North Lanarkshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('73a9f7d5-833a-4001-a670-c940ce627071', false, 'GB-NLN',
  'North Lincolnshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('7be432b5-4672-4b49-9810-33a4b6e27f48', false, 'GB-NSM',
  'North Somerset',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('8dbb8339-e8f8-4d30-9c80-de0cbb0a7376', false, 'GB-NTY',
  'North Tyneside',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('f8f44b3e-7531-45b5-b25b-894c468f6b3f', false, 'GB-NYK',
  'North Yorkshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('6bf3bd13-c0fc-4f01-892e-76aaf68c3422', false, 'GB-NTH',
  'Northamptonshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('b6862872-ea37-43fc-bc1f-5cc78c3d4761', false, 'GB-NBL',
  'Northumberland',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('47f40ad7-4880-4ccb-b699-bb5fd1ce33e2', false, 'GB-NTT',
  'Nottinghamshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('46a8924f-acf0-4c13-be77-b0b7ca2f6f02', false, 'GB-OLD',
  'Oldham',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('aec577cc-ec20-4cd6-8cb7-44bd2bb69ad1', false, 'GB-OMH',
  'Omagh',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('30cdc313-978c-4506-a668-deff64c50888', false, 'GB-ORK',
  'Orkney Islands',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('19a38a9b-1b9c-41e5-ae24-2f76de262f21', false, 'GB-ELS',
  'Outer Hebrides',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('89a14902-09b9-49dd-a6b3-5c8934cd3d23', false, 'GB-OXF',
  'Oxfordshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('25be95ae-985c-494a-b5ff-22ddaf664af5', false, 'GB-PEM',
  'Pembrokeshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('b8eae514-3384-4afc-8913-6c31472f3554', false, 'GB-PKN',
  'Perth and Kinross',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('9dd7fde9-4d18-41e7-ade1-5a32d7ef25aa', false, 'GB-POL',
  'Poole',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('9cd71bd3-012d-48cc-a349-210538a15c29', false, 'GB-POW',
  'Powys',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('921c8291-1a77-4b1c-80dc-49a801a39975', false, 'GB-RDG',
  'Reading',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('199c8510-a010-4177-9687-a8b85577b8fa', false, 'GB-RDB',
  'Redbridge',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('9b7727c8-e081-461f-8d22-b840bbd5ed18', false, 'GB-RCC',
  'Redcar and Cleveland',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('2fc07cf0-92e3-4bfb-b9b0-0adcd47ce3c9', false, 'GB-RFW',
  'Renfrewshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('45133fab-e63a-4c05-a8eb-6eb25529dc5d', false, 'GB-RCT',
  'Rhondda Cynon Taf',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('c936c3ba-1f45-4275-b8c2-a46159b8f2fb', false, 'GB-RIC',
  'Richmond upon Thames',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('f1a656dc-ccb1-4f83-8248-545fd0b6697f', false, 'GB-RCH',
  'Rochdale',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('ada0b84b-f9c9-4868-9808-7bbd214e6495', false, 'GB-ROT',
  'Rotherham',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('5e2226c3-7583-4fe5-8be6-209de15b0a5f', false, 'GB-RUT',
  'Rutland',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('0a3d3861-f2d0-482f-9044-1a47baadb777', false, 'GB-SAW',
  'Sandwell',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('281451ea-6a11-4bfa-94df-352e322622fb', false, 'GB-SCB',
  'Scottish Borders',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('87c00f51-421a-491e-997e-903d3b2da9ea', false, 'GB-SFT',
  'Sefton',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('56949f70-0e50-498f-a49a-b3805480fe69', false, 'GB-SHF',
  'Sheffield',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('25a7baf6-e51e-489f-8051-baa5cacf3579', false, 'GB-ZET',
  'Shetland Islands',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('41f3901b-60e9-480a-a18f-b0c926adc66e', false, 'GB-SHR',
  'Shropshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('84a48679-0f5b-4950-b492-c4a03c465475', false, 'GB-SLG',
  'Slough',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('d280cd13-07fb-4975-be61-250ecdcb2604', false, 'GB-SOL',
  'Solihull',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('3fbd58a4-26a1-4cc9-87bb-43c9c16cc108', false, 'GB-SOM',
  'Somerset',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('f1a40cd8-e0ea-4b61-aa23-4483d6596274', false, 'GB-SAY',
  'South Ayrshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('45ad5fe1-f2f8-472c-a15a-3e720c2d32c3', false, 'GB-SGC',
  'South Gloucestershire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('b3540b92-9057-4843-acbd-637546d0fb6b', false, 'GB-SLK',
  'South Lanarkshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('0221894b-b2f1-42c9-bf59-d1f9117a33ea', false, 'GB-STY',
  'South Tyneside',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('1365d77c-0d4c-402f-acc9-f3f62cf233f6', false, 'GB-SOS',
  'Southend-on-Sea',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('5515615f-5f4b-4ded-90a2-e8f862cf66ca', false, 'GB-SWK',
  'Southwark',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('5c8cf9e8-47ac-43b8-9fd9-efb4e89636f9', false, 'GB-SHN',
  'St. Helens',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('2b05d12c-e94b-45b6-98f4-36b2a4d80722', false, 'GB-STS',
  'Staffordshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('55f9628d-ba07-46db-8587-556a249ac648', false, 'GB-STG',
  'Stirling',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('3b966a21-2ae1-458e-9485-546bbb3dd1d5', false, 'GB-SKP',
  'Stockport',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('3530bb05-841f-46b8-84a8-e131a34fe932', false, 'GB-STT',
  'Stockton-on-Tees',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('bb602366-2b7a-4346-99b7-776efd90f678', false, 'GB-STB',
  'Strabane',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('8043dac2-7dea-4c2a-adbb-da105c11b182', false, 'GB-SFK',
  'Suffolk',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('d9f7577d-15bd-4039-8d02-a7976d7feae5', false, 'GB-SND',
  'Sunderland',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('dd81900c-a5c2-41b6-9230-8f085c0a1510', false, 'GB-SRY',
  'Surrey',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('db652a3f-1752-42ff-b5ad-e2e78bc71d11', false, 'GB-STN',
  'Sutton',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('4a0e6924-2bc4-45e9-b480-1856ca651e3c', false, 'GB-SWA',
  'Swansea',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('4723f517-48f1-4d92-92b0-ed473eec638d', false, 'GB-SWD',
  'Swindon',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('fab3d195-5538-44dd-9eaa-4b3e51d0c048', false, 'GB-TAM',
  'Tameside',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('cdc3c730-3745-4544-97da-c5709b53e3d6', false, 'GB-TFW',
  'Telford and Wrekin',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('db0681b0-2ad8-46e8-aeaa-b23927cebd20', false, 'GB-BNH',
  'The City of Brighton and Hove',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('38bda8b4-9746-4436-9d43-3b112ebfe89b', false, 'GB-THR',
  'Thurrock',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('50593994-ad08-4b37-b0d4-5cf58f319274', false, 'GB-TOB',
  'Torbay',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('f486ae3a-6169-4351-8db0-7426d71e5828', false, 'GB-TOF',
  'Torfaen',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('dfd3290a-1927-4f67-abbb-ed15e0ff04c1', false, 'GB-TWH',
  'Tower Hamlets',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('6fdc5fac-f894-45f1-869c-edc6138f960c', false, 'GB-TRF',
  'Trafford',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('fa441bde-e39e-49fe-8bb1-0fe5f9cfda68', false, 'GB-VGL',
  'Vale of Glamorgan',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('3f7019a8-8cae-4ae3-9bbd-e1e32bca1012', false, 'GB-WKF',
  'Wakefield',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('a6504ee8-841c-488c-8297-749814360de4', false, 'GB-WLL',
  'Walsall',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('39f595d4-bc7f-48c5-ba49-7bb045a41554', false, 'GB-WFT',
  'Waltham Forest',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('44a9dcf1-d5f0-4a7f-b457-017c6270b772', false, 'GB-WND',
  'Wandsworth',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('169470da-f7d8-47f6-8edb-8b0dadd870c5', false, 'GB-WRT',
  'Warrington',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('2f3177f7-5a3e-408f-b511-2f46d2104060', false, 'GB-WAR',
  'Warwickshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('c7e017f0-e29a-4523-a591-24c8086181e9', false, 'GB-WBK',
  'West Berkshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('55b89e59-d8ad-4dea-9bf0-7ef555fbda08', false, 'GB-WDU',
  'West Dunbartonshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('9dd6a9dd-70df-444f-bab3-7e395fe56c0d', false, 'GB-WLN',
  'West Lothian',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('e0a6b801-22aa-4c1e-b0ef-dbe8aecfc270', false, 'GB-WSX',
  'West Sussex',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('e8e2b82f-04df-4ca8-8961-9890dc6ab40c', false, 'GB-WGN',
  'Wigan',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('774d9d7e-59d4-4e86-9aa0-cc9839a04a27', false, 'GB-WIL',
  'Wiltshire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('8038a301-3e26-470e-8bf9-7bb8d62855cc', false, 'GB-WNM',
  'Windsor and Maidenhead',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('6376484b-6738-481e-acee-2daf877cff5b', false, 'GB-WRL',
  'Wirral',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('62b21c5d-7d63-42f4-bdf1-769a8d5fb014', false, 'GB-WOK',
  'Wokingham',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('a7ba6daf-6fd8-4ab9-8e43-443dafa06ef9', false, 'GB-WOR',
  'Worcestershire',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('598e988b-915a-4bf4-9d64-1bcbdb74a1b5', false, 'GB-WRX',
  'Wrexham',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('5459b142-5601-4857-9366-063bc56b0e05', false, 'GB-YOR',
  'York',
  '2783e5fa-4d60-490b-9093-d231ef4cffba');
INSERT INTO yacare_admission.province
 VALUES ('7de778fa-c7f3-4890-bc74-b42e3b1941e8', false, 'GD-01',
  'Saint Andrew',
  'c5e16682-cbcd-4824-8fc8-33e4e5a59c59');
INSERT INTO yacare_admission.province
 VALUES ('8889c8d5-d80a-45ae-8e80-aaec36d2b126', false, 'GD-02',
  'Saint David',
  'c5e16682-cbcd-4824-8fc8-33e4e5a59c59');
INSERT INTO yacare_admission.province
 VALUES ('4caa7388-d5fe-4f05-9454-137a50bd44d1', false, 'GD-03',
  'Saint George',
  'c5e16682-cbcd-4824-8fc8-33e4e5a59c59');
INSERT INTO yacare_admission.province
 VALUES ('3f0d7c25-28ba-49f4-b022-876d9a66602a', false, 'GD-04',
  'Saint John',
  'c5e16682-cbcd-4824-8fc8-33e4e5a59c59');
INSERT INTO yacare_admission.province
 VALUES ('0f0587fd-e0a9-4a2c-9698-58e03186c332', false, 'GD-05',
  'Saint Mark',
  'c5e16682-cbcd-4824-8fc8-33e4e5a59c59');
INSERT INTO yacare_admission.province
 VALUES ('eb3173fd-508f-415d-b9f9-07e692d4724a', false, 'GD-06',
  'Saint Patrick',
  'c5e16682-cbcd-4824-8fc8-33e4e5a59c59');
INSERT INTO yacare_admission.province
 VALUES ('4efde2d9-e4ba-46cf-9136-514e954168e2', false, 'GD-10',
  'Southern Grenadine Islands',
  'c5e16682-cbcd-4824-8fc8-33e4e5a59c59');
INSERT INTO yacare_admission.province
 VALUES ('528f9f31-e9cc-45dc-bade-358fa9d4759c', false, 'GE-AB',
  'Abkhazia',
  'a7f83682-139c-46e9-b544-7bcb614acbf1');
INSERT INTO yacare_admission.province
 VALUES ('906d4815-fcf8-421e-bd09-27c37cb5df24', false, 'GE-AJ',
  'Adjara',
  'a7f83682-139c-46e9-b544-7bcb614acbf1');
INSERT INTO yacare_admission.province
 VALUES ('424e28cc-51ad-420d-af1e-2913f870f4b1', false, 'GE-GU',
  'Guria',
  'a7f83682-139c-46e9-b544-7bcb614acbf1');
INSERT INTO yacare_admission.province
 VALUES ('7d826eba-1a04-4f14-8568-efcce1233667', false, 'GE-IM',
  'Imereti',
  'a7f83682-139c-46e9-b544-7bcb614acbf1');
INSERT INTO yacare_admission.province
 VALUES ('cafb8c4c-161c-4f26-9b69-4ab9ed237743', false, 'GE-KA',
  'Kakheti',
  'a7f83682-139c-46e9-b544-7bcb614acbf1');
INSERT INTO yacare_admission.province
 VALUES ('ce29290a-300c-41d8-82d5-99f149291fa0', false, 'GE-KK',
  'Kvemo Kartli',
  'a7f83682-139c-46e9-b544-7bcb614acbf1');
INSERT INTO yacare_admission.province
 VALUES ('4a63548f-f118-4239-a608-60285c9f17e8', false, 'GE-MM',
  'Mtskheta-Mtianeti',
  'a7f83682-139c-46e9-b544-7bcb614acbf1');
INSERT INTO yacare_admission.province
 VALUES ('38ccbc3e-ae6f-4960-a087-628c4b87ba62', false, 'GE-RL',
  'Racha-Lechkhumi and Kvemo Svaneti',
  'a7f83682-139c-46e9-b544-7bcb614acbf1');
INSERT INTO yacare_admission.province
 VALUES ('bdd108a2-a220-425c-8da9-8e2965b2f213', false, 'GE-SZ',
  'Samegrelo-Zemo Svaneti',
  'a7f83682-139c-46e9-b544-7bcb614acbf1');
INSERT INTO yacare_admission.province
 VALUES ('8557ddca-8cad-4847-a443-8ce13abac17e', false, 'GE-SJ',
  'Samtskhe-Javakheti',
  'a7f83682-139c-46e9-b544-7bcb614acbf1');
INSERT INTO yacare_admission.province
 VALUES ('408c33ef-10a7-4e5a-93db-1c990eee93ec', false, 'GE-SK',
  'Shida Kartli',
  'a7f83682-139c-46e9-b544-7bcb614acbf1');
INSERT INTO yacare_admission.province
 VALUES ('bb34fbaf-4c20-41bb-b07f-9a05f5822daa', false, 'GE-TB',
  'Tbilisi',
  'a7f83682-139c-46e9-b544-7bcb614acbf1');
INSERT INTO yacare_admission.province
 VALUES ('d7220e1f-7eef-4575-a5af-7fefea8e6128', false, 'GH-AH',
  'Ashanti',
  '298551e8-4d86-46c4-9e59-e2b3c13c1fc0');
INSERT INTO yacare_admission.province
 VALUES ('6f9ba939-41b7-4592-9575-2337eddc2de6', false, 'GH-BA',
  'Brong-Ahafo',
  '298551e8-4d86-46c4-9e59-e2b3c13c1fc0');
INSERT INTO yacare_admission.province
 VALUES ('940fd358-6366-40e4-8aa8-e25737540e97', false, 'GH-CP',
  'Central',
  '298551e8-4d86-46c4-9e59-e2b3c13c1fc0');
INSERT INTO yacare_admission.province
 VALUES ('3db71e8c-6991-4954-a936-c04be46fe166', false, 'GH-EP',
  'Eastern',
  '298551e8-4d86-46c4-9e59-e2b3c13c1fc0');
INSERT INTO yacare_admission.province
 VALUES ('03852857-0b7c-4eeb-b71d-3c98815015ff', false, 'GH-AA',
  'Greater Accra',
  '298551e8-4d86-46c4-9e59-e2b3c13c1fc0');
INSERT INTO yacare_admission.province
 VALUES ('04c0a380-0276-4270-bf4e-905b257deabb', false, 'GH-NP',
  'Northern',
  '298551e8-4d86-46c4-9e59-e2b3c13c1fc0');
INSERT INTO yacare_admission.province
 VALUES ('94882c6d-d2da-46fb-b643-dadef8e4827e', false, 'GH-UE',
  'Upper East',
  '298551e8-4d86-46c4-9e59-e2b3c13c1fc0');
INSERT INTO yacare_admission.province
 VALUES ('9a840efb-006b-4a6e-a01b-8c9467c62d1c', false, 'GH-UW',
  'Upper West',
  '298551e8-4d86-46c4-9e59-e2b3c13c1fc0');
INSERT INTO yacare_admission.province
 VALUES ('2ea629ce-10a2-4d6c-9670-380f0aa7830f', false, 'GH-TV',
  'Volta',
  '298551e8-4d86-46c4-9e59-e2b3c13c1fc0');
INSERT INTO yacare_admission.province
 VALUES ('6156c9b4-eefd-4843-b213-dd303f358363', false, 'GH-WP',
  'Western',
  '298551e8-4d86-46c4-9e59-e2b3c13c1fc0');
INSERT INTO yacare_admission.province
 VALUES ('affc5b92-f0a5-44ef-bf47-037386147b11', false, 'GL-KU',
  'Kommune Kujalleq',
  'eb2bfe60-2a90-46d3-a50a-1fa45291492c');
INSERT INTO yacare_admission.province
 VALUES ('51fa783e-8b85-404c-bbcf-0561a5c32895', false, 'GL-SM',
  'Kommuneqarfik Sermersooq',
  'eb2bfe60-2a90-46d3-a50a-1fa45291492c');
INSERT INTO yacare_admission.province
 VALUES ('32883aed-31bf-4662-91ec-7c3cb7a6e718', false, 'GL-QA',
  'Qaasuitsup Kommunia',
  'eb2bfe60-2a90-46d3-a50a-1fa45291492c');
INSERT INTO yacare_admission.province
 VALUES ('e41ba389-a560-4598-9559-39bfbb5fcbc4', false, 'GL-QE',
  'Qeqqata Kommunia',
  'eb2bfe60-2a90-46d3-a50a-1fa45291492c');
INSERT INTO yacare_admission.province
 VALUES ('56afc0d2-311e-4a9f-80d3-77a09920c931', false, 'GM-B',
  'Banjul',
  '622d125e-c9b7-458c-b083-7d9b9edf0fa7');
INSERT INTO yacare_admission.province
 VALUES ('6fe4de6b-2330-4248-b670-365ea304e51c', false, 'GM-L',
  'Lower River',
  '622d125e-c9b7-458c-b083-7d9b9edf0fa7');
INSERT INTO yacare_admission.province
 VALUES ('c16da2f9-6a86-49b7-a43f-094122a41b9f', false, 'GM-M',
  'MacCarthy Island',
  '622d125e-c9b7-458c-b083-7d9b9edf0fa7');
INSERT INTO yacare_admission.province
 VALUES ('962dcc82-19d0-4c96-880d-5d641f1d3259', false, 'GM-N',
  'North Bank',
  '622d125e-c9b7-458c-b083-7d9b9edf0fa7');
INSERT INTO yacare_admission.province
 VALUES ('98e76c26-e4d4-41d5-9b57-4157f05c0107', false, 'GM-U',
  'Upper River',
  '622d125e-c9b7-458c-b083-7d9b9edf0fa7');
INSERT INTO yacare_admission.province
 VALUES ('c734e723-75d1-42f6-b7f7-f25135319607', false, 'GM-W',
  'Western',
  '622d125e-c9b7-458c-b083-7d9b9edf0fa7');
INSERT INTO yacare_admission.province
 VALUES ('d063f964-af50-4bde-aa17-f94425a80ab8', false, 'GN-BE',
  'Beyla',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('f22fd713-2c46-4c79-9c3f-189695702c42', false, 'GN-BF',
  'Boffa',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('b85eb462-0b01-4811-9140-a5aedb828d4f', false, 'GN-BK',
  'Boké',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('f1aa2297-eaba-4cd9-ba9a-9972a4a0bece', false, 'GN-C',
  'Conakry',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('25943149-3a38-4b16-a4e1-be46e8d81290', false, 'GN-CO',
  'Coyah',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('a2c5a311-fbe7-4cb1-acfd-8ff1b0763675', false, 'GN-DB',
  'Dabola',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('d939063c-5f23-4177-95f3-c537f50ace0f', false, 'GN-DL',
  'Dalaba',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('e66627eb-5e99-4a43-9fec-9ee8e2177219', false, 'GN-DI',
  'Dinguiraye',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('96454000-cfe2-4502-940a-1faa03ab174a', false, 'GN-DU',
  'Dubréka',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('6d574a7b-fb36-467b-8597-300658ee4b39', false, 'GN-FA',
  'Faranah',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('377e6b18-ebe2-45fb-93d0-b51a8393809a', false, 'GN-FO',
  'Forécariah',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('154c7e55-2a3c-41a0-ab82-95d8dd6a2155', false, 'GN-FR',
  'Fria',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('3c6b9bb5-adae-469a-a55a-096e4951f176', false, 'GN-GA',
  'Gaoual',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('810e6b59-c1b4-4bd9-99f3-0a97b8f5554e', false, 'GN-GU',
  'Guékédou',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('8b8ccd53-2ed3-4761-9582-7209dd0dc3e0', false, 'GN-KA',
  'Kankan',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('73d0bf9c-b0a9-4895-bf37-63ca8bd953b9', false, 'GN-KE',
  'Kérouané',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('9dc3efb1-8d04-4607-b618-5522fa100fdf', false, 'GN-KD',
  'Kindia',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('7ef8e4e3-144d-4657-8a61-abb15bdc5034', false, 'GN-KS',
  'Kissidougou',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('c26ce939-291a-4646-91d1-483af3e81378', false, 'GN-KB',
  'Koubia',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('35bc9a45-7779-4b0c-9905-2baa7b9e352f', false, 'GN-KN',
  'Koundara',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('278c3f03-cd09-4bf3-aabb-7af67b246380', false, 'GN-KO',
  'Kouroussa',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('05968bc4-32a9-4971-93d8-51f1429b109f', false, 'GN-LA',
  'Labé',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('00a7fcca-8d32-4af3-88c9-efc4b84957b2', false, 'GN-LE',
  'Lélouma',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('a378f0ca-7a6e-4671-a911-807a5e1e25a9', false, 'GN-LO',
  'Lola',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('5afd01b4-749c-4c5f-af47-42f6388e1215', false, 'GN-MC',
  'Macenta',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('f656e0ee-6d7a-4063-b7fd-060db5606e71', false, 'GN-ML',
  'Mali',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('4d088c8e-0abe-460e-9e13-d223f4e5daa2', false, 'GN-MM',
  'Mamou',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('7e4cc50b-c2d0-4ca6-81a7-93615295c6a5', false, 'GN-MD',
  'Mandiana',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('4cf2b3e1-38df-4ac9-b98f-e5c375c0054c', false, 'GN-NZ',
  'Nzérékoré',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('3bc90a07-6f58-491e-ba6a-64cdb2297f49', false, 'GN-PI',
  'Pita',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('d92b625d-bc4b-4ae2-be53-f84eb18d3ffb', false, 'GN-SI',
  'Siguiri',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('b7a8f5f7-36e5-490b-80e5-891525d1e149', false, 'GN-TE',
  'Télimélé',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('d6731434-1529-41a9-9396-3335c3c73172', false, 'GN-TO',
  'Tougué',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('3cabefdd-7ce4-4a1d-b009-3d840c37c8a3', false, 'GN-YO',
  'Yomou',
  '6efffe37-d777-419b-bc21-2e33787e66fe');
INSERT INTO yacare_admission.province
 VALUES ('d093a120-8b0b-4ec5-9024-ec1c62fd436c', false, 'GQ-AN',
  'Annobón',
  'e753856b-f501-4089-9836-fddd5595c709');
INSERT INTO yacare_admission.province
 VALUES ('ffdbff6b-2340-4b64-b1e1-323960487c5a', false, 'GQ-BN',
  'Bioko Norte',
  'e753856b-f501-4089-9836-fddd5595c709');
INSERT INTO yacare_admission.province
 VALUES ('c6edc3c6-e66a-4a27-ab82-1f1920a4b45f', false, 'GQ-BS',
  'Bioko Sur',
  'e753856b-f501-4089-9836-fddd5595c709');
INSERT INTO yacare_admission.province
 VALUES ('7205e599-3555-46c5-9caa-10b736705790', false, 'GQ-CS',
  'Centro Sur',
  'e753856b-f501-4089-9836-fddd5595c709');
INSERT INTO yacare_admission.province
 VALUES ('510a81c0-140a-4f0b-93d4-34ea6dc4dad9', false, 'GQ-KN',
  'Kie-Ntem',
  'e753856b-f501-4089-9836-fddd5595c709');
INSERT INTO yacare_admission.province
 VALUES ('b6851b07-0038-4c11-a97d-9f973ac43fb9', false, 'GQ-LI',
  'Litoral',
  'e753856b-f501-4089-9836-fddd5595c709');
INSERT INTO yacare_admission.province
 VALUES ('f40822a8-6a09-4d7d-b622-7829aa74e391', false, 'GQ-C',
  'Región Continental',
  'e753856b-f501-4089-9836-fddd5595c709');
INSERT INTO yacare_admission.province
 VALUES ('b7a29d0b-e475-457d-948d-e72efb7d5853', false, 'GQ-I',
  'Región Insular',
  'e753856b-f501-4089-9836-fddd5595c709');
INSERT INTO yacare_admission.province
 VALUES ('81a19c63-8a4e-48f4-8dc8-affd445225af', false, 'GQ-WN',
  'Wele-Nzás',
  'e753856b-f501-4089-9836-fddd5595c709');
INSERT INTO yacare_admission.province
 VALUES ('0f75df52-1f7e-4b3f-a1e5-55486852a31d', false, 'GR-A1',
  'Νομαρχία Δυτικής Αττικής',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('185ad267-d265-402a-b4d0-5e018977e548', false, 'GR-69',
  'Νομαρχία Πειραιά',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('3e40f307-cfbe-4c81-be0e-12219e52dcee', false, 'GR-01',
  'Νομός Αιτωλοακαρνανίας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('3c809767-ec91-4d8c-9f1a-0c7120dc73a1', false, 'GR-11',
  'Νομός Αργολίδας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('a591aae0-743e-4256-9eb0-a75462764ddf', false, 'GR-12',
  'Νομός Αρκαδίας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('cb65f1ab-3041-4ac0-bc39-094e5c7ff6ca', false, 'GR-31',
  'Νομός Άρτας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('e1fa5277-24f6-4d11-836c-6152a01e7a83', false, 'GR-13',
  'Νομός Αχαΐας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('cd9edf8e-bcba-4968-8e0e-c22459f2e638', false, 'GR-03',
  'Νομός Βοιωτίας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('3cc490f4-967e-41cf-bf15-e61d70e22b5d', false, 'GR-51',
  'Νομός Γρεβενών',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('1d41ce5f-1401-4baf-9d6c-6ea75fd0dc47', false, 'GR-52',
  'Νομός Δράμας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('bffad80b-df3f-461d-a158-f3fd63987256', false, 'GR-81',
  'Νομός Δωδεκανήσου',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('0c4854ce-3b54-4335-9da4-da7d4ac38a91', false, 'GR-71',
  'Νομός Έβρου',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('55278e61-6e70-456a-b708-3d1e29225474', false, 'GR-04',
  'Νομός Εύβοιας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('e3d82a8f-1cd6-49dd-b564-e090a5924615', false, 'GR-05',
  'Νομός Ευρυτανίας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('7a593255-adaf-440a-83f7-b036e620c9f8', false, 'GR-21',
  'Νομός Ζακύνθου',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('ba0bfcb1-2f96-4cd6-b7e3-73fcf4d2fb7b', false, 'GR-14',
  'Νομός Ηλείας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('8b15005d-4890-4736-8f86-f34787471a97', false, 'GR-53',
  'Νομός Ημαθίας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('dc89b343-a913-45a8-8b42-1d35a556b5fe', false, 'GR-91',
  'Νομός Ηρακλείου',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('193cde54-fba6-40ac-bef3-b4e9e795b33d', false, 'GR-32',
  'Νομός Θεσπρωτίας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('d6790b0c-5d78-4225-9f94-01fd5ef4f4c5', false, 'GR-54',
  'Νομός Θεσσαλονίκης',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('78ad3c67-70ca-418c-8c7e-6e23fecc0e85', false, 'GR-33',
  'Νομός Ιωαννίνων',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('dc584234-e670-4a54-8762-72c8764ed60f', false, 'GR-55',
  'Νομός Καβάλας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('1ac6c44b-faba-41cb-884b-d0c8aad8361a', false, 'GR-41',
  'Νομός Καρδίτσας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('e355b605-0e49-4a16-b35e-bc6bd419ddc9', false, 'GR-56',
  'Νομός Καστοριάς',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('92b2fda4-0336-4c1f-beff-e1ff6fb58d2e', false, 'GR-22',
  'Νομός Κέρκυρας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('c516d750-5733-4ff3-97af-90e2af97d89c', false, 'GR-23',
  'Νομός Κεφαλληνίας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('f0478618-eb34-4961-a768-7b04ce0b478c', false, 'GR-57',
  'Νομός Κιλκίς',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('d6b90bca-bb7e-4554-8e30-14acf8a9ab37', false, 'GR-58',
  'Νομός Κοζάνης',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('4f5ca8b7-c7fa-4313-865a-603905e8df70', false, 'GR-15',
  'Νομός Κορινθίας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('fee79841-bc7d-45e8-897b-836933f08d7b', false, 'GR-82',
  'Νομός Κυκλάδων',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('2e477ccf-0dc3-4443-9b34-84350fdcca8e', false, 'GR-16',
  'Νομός Λακωνίας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('acc3ed52-1871-4a86-8a74-786ce1392d35', false, 'GR-42',
  'Νομός Λάρισας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('09db6b60-3eea-405c-ac41-84cae1076130', false, 'GR-92',
  'Νομός Λασιθίου',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('b9e8ca06-44e5-4eaa-ade9-171db8a9429c', false, 'GR-83',
  'Νομός Λέσβου',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('5099bb5b-c28f-4d2c-970b-a5ec080f5c50', false, 'GR-24',
  'Νομός Λευκάδας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('4f99c4d5-096e-478a-ba0e-aadb7a89b41b', false, 'GR-43',
  'Νομός Μαγνησίας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('636aa023-29a9-4f2a-88f3-6fa4a453fc27', false, 'GR-17',
  'Νομός Μεσσηνίας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('170f63d0-f45d-40be-81d2-4a521f8f2f3c', false, 'GR-72',
  'Νομός Ξάνθης',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('e8f4d6da-0efb-4ceb-962a-f2c21f1ff175', false, 'GR-59',
  'Νομός Πέλλας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('079d5dfc-7f51-4221-995e-52dcd6764844', false, 'GR-61',
  'Νομός Πιερίας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('5ee044b1-3a08-4f69-90d1-d34e58ba5ecc', false, 'GR-34',
  'Νομός Πρέβεζας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('ddd4faaf-4aa4-488d-9e5f-fb925a5337c3', false, 'GR-93',
  'Νομός Ρεθύμνου',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('b680ec00-7d8a-4118-bd28-7f13dc04096b', false, 'GR-73',
  'Νομός Ροδόπης',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('c0dcc59c-a0b4-4936-8169-934aea936419', false, 'GR-84',
  'Νομός Σάμου',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('e60a1d44-8b58-4935-aea3-f3ec3630fb08', false, 'GR-62',
  'Νομός Σερρών',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('19b603df-f37e-473f-a37c-6cabc2534ccf', false, 'GR-44',
  'Νομός Τρικάλων',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('0abff842-c1dc-4e34-8ab2-fed05d8a3cfd', false, 'GR-06',
  'Νομός Φθιώτιδας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('1b087616-acd5-4868-9da7-f8a94089c0d3', false, 'GR-63',
  'Νομός Φλώρινας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('4778eeed-54dc-4a4c-a1dd-c76d2b29108d', false, 'GR-07',
  'Νομός Φωκίδας',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('0e6f2af2-d2a0-4238-8dd9-9396747943e7', false, 'GR-64',
  'Νομός Χαλκιδικής',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('6b9101b1-bf9c-4158-9ba0-7d8bb1829a29', false, 'GR-94',
  'Νομός Χανίων',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('46d7d9e6-8110-4f47-8679-36941958beb0', false, 'GR-85',
  'Νομός Χίου',
  '218ad1d1-b3b0-4291-8165-8a99185a276e');
INSERT INTO yacare_admission.province
 VALUES ('f0701cd2-1082-48ac-8d92-ffce14360087', false, 'GT-AV',
  'Alta Verapaz',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('87a9962b-0f65-4cec-9b4a-28230c919e88', false, 'GT-BV',
  'Baja Verapaz',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('6e55aea2-9311-4892-9578-12acc5f93ec0', false, 'GT-CM',
  'Chimaltenango',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('076f4fa1-2429-422e-b087-6ebc74753d5d', false, 'GT-CQ',
  'Chiquimula',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('6327d193-9463-4a90-896c-d5b0af6c6b79', false, 'GT-PR',
  'El Progreso',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('74aa8c61-20b9-405b-8b4d-8518ee56575c', false, 'GT-ES',
  'Escuintla',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('6a414f19-207f-42bd-84fd-6d676c3cf1db', false, 'GT-GU',
  'Guatemala',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('12d51385-eacd-4133-9edb-d29f0fc50fc2', false, 'GT-HU',
  'Huehuetenango',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('dcf787f3-ed89-430e-9f91-b2c3bc993da1', false, 'GT-IZ',
  'Izabal',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('433631d0-a8f2-424f-8859-72500a41db39', false, 'GT-JA',
  'Jalapa',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('bce97201-e54b-433d-a9a6-201d8caa2ce9', false, 'GT-JU',
  'Jutiapa',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('7c781d1e-89cf-452b-b9d0-71fcc4d42572', false, 'GT-PE',
  'Petén',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('8b4962c4-4fb1-4132-b75e-e97d3d1931dc', false, 'GT-QZ',
  'Quetzaltenango',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('cde86e3c-3b36-4329-b5fe-0628595eec70', false, 'GT-QC',
  'Quiché',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('6510c7c4-e8f0-47ff-b1f1-ef1ed08eaef2', false, 'GT-RE',
  'Retalhuleu',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('af049f22-6894-416e-92cf-795e08d5ae70', false, 'GT-SA',
  'Sacatepéquez',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('555b8e4f-1043-4889-a824-5b2b36a76569', false, 'GT-SM',
  'San Marcos',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('4f610f26-830f-4282-afed-d0ec1ece7250', false, 'GT-SR',
  'Santa Rosa',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('586b1b8f-243c-450b-ad79-63e35aba4ad4', false, 'GT-SO',
  'Sololá',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('7d9025f1-fd24-4779-a206-3b883753cf9a', false, 'GT-SU',
  'Suchitepéquez',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('cec97ec7-3e2e-4683-93a9-5aab74ab9875', false, 'GT-TO',
  'Totonicapán',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('f8e226ad-8495-4776-924e-7cab13b25b7f', false, 'GT-ZA',
  'Zacapa',
  'd27e2f07-90f2-44bb-8d91-c54cbaf890a6');
INSERT INTO yacare_admission.province
 VALUES ('44701b87-bc69-4a64-9478-be59b2662b57', false, 'GW-BA',
  'Bafatá',
  'df8732ed-f62d-4115-8d6b-c2e6707d50e0');
INSERT INTO yacare_admission.province
 VALUES ('1b105ae0-4ee3-4a52-b599-98ffdc7e8a93', false, 'GW-BM',
  'Biombo',
  'df8732ed-f62d-4115-8d6b-c2e6707d50e0');
INSERT INTO yacare_admission.province
 VALUES ('a868560e-e14e-4169-83e2-eebd6c28efbf', false, 'GW-BS',
  'Bissau',
  'df8732ed-f62d-4115-8d6b-c2e6707d50e0');
INSERT INTO yacare_admission.province
 VALUES ('5408779b-4241-4ad4-a69a-d457eb164b2d', false, 'GW-BL',
  'Bolama',
  'df8732ed-f62d-4115-8d6b-c2e6707d50e0');
INSERT INTO yacare_admission.province
 VALUES ('4792cc44-5702-4fd2-8c53-fc9705d78120', false, 'GW-CA',
  'Cacheu',
  'df8732ed-f62d-4115-8d6b-c2e6707d50e0');
INSERT INTO yacare_admission.province
 VALUES ('595b702b-b9c7-4f9e-86bd-f512612fd616', false, 'GW-GA',
  'Gabú',
  'df8732ed-f62d-4115-8d6b-c2e6707d50e0');
INSERT INTO yacare_admission.province
 VALUES ('733c768a-bd02-46b5-b96d-934571db8057', false, 'GW-OI',
  'Oio',
  'df8732ed-f62d-4115-8d6b-c2e6707d50e0');
INSERT INTO yacare_admission.province
 VALUES ('4ec25fc8-a6e4-4d2f-897e-ebde6a340f43', false, 'GW-QU',
  'Quinara',
  'df8732ed-f62d-4115-8d6b-c2e6707d50e0');
INSERT INTO yacare_admission.province
 VALUES ('18722198-201d-4cd1-9be0-51651874f635', false, 'GW-TO',
  'Tombali',
  'df8732ed-f62d-4115-8d6b-c2e6707d50e0');
INSERT INTO yacare_admission.province
 VALUES ('9541d2a1-5e72-42ff-8a7a-54ed32ce5bcc', false, 'GY-BA',
  'Barima-Waini',
  'f21ee2ce-127f-458d-8fa4-5e5410bdf13c');
INSERT INTO yacare_admission.province
 VALUES ('f75b3f02-aca4-490f-887d-432d0b1e2558', false, 'GY-CU',
  'Cuyuni-Mazaruni',
  'f21ee2ce-127f-458d-8fa4-5e5410bdf13c');
INSERT INTO yacare_admission.province
 VALUES ('5cb18399-6684-46a8-9cc7-7d50cda23015', false, 'GY-DE',
  'Demerara-Mahaica',
  'f21ee2ce-127f-458d-8fa4-5e5410bdf13c');
INSERT INTO yacare_admission.province
 VALUES ('3c67aafb-7e21-47b2-85a3-cf3bc613efef', false, 'GY-EB',
  'East Berbice-Corentyne',
  'f21ee2ce-127f-458d-8fa4-5e5410bdf13c');
INSERT INTO yacare_admission.province
 VALUES ('f03a5f19-e18a-4e6e-90bf-5c6990090d96', false, 'GY-ES',
  'Essequibo Islands-West Demerara',
  'f21ee2ce-127f-458d-8fa4-5e5410bdf13c');
INSERT INTO yacare_admission.province
 VALUES ('0f57fa32-5bd4-4364-877c-25fb37d263ae', false, 'GY-MA',
  'Mahaica-Berbice',
  'f21ee2ce-127f-458d-8fa4-5e5410bdf13c');
INSERT INTO yacare_admission.province
 VALUES ('c9860bd3-113b-4211-a7fa-8613e8f5666d', false, 'GY-PM',
  'Pomeroon-Supenaam',
  'f21ee2ce-127f-458d-8fa4-5e5410bdf13c');
INSERT INTO yacare_admission.province
 VALUES ('c3fc47b7-680e-41ba-8979-7dfe8d8ff525', false, 'GY-PT',
  'Potaro-Siparuni',
  'f21ee2ce-127f-458d-8fa4-5e5410bdf13c');
INSERT INTO yacare_admission.province
 VALUES ('c91be508-d51c-48bb-bf07-29c38fdf6331', false, 'GY-UD',
  'Upper Demerara-Berbice',
  'f21ee2ce-127f-458d-8fa4-5e5410bdf13c');
INSERT INTO yacare_admission.province
 VALUES ('e0da3071-bb18-468f-8c75-5e25cce1bc16', false, 'GY-UT',
  'Upper Takutu-Upper Essequibo',
  'f21ee2ce-127f-458d-8fa4-5e5410bdf13c');
INSERT INTO yacare_admission.province
 VALUES ('971995ae-bb0f-4cb5-bfb1-9142e9028af1', false, 'HN-AT',
  'Atlántida',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('a1edfe1a-8959-4d0e-a7d5-506dfa74c628', false, 'HN-CH',
  'Choluteca',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('e925c243-f49d-40e2-a2bb-7169ceae7b52', false, 'HN-CL',
  'Colón',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('256ba78a-5136-4c01-8666-dd665db624c5', false, 'HN-CM',
  'Comayagua',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('8710be4c-d77b-4f03-8cf7-2af7c217fba5', false, 'HN-CP',
  'Copán',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('78e32980-b3d7-4b0b-90cd-2605fe3cdd6f', false, 'HN-CR',
  'Cortés',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('ef012157-f3ad-4e7f-8de8-b4cb11d9fefa', false, 'HN-EP',
  'El Paraíso',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('511a5fad-9ffa-49e6-9678-9d9f7aa3f1a4', false, 'HN-FM',
  'Francisco Morazán',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('e0b31f8d-0411-474e-8a97-ce7e29dc50a7', false, 'HN-GD',
  'Gracias a Dios',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('5d5bd383-9a20-4111-b1b2-4b3f74fc3ddf', false, 'HN-IN',
  'Intibucá',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('e6872c5f-9766-457d-849d-bf9579ed0a86', false, 'HN-IB',
  'Islas de la Bahía',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('ae792b2d-9001-493f-9a7c-242238952fe7', false, 'HN-LP',
  'La Paz',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('5635c074-0634-454b-8999-354a2949f761', false, 'HN-LE',
  'Lempira',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('5195f015-bcbc-4c01-8013-0986541dbcdb', false, 'HN-OC',
  'Ocotepeque',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('de3be3cd-7476-4f47-954b-4631ecbc148c', false, 'HN-OL',
  'Olancho',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('152b09e9-b9cf-4f1f-bf24-b8fdf88acac3', false, 'HN-SB',
  'Santa Bárbara',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('77cd97c6-f486-4bd3-8065-6b27cf9bcb5f', false, 'HN-VA',
  'Valle',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('ce837450-8d8a-42e1-a428-2e58fb0b1b81', false, 'HN-YO',
  'Yoro',
  '9dad76c2-a943-401e-ab82-faaf3567ebf9');
INSERT INTO yacare_admission.province
 VALUES ('64e6bf08-268c-4438-a50c-fa967dcf1417', false, 'HR-07',
  'Bjelovarsko-Bilogorska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('57bb563c-5074-41e9-8363-ffc285eeebf1', false, 'HR-12',
  'Brodsko-Posavska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('35437e87-36db-4126-91fb-7b955a22f71d', false, 'HR-19',
  'Dubrovačko-Neretvanska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('5ed64b76-3f0b-4588-ae84-286b11c4e69b', false, 'HR-21',
  'Grad Zagreb',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('6edca7e3-a82b-4c15-a707-3709bb7776e8', false, 'HR-18',
  'Istarska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('ee51ddb6-63ba-435b-9ef3-1b44b24b850a', false, 'HR-04',
  'Karlovačka',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('2ee602a7-0c6a-4bad-b9b1-9732d1da1e87', false, 'HR-06',
  'Koprivničko-Križevačka',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('89815b0a-900b-408e-ae92-009f7b0ab11e', false, 'HR-02',
  'Krapinsko-Zagorska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('1a3b49f2-fc0e-4a74-b982-0bc6f98e5386', false, 'HR-09',
  'Ličko-Senjska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('76c15110-3b4b-4a54-8ac8-fb89a728fd34', false, 'HR-20',
  'Međimurska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('cdcafbf0-a75c-4c12-81cd-9f808f60627e', false, 'HR-14',
  'Osječko-Baranjska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('76a71a11-85bf-4a32-b791-bbbb41c8fd7b', false, 'HR-11',
  'Požeško-Slavonska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('03461546-5488-4d00-b2c0-9fa15ff0437f', false, 'HR-08',
  'Primorsko-Goranska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('01d65cad-b223-4d38-864c-68f7ff55bfa8', false, 'HR-15',
  'Šibensko-Kninska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('f7d4ff75-5483-461d-b6ea-cfdcd6383c87', false, 'HR-03',
  'Sisačko-Moslavačka',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('41d00c62-b175-49ae-b790-e2ab1fb7158e', false, 'HR-17',
  'Splitsko-Dalmatinska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('f4bfe77c-c13e-4f1e-a4f2-0e38fde15a14', false, 'HR-05',
  'Varaždinska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('f78e7299-d116-493c-bc2e-7f4ab159c67f', false, 'HR-10',
  'Virovitičko-Podravska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('2da6784f-e5b0-42d4-a484-9ca5bcb1b949', false, 'HR-16',
  'Vukovarsko-Srijemska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('a1902739-f39d-465c-bc90-49c9522df2fb', false, 'HR-13',
  'Zadarska',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('9393e126-d83c-4049-a664-5a8b944e6757', false, 'HR-01',
  'Zagrebačka',
  'cbaaad45-a2ce-46b9-8cad-2efd64f870c9');
INSERT INTO yacare_admission.province
 VALUES ('a85b101f-12ee-46f5-a3dd-2f61b53ade47', false, 'HT-AR',
  'Artibonite',
  '2799e5c9-1292-4640-9c80-e86124bc1f30');
INSERT INTO yacare_admission.province
 VALUES ('d6acdc7d-d07f-43cb-bbbc-07bc0c0066fb', false, 'HT-CE',
  'Centre',
  '2799e5c9-1292-4640-9c80-e86124bc1f30');
INSERT INTO yacare_admission.province
 VALUES ('63fe60bc-bf45-4ae1-af0c-0872120677ee', false, 'HT-GA',
  'Grand''Anse',
  '2799e5c9-1292-4640-9c80-e86124bc1f30');
INSERT INTO yacare_admission.province
 VALUES ('dcab5ac4-2ece-4c8e-b44a-7f2bba48162f', false, 'HT-NI',
  'Nippes',
  '2799e5c9-1292-4640-9c80-e86124bc1f30');
INSERT INTO yacare_admission.province
 VALUES ('778d902c-5ee3-45cf-92b7-148a36a532a9', false, 'HT-ND',
  'Nord',
  '2799e5c9-1292-4640-9c80-e86124bc1f30');
INSERT INTO yacare_admission.province
 VALUES ('36b504e8-df2e-43b5-bc10-00a18c194977', false, 'HT-NE',
  'Nord-Est',
  '2799e5c9-1292-4640-9c80-e86124bc1f30');
INSERT INTO yacare_admission.province
 VALUES ('3ad2377b-2a12-4bea-b76e-d955ef6a4370', false, 'HT-NO',
  'Nord-Ouest',
  '2799e5c9-1292-4640-9c80-e86124bc1f30');
INSERT INTO yacare_admission.province
 VALUES ('2b350f8b-b6ff-4b24-a518-eec25420ac06', false, 'HT-OU',
  'Ouest',
  '2799e5c9-1292-4640-9c80-e86124bc1f30');
INSERT INTO yacare_admission.province
 VALUES ('7d885359-63a1-4b5e-8122-436a2bf60d6c', false, 'HT-SD',
  'Sud',
  '2799e5c9-1292-4640-9c80-e86124bc1f30');
INSERT INTO yacare_admission.province
 VALUES ('d5f52a32-f348-4186-9632-125741ffd975', false, 'HT-SE',
  'Sud-Est',
  '2799e5c9-1292-4640-9c80-e86124bc1f30');
INSERT INTO yacare_admission.province
 VALUES ('b8f2f480-586a-4de0-80de-c6da52db875c', false, 'HU-BK',
  'Bács-Kiskun',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('5aff0766-0067-421d-98b5-ac59f4f882ed', false, 'HU-BA',
  'Baranya',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('97d0c88d-25e1-477d-b693-26c7d9325bf5', false, 'HU-BE',
  'Békés',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('0af0c2d5-adb1-487a-a33c-f49ef5d4311a', false, 'HU-BC',
  'Békéscsabai',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('e42fee6c-5853-4833-b934-188a48efa68f', false, 'HU-BZ',
  'Borsod-Abaúj-Zemplén',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('b0d9b56d-dcb6-41ae-8ae2-5755d557ed9a', false, 'HU-ER',
  'Budaörsi',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('4a8c49c8-b5a3-44e1-9fdc-5906d618a3b8', false, 'HU-BU',
  'Budapesti',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('61412a2c-4de1-49a9-bea8-cbf31012908d', false, 'HU-CS',
  'Csongrád',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('1d0aaf32-2ad5-4361-9ad2-fb2a12f0d936', false, 'HU-DE',
  'Debreceni',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('7556acf3-a930-45dc-974c-79ecfbe476db', false, 'HU-DU',
  'Dunaújvárosi',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('bbefe4e4-c3b3-4b75-a361-3e1e047a0e54', false, 'HU-EG',
  'Egri',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('54f5d0c8-cb6e-4729-8cbb-ce281b7ae5cd', false, 'HU-FE',
  'Fejér',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('0f551722-5af5-4009-bfce-be08c9837784', false, 'HU-GY',
  'Győri',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('ee9d896e-6ed1-4485-9f54-dbb9c87bb435', false, 'HU-GS',
  'Győr-Moson-Sopron',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('0deb7b0f-c614-4a52-a4cc-8ae390136c5e', false, 'HU-HB',
  'Hajdú-Bihar',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('7c22bab5-8f74-4349-ac5f-963d8594ea94', false, 'HU-HE',
  'Heves',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('a3fe5c80-151e-453a-8e7c-a58699296524', false, 'HU-HV',
  'Hódmezővásárhelyi',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('c18595e9-9a80-4ab2-b55c-1dd93b4571cb', false, 'HU-JN',
  'Jász-Nagykun-Szolnok',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('60f8ed28-783f-4621-a446-edabecd2e028', false, 'HU-KV',
  'Kaposvári',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('343fb1f0-7673-43c2-8695-0114cefffd61', false, 'HU-KM',
  'Kecskeméti',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('20517c23-8c81-4807-8c39-5360c69954a1', false, 'HU-KE',
  'Komárom-Esztergom',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('7bed0fe4-11ad-41f9-842c-042970c86d1d', false, 'HU-MI',
  'Miskolci',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('d256bf1b-65a5-4373-acf2-4d610a97ecc3', false, 'HU-NK',
  'Nagykanizsai',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('25698625-3b4d-46f0-ba56-59a44571c607', false, 'HU-NO',
  'Nógrád',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('581628a4-2674-45c9-8f3a-fffb01e87f7e', false, 'HU-NY',
  'Nyíregyházai',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('50a86efa-aca7-482b-a878-4cfd75eb50f7', false, 'HU-PS',
  'Pécsi',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('eb63bc2c-dc50-4260-a428-db1e04a17f2b', false, 'HU-PE',
  'Pest',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('89b83a06-bc6f-4a45-bd64-557c319702e8', false, 'HU-ST',
  'Salgótarjáni',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('0fdc7cc0-7177-4c2e-970a-7635a0eb026a', false, 'HU-SO',
  'Somogy',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('40fd0d48-0868-4d28-81d3-b1257d03f50e', false, 'HU-SN',
  'Sopron-Fertődi',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('4d23ebde-6307-42ba-8339-50bfe9229d54', false, 'HU-SZ',
  'Szabolcs-Szatmár-Bereg',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('8bc92798-2d7d-4074-b368-4e17b801485c', false, 'HU-SD',
  'Szegedi',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('0d137a28-ccd9-44ff-a5ab-7bbe66c9b232', false, 'HU-SF',
  'Székesfehérvári',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('60091c25-24a2-454d-b926-6b93c1bc9247', false, 'HU-SS',
  'Szekszárdi',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('5120e00c-bc68-4f33-9ea7-f015e52e8c98', false, 'HU-SK',
  'Szolnoki',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('8391e83f-99ec-47a8-a0c2-4da98b4041d6', false, 'HU-SH',
  'Szombathelyi',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('4d9b4e25-0025-4b3e-b909-4784740c3a2d', false, 'HU-TB',
  'Tatabányai',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('63b75b2d-d2d3-4fc1-873c-8a81624db351', false, 'HU-TO',
  'Tolna',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('941fed56-4575-4f77-8181-448180365657', false, 'HU-VA',
  'Vas',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('1c731ae3-4973-49f2-9a70-63dd99441d1e', false, 'HU-VE',
  'Veszprém',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('175fbed6-6073-48fa-ba78-c01a528496f3', false, 'HU-VM',
  'Veszprémi',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('fc702eda-884a-4748-97fb-2cc6745fe9cd', false, 'HU-ZA',
  'Zala',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('f47d3a3b-2074-4dec-b237-f4989fc30f36', false, 'HU-ZE',
  'Zalaegerszegi',
  '81948368-67a4-4a1a-901b-b97d56ff007a');
INSERT INTO yacare_admission.province
 VALUES ('ba3fccc8-f74d-41a5-bd60-68eb32cb87c4', false, 'ID-AC',
  'Aceh',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('b52cc24d-73f6-40eb-b7ce-c5ff669afa78', false, 'ID-BA',
  'Bali',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('455424bc-ff04-4726-9949-69f27a8428a4', false, 'ID-BB',
  'Bangka-Belitung',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('1210b075-9da1-4e13-9347-56a3d355fcb8', false, 'ID-BT',
  'Banten',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('aff2207f-506a-45e6-a3bd-c6371df7eefd', false, 'ID-BE',
  'Bengkulu',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('112fa814-72e4-4a16-b4a0-0974b4fd054c', false, 'ID-JT',
  'Central Java',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('e448fc8c-b08f-454e-838a-3fbed585bb42', false, 'ID-KT',
  'Central Kalimantan',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('924fc696-2d4a-4999-a786-71143913677c', false, 'ID-ST',
  'Central Sulawesi',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('3b47e4a5-aa9e-4a7b-8bbb-c676253bcfe6', false, 'ID-JI',
  'East Java',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('d53c5f5c-067d-4e47-80e1-c8bd5cb43f0f', false, 'ID-KI',
  'East Kalimantan',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('2fb60d59-842f-4bec-b512-a44ea6f0e2fe', false, 'ID-NT',
  'East Nusa Tenggara',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('ae2b8a06-f882-4f4b-a0cf-cd4e4520ad7f', false, 'ID-GO',
  'Gorontalo',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('1e039144-ba66-4495-b264-67de9acda85c', false, 'ID-JK',
  'Jakarta',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('77e8d00b-d23b-4ce7-9af3-c68c468cc7ab', false, 'ID-JA',
  'Jambi',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('10b1335d-7391-4753-b2c4-25158c1b782d', false, 'ID-LA',
  'Lampung',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('f94f6097-a8fa-4ddd-a8a6-fe6c55d99648', false, 'ID-MA',
  'Maluku',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('88c76172-2e16-4db8-aa85-33fb57f46393', false, 'ID-MU',
  'North Maluku',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('df0633a6-f5f2-4dda-8e95-d806645a81e4', false, 'ID-SA',
  'North Sulawesi',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('be0a9d96-627d-4a54-9a51-69d96ef2adbc', false, 'ID-SU',
  'North Sumatra',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('0e8fde86-a8f4-4f65-94c2-f366d994de58', false, 'ID-PA',
  'Papua',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('2c6d67a8-67f1-4efd-8909-7a688d8a1d05', false, 'ID-RI',
  'Riau',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('26506214-3db4-4310-b2af-203374d70577', false, 'ID-KR',
  'Riau Islands',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('2e70de45-2544-4a18-afe2-8c15e846ef81', false, 'ID-SG',
  'South East Sulawesi',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('9dc3476a-36d9-4c8e-8dd2-f2002219d0a3', false, 'ID-KS',
  'South Kalimantan',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('a98a9df2-9c07-4c5a-917a-07270c3ba91d', false, 'ID-SN',
  'South Sulawesi',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('b11e58da-0090-4e9e-af22-50c4703546d3', false, 'ID-SS',
  'South Sumatra',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('f1bc9be9-e7ad-4d95-b864-25d56d7338b9', false, 'ID-JB',
  'West Java',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('fc1649a3-1313-4062-86cf-d7dfc57000ed', false, 'ID-KB',
  'West Kalimantan',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('bf7e99a3-fd00-4af7-9e45-554faee75c49', false, 'ID-NB',
  'West Nusa Tenggara',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('acbbfbcd-b09b-4410-a548-541c0a23dee6', false, 'ID-PB',
  'West Papua',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('8b3be219-8495-42dc-938b-3f006ddbedf0', false, 'ID-SR',
  'West Sulawesi',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('d53c6673-34e1-4f7b-a734-e1233f6dee43', false, 'ID-SB',
  'West Sumatra',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('ee4e7847-5c2e-4e6e-802f-73d11825d1d4', false, 'ID-YO',
  'Yogyakarta',
  '56a770b5-aa74-4a60-b1d1-bbf2878ca7dd');
INSERT INTO yacare_admission.province
 VALUES ('2122e8af-f68c-4bf6-8c76-d00e6247b1ec', false, 'IE-CW',
  'Carlow',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('e4c6fa3a-4c43-43eb-b0c2-9017bf37a42c', false, 'IE-CN',
  'Cavan',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('87267982-e462-425f-9cb1-c5196f5b2f83', false, 'IE-CE',
  'Clare',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('02f7902c-9a6c-4aa6-998c-4561a2e2d715', false, 'IE-C',
  'Cork',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('91f7a5a4-c071-4d1c-840e-0982e8c8ff54', false, 'IE-DL',
  'Donegal',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('45cd9138-871a-446b-ae54-3cc81fbd72c0', false, 'IE-D',
  'Dublin',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('4dc30f9f-fe71-4895-8c25-b28a2155c21c', false, 'IE-G',
  'Galway',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('b3a31cb5-ef8d-4b1a-b865-8757dd6bd22b', false, 'IE-KY',
  'Kerry',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('34a44ad3-b78f-44a2-9130-d6ee3b494eef', false, 'IE-KE',
  'Kildare',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('c88a7c85-f5a7-4614-89b9-bb5266d94ba1', false, 'IE-KK',
  'Kilkenny',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('c7e6a2da-4157-494e-80e9-4f8306743a25', false, 'IE-LS',
  'Laois',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('945bfc96-ae69-4fe1-8a72-f30431316883', false, 'IE-LM',
  'Leitrim',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('ecebc1d4-80e7-415d-9106-626df57a758c', false, 'IE-LK',
  'Limerick',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('71bb63d6-0f9e-4a04-9caf-449ecb65d39f', false, 'IE-LD',
  'Longford',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('4cd28c44-ce1f-4304-bbf2-eed854c58961', false, 'IE-LH',
  'Louth',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('46193b4b-80a9-4261-b6d3-44fa607a7d72', false, 'IE-MO',
  'Mayo',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('0f425dfa-a99e-45c5-9b28-b62caa4e3e20', false, 'IE-MH',
  'Meath',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('c638a0a8-389f-4f5b-8e3d-d13277fa84b6', false, 'IE-MN',
  'Monaghan',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('f21f017b-9b78-42d1-b082-d78aa0e01078', false, 'IE-OY',
  'Offaly',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('e55f7861-e8b3-44b6-ac40-261d1823e158', false, 'IE-RN',
  'Roscommon',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('306ce94c-4ecf-4993-a2e1-0648683e36fb', false, 'IE-SO',
  'Sligo',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('5204fcc9-742c-45a2-a27e-54cfac89262d', false, 'IE-TA',
  'Tipperary',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('3acd3cf6-9b1e-4eb4-9e22-9f57f50cf59e', false, 'IE-WD',
  'Waterford',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('849e9426-d21d-4f9b-904c-7a55b0557e5d', false, 'IE-WH',
  'Westmeath',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('d04d897a-93fa-488f-9663-c59c5b482d97', false, 'IE-WX',
  'Wexford',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('19ea881d-0424-47db-8d2e-b28b0e11a8ae', false, 'IE-WW',
  'Wicklow',
  'c2e443a2-4195-48ef-aac7-d0295a4011b9');
INSERT INTO yacare_admission.province
 VALUES ('27c6fecf-384b-4cdf-bcc9-1055e31ffacf', false, 'IL-D',
  'מחוז הדרום',
  '6aef5093-806b-4e3b-be48-cd8136de071b');
INSERT INTO yacare_admission.province
 VALUES ('7760ede3-e40a-452c-a272-84b2786cc3b2', false, 'IL-M',
  'מחוז המרכז',
  '6aef5093-806b-4e3b-be48-cd8136de071b');
INSERT INTO yacare_admission.province
 VALUES ('6d133431-8684-4ce3-900f-f9ca002cf6c1', false, 'IL-Z',
  'מחוז הצפון',
  '6aef5093-806b-4e3b-be48-cd8136de071b');
INSERT INTO yacare_admission.province
 VALUES ('ca496774-c067-4a07-a577-34a01ed1c4ec', false, 'IL-HA',
  'מחוז חיפה',
  '6aef5093-806b-4e3b-be48-cd8136de071b');
INSERT INTO yacare_admission.province
 VALUES ('0d5034a6-cb8f-4a87-9c9b-5b1cf1cb127f', false, 'IL-JM',
  'מחוז ירושלים',
  '6aef5093-806b-4e3b-be48-cd8136de071b');
INSERT INTO yacare_admission.province
 VALUES ('55e5b2d9-8015-44f9-817f-c76e136739fc', false, 'IL-TA',
  'מחוז תל אביב',
  '6aef5093-806b-4e3b-be48-cd8136de071b');
INSERT INTO yacare_admission.province
 VALUES ('38b800d8-0cc3-4d46-a381-4cb1156ee075', false, 'IN-AN',
  'Andaman and Nicobar Islands',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('c7f03cb1-bf07-4dbe-a9bd-82386df92dfd', false, 'IN-AP',
  'Andhra Pradesh',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('3b0fc6fb-f0a1-4d3d-9ed0-9e1d2fff82d2', false, 'IN-AR',
  'Arunachal Pradesh',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('b5044b4f-06e0-4817-bda7-d070be9c10f9', false, 'IN-AS',
  'Assam',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('7ff4d969-620d-49b9-9958-43a5ae35a7b2', false, 'IN-BR',
  'Bihar',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('650dc485-a558-4912-a18d-5b98448b9966', false, 'IN-CH',
  'Chandigarh',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('dced4c33-f8da-4283-bcdc-9074137e23d8', false, 'IN-CT',
  'Chhattisgarh',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('9d2c7fdf-2360-4b93-b48f-cdf5d95fa982', false, 'IN-DN',
  'Dadra and Nagar Haveli',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('c03a47b7-1090-4862-9799-7cce94b164be', false, 'IN-DD',
  'Daman and Diu',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('da15807b-9ed8-49f5-b762-132ff8dcfd78', false, 'IN-DL',
  'Delhi',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('bb33863f-44a2-4b9e-bda9-df6e41f59260', false, 'IN-GA',
  'Goa',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('338e9dad-1b33-4f9b-87d8-be6a7be24c3f', false, 'IN-GJ',
  'Gujarat',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('d74d39e8-3fa8-46c6-8d87-be7493835a43', false, 'IN-HR',
  'Haryana',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('2f3464f2-2ae2-462f-a690-f18b4a154d87', false, 'IN-HP',
  'Himachal Pradesh',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('5b206136-b769-44bb-a72d-3435b6e8b3d2', false, 'IN-JK',
  'Jammu and Kashmir',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('ecc9f599-63cf-4132-88fb-206f057e513f', false, 'IN-JH',
  'Jharkhand',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('b2bb5b41-20a2-4d1c-94fb-d79a4ee3e359', false, 'IN-KA',
  'Karnataka',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('4fc30163-6534-4f63-99bc-569cbfe87e71', false, 'IN-KL',
  'Kerala',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('404a3b98-3b51-41ac-bc4b-676ead996fe1', false, 'IN-LD',
  'Lakshadweep',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('8a29ccc4-1e27-41c3-8356-bbac84d7bd20', false, 'IN-MP',
  'Madhya Pradesh',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('8ad80170-ed7d-4053-a8d5-f3f6c1664861', false, 'IN-MH',
  'Maharashtra',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('889dea0f-0294-46c7-9450-5eb56da9a1d4', false, 'IN-MN',
  'Manipur',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('73cedfe9-a183-4124-8738-4c384959f659', false, 'IN-ML',
  'Meghalaya',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('c2b60a0d-e8d9-4d70-afa1-b7195aff5834', false, 'IN-MZ',
  'Mizoram',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('2563fcd2-a3b3-42c5-8db3-5470cdb1b8b7', false, 'IN-NL',
  'Nagaland',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('27a8fd09-8277-4ebf-b88b-5b464b4388b6', false, 'IN-OR',
  'Orissa',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('7f87f9aa-6cbd-4fa3-885b-cb82314e881f', false, 'IN-PY',
  'Puducherry',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('4634138a-8050-4647-8826-dbad59a7cdcf', false, 'IN-PB',
  'Punjab',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('544b8de8-fbe0-4921-93b5-c45119a42497', false, 'IN-RJ',
  'Rajasthan',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('dad216f2-ff41-46ee-aa1e-ae82feea57c0', false, 'IN-SK',
  'Sikkim',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('3d865f79-c304-4990-b950-dc1ae3123857', false, 'IN-TN',
  'Tamil Nadu',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('926a913d-c427-4b58-83ca-8ef2f59ceb34', false, 'IN-TR',
  'Tripura',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('e4e7a3fd-49a5-434b-8183-405db0457372', false, 'IN-UP',
  'Uttar Pradesh',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('4c046ab0-cce2-4197-a590-70ab40564dad', false, 'IN-UL',
  'Uttarakhand',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('3f25765e-45a9-43cc-8917-acfb0e0a12d7', false, 'IN-WB',
  'West Bengal',
  'a5617e0e-748c-459d-a232-0ab8d8aebfa4');
INSERT INTO yacare_admission.province
 VALUES ('177ea286-340e-44b9-bc6a-d6d4c4c44c07', false, 'IQ-AN',
  'Al Anbar',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('13ab8739-d609-4d56-adca-2a321806f534', false, 'IQ-BA',
  'Al Basrah',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('c7c68675-f521-4cea-838c-c0d2bd11a29f', false, 'IQ-MU',
  'Al Muthanna',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('d4d37b5f-67f4-4f24-9eae-58e7d6c0a2af', false, 'IQ-NA',
  'Al Najaf',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('c717d69c-ea58-440e-ba58-74dda9a07442', false, 'IQ-QA',
  'Al Quadisiya',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('01760865-d4bb-49a1-aa83-4a5a6de885fc', false, 'IQ-SU',
  'Al Sulaymaniah',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('8e32f083-36ec-40b9-8f50-8605f1a996e7', false, 'IQ-TS',
  'Al Ta''amim',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('f196b625-41b2-4764-8670-62bc022349bd', false, 'IQ-AR',
  'Arbil',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('69a07177-3b91-47fe-9ef2-59557de53c4a', false, 'IQ-BB',
  'Babil',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('2851b300-859e-4289-aa30-9151d12e77df', false, 'IQ-BG',
  'Baghdad',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('f7f482a6-6474-4dda-97c0-b7e48da26e1f', false, 'IQ-DA',
  'Dahouk',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('e87bcd67-3802-4672-a961-8d74b7757117', false, 'IQ-DI',
  'Deyala',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('420589a1-8041-4d06-beff-ca0da483eeb0', false, 'IQ-KA',
  'Karbala',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('07c336cc-7b25-45e5-aebd-4349ac2f6aee', false, 'IQ-MA',
  'Maysan',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('51e3dab0-242c-4a97-bc34-8dd2c88a0c28', false, 'IQ-NI',
  'Mousl (Nainawa)',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('f6e85b0a-f74d-4ab8-99e8-176884f3185d', false, 'IQ-SD',
  'Salah Al Deen',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('0ef9f9b3-e893-4be5-84b7-c5593c62325e', false, 'IQ-DQ',
  'Thi Qar',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('6a061e91-c16d-4b18-947f-ee824f1fcaa5', false, 'IQ-WA',
  'Wasit',
  'e3f5f2db-7a9f-4cb0-8e37-42d1968e08e6');
INSERT INTO yacare_admission.province
 VALUES ('494708f0-e0bb-4518-b473-8fcac48c6ff4', false, 'IR-03',
  'Ardabil',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('dc6f8f56-4a21-4dce-a2b7-95e2f4c40f11', false, 'IR-06',
  'Bushehr',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('1016fb51-c696-490c-a0a4-3312f5bdf8ad', false, 'IR-08',
  'Chahar Mahaal and Bakhtiari',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('ef01a7b6-ce9a-449d-9504-838278d8968c', false, 'IR-01',
  'East Azarbaijan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('00a66922-a522-401a-89e9-847bc73fc958', false, 'IR-14',
  'Fars',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('215e2cd2-7d1b-4be6-a2c1-823d2e693d25', false, 'IR-19',
  'Gilan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('2d781263-c3f4-4c5e-b691-f9b0e75eee02', false, 'IR-27',
  'Golestan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('d379c505-97d8-4005-a873-e560645135a5', false, 'IR-24',
  'Hamadan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('159cb1af-6600-410c-a492-6c0817211bdd', false, 'IR-23',
  'Hormozgan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('d38c2d87-9615-4f1d-bb84-982c4a8e4277', false, 'IR-05',
  'Ilam',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('2c741982-9f4f-4547-8595-df584cf64dcc', false, 'IR-04',
  'Isfahan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('40e8f382-4929-4b3a-b2f0-d8efdfa63537', false, 'IR-15',
  'Kerman',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('4b208a33-fa1b-4980-a4ba-0094cce26a55', false, 'IR-17',
  'Kermanshah',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('58969618-9a9e-40b6-a477-f1ab459fcd67', false, 'IR-09',
  'Khorasan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('155e48bb-3cfd-4ad3-b96a-aa59a8273b7e', false, 'IR-10',
  'Khuzestan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('23466c2b-e837-4461-93b4-950ab0b0ef2c', false, 'IR-18',
  'Kohgiluyeh and Boyer-Ahmad',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('ba162532-0c05-43e0-893a-45a3c2b69143', false, 'IR-16',
  'Kurdistan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('01f9bfb7-8887-4135-a6be-f157029aa553', false, 'IR-20',
  'Lorestan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('39983646-bdb2-4389-9150-5bbea371ca80', false, 'IR-22',
  'Markazi',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('6bb846aa-1b19-498c-87ee-b2ef81fd6d94', false, 'IR-21',
  'Mazandaran',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('dd9053ce-a08a-4ea6-b78e-442813b7811f', false, 'IR-31',
  'North Khorasan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('a07d10ff-c023-45a4-8161-86cbaf66a4ef', false, 'IR-28',
  'Qazvin',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('635ca610-60fd-4d4f-bf27-9277cc00e28c', false, 'IR-26',
  'Qom',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('80c5e9b3-57ad-466c-8168-c2071992e6dc', false, 'IR-30',
  'Razavi Khorasan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('0fa8045c-2813-4f47-8a04-bc92db6db974', false, 'IR-12',
  'Semnan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('a60cd2f8-5793-4a11-a860-6a9456e72bcd', false, 'IR-13',
  'Sistan and Baluchestan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('c849eb1a-207d-4946-b8b0-8f8a21130d4b', false, 'IR-29',
  'South Khorasan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('9697aa86-c5a0-4140-bd2d-d4a1a6ffd723', false, 'IR-07',
  'Tehran',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('5dd57225-cb26-49e3-8a30-7f06fd148e96', false, 'IR-02',
  'West Azarbaijan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('ff3c522b-ddc5-4259-abbc-d71e80cca0f2', false, 'IR-25',
  'Yazd',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('0d2af3e1-4e17-48ed-9b55-e7b374706454', false, 'IR-11',
  'Zanjan',
  '316c34a8-f343-4a7b-8e70-b39c4334a751');
INSERT INTO yacare_admission.province
 VALUES ('85397c82-f537-4b89-a3d2-b3a9c6c7cfa5', false, 'IS-7',
  'Austurland',
  'ba26f9da-fa00-40db-ab7b-cfcfc3ac539e');
INSERT INTO yacare_admission.province
 VALUES ('d08513f6-2b99-4152-8029-fd07d35610e6', false, 'IS-1',
  'Höfuðborgarsvæði',
  'ba26f9da-fa00-40db-ab7b-cfcfc3ac539e');
INSERT INTO yacare_admission.province
 VALUES ('9fc73300-de74-4e2d-b199-112f1f577257', false, 'IS-6',
  'Norðurland eystra',
  'ba26f9da-fa00-40db-ab7b-cfcfc3ac539e');
INSERT INTO yacare_admission.province
 VALUES ('3ce70f9d-6917-47df-8916-93915d277c40', false, 'IS-5',
  'Norðurland vestra',
  'ba26f9da-fa00-40db-ab7b-cfcfc3ac539e');
INSERT INTO yacare_admission.province
 VALUES ('e750178b-cc7a-491f-9257-9f37d56161eb', false, 'IS-8',
  'Suðurland',
  'ba26f9da-fa00-40db-ab7b-cfcfc3ac539e');
INSERT INTO yacare_admission.province
 VALUES ('cbe8cf66-ad82-4fd9-ab1d-a07d375d16b6', false, 'IS-2',
  'Suðurnes',
  'ba26f9da-fa00-40db-ab7b-cfcfc3ac539e');
INSERT INTO yacare_admission.province
 VALUES ('9fc1ba45-1ffb-434e-920d-e9c0e823a838', false, 'IS-4',
  'Vestfirðir',
  'ba26f9da-fa00-40db-ab7b-cfcfc3ac539e');
INSERT INTO yacare_admission.province
 VALUES ('6114392b-5d3b-4def-83a1-c62edabf88c4', false, 'IS-3',
  'Vesturland',
  'ba26f9da-fa00-40db-ab7b-cfcfc3ac539e');
INSERT INTO yacare_admission.province
 VALUES ('5480c5d5-3291-4d9f-905d-123184648fdd', false, 'ISO2',
  'Region',
  'ba26f9da-fa00-40db-ab7b-cfcfc3ac539e');
INSERT INTO yacare_admission.province
 VALUES ('128f9ef0-6f80-435a-9b20-04ad6d59d22b', false, 'IT-AG',
  'Agrigento',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('3c36dab2-aecf-4f9a-a686-96d710ae23f1', false, 'IT-AL',
  'Alessandria',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('96d07e63-a29c-4ce9-8f6b-bd84885b99fd', false, 'IT-AN',
  'Ancona',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('5aad7337-e57e-4eae-87b9-36b9ce2a429c', false, 'IT-AR',
  'Arezzo',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('9d63f1a9-e637-4ef6-af92-f696aff87557', false, 'IT-AP',
  'Ascoli Piceno',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('3f444dbe-99ed-4938-ad7c-191c36b41016', false, 'IT-AT',
  'Asti',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('cc6b1035-4a58-40fd-bc68-fcaf553bf514', false, 'IT-AV',
  'Avellino',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('dad63d55-1df4-4ea6-af84-00a445a1f75d', false, 'IT-BA',
  'Bari',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('47a36661-aa89-4306-a6c3-aa3834a9c232', false, 'IT-BT',
  'Barletta-Andria-Trani',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('95feb13e-69e4-4e5d-86d8-4bc88dfa5e77', false, 'IT-BL',
  'Belluno',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('8f89cd62-ae95-492c-8b14-fcae187bb6bf', false, 'IT-BN',
  'Benevento',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('b8044880-60e6-477e-962a-626dd5c2db67', false, 'IT-BG',
  'Bergamo',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('48fa4662-3829-4704-9c64-ebcea1dc9939', false, 'IT-BI',
  'Biella',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('3549c020-51ff-4916-958e-85e18ca0130f', false, 'IT-BO',
  'Bologna',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('0fee9477-4bdb-4bde-a67e-43dbee4ab10b', false, 'IT-BZ',
  'Bolzano',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('386df536-068d-4e7a-b7fd-b1a5878a8165', false, 'IT-BS',
  'Brescia',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('5526d4d9-a14b-4821-8016-745673804a8d', false, 'IT-BR',
  'Brindisi',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('bde62392-f925-48a6-9ae2-4ec92890abf7', false, 'IT-CA',
  'Cagliari',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('1efc8383-270c-42cc-bb7d-18538cbda9a5', false, 'IT-CL',
  'Caltanissetta',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('3c16e402-bc60-47a3-86f3-34be86e7b54f', false, 'IT-CB',
  'Campobasso',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('7f82b86e-5ead-4f87-bdf0-9d9a34ac45f3', false, 'IT-CI',
  'Carbonia-Iglesias',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('7926fd5c-6c81-46c0-840b-9d015f6d11a6', false, 'IT-CE',
  'Caserta',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('f151fe35-9f11-4ea5-b88c-4b702a1e437b', false, 'IT-CT',
  'Catania',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('293a9b1f-5261-4565-b37c-40b16f5ba930', false, 'IT-CZ',
  'Catanzaro',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('ae415f5b-704e-404f-a50a-91c710655612', false, 'IT-CH',
  'Chieti',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('40a7edba-6990-4651-9471-684653e46789', false, 'IT-CO',
  'Como',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('2b05721a-0290-4656-80de-c30aee70bf2f', false, 'IT-CS',
  'Cosenza',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('7e34345e-4945-4f3d-a81d-06509a96cb76', false, 'IT-CR',
  'Cremona',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('cc6384d9-bc6e-49ef-8f34-b511c89fcad9', false, 'IT-KR',
  'Crotone',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('f7020619-e4e4-4cd5-86f7-7f99cb70d6b7', false, 'IT-CN',
  'Cuneo',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('774f1b02-51ec-4d9d-9429-da1f22099250', false, 'IT-EN',
  'Enna',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('a553caff-2982-4edd-b3bf-0a755b899145', false, 'IT-FM',
  'Fermo',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('1ad8b28d-d997-4421-9992-3deb6a1078f3', false, 'IT-FE',
  'Ferrara',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('03268034-8afd-4553-ad98-d0a631b37064', false, 'IT-FI',
  'Firenze',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('0ada8eab-a999-450c-a6c3-98b3048f3906', false, 'IT-FG',
  'Foggia',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('5ea849bd-d684-4af3-b1d6-3ebec80ca57f', false, 'IT-FC',
  'Forlì-Cesena',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('e534e6d2-78d3-4054-b69e-8f556a3dbed3', false, 'IT-FR',
  'Frosinone',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('cecfcea0-f9c6-4910-baa9-6ac7545ce213', false, 'IT-GE',
  'Genova',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('7264b10e-fc5c-4c40-9c74-e5ad79fc7144', false, 'IT-GO',
  'Gorizia',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('0abaaa09-80a0-4c83-8d90-68cb8714cd9c', false, 'IT-GR',
  'Grosseto',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('30aeae17-eb9d-48ef-bfaa-2e5f34f7cb9d', false, 'IT-IM',
  'Imperia',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('797a4611-673a-4f9b-92ca-a8dcef225d08', false, 'IT-IS',
  'Isernia',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('8553159d-9c62-49a8-a568-a973ea8afd76', false, 'IT-SP',
  'La Spezia',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('ec25dfab-cd84-4a85-a7d9-f3ac0c781bf4', false, 'IT-AQ',
  'L''Aquila',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('3c34281b-6f1c-4faf-a278-3bb6f767ffaa', false, 'IT-LT',
  'Latina',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('6a8e7a95-4041-4ba5-9c35-80e057751e3a', false, 'IT-LE',
  'Lecce',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('4431015e-99b6-4bdb-a5d7-06ed9aec9be0', false, 'IT-LC',
  'Lecco',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('1a25432d-6bde-438c-a5ba-32973adf7a87', false, 'IT-LI',
  'Livorno',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('076b2ec3-369e-4a8b-a24b-9d888f84ea04', false, 'IT-LO',
  'Lodi',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('869307fe-3d24-4c09-83a4-39d9525d296a', false, 'IT-LU',
  'Lucca',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('13994411-f48a-462e-833d-e7e4078c4bdd', false, 'IT-MC',
  'Macerata',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('e1f2d307-ef2e-4031-8a18-d8a7e44e6b63', false, 'IT-MN',
  'Mantova',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('d09b6279-0102-41ce-bf59-3b35b2804a84', false, 'IT-MS',
  'Massa-Carrara',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('6e480a6e-f96b-41e4-b0fb-eb08204d9921', false, 'IT-MT',
  'Matera',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('600399d1-5923-4686-93e8-e490afd0aeb4', false, 'IT-VS',
  'Medio Campidano',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('b670109c-8e9b-4276-8ac0-0a31255f0de8', false, 'IT-ME',
  'Messina',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('559ea14c-3c84-487d-a9a2-16eb0bb45652', false, 'IT-MI',
  'Milano',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('8e808565-1778-4e14-9088-a634f9b44c05', false, 'IT-MO',
  'Modena',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('4d9383a9-5cbe-4322-a415-d96fac134961', false, 'IT-MB',
  'Monza e della Brianza',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('2be3da64-7d88-4dc6-89af-62e2a8eb9e51', false, 'IT-NA',
  'Napoli',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('76236240-ff2e-43f6-9b3e-b76f12885ae6', false, 'IT-NO',
  'Novara',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('95e65889-2a3a-4078-b494-401857e86a3e', false, 'IT-NU',
  'Nuoro',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('f7dae5a2-b9f4-466d-a902-d31c63cef493', false, 'IT-OG',
  'Ogliastra',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('c2bc0c1c-7203-43be-96b9-fffb9642304e', false, 'IT-OT',
  'Olbia-Tempio',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('56538c32-d563-4347-9444-4b796d396095', false, 'IT-OR',
  'Oristano',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('990859ae-9361-4e9a-a57c-968e45354739', false, 'IT-PD',
  'Padova',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('4bb1aad6-7a36-4e57-a896-bcd4f36bc2d7', false, 'IT-PA',
  'Palermo',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('81b09260-c7e1-4958-b3fb-2337458e2e7b', false, 'IT-PR',
  'Parma',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('4b7543e6-0204-478f-bc0b-833ece29098f', false, 'IT-PV',
  'Pavia',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('1c7439c1-456f-4b10-8c90-f27af0d760b3', false, 'IT-PG',
  'Perugia',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('e256ef98-1ec6-42e2-8810-aa153d3551a7', false, 'IT-PU',
  'Pesaro e Urbino',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('fd4e9b55-e56a-4b3f-9eb8-ce9340186dcf', false, 'IT-PE',
  'Pescara',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('4603bef5-5acc-4712-8d17-ae2d88b7ef20', false, 'IT-PC',
  'Piacenza',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('933083dd-49c6-42eb-ac83-bbe14fe92be2', false, 'IT-PI',
  'Pisa',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('e55f3efd-de37-4d09-af9e-5c9306da2bc0', false, 'IT-PT',
  'Pistoia',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('6ff20e1e-025a-48ac-8148-34818cd19149', false, 'IT-PN',
  'Pordenone',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('dfa7c259-fa15-4a82-871f-e290942cc549', false, 'IT-PZ',
  'Potenza',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('e1dccce9-2a95-4b76-813a-613da7c7d8ef', false, 'IT-PO',
  'Prato',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('47d18780-68c3-471e-ad7f-38c62be60da8', false, 'IT-RG',
  'Ragusa',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('d2035d10-b9e2-4295-985f-495428dc7552', false, 'IT-RA',
  'Ravenna',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('3f1725cb-f1bc-4b97-a9b0-ba55ffb183a6', false, 'IT-RC',
  'Reggio di Calabria',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('68a1b929-f501-42b6-b792-579fd32f9e25', false, 'IT-RE',
  'Reggio Nell''Emilia',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('74d87c42-6dc1-488f-8573-39f93abaedd5', false, 'IT-RI',
  'Rieti',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('6e0c3ed8-e052-4faa-b76d-af9d820fca45', false, 'IT-RN',
  'Rimini',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('416c5468-c6d7-41cf-992f-5433644514df', false, 'IT-RM',
  'Roma',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('82a4282a-7571-4d35-a2f6-cea9ac9bbd33', false, 'IT-RO',
  'Rovigo',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('74dfa526-8db5-4aeb-b09e-f540b1501531', false, 'IT-SA',
  'Salerno',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('ce9c808e-c7e0-4273-8043-ff94b3078605', false, 'IT-SS',
  'Sassari',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('3f03ba2a-b28c-41e1-8fd7-96ccb6746456', false, 'IT-SV',
  'Savona',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('a2cab576-fe93-454a-9455-ad759d70a130', false, 'IT-SI',
  'Siena',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('d77d0165-2857-4fc3-a67b-d36f6cdb1a74', false, 'IT-SR',
  'Siracusa',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('bc3defa6-f1c3-456c-945f-d3466ad1bb2b', false, 'IT-SO',
  'Sondrio',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('0a4c33f6-3a7e-4cdd-936f-1ed71f2912e1', false, 'IT-TA',
  'Taranto',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('eb04d67f-8324-4a9a-9de6-da7e7b6e6111', false, 'IT-TE',
  'Teramo',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('f618ae3f-32cd-41d1-8399-9bcdef5e31f8', false, 'IT-TR',
  'Terni',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('b6dcbdca-8a5b-4b28-b8c5-b956a9a9fb06', false, 'IT-TO',
  'Torino',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('72aaac0d-9b89-4bb9-a872-32d85d24d99b', false, 'IT-TP',
  'Trapani',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('1e66f929-294f-44e7-84ec-c38cd32cf541', false, 'IT-TN',
  'Trento',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('d668cc7b-96e3-4698-80dc-4fa917888a31', false, 'IT-TV',
  'Treviso',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('a8165b01-3a8f-48d1-be44-1bda17c6cf48', false, 'IT-TS',
  'Trieste',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('c1c43832-736a-45bb-bd5c-ebb9a4f34e0e', false, 'IT-UD',
  'Udine',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('30c9bb28-92c8-4b75-a4c9-461016b9b750', false, 'IT-AO',
  'Valle d''Aosta',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('549be2d9-2dc3-47fd-8a1e-43fb786cb04d', false, 'IT-VA',
  'Varese',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('aea9b09c-cbf1-4a4d-a7b1-8076fbcc9cbe', false, 'IT-VE',
  'Venezia',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('7bf5c9fb-ad2a-4054-a7ff-13b4c00bcec4', false, 'IT-VB',
  'Verbano-Cusio-Ossola',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('0098a831-a582-4e90-a83a-060f3c7fedd8', false, 'IT-VC',
  'Vercelli',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('f242792c-34b7-4182-8d59-16b5eb812d9f', false, 'IT-VR',
  'Verona',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('4529e02b-52c2-4cba-bfbb-2221c3e52eb7', false, 'IT-VV',
  'Vibo Valentia',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('8e48cebc-5cf0-4b81-af07-96093ac773ba', false, 'IT-VI',
  'Vicenza',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('70ad9189-f8b2-4985-a320-242c07dcae75', false, 'IT-VT',
  'Viterbo',
  '069169e1-9bab-4769-bc43-6269b266c25d');
INSERT INTO yacare_admission.province
 VALUES ('623e56d2-a2fd-4937-b764-b2a7d06d484b', false, 'JM-13',
  'Clarendon',
  'c1e16cf4-33ca-4e37-b172-0b9986682702');
INSERT INTO yacare_admission.province
 VALUES ('9ec39784-8ad7-4653-8212-02a9df53b8b9', false, 'JM-09',
  'Hanover',
  'c1e16cf4-33ca-4e37-b172-0b9986682702');
INSERT INTO yacare_admission.province
 VALUES ('b9d0c9a0-0d62-425e-8d1a-05b15dcba252', false, 'JM-01',
  'Kingston',
  'c1e16cf4-33ca-4e37-b172-0b9986682702');
INSERT INTO yacare_admission.province
 VALUES ('32e220be-7496-45d6-a5d8-361b33a30dda', false, 'JM-12',
  'Manchester',
  'c1e16cf4-33ca-4e37-b172-0b9986682702');
INSERT INTO yacare_admission.province
 VALUES ('310589cc-c943-451f-9413-63dae14a1e85', false, 'JM-04',
  'Portland',
  'c1e16cf4-33ca-4e37-b172-0b9986682702');
INSERT INTO yacare_admission.province
 VALUES ('945ff544-71ca-492c-bc5a-79b1deccbd01', false, 'JM-02',
  'Saint Andrew',
  'c1e16cf4-33ca-4e37-b172-0b9986682702');
INSERT INTO yacare_admission.province
 VALUES ('0a7100a0-2325-4247-af2d-29411547be32', false, 'JM-06',
  'Saint Ann',
  'c1e16cf4-33ca-4e37-b172-0b9986682702');
INSERT INTO yacare_admission.province
 VALUES ('eec80cd8-b8c2-4924-9aae-5e705cabd7fd', false, 'JM-14',
  'Saint Catherine',
  'c1e16cf4-33ca-4e37-b172-0b9986682702');
INSERT INTO yacare_admission.province
 VALUES ('dda674ba-306c-4dd2-bdfc-5e6099e089e8', false, 'JM-11',
  'Saint Elizabeth',
  'c1e16cf4-33ca-4e37-b172-0b9986682702');
INSERT INTO yacare_admission.province
 VALUES ('afdbc33f-7a30-4717-8145-c538498cec4b', false, 'JM-08',
  'Saint James',
  'c1e16cf4-33ca-4e37-b172-0b9986682702');
INSERT INTO yacare_admission.province
 VALUES ('8b9dc31c-99b7-4cac-ae34-b4f4fa298827', false, 'JM-05',
  'Saint Mary',
  'c1e16cf4-33ca-4e37-b172-0b9986682702');
INSERT INTO yacare_admission.province
 VALUES ('44c389bf-5306-4eb7-8afc-468735837d31', false, 'JM-03',
  'Saint Thomas',
  'c1e16cf4-33ca-4e37-b172-0b9986682702');
INSERT INTO yacare_admission.province
 VALUES ('53f82f45-4321-47f1-b80f-37c77f7e0031', false, 'JM-07',
  'Trelawny',
  'c1e16cf4-33ca-4e37-b172-0b9986682702');
INSERT INTO yacare_admission.province
 VALUES ('92edaf3d-4800-4791-a9dd-b0b34e5dfde4', false, 'JM-10',
  'Westmoreland',
  'c1e16cf4-33ca-4e37-b172-0b9986682702');
INSERT INTO yacare_admission.province
 VALUES ('ce3032da-b60e-4ec1-9e99-3a17f8b19fd1', false, 'JO-AJ',
  'Ajlun',
  'd1c3bf39-d2c3-4c70-94a9-d25797b630a8');
INSERT INTO yacare_admission.province
 VALUES ('179d1f5c-3c75-4c06-bffe-b17dbb4c2310', false, 'JO-AM',
  'Amman',
  'd1c3bf39-d2c3-4c70-94a9-d25797b630a8');
INSERT INTO yacare_admission.province
 VALUES ('8e123be9-9c98-43ba-b43c-d549f2bb79d7', false, 'JO-AQ',
  'Aqaba',
  'd1c3bf39-d2c3-4c70-94a9-d25797b630a8');
INSERT INTO yacare_admission.province
 VALUES ('4eb54276-a060-48f4-98cf-34ee105f1e2c', false, 'JO-BA',
  'Balqa',
  'd1c3bf39-d2c3-4c70-94a9-d25797b630a8');
INSERT INTO yacare_admission.province
 VALUES ('541243a9-1dc6-4717-b0aa-bbc4aadac027', false, 'JO-IR',
  'Irbid',
  'd1c3bf39-d2c3-4c70-94a9-d25797b630a8');
INSERT INTO yacare_admission.province
 VALUES ('911fdbea-27a8-4145-9d86-417c847bc5ba', false, 'JO-JA',
  'Jarash',
  'd1c3bf39-d2c3-4c70-94a9-d25797b630a8');
INSERT INTO yacare_admission.province
 VALUES ('22322ec0-812d-4169-a439-129eb17a7abb', false, 'JO-KA',
  'Karak',
  'd1c3bf39-d2c3-4c70-94a9-d25797b630a8');
INSERT INTO yacare_admission.province
 VALUES ('e56d8845-6ff7-4e48-bd4c-db9863c4864b', false, 'JO-MN',
  'Ma''an',
  'd1c3bf39-d2c3-4c70-94a9-d25797b630a8');
INSERT INTO yacare_admission.province
 VALUES ('61fd8cfb-513e-4022-b120-3415f42a3aa3', false, 'JO-MD',
  'Madaba',
  'd1c3bf39-d2c3-4c70-94a9-d25797b630a8');
INSERT INTO yacare_admission.province
 VALUES ('9df61c2d-c427-4e52-a062-f2d73523e546', false, 'JO-MA',
  'Mafraq',
  'd1c3bf39-d2c3-4c70-94a9-d25797b630a8');
INSERT INTO yacare_admission.province
 VALUES ('0caec4f6-8d62-4bff-8a92-aa9c60a4bb15', false, 'JO-AT',
  'Tafilah',
  'd1c3bf39-d2c3-4c70-94a9-d25797b630a8');
INSERT INTO yacare_admission.province
 VALUES ('8a893dea-279f-49ac-99eb-4e25cf75af8b', false, 'JO-AZ',
  'Zarqa',
  'd1c3bf39-d2c3-4c70-94a9-d25797b630a8');
INSERT INTO yacare_admission.province
 VALUES ('13f151a4-0f1c-43ba-83bd-6fa04aa138f3', false, 'JP-23',
  'Aichi',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('aec7f391-7dd0-470e-a8d8-ba23f67e361f', false, 'JP-05',
  'Akita',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('c01c037c-44ec-4c73-9b96-ddcd38605576', false, 'JP-02',
  'Aomori',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('d8a5da3e-117b-4ff2-a42b-4fb148793e56', false, 'JP-12',
  'Chiba',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('6ab186b7-83c2-46a8-aa45-6dde8bc0b29e', false, 'JP-38',
  'Ehime',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('a0341dd5-76d5-4d71-837b-60d150f616a4', false, 'JP-18',
  'Fukui',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('63b47e4d-7568-4b9f-a809-a1ae954a7631', false, 'JP-40',
  'Fukuoka',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('e54ea360-a03d-4d9a-b6e1-04ad2bcb46f8', false, 'JP-07',
  'Fukushima',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('5ca6f400-e860-4c45-8fc2-eff84ba13b81', false, 'JP-21',
  'Gifu',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('d8b9a1ad-0580-45fe-9ba4-24b0b0f38786', false, 'JP-10',
  'Gunma',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('bb5cd145-133d-4d52-bb8a-fd685c2d2c0a', false, 'JP-34',
  'Hiroshima',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('389cb8dd-61ee-41f4-afca-02b13af26920', false, 'JP-01',
  'Hokkaidō',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('aebeb8ca-c922-4a4f-9c72-409ec3e8c55a', false, 'JP-28',
  'Hyōgo',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('aa5ab2aa-1967-42c9-ad0a-a324eaf77aff', false, 'JP-08',
  'Ibaraki',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('afd50482-809c-4393-8678-78022d6b64e8', false, 'JP-17',
  'Ishikawa',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('18d016d9-2f11-493b-8c0d-f4d72a1a478a', false, 'JP-03',
  'Iwate',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('e1f95745-5df7-47f4-9e30-b74e5b200c5b', false, 'JP-37',
  'Kagawa',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('85683676-5672-4686-84a7-9ce689f3969f', false, 'JP-46',
  'Kagoshima',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('a71f5125-f473-4557-a9a8-d0f899531af4', false, 'JP-14',
  'Kanagawa',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('69752376-bef0-4d74-8f85-bb22292eeb13', false, 'JP-39',
  'Kōchi',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('ef10e314-710e-4254-9746-8ef8e99a0c1c', false, 'JP-43',
  'Kumamoto',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('c046dfc1-84f2-486c-8c82-d8d18cb77413', false, 'JP-26',
  'Kyōto',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('95877749-e83d-451b-acd1-5c10e3492315', false, 'JP-24',
  'Mie',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('47934c4b-014f-4641-a579-3d3c530e6e61', false, 'JP-04',
  'Miyagi',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('957b77ca-a976-4dc1-a35e-7cb2c5a6184a', false, 'JP-45',
  'Miyazaki',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('ef5af11f-2d22-4dc0-bc95-31926e61783b', false, 'JP-20',
  'Nagano',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('8f7425d6-bd3f-4497-a900-cd3019453d17', false, 'JP-42',
  'Nagasaki',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('005ba3f5-e281-4105-99a0-06d99fa51dc6', false, 'JP-29',
  'Nara',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('262ccc49-edba-4dc9-a550-88d8dc52fd5e', false, 'JP-15',
  'Niigata',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('3913ec1a-d1ee-41f1-ab4b-30c8d0d04c19', false, 'JP-44',
  'Ōita',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('4e1d2f08-5603-4cfb-9b58-e0f63bc1b6fc', false, 'JP-33',
  'Okayama',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('a8e22697-df9c-4648-b88f-f7595172eee6', false, 'JP-47',
  'Okinawa',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('4563afb9-b4cf-4ebe-9c59-539db1481e30', false, 'JP-27',
  'Ōsaka',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('173323fb-2294-4f6d-bcec-38dcd400b791', false, 'JP-41',
  'Saga',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('9eefd442-42ca-4d8a-bae2-5c45fcd4afcc', false, 'JP-11',
  'Saitama',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('872f1bb1-cabc-4621-8b16-9b347592ab6c', false, 'JP-25',
  'Shiga',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('c90f209f-c3a1-45cc-8125-10d47813364d', false, 'JP-32',
  'Shimane',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('4db40008-6485-45ec-a56f-835643e8b3a7', false, 'JP-22',
  'Shizuoka',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('9fe0302b-a898-4b01-90a2-dfd81bce9761', false, 'JP-09',
  'Tochigi',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('9df46992-3789-4766-ad8a-da2025534b2c', false, 'JP-36',
  'Tokushima',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('5302e7ab-f703-4f26-95fe-b9f433dbaf97', false, 'JP-13',
  'Tōkyō',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('04958322-3330-4386-a250-e4d01e342e97', false, 'JP-31',
  'Tottori',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('df79919c-503e-45fa-a98a-65fee415732d', false, 'JP-16',
  'Toyama',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('22f14120-09a7-49cb-9cff-16fa666be73c', false, 'JP-30',
  'Wakayama',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('03a594dd-472e-42c1-a030-f93dd39c4680', false, 'JP-06',
  'Yamagata',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('28350ade-5e14-4a76-93f9-40cfa11f6835', false, 'JP-35',
  'Yamaguchi',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('a735c3dc-4628-4d67-822f-eea13545ebff', false, 'JP-19',
  'Yamanashi',
  'b6b8954a-9743-44cc-9691-023463e9a3d1');
INSERT INTO yacare_admission.province
 VALUES ('8bd06f9b-8202-4e03-940b-631985ee45c6', false, 'KE-200',
  'Central',
  '2dcaf655-83ad-4e79-94ee-4fd3df7f8f74');
INSERT INTO yacare_admission.province
 VALUES ('fa58521e-b63c-41f1-b69e-b89e8c6459c5', false, 'KE-300',
  'Coast',
  '2dcaf655-83ad-4e79-94ee-4fd3df7f8f74');
INSERT INTO yacare_admission.province
 VALUES ('d2d9a778-0f91-48a6-beb2-858f5b9522ea', false, 'KE-400',
  'Eastern',
  '2dcaf655-83ad-4e79-94ee-4fd3df7f8f74');
INSERT INTO yacare_admission.province
 VALUES ('aa3f19f2-38ee-4b44-97bc-e96dbf1880fa', false, 'KE-110',
  'Nairobi',
  '2dcaf655-83ad-4e79-94ee-4fd3df7f8f74');
INSERT INTO yacare_admission.province
 VALUES ('beb5e85c-9799-4b56-b572-6bbd901a36c7', false, 'KE-500',
  'North-Eastern',
  '2dcaf655-83ad-4e79-94ee-4fd3df7f8f74');
INSERT INTO yacare_admission.province
 VALUES ('9f0e62b6-7cdb-444a-9237-b6516be5e69d', false, 'KE-600',
  'Nyanza',
  '2dcaf655-83ad-4e79-94ee-4fd3df7f8f74');
INSERT INTO yacare_admission.province
 VALUES ('d70c35dd-1573-4943-aae2-332246b68088', false, 'KE-700',
  'Rift Valley',
  '2dcaf655-83ad-4e79-94ee-4fd3df7f8f74');
INSERT INTO yacare_admission.province
 VALUES ('f97d200e-8017-410b-9035-d2dadfc20a02', false, 'KE-900',
  'Western',
  '2dcaf655-83ad-4e79-94ee-4fd3df7f8f74');
INSERT INTO yacare_admission.province
 VALUES ('ee2ea7cb-110b-4e16-8bcc-1d47faf6f8d1', false, 'KG-B',
  'Баткенская область',
  '79c80298-0fd7-4ab2-a9c8-de66c21bee08');
INSERT INTO yacare_admission.province
 VALUES ('513ab966-66c4-4a08-be30-5bb58f2af912', false, 'KG-GB',
  'Бишкек',
  '79c80298-0fd7-4ab2-a9c8-de66c21bee08');
INSERT INTO yacare_admission.province
 VALUES ('df852082-a605-42f8-a4a4-9747910de942', false, 'KG-J',
  'Жалалабадская область',
  '79c80298-0fd7-4ab2-a9c8-de66c21bee08');
INSERT INTO yacare_admission.province
 VALUES ('d2abaff8-fa65-4170-a57c-a22c62dda09e', false, 'KG-Y',
  'Иссык-Кульская область',
  '79c80298-0fd7-4ab2-a9c8-de66c21bee08');
INSERT INTO yacare_admission.province
 VALUES ('6168c293-a093-4d5b-b73a-ef0661e66e67', false, 'KG-N',
  'Нарынская область',
  '79c80298-0fd7-4ab2-a9c8-de66c21bee08');
INSERT INTO yacare_admission.province
 VALUES ('4b7ed96f-d9a9-47bd-b6f9-924d3e1cf40c', false, 'KG-O',
  'Ош',
  '79c80298-0fd7-4ab2-a9c8-de66c21bee08');
INSERT INTO yacare_admission.province
 VALUES ('fa19a342-fa96-4c56-846b-b0095abd0286', false, 'KG-T',
  'Таласская область',
  '79c80298-0fd7-4ab2-a9c8-de66c21bee08');
INSERT INTO yacare_admission.province
 VALUES ('abd949b3-74b3-45ba-8ad2-51e4bd3c0f30', false, 'KG-C',
  'Чуйская область',
  '79c80298-0fd7-4ab2-a9c8-de66c21bee08');
INSERT INTO yacare_admission.province
 VALUES ('465dcf22-a341-4949-8e4f-56f60a9dfb27', false, 'KH-1',
  'Banteay Meanchey',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('8044a302-3e81-45de-94f5-5e85747483b1', false, 'KH-2',
  'Battambang',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('270f8ecf-5d46-403b-a0ce-17ee57296d77', false, 'KH-3',
  'Kampong Cham',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('a88a7bb9-5725-436c-8c90-e6cba20dee3c', false, 'KH-4',
  'Kampong Chhnang',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('0f6c5c7b-0d97-445a-a22a-ff87dcd33066', false, 'KH-5',
  'Kampong Speu',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('ab247231-af58-4d2e-80b0-77ac5e1eb305', false, 'KH-6',
  'Kampong Thom',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('3990d49c-35f5-42d2-9415-904939848cb8', false, 'KH-7',
  'Kampot',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('a25318ba-71d5-442d-9425-ffa01595a06e', false, 'KH-8',
  'Kandal',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('8f03ef29-115c-4329-b0a9-920efefdf463', false, 'KH-9',
  'Koh Kong',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('5b635308-e643-4f2a-bd65-d4dcd0619f43', false, 'KH-10',
  'Kratie',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('52aa083d-0fbb-4834-94f4-ef48753f6fcf', false, 'KH-23',
  'Krong Kep',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('58764f88-172d-4405-95b8-23963935b3ea', false, 'KH-24',
  'Krong Pailin',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('ea15695b-c94e-4832-ac6a-552c62e452de', false, 'KH-18',
  'Krong Preah Sihanouk',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('6640bca2-136b-43ce-b5c5-e0b4780e6a71', false, 'KH-11',
  'Mondol Kiri',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('87bb6e1d-788d-4671-bd98-805096858dcb', false, 'KH-22',
  'Oudor MeanChey',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('70523a71-0b6b-4298-8042-11eff77da39c', false, 'KH-12',
  'Phnom Penh',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('98642e39-51aa-4597-a713-8b04141c279e', false, 'KH-13',
  'Preah Vihear',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('a4d792df-ec6b-4f34-a50f-846198acbe83', false, 'KH-14',
  'Prey Veng',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('975e3499-cf9b-4096-952f-19f482d85b0c', false, 'KH-15',
  'Pursat',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('896a5504-041c-430f-979f-6cd940f0f25a', false, 'KH-16',
  'RatanaKiri',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('b3b3f0d8-7812-4309-9865-aea553d25586', false, 'KH-17',
  'Siem Reap',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('8269d184-83df-4179-9b5f-66ffd6136cb1', false, 'KH-19',
  'Stung Treng',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('de7e3570-df43-40e2-b579-2e8525d84192', false, 'KH-20',
  'Svay Rieng',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('b4b0708b-44cf-4fca-9dd3-da700a558cde', false, 'KH-21',
  'Takeo',
  '5ae0a261-c25e-4d85-b39e-fd24e1b09b7d');
INSERT INTO yacare_admission.province
 VALUES ('f2a3d19a-2a03-4bb0-abe4-1e165b61f26c', false, 'KI-G',
  'Gilbert Islands',
  '48f8f06e-adbc-4da9-a46f-17d13d26a0b2');
INSERT INTO yacare_admission.province
 VALUES ('cb636dbe-2d89-405e-8ba5-995533cbcebd', false, 'KI-L',
  'Line Islands',
  '48f8f06e-adbc-4da9-a46f-17d13d26a0b2');
INSERT INTO yacare_admission.province
 VALUES ('c543ce5c-7eff-4d4f-887c-08e60687620d', false, 'KI-P',
  'Phoenix Islands',
  '48f8f06e-adbc-4da9-a46f-17d13d26a0b2');
INSERT INTO yacare_admission.province
 VALUES ('a7b7c8c2-70a9-43b6-8abd-ceabe8fc1750', false, 'KM-A',
  'Anjouan',
  'acceef3b-a09d-4ccf-ba8a-cc73607938a9');
INSERT INTO yacare_admission.province
 VALUES ('5904dd3f-e5fe-4b80-8be5-c854a7800330', false, 'KM-G',
  'Grande Comore',
  'acceef3b-a09d-4ccf-ba8a-cc73607938a9');
INSERT INTO yacare_admission.province
 VALUES ('bc53261b-5bbb-4777-ac5e-58682a51dfe9', false, 'KM-M',
  'Mohéli',
  'acceef3b-a09d-4ccf-ba8a-cc73607938a9');
INSERT INTO yacare_admission.province
 VALUES ('00d9e247-e326-423d-84a4-29fa72a5b14d', false, 'KN-01',
  'Christ Church Nichola Town',
  'c142d62e-3805-47b4-9469-921d565c0689');
INSERT INTO yacare_admission.province
 VALUES ('52e016b4-c7a2-404d-8fc2-f74016b48555', false, 'KN-02',
  'Saint Anne Sandy Point',
  'c142d62e-3805-47b4-9469-921d565c0689');
INSERT INTO yacare_admission.province
 VALUES ('2fc86415-b313-40b1-9268-0f8933eb0029', false, 'KN-03',
  'Saint George Basseterre',
  'c142d62e-3805-47b4-9469-921d565c0689');
INSERT INTO yacare_admission.province
 VALUES ('ba374dd7-9881-45d3-99d3-0f3d360731f3', false, 'KN-04',
  'Saint George Gingerland',
  'c142d62e-3805-47b4-9469-921d565c0689');
INSERT INTO yacare_admission.province
 VALUES ('6998db23-70d8-4d1d-a1ef-3e117f5ec563', false, 'KN-05',
  'Saint James Windward',
  'c142d62e-3805-47b4-9469-921d565c0689');
INSERT INTO yacare_admission.province
 VALUES ('c2608520-836c-4276-864a-c1825572c97d', false, 'KN-06',
  'Saint John Capisterre',
  'c142d62e-3805-47b4-9469-921d565c0689');
INSERT INTO yacare_admission.province
 VALUES ('e4c72808-71f6-454b-830d-39f34f5d3d39', false, 'KN-07',
  'Saint John Figtree',
  'c142d62e-3805-47b4-9469-921d565c0689');
INSERT INTO yacare_admission.province
 VALUES ('cba6f5de-239a-4445-9b93-02413ee67d15', false, 'KN-08',
  'Saint Mary Cayon',
  'c142d62e-3805-47b4-9469-921d565c0689');
INSERT INTO yacare_admission.province
 VALUES ('6081f4bf-c5fc-4831-ac09-cdeb364ca58d', false, 'KN-09',
  'Saint Paul Capisterre',
  'c142d62e-3805-47b4-9469-921d565c0689');
INSERT INTO yacare_admission.province
 VALUES ('40ffc58a-eddb-46d3-899d-3712ee7c9d28', false, 'KN-10',
  'Saint Paul Charlestown',
  'c142d62e-3805-47b4-9469-921d565c0689');
INSERT INTO yacare_admission.province
 VALUES ('7b9e0821-5180-4e0c-9325-0b8a7d865142', false, 'KN-11',
  'Saint Peter Basseterre',
  'c142d62e-3805-47b4-9469-921d565c0689');
INSERT INTO yacare_admission.province
 VALUES ('1d4e273e-86fe-433f-b58f-5e0c95bc303a', false, 'KN-12',
  'Saint Thomas Lowland',
  'c142d62e-3805-47b4-9469-921d565c0689');
INSERT INTO yacare_admission.province
 VALUES ('d98d2b1c-9547-4e87-805c-688ef8f41350', false, 'KN-13',
  'Saint Thomas Middle Island',
  'c142d62e-3805-47b4-9469-921d565c0689');
INSERT INTO yacare_admission.province
 VALUES ('bfe25735-92d7-4881-86d2-5e647b28fb7b', false, 'KN-15',
  'Trinity Palmetto Point',
  'c142d62e-3805-47b4-9469-921d565c0689');
INSERT INTO yacare_admission.province
 VALUES ('3890f9c9-6617-4add-acce-1f9fbca7396e', false, 'KP-CHA',
  'Chagang',
  '4d2a3414-aaaa-4f35-ad03-ac8d0b3075e7');
INSERT INTO yacare_admission.province
 VALUES ('49542b12-8681-4146-92de-0df4aa88ce38', false, 'KP-KAE',
  'Kaesong',
  '4d2a3414-aaaa-4f35-ad03-ac8d0b3075e7');
INSERT INTO yacare_admission.province
 VALUES ('d028c90c-7579-4d01-b4f7-115070a177dc', false, 'KP-KAN',
  'Kangwon',
  '4d2a3414-aaaa-4f35-ad03-ac8d0b3075e7');
INSERT INTO yacare_admission.province
 VALUES ('11ebbf0e-f6d3-4c02-9cb6-f5c8656dd591', false, 'KP-NAM',
  'Nampho',
  '4d2a3414-aaaa-4f35-ad03-ac8d0b3075e7');
INSERT INTO yacare_admission.province
 VALUES ('1175c5be-da20-48a5-9553-277217c2029b', false, 'KP-HAB',
  'North Hamgyong',
  '4d2a3414-aaaa-4f35-ad03-ac8d0b3075e7');
INSERT INTO yacare_admission.province
 VALUES ('4665df69-7ee6-4f95-9aad-2969da8c6b1d', false, 'KP-HWB',
  'North Hwanghae',
  '4d2a3414-aaaa-4f35-ad03-ac8d0b3075e7');
INSERT INTO yacare_admission.province
 VALUES ('90e5b205-0561-4aa3-842b-3c8aea2cd43f', false, 'KP-PYB',
  'North Pyongan',
  '4d2a3414-aaaa-4f35-ad03-ac8d0b3075e7');
INSERT INTO yacare_admission.province
 VALUES ('438ce881-4c2e-46f3-8769-3b925e1a4fbc', false, 'KP-PYO',
  'Pyongyang',
  '4d2a3414-aaaa-4f35-ad03-ac8d0b3075e7');
INSERT INTO yacare_admission.province
 VALUES ('a16cf65d-8427-4038-87bf-80a50de201d1', false, 'KP-NAJ',
  'Rason',
  '4d2a3414-aaaa-4f35-ad03-ac8d0b3075e7');
INSERT INTO yacare_admission.province
 VALUES ('9ccdb288-4c20-4674-acc8-8a159ce4a019', false, 'KP-YAN',
  'Ryanggang',
  '4d2a3414-aaaa-4f35-ad03-ac8d0b3075e7');
INSERT INTO yacare_admission.province
 VALUES ('e589993a-8c3c-4f41-bd12-c9ef12b4c58a', false, 'KP-HAN',
  'South Hamgyong',
  '4d2a3414-aaaa-4f35-ad03-ac8d0b3075e7');
INSERT INTO yacare_admission.province
 VALUES ('22895c46-1a68-47e0-9696-f443d5a0b7b4', false, 'KP-HWN',
  'South Hwanghae',
  '4d2a3414-aaaa-4f35-ad03-ac8d0b3075e7');
INSERT INTO yacare_admission.province
 VALUES ('de6e2fb9-0b20-4b91-81c6-5b2e70b30875', false, 'KP-PYN',
  'South Pyongan',
  '4d2a3414-aaaa-4f35-ad03-ac8d0b3075e7');
INSERT INTO yacare_admission.province
 VALUES ('60e2b94d-7d31-40d7-9956-eeedf667c804', false, 'KR-26',
  'Busan',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('0b1c0c5f-c0f7-482a-b696-8322a9742ca8', false, 'KR-43',
  'Chungcheongbuk-do',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('670d9757-4834-4543-af67-023c7be93f18', false, 'KR-44',
  'Chungcheongnam-do',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('e91e48ee-d87b-4b89-965c-04dead1616c3', false, 'KR-27',
  'Daegu',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('5eec54da-738a-4c84-b2af-6b338324fbd8', false, 'KR-30',
  'Daejeon',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('395ab437-efea-484f-9be4-5b2f8d37078a', false, 'KR-42',
  'Gangwon-do',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('e756c63e-97f6-49fb-8f09-682cc7733230', false, 'KR-29',
  'Gwangju',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('d57718c1-1537-4893-bd2e-67be093f2d75', false, 'KR-41',
  'Gyeonggi-do',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('c28ff2e1-84e4-4dfa-bada-a1f6e3e43fa3', false, 'KR-47',
  'Gyeongsangbuk-do',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('5928ab26-dab6-428b-95af-2cf0bc517b8d', false, 'KR-48',
  'Gyeongsangnam-do',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('8310a854-40a8-454f-88e9-5ffe5ceb247f', false, 'KR-28',
  'Incheon',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('3736fa97-1acb-464d-82ff-c6a9449c6f83', false, 'KR-49',
  'Jeju-do',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('0d8b5505-f33c-44f5-bd5e-422044f79273', false, 'KR-45',
  'Jeollabuk-do',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('b3bca6e2-19cc-4e3b-8227-11e571d0cd8f', false, 'KR-46',
  'Jeollanam-do',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('441094f3-d8ed-470c-955e-9dd576b035d7', false, 'KR-11',
  'Seoul',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('5a714357-97cc-4a98-909e-86d496f4847f', false, 'KR-31',
  'Ulsan',
  'ab7e0d41-67a1-4528-b436-70c13e4c786d');
INSERT INTO yacare_admission.province
 VALUES ('2a3a3cb5-f28d-440a-8946-cfde1b7edf90', false, 'KW-AH',
  'Al Ahmadi',
  'd66977be-058e-474f-957d-753e94335925');
INSERT INTO yacare_admission.province
 VALUES ('fde4140b-1e4e-480b-9b0e-ff10856afbd5', false, 'KW-KU',
  'Al Asimah',
  'd66977be-058e-474f-957d-753e94335925');
INSERT INTO yacare_admission.province
 VALUES ('cda212d9-005a-49b1-a977-45e79ed0bad7', false, 'KW-FA',
  'Al Farwaniyah',
  'd66977be-058e-474f-957d-753e94335925');
INSERT INTO yacare_admission.province
 VALUES ('4102d726-a6ab-4e87-b0bf-62dd93be8bfe', false, 'KW-JA',
  'Al Jahra',
  'd66977be-058e-474f-957d-753e94335925');
INSERT INTO yacare_admission.province
 VALUES ('17d3a0df-153f-4a53-a869-227bf8f36e69', false, 'KW-HA',
  'Hawalli',
  'd66977be-058e-474f-957d-753e94335925');
INSERT INTO yacare_admission.province
 VALUES ('3c6afc7a-7470-4a70-b806-d119bda89228', false, 'KW-MU',
  'Mubarak Al-Kabeer',
  'd66977be-058e-474f-957d-753e94335925');
INSERT INTO yacare_admission.province
 VALUES ('dc88f7d8-1e38-4a71-9105-c6e54aef2282', false, 'KY-01',
  'Bodden Town',
  '46dd7a4e-fe56-4701-8f04-c98a19d41f44');
INSERT INTO yacare_admission.province
 VALUES ('68881e88-442e-402f-9bb6-36d350ee01bd', false, 'KY-02',
  'Cayman Brac',
  '46dd7a4e-fe56-4701-8f04-c98a19d41f44');
INSERT INTO yacare_admission.province
 VALUES ('4b8677d7-a203-46bc-ac75-753df0c8d8ea', false, 'KY-03',
  'East End',
  '46dd7a4e-fe56-4701-8f04-c98a19d41f44');
INSERT INTO yacare_admission.province
 VALUES ('46a3c13f-6370-4a38-8e7c-8dde2ea494c7', false, 'KY-04',
  'George Town',
  '46dd7a4e-fe56-4701-8f04-c98a19d41f44');
INSERT INTO yacare_admission.province
 VALUES ('cf7cbaf9-0414-41db-bc4f-70147502766c', false, 'KY-05',
  'Little Cayman',
  '46dd7a4e-fe56-4701-8f04-c98a19d41f44');
INSERT INTO yacare_admission.province
 VALUES ('3806bdb2-cc6e-4aec-bbd3-891d0c58575e', false, 'KY-06',
  'North Side',
  '46dd7a4e-fe56-4701-8f04-c98a19d41f44');
INSERT INTO yacare_admission.province
 VALUES ('0d1b9549-df24-40b1-ae52-1373caaa19f5', false, 'KY-07',
  'West Bay',
  '46dd7a4e-fe56-4701-8f04-c98a19d41f44');
INSERT INTO yacare_admission.province
 VALUES ('4a81a867-d3db-4f82-8be7-61c9e9dde22e', false, 'KZ-AKM',
  'Акмолинская область',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('0c400b2d-f20f-473b-b8d3-727b52b71b2e', false, 'KZ-AKT',
  'Актюбинская область',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('df0f0eee-637c-46b3-b1f1-51d8350a4c9e', false, 'KZ-ALM',
  'Алматинская область',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('911a7c1e-fada-4b64-b30b-651ca80e1b7e', false, 'KZ-ATY',
  'Атырауская область',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('044b9556-6266-4f1b-8a83-d6704bf71dcd', false, 'LK-42',
  'Kilinochchi',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('8644ca2c-fc12-4315-87e9-c29dd6b38c90', false, 'KZ-VOS',
  'Восточно-Казахстанская область',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('940da5ea-b95f-44da-9518-d25186bfa660', false, 'KZ-ALA',
  'город Алматы',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('8f3571b9-b130-460e-b63f-3c0bda4b7f54', false, 'KZ-AST',
  'город Астана',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('0f32a081-cd3d-4737-ad45-c3ab24d98404', false, 'KZ-ZHA',
  'Жамбылская область',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('3a0d885d-a780-4ee8-bc88-1aa5a6ec4175', false, 'KZ-ZAP',
  'Западно-Казахстанская область',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('2df7352e-edd0-4b2e-99d6-fc2eb900bf41', false, 'KZ-KAR',
  'Карагандинская область',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('84c5ff89-1d30-4912-b4bb-d4c47e63d226', false, 'KZ-KUS',
  'Костанайская область',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('0626496b-71c8-4717-8d76-431a0c128016', false, 'KZ-KZY',
  'Кызылординская область',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('e96582e7-2b52-4707-92cc-f43f50ce311b', false, 'KZ-MAN',
  'Мангистауская область',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('532eb78f-8c57-4d85-9dc2-d97079fa2372', false, 'KZ-PAV',
  'Павлодарская область',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('d91640ad-57f7-44a5-8d75-c643ddb17d6f', false, 'KZ-SEV',
  'Северо-Казахстанская область',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('31834622-4027-4dfe-b881-00a2a8b0d9e5', false, 'KZ-YUZ',
  'Южно-Казахстанская Область',
  '3b71591a-dfc9-45fc-8eea-2101fe981904');
INSERT INTO yacare_admission.province
 VALUES ('c4b7c1b5-b23d-4084-b4ec-7b70a8bf3d3f', false, 'LA-AT',
  'Attapu',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('4df1c413-d963-4cd3-8b09-9bfb9aea9800', false, 'LA-BK',
  'Bokèo',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('3da5510c-d5f6-451a-9492-c5c5fdad0d0a', false, 'LA-BL',
  'Bolikhamxai',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('7f3a01af-c0df-4bcc-a697-5f7c874f5bb5', false, 'LA-CH',
  'Champasak',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('3028a96d-d7a9-48d8-bd4c-09eb509891b0', false, 'LA-HO',
  'Houaphan',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('41bb608d-0232-4894-b163-0d9a499d6b84', false, 'LA-KH',
  'Khammouan',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('bec03e6b-6861-456a-84af-94d2076926c3', false, 'LA-LM',
  'Louang Namtha',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('d5b7bc7b-2cf4-4e5e-b8ee-1240aa81e4f5', false, 'LA-LP',
  'Louangphabang',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('f85317d8-7a06-4475-b60b-f7b6220db5a2', false, 'LA-OU',
  'Oudômxai',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('26d86d29-f0f4-41f9-a337-d17cf1490122', false, 'LA-PH',
  'Phôngsali',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('63fb2e13-6b30-4a8b-ab79-2866743f854b', false, 'LA-XA',
  'Sainyabuli',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('4bdd481c-1b69-4085-9933-cc2832a23d6f', false, 'LA-SL',
  'Salavan',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('a711a699-d6ac-4f3d-8018-28ec00e0b096', false, 'LA-SV',
  'Savannakhét',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('f18bbe50-fe0e-40b8-85c1-3bbc38bf07e0', false, 'LA-XE',
  'Sekong',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('503b0ea3-7ee5-48be-a5f3-347d366fa4d0', false, 'LA-VT',
  'Vientiane Prefecture',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('ccfd2ab3-b241-4e06-95fb-2dd7fbbf1b7d', false, 'LA-VI',
  'Vientiane Province',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('f69e2646-f85f-4559-bea4-50603c1cc59e', false, 'LA-XN',
  'Xaisomboun',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('3dcef340-0190-4e43-b738-da8456141633', false, 'LA-XI',
  'Xiangkhouang',
  '707697a4-7d70-4fdf-98fb-6ed381ae8832');
INSERT INTO yacare_admission.province
 VALUES ('99713cfd-8faa-4f12-a171-a6b55878281d', false, 'LB-BA',
  'Beirut',
  'c8e1f9a0-ef27-4f0d-bad9-2f142ae55aab');
INSERT INTO yacare_admission.province
 VALUES ('e46aaaa1-9f63-48ca-9f4e-b37c6bd04e2e', false, 'LB-BI',
  'Beqaa',
  'c8e1f9a0-ef27-4f0d-bad9-2f142ae55aab');
INSERT INTO yacare_admission.province
 VALUES ('52a6b24d-b414-4d97-ab25-c62aa86254e8', false, 'LB-JL',
  'Mount Lebanon',
  'c8e1f9a0-ef27-4f0d-bad9-2f142ae55aab');
INSERT INTO yacare_admission.province
 VALUES ('fd30336c-6cdd-4e97-80ce-a654810e0a3e', false, 'LB-NA',
  'Nabatieh',
  'c8e1f9a0-ef27-4f0d-bad9-2f142ae55aab');
INSERT INTO yacare_admission.province
 VALUES ('04a652c4-6d49-4bbb-ad19-2a4f526dc375', false, 'LB-AS',
  'North',
  'c8e1f9a0-ef27-4f0d-bad9-2f142ae55aab');
INSERT INTO yacare_admission.province
 VALUES ('44c51e4b-0e99-4cb7-99f6-2107ab8378a7', false, 'LB-JA',
  'South',
  'c8e1f9a0-ef27-4f0d-bad9-2f142ae55aab');
INSERT INTO yacare_admission.province
 VALUES ('0808481d-e345-408a-9de0-814735179ca5', false, 'LC11',
  'Dennery',
  '3ed281ed-32fb-459a-a942-8db47d38ebf0');
INSERT INTO yacare_admission.province
 VALUES ('fdd06ab1-0957-4ac6-a649-6e26240915db', false, 'LI-01',
  'Balzers',
  'f47b524a-27f6-431d-9108-6f13f9fca318');
INSERT INTO yacare_admission.province
 VALUES ('f99ea77f-c8ea-4105-bc93-2649e3b8c6ce', false, 'LI-02',
  'Eschen',
  'f47b524a-27f6-431d-9108-6f13f9fca318');
INSERT INTO yacare_admission.province
 VALUES ('015613cd-b60e-4436-a760-3b02148e004c', false, 'LI-03',
  'Gamprin',
  'f47b524a-27f6-431d-9108-6f13f9fca318');
INSERT INTO yacare_admission.province
 VALUES ('5f92745d-d565-418a-a3ca-99955b1266bd', false, 'LI-04',
  'Mauren',
  'f47b524a-27f6-431d-9108-6f13f9fca318');
INSERT INTO yacare_admission.province
 VALUES ('431fcac7-727e-40bf-bbbc-cb2027ffa235', false, 'LI-05',
  'Planken',
  'f47b524a-27f6-431d-9108-6f13f9fca318');
INSERT INTO yacare_admission.province
 VALUES ('bd90f95d-bd15-4fe8-865b-b559bee3100b', false, 'LI-06',
  'Ruggell',
  'f47b524a-27f6-431d-9108-6f13f9fca318');
INSERT INTO yacare_admission.province
 VALUES ('14b9477b-e5f6-43fb-8823-11cd5cb97ebe', false, 'LI-07',
  'Schaan',
  'f47b524a-27f6-431d-9108-6f13f9fca318');
INSERT INTO yacare_admission.province
 VALUES ('f00e3e25-256a-4494-af5e-5e3f9d41eb5f', false, 'LI-08',
  'Schellenberg',
  'f47b524a-27f6-431d-9108-6f13f9fca318');
INSERT INTO yacare_admission.province
 VALUES ('0aa93ec4-27b8-4a25-8d86-9b9a5266df15', false, 'LI-09',
  'Triesen',
  'f47b524a-27f6-431d-9108-6f13f9fca318');
INSERT INTO yacare_admission.province
 VALUES ('b528ecce-e2c6-4ae2-8a6c-e32ff626347e', false, 'LI-10',
  'Triesenberg',
  'f47b524a-27f6-431d-9108-6f13f9fca318');
INSERT INTO yacare_admission.province
 VALUES ('f0359528-842e-4a0c-82a4-18b1896f5859', false, 'LI-11',
  'Vaduz',
  'f47b524a-27f6-431d-9108-6f13f9fca318');
INSERT INTO yacare_admission.province
 VALUES ('112169ee-1de6-4f3a-bbd2-b78f88c12631', false, 'LK-52',
  'Ampara',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('011b95f7-ff19-44c1-aba0-9ca2be80b43f', false, 'LK-71',
  'Anuradhapura',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('7af1edd9-d421-4e47-8a55-5d24a031dea7', false, 'LK-81',
  'Badulla',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('125f419a-5c46-4680-a69c-d8dfeec45667', false, 'LK-51',
  'Batticaloa',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('3433c12c-84e8-4448-8c77-11d73a015f2c', false, 'LK-11',
  'Colombo',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('2e535122-851b-4663-b570-2c891a63b04b', false, 'LK-31',
  'Galle',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('2092289a-30ea-41aa-b524-b856f8a4fa62', false, 'LK-12',
  'Gampaha',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('f1734ce3-cfe7-4a68-baa5-c5251db71a05', false, 'LK-33',
  'Hambantota',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('225debbb-54a5-452f-a595-4cb6e88a888a', false, 'LK-41',
  'Jaffna',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('f5a83a75-042d-4f0c-9f34-2d969d792e3d', false, 'LK-13',
  'Kalutara',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('47930f0f-d697-4ac3-aba5-ad736bbfc12d', false, 'LK-21',
  'Kandy',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('e7493ec9-db02-4692-a8e2-2656d2e1f1f4', false, 'LK-92',
  'Kegalle',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('4f1f7088-94a6-45a7-b752-20ea4af546f0', false, 'LK-61',
  'Kurunegala',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('a3a06c35-f05a-4e5b-8306-466f408b2f08', false, 'LK-43',
  'Mannar',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('24635ea5-47d2-4e7c-b3fb-970c98566e1e', false, 'LK-22',
  'Matale',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('c487e30c-71bc-4eb5-a1f5-8a374cef1257', false, 'LK-32',
  'Matara',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('fb4debf0-efb0-4333-9619-ab1b85f944e1', false, 'LK-82',
  'Moneragala',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('13bb5a46-9e62-4cd4-8cf8-0e5be1672e51', false, 'LK-45',
  'Mullaitivu',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('2e983e8d-515a-4ec2-833c-2e3e5733dcd2', false, 'LK-23',
  'Nuwara Eliya',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('b557db80-fd39-40f8-8443-5291992835b7', false, 'LK-72',
  'Polonnaruwa',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('c0244b39-c602-420f-96de-036869cf0ab5', false, 'LK-62',
  'Puttalam',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('4c623fe4-60ab-4439-a32d-251a9a633693', false, 'LK-91',
  'Ratnapura',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('490c8b9f-60c4-4a9d-8c74-0e35293dd06e', false, 'LK-53',
  'Trincomalee',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('c16aee3c-94c2-4062-82db-b911d13fba8b', false, 'LK-44',
  'Vavuniya',
  '6259b0aa-6ef8-4840-bae2-0ff9e50ebe8f');
INSERT INTO yacare_admission.province
 VALUES ('75f67fa6-aae9-4126-b5d0-64be25f7f4f6', false, 'LR-BM',
  'Bomi',
  '22434b76-a6e0-49e1-9e61-4d1bb3e013a6');
INSERT INTO yacare_admission.province
 VALUES ('d908e7b9-0efb-4c92-b006-a78520057c1f', false, 'LR-BG',
  'Bong',
  '22434b76-a6e0-49e1-9e61-4d1bb3e013a6');
INSERT INTO yacare_admission.province
 VALUES ('0d05ab4c-3b62-41f3-8053-1e37162a95ff', false, 'LR-GP',
  'Gbarpolu',
  '22434b76-a6e0-49e1-9e61-4d1bb3e013a6');
INSERT INTO yacare_admission.province
 VALUES ('3bc27fe0-5d0b-4728-8508-481c14c84c6f', false, 'LR-GB',
  'Grand Bassa',
  '22434b76-a6e0-49e1-9e61-4d1bb3e013a6');
INSERT INTO yacare_admission.province
 VALUES ('5129d64b-f714-4364-bd02-d8e69895faf9', false, 'LR-CM',
  'Grand Cape Mount',
  '22434b76-a6e0-49e1-9e61-4d1bb3e013a6');
INSERT INTO yacare_admission.province
 VALUES ('1da23c1c-fe9c-40bb-9c2b-9b5a74309d85', false, 'LR-GG',
  'Grand Gedeh',
  '22434b76-a6e0-49e1-9e61-4d1bb3e013a6');
INSERT INTO yacare_admission.province
 VALUES ('e5734a0a-d0b8-440d-b21f-c65e534d9219', false, 'LR-GK',
  'Grand Kru',
  '22434b76-a6e0-49e1-9e61-4d1bb3e013a6');
INSERT INTO yacare_admission.province
 VALUES ('cd2869f6-db40-47ea-8fb6-83faa4b8d645', false, 'LR-LO',
  'Lofa',
  '22434b76-a6e0-49e1-9e61-4d1bb3e013a6');
INSERT INTO yacare_admission.province
 VALUES ('290a3885-e117-4fa4-8f96-951704fb2261', false, 'LR-MG',
  'Margibi',
  '22434b76-a6e0-49e1-9e61-4d1bb3e013a6');
INSERT INTO yacare_admission.province
 VALUES ('9b520c73-b441-44be-8220-559374335516', false, 'LR-MY',
  'Maryland',
  '22434b76-a6e0-49e1-9e61-4d1bb3e013a6');
INSERT INTO yacare_admission.province
 VALUES ('51523da4-9ca9-47f7-a3b6-f2de23b46984', false, 'LR-MO',
  'Montserrado',
  '22434b76-a6e0-49e1-9e61-4d1bb3e013a6');
INSERT INTO yacare_admission.province
 VALUES ('291f1a75-b3e2-4fab-85bb-7b1789def19d', false, 'LR-NI',
  'Nimba',
  '22434b76-a6e0-49e1-9e61-4d1bb3e013a6');
INSERT INTO yacare_admission.province
 VALUES ('1092f526-bb19-44b8-96b0-2b74b34a585f', false, 'LR-RG',
  'River Gee',
  '22434b76-a6e0-49e1-9e61-4d1bb3e013a6');
INSERT INTO yacare_admission.province
 VALUES ('0458e190-8b33-434e-91de-5e9044f62c8c', false, 'LR-RI',
  'Rivercess',
  '22434b76-a6e0-49e1-9e61-4d1bb3e013a6');
INSERT INTO yacare_admission.province
 VALUES ('531d17ca-1d1d-4b00-b38b-1ab8bd94027b', false, 'LR-SI',
  'Sinoe',
  '22434b76-a6e0-49e1-9e61-4d1bb3e013a6');
INSERT INTO yacare_admission.province
 VALUES ('5cf4791c-db16-43ca-abc1-29875be5019f', false, 'LS-D',
  'Berea',
  '59a03cdf-4380-47da-921e-f26c5cf5ffd9');
INSERT INTO yacare_admission.province
 VALUES ('a975e6a3-83eb-4891-b56b-1cd8a6e37ee8', false, 'LS-B',
  'Butha-Buthe',
  '59a03cdf-4380-47da-921e-f26c5cf5ffd9');
INSERT INTO yacare_admission.province
 VALUES ('21cf1f49-3565-4c44-8fbf-2920dadd145b', false, 'LS-C',
  'Leribe',
  '59a03cdf-4380-47da-921e-f26c5cf5ffd9');
INSERT INTO yacare_admission.province
 VALUES ('544871e5-86bd-4fa8-99ae-21ca368916ee', false, 'LS-E',
  'Mafeteng',
  '59a03cdf-4380-47da-921e-f26c5cf5ffd9');
INSERT INTO yacare_admission.province
 VALUES ('8c219848-5f65-44ff-9485-0dcd15930e3e', false, 'LS-A',
  'Maseru',
  '59a03cdf-4380-47da-921e-f26c5cf5ffd9');
INSERT INTO yacare_admission.province
 VALUES ('24b46a65-9bae-4a56-a92a-3dd4e420433f', false, 'LS-F',
  'Mohale''s Hoek',
  '59a03cdf-4380-47da-921e-f26c5cf5ffd9');
INSERT INTO yacare_admission.province
 VALUES ('5c100bd5-2879-4216-b7b0-10885a151feb', false, 'LS-J',
  'Mokhotlong',
  '59a03cdf-4380-47da-921e-f26c5cf5ffd9');
INSERT INTO yacare_admission.province
 VALUES ('e25396b6-1668-4776-8094-a49db3087b6c', false, 'LS-H',
  'Qacha''s Nek',
  '59a03cdf-4380-47da-921e-f26c5cf5ffd9');
INSERT INTO yacare_admission.province
 VALUES ('f606cd4f-65d3-4233-a7ff-f3c66d03eb54', false, 'LS-G',
  'Quthing',
  '59a03cdf-4380-47da-921e-f26c5cf5ffd9');
INSERT INTO yacare_admission.province
 VALUES ('fd7b4e65-0538-4f85-94ca-aac913325a26', false, 'LS-K',
  'Thaba-Tseka',
  '59a03cdf-4380-47da-921e-f26c5cf5ffd9');
INSERT INTO yacare_admission.province
 VALUES ('6ea92c2a-1593-4e7e-933a-32d3547ae89b', false, 'LT-AL',
  'Alytaus',
  '3e17eeed-3b39-4867-84aa-d9a229184487');
INSERT INTO yacare_admission.province
 VALUES ('9b9e8a6b-c248-46fa-aad4-b5afece8433f', false, 'LT-KU',
  'Kauno',
  '3e17eeed-3b39-4867-84aa-d9a229184487');
INSERT INTO yacare_admission.province
 VALUES ('f5b9e71d-745c-4364-b034-fce660cde400', false, 'LT-KL',
  'Klaipėdos',
  '3e17eeed-3b39-4867-84aa-d9a229184487');
INSERT INTO yacare_admission.province
 VALUES ('fb4af718-de57-4e2e-b2bb-d965d4f8ae93', false, 'LT-MR',
  'Marijampolės',
  '3e17eeed-3b39-4867-84aa-d9a229184487');
INSERT INTO yacare_admission.province
 VALUES ('449256ef-4461-4447-bcc5-8ecc0bd33513', false, 'LT-PN',
  'Panevėžio',
  '3e17eeed-3b39-4867-84aa-d9a229184487');
INSERT INTO yacare_admission.province
 VALUES ('4dba29b9-07c8-4ead-bb89-616b740f710d', false, 'LT-SA',
  'Šiaulių',
  '3e17eeed-3b39-4867-84aa-d9a229184487');
INSERT INTO yacare_admission.province
 VALUES ('96222a50-7623-4988-b905-3f2d26952779', false, 'LT-TA',
  'Tauragės',
  '3e17eeed-3b39-4867-84aa-d9a229184487');
INSERT INTO yacare_admission.province
 VALUES ('2f40b514-3dab-4ac5-9d15-518dd1478f9c', false, 'LT-TE',
  'Telšių',
  '3e17eeed-3b39-4867-84aa-d9a229184487');
INSERT INTO yacare_admission.province
 VALUES ('1d4d3016-b5d7-47fc-9689-a6844c1e8a30', false, 'LT-UT',
  'Utenos',
  '3e17eeed-3b39-4867-84aa-d9a229184487');
INSERT INTO yacare_admission.province
 VALUES ('28dcb031-f209-4ca3-bef5-b145772db6ba', false, 'LT-VL',
  'Vilniaus',
  '3e17eeed-3b39-4867-84aa-d9a229184487');
INSERT INTO yacare_admission.province
 VALUES ('213140a7-b78b-4964-bbf7-2fa5578830f4', false, 'LU-D',
  'Diekirch',
  '918527ae-37f1-4eb2-853a-4e9c19a28fdd');
INSERT INTO yacare_admission.province
 VALUES ('d263ec02-5b6a-4786-84f0-13d641e7763d', false, 'LU-G',
  'Grevenmacher',
  '918527ae-37f1-4eb2-853a-4e9c19a28fdd');
INSERT INTO yacare_admission.province
 VALUES ('d604611e-ceb7-414e-ae5a-cf156a60f430', false, 'LU-L',
  'Luxembourg',
  '918527ae-37f1-4eb2-853a-4e9c19a28fdd');
INSERT INTO yacare_admission.province
 VALUES ('0fea3e41-fa2c-4412-9688-c8a8b329220f', false, 'LV-AI',
  'Aizkraukles',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('99f0e645-7932-4a9a-8734-c4226b5c0b28', false, 'LV-AL',
  'Alūksnes',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('27cbb3f8-d98f-4d8c-8b40-032ee0acf39c', false, 'LV-BL',
  'Balvu',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('41949663-959b-4aa5-8443-4a6ce845c55a', false, 'LV-BU',
  'Bauskas',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('a0841c58-a40a-485f-8218-8a4463d1c183', false, 'LV-CE',
  'Cēsu',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('420c44b6-c772-4477-bde7-8ffe58a516f5', false, 'LV-DA',
  'Daugavpils',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('18d07bfb-367a-4a68-a254-e4d56a3641f9', false, 'LV-DGV',
  'Daugavpils',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('6a4328a2-8963-4db8-abf3-0274128ab576', false, 'LV-DO',
  'Dobeles',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('229e2f46-d4ce-42bb-8495-776f1739cd51', false, 'LV-GU',
  'Gulbenes',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('2b16ed8a-c6e3-48dc-a026-dcf045023773', false, 'LV-JK',
  'Jēkabpils',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('2e902b90-80ec-4ba5-bf45-56dcacb3da20', false, 'LV-JEL',
  'Jelgava',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('66c148c5-8b05-41f8-a480-d68c1bbd8f96', false, 'LV-JL',
  'Jelgavas',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('67e14984-e105-4b22-9037-93872ee5d773', false, 'LV-JUR',
  'Jūrmala',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('e0ae42df-827e-4777-9d74-037779682f37', false, 'LV-KR',
  'Krāslavas',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('8a78070c-5841-43b9-8d2b-65034667c25d', false, 'LV-KU',
  'Kuldīgas',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('1c457f16-a407-4795-902c-cb1ffadca424', false, 'LV-LE',
  'Liepājas',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('a524dd27-21e0-4f01-b8e5-019a79235db4', false, 'LV-LPX',
  'Liepājas',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('7f03dba3-b98c-488c-a501-9e09b7f15fb7', false, 'LV-LM',
  'Limbažu',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('f5fb7ba3-318e-473a-9d29-c487c33115a9', false, 'LV-LU',
  'Ludzas',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('e6e96616-fb81-4fda-913b-c352181aa2db', false, 'LV-MA',
  'Madonas',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('1c5bf8da-df43-4c24-89e4-b9b912bb7279', false, 'LV-OG',
  'Ogres',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('9f16ca5a-38f5-46bb-8436-0aca583c9bcb', false, 'LV-PR',
  'Preiļu',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('af18f1dd-9be0-4f2b-b6d7-19d528a9d533', false, 'LV-REZ',
  'Rezekne',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('49cebd44-d194-425c-8137-f871eb20a2e9', false, 'LV-RE',
  'Rēzeknes',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('eb80e460-f888-46e5-8ad9-04cbd1e51297', false, 'LV-RIX',
  'Rīga',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('66f2a1de-e286-4143-8af8-14fa29329b2c', false, 'LV-RI',
  'Rīgas',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('ea0bb6f0-bee5-48a2-9651-f7fddd88f3f3', false, 'LV-SA',
  'Saldus',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('a556a1bd-d147-4eba-aa91-d59d4a014272', false, 'LV-TA',
  'Talsu',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('a779672f-5262-4427-a6bb-ea2c41078f14', false, 'LV-TU',
  'Tukuma',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('617230fe-4f13-4b91-aa3c-5e36fa3176ea', false, 'LV-VK',
  'Valkas',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('7d42f257-4cde-4b0d-8f93-fe21a25cdf7e', false, 'LV-VM',
  'Valmieras',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('67837873-a7c6-4846-8386-7194bfbfdabb', false, 'LV-VE',
  'Ventspils',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('1990df90-49d0-48b0-9b98-75bdff1e0ac0', false, 'LV-VEN',
  'Ventspils',
  '074ad336-4108-444a-b867-3306cf5a720d');
INSERT INTO yacare_admission.province
 VALUES ('6d24b381-c825-42ed-b154-17a8abef2f79', false, 'LY-BU',
  'Al Butnan',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('95ad5b98-db16-4358-8919-bc8729c530c0', false, 'LY-JA',
  'Al Jabal al Akhdar',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('637634ab-2669-48b3-a531-1655d2e7d9d1', false, 'LY-JG',
  'Al Jabal al Gharbi',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('0015a10c-07e0-4bf0-9784-cad76a42812a', false, 'LY-JI',
  'Al Jifarah',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('11b577ed-20aa-481e-8419-d917f31540f6', false, 'LY-JU',
  'Al Jufrah',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('c823190f-a4f7-42e7-9e87-750518dee700', false, 'LY-KF',
  'Al Kufrah',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('9583c8f4-e151-4caf-a866-540f5f620d43', false, 'LY-MJ',
  'Al Marj',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('d014f2ac-bc15-4d47-a410-d31df2cae45b', false, 'LY-MB',
  'Al Marqab',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('3440a939-cc3e-4e7e-8924-a80ee8cbe9b7', false, 'LY-WA',
  'Al Wahat',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('dd722353-8f35-4396-9805-167180fcfa50', false, 'LY-NQ',
  'An Nuqat al Khams',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('2e7f933e-1be7-4a7b-b602-9d0881083ef8', false, 'LY-ZA',
  'Az Zawiyah',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('947ac9a1-9a50-4dd1-8826-8550b7f2116a', false, 'LY-BA',
  'Banghazi',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('23ab8128-88d0-4351-b2c8-f9c330e5e65a', false, 'LY-DR',
  'Darnah',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('08fa3320-ccb0-4db3-9f16-89f03e7fa3aa', false, 'LY-GT',
  'Ghat',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('e7ee2830-1e49-44f7-a8a8-cea91876f1fc', false, 'LY-MI',
  'Misratah',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('58e00eb3-d439-43c5-929e-81a9d264d452', false, 'LY-MQ',
  'Murzuq',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('c9df4f29-a5eb-4824-9685-1baa98d03c09', false, 'LY-NL',
  'Nalut',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('7840ed87-c746-491e-bd0b-bdfdd97574dc', false, 'LY-SB',
  'Sabha',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('eb0fd2f4-287f-44f4-9daf-350272a6f521', false, 'LY-SR',
  'Surt',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('42be3982-7783-4e9c-9106-ddca33acc6f8', false, 'LY-TB',
  'Tarabulus',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('119335c5-d70e-4db3-afd9-a5a8c0eaafe8', false, 'LY-WD',
  'Wadi Al Hayaa',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('40c3e303-ffa3-4043-8304-7b6ca49f4063', false, 'LY-WS',
  'Wadi ash Shati',
  '9a821f05-bd9f-4467-a7c3-870e34a57847');
INSERT INTO yacare_admission.province
 VALUES ('f3e1cca3-99d7-410a-8bc4-cd4063ca849b', false, 'MA-AGD',
  'Agadir Ida-Outanane',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('3a1568d5-3d57-42dc-8045-ae32cec4980f', false, 'MA-HAO',
  'Al Haouz',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('4939973a-073c-4a95-8c74-887b28707e4f', false, 'MA-HOC',
  'Al-Hoceima',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('df625b21-94fa-40a5-aee5-c446887d4976', false, 'MA-AOU',
  'Aousserd',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('22cb9fbb-6450-40a4-bd67-5fc43007822e', false, 'MA-ASZ',
  'Assa-Zag',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('02d51fb2-0db2-4c40-9601-d4c5c9a82648', false, 'MA-AZI',
  'Azilal',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('671a309c-bf20-47ee-97b4-364f946c3889', false, 'MA-BES',
  'Ben Slimane',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('0f693faf-17aa-43ff-b457-5c99b874c217', false, 'MA-BEM',
  'Beni Mellal',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('0c1e60b3-6e1b-4218-b198-9386d88c3406', false, 'MA-BER',
  'Berkane',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('b6729c92-43be-4894-99c8-d10c31b311bf', false, 'MA-BOD',
  'Boujdour',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('7e4f1633-f1bf-4d80-b92f-d7fc066bf4cc', false, 'MA-BOM',
  'Boulmane',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('231edb80-333c-4b86-b87b-36482e66c30f', false, 'MA-CAS',
  'Casablanca',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('0e0ee800-ed0d-491d-b773-b298f6f0443c', false, 'MA-CHE',
  'Chefchaouen',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('512ebccd-c0ea-4b12-8056-e93a2c21a395', false, 'MA-CHI',
  'Chichaoua',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('35fea53f-acd7-4efa-8a4e-4e4ff7946f93', false, 'MA-CHT',
  'Chtouka-Aït Baha',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('3e096528-d240-441f-a809-eaca9f3d9b05', false, 'MA-HAJ',
  'El Hajeb',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('9d06ed62-d56d-47c5-a213-044cf64d37d9', false, 'MA-JDI',
  'El Jadida',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('8c869c24-cb3b-487d-9d99-f4ac04766dc6', false, 'MA-ERR',
  'Errachidia',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('316e6bc1-885b-47fc-98d2-640e3db5231f', false, 'MA-ESI',
  'Essaouira',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('44ab5430-086a-44d9-9117-dd04a0e5c9d9', false, 'MA-ESM',
  'Es-Semara',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('16c25d63-4ce2-4744-bd89-2306ccbed4af', false, 'MD-HI',
  'Hînceşti',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('2c33d9d7-a358-40b7-b251-aa89529d73e4', false, 'MA-FAH',
  'Fahs-Beni Makada',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('6c9c080b-1c14-4011-8a93-8d74b37e4067', false, 'MA-FES',
  'Fès-Dar-Dbibegh',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('d80b3158-1b2a-42f3-87cb-65a33b54e438', false, 'MA-FIG',
  'Figuig',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('f3bd0a09-011b-4c7f-84ad-3ae90437cfdb', false, 'MA-GUE',
  'Guelmim',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('50c563c6-dec5-4dfe-a9db-5206d6eebd5c', false, 'MA-IFR',
  'Ifrane',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('1d5fd848-ad5e-496c-90a1-fc6df1a3f7aa', false, 'MA-INE',
  'Inezgane-Aït Melloul',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('3e8448d4-6e79-4fd9-8ae9-317405fa822e', false, 'MA-JRA',
  'Jerada',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('e77231cd-c0bc-4264-9196-a336f16b55ad', false, 'MA-KES',
  'Kelâat Es-Sraghna',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('2b82858b-1b99-4d4b-9ab8-d39efe66feac', false, 'MA-KEN',
  'Kénitra',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('484f8274-af27-4cee-b4d9-4ac19c0be661', false, 'MA-KHE',
  'Khémisset',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('71cf1bfa-667c-42b9-9caa-29115667c7b9', false, 'MA-KHN',
  'Khénifra',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('62c6a019-1757-42c0-88bb-e579da48e692', false, 'MA-KHO',
  'Khouribga',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('987cbf39-0f17-4586-898c-5e71cab71bfe', false, 'MA-LAA',
  'Laâyoune',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('02ecb13a-4889-4b46-996e-2bd7be61584b', false, 'MA-LAR',
  'Larache',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('0e279e7c-cc76-4890-8038-4767d2ada85f', false, 'MA-MMD',
  'Marrakech-Médina',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('7544cd96-b0aa-43ac-bf14-bc0b55f96cfd', false, 'MA-MMN',
  'Marrakech-Ménara',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('49b8dd97-c1c4-4c29-8d5e-77579e010c28', false, 'MA-MED',
  'Médiouna',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('133c3d1c-69de-4008-8f14-7a9f95bdcc76', false, 'MA-MEK',
  'Meknès',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('0ca863e8-c743-45ac-bc12-c2e824332262', false, 'MA-MOH',
  'Mohammédia',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('7c07a483-b93e-4b8a-8db1-9c0ded5b9f4b', false, 'MA-MOU',
  'Moulay Yacoub',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('6d9c3ae6-c57d-4f62-8925-86b551dbc7de', false, 'MA-NAD',
  'Nador',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('0dac2e4c-499a-4663-a0a3-05c483d3d586', false, 'MA-NOU',
  'Nouaceur',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('78aec33c-29e0-4cfe-86d3-0a536aa279db', false, 'MA-OUA',
  'Ouarzazate',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('800aa472-61ef-45b0-9b08-143a78dcdfd6', false, 'MA-OUD',
  'Oued Ed-Dahab-Lagouira',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('35c4369c-a2b5-4ef7-abb7-a97fbaa17331', false, 'MA-OUJ',
  'Oujda-Angad',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('26d9ab14-01a2-40d5-8e2e-b32725eced7c', false, 'MA-RAB',
  'Rabat',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('06041761-15da-4c71-8fa5-6031599198c0', false, 'MA-SAF',
  'Safi',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('cc30093d-9c57-4ef7-814e-4fb2c9ac6254', false, 'MA-SAL',
  'Salé',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('afd1e277-ee80-4fd8-841d-8f93b3923c9f', false, 'MA-SEF',
  'Sefrou',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('d0f497ae-0abe-45f7-a0fc-0a344d228eeb', false, 'MA-SET',
  'Settat',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('202ce3e1-b4b3-46af-b09d-ff5a23f9cf01', false, 'MA-SIK',
  'Sidi Kacem',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('fc1b3ade-b396-414f-a302-6023cbe7f91f', false, 'MA-SYB',
  'Sidi Youssef Ben Ali',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('45ab8da2-8674-4b92-bfcb-7222ea9ab345', false, 'MA-SKH',
  'Skhirat-Témara',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('e2a0179e-1361-41f3-bce6-7c29dd355798', false, 'MA-TNG',
  'Tanger-Asilah',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('591960b1-65d8-4836-83ad-b74f85a6479d', false, 'MA-TNT',
  'Tan-Tan',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('9817b10d-6356-4504-8a31-93dc1c87d6f0', false, 'MA-TAO',
  'Taounate',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('fd014246-aaaa-40ba-8109-73e96ba95fbd', false, 'MA-TAI',
  'Taourirt',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('aaec436a-0c5b-4f43-8b7e-a6f9926538a1', false, 'MA-TAR',
  'Taroudant',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('f129aaa2-dd2a-48f7-9495-9d0a2961476d', false, 'MA-TAT',
  'Tata',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('fcebb863-26b3-40e6-8e70-1bb44020380f', false, 'MA-TAZ',
  'Taza',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('311036b0-2787-43f2-91bd-7038fc71a45b', false, 'MA-TET',
  'Tétouan',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('137df0b2-04c1-4610-98fc-198f929e29f3', false, 'MA-TIZ',
  'Tiznit',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('506ad9c9-35f1-436f-ba2c-f2ba237b542e', false, 'MA-ZAG',
  'Zagora',
  'cded6598-01a2-49be-bcc9-b0c8741ea4e7');
INSERT INTO yacare_admission.province
 VALUES ('dc180529-8a40-4135-8528-1c6fda82f16f', false, 'MD-AN',
  'Anenii Noi',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('0e0f84d1-f00d-43ca-a54e-e3305095ebe7', false, 'MD-BA',
  'Bălţi',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('fb6b4f21-d9b2-4bf3-8caf-7b6813dda30f', false, 'MD-BS',
  'Basarabeasca',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('242765c4-b00a-4439-b2c8-350342fe9fd3', false, 'MD-BR',
  'Briceni',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('aff26ec9-ef87-4bd1-929b-d9b9ef15895b', false, 'MD-CA',
  'Cahul',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('60c9b5e5-c6a7-4b9d-b71b-f21e2213ac36', false, 'MD-CL',
  'Călăraşi',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('7221564d-d6bb-4026-9bd8-03248d6c8e61', false, 'MD-CT',
  'Cantemir',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('313854de-41ce-4bc4-8b23-385357b6f9fc', false, 'MD-CS',
  'Căuşeni',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('f8c157ac-b9e3-436b-8cd5-6a1d36050c07', false, 'MD-CU',
  'Chişinău',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('384ce9fb-18cb-4858-9d50-2d9aafd98450', false, 'MD-CM',
  'Cimişlia',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('7576d4c7-c562-407f-b4e9-c6970ba9c502', false, 'MD-CR',
  'Criuleni',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('b5813c2a-7c4b-4999-b340-7bfa0718db4e', false, 'MD-DO',
  'Donduşeni',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('873aad39-807e-4c8a-8271-f092aa746cf1', false, 'MD-DR',
  'Drochia',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('2ae588df-912b-450f-adea-282122677ad7', false, 'MD-DU',
  'Dubăsari',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('2295cb32-5fb8-458a-b816-699e0d0fc5d5', false, 'MD-ED',
  'Edineţ',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('c2197a99-bdef-49d1-a31c-fe26582b6e83', false, 'MD-FA',
  'Făleşti',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('74f34edd-2e73-4e45-b744-f1a4581a50ec', false, 'MD-FL',
  'Floreşti',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('a6d5a82f-5443-4bb6-9d68-211091a1150e', false, 'MD-GA',
  'Gagauzia',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('298a6de6-102f-4b8c-a965-f573c063e448', false, 'MD-GL',
  'Glodeni',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('63a375b1-0b0a-42e8-845d-2d62dbd9d22e', false, 'MD-IA',
  'Ialoveni',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('2f38caa1-e45d-44a0-8356-dcbd41d1f4ee', false, 'MD-LE',
  'Leova',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('bda84c3b-a21e-44c6-a8ea-de4e5d9f1e16', false, 'MD-NI',
  'Nisporeni',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('30d4d187-d57c-4d4b-9419-64f6edd59203', false, 'MD-OC',
  'Ocniţa',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('90cc2b73-37a6-42ee-a627-217a193f4ce9', false, 'MD-OR',
  'Orhei',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('8639ec34-27c8-4f4c-beca-ce4b98c27b81', false, 'MD-RE',
  'Rezina',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('132744e1-abb8-4aa4-b976-9b1ba8da6765', false, 'MD-RI',
  'Rîşcani',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('29587df9-0345-44bd-ade9-be7303ae40d0', false, 'MD-SI',
  'Sîngerei',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('4730cdd7-abc4-4121-9ea9-e015ede5eb95', false, 'MD-SD',
  'Şoldăneşti',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('e3756db8-30a4-486d-9213-ace344f0b549', false, 'MD-SO',
  'Soroca',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('f3e94a67-11f5-4562-9c46-0e674065bfd9', false, 'MD-SV',
  'Ştefan Vodă',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('8b0cd754-798b-438a-bae2-e341de5835f3', false, 'MD-ST',
  'Străşeni',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('5ac02c53-e3f6-436c-8a97-cbc5cb499769', false, 'MD-TA',
  'Taraclia',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('e4f67a49-e8c9-4b8e-84ad-07863c1c2dd8', false, 'MD-TE',
  'Teleneşti',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('8b0403e4-5f2f-4e6c-b334-abcc495f442d', false, 'MD-BD',
  'Tighina',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('f886af09-2166-4f7d-9083-173257727cf8', false, 'MD-UN',
  'Ungheni',
  '49882df6-0887-42a3-b47f-c550b53b10d6');
INSERT INTO yacare_admission.province
 VALUES ('5607c1ac-6fae-4ae1-b180-049aac6c94d6', false, 'ME-01',
  'Andrijevica',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('8e10f03b-2d92-4032-8407-3c558c4c0fb0', false, 'ME-02',
  'Bar',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('6660eb22-5837-4256-aba0-885579881246', false, 'ME-03',
  'Berane',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('ad417ae6-5fef-43e9-b5a4-e16c3291c083', false, 'ME-04',
  'Bijelo Polje',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('d81c6050-4527-47c9-be5b-84a8088e6642', false, 'ME-05',
  'Budva',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('ce76d6f9-2faa-4289-b0ec-d367ab9dadba', false, 'ME-06',
  'Cetinje',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('be5c946e-7f71-4cf3-9144-f07a24607227', false, 'ME-07',
  'Danilovgrad',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('a8bad8f5-9472-4c18-b2e8-b7be5875f195', false, 'ME-08',
  'Herceg Novi',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('88b9fe1a-9c00-4d38-a34d-9852e4d4df3a', false, 'ME-09',
  'Kolašin',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('c65b5719-a7bf-44d6-adc0-b16ef1259012', false, 'ME-10',
  'Kotor',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('ee621119-a091-434e-8083-b1ba1b031d97', false, 'ME-11',
  'Mojkovac',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('cb96ec85-d838-420e-86e3-e9bd2c39f92e', false, 'ME-12',
  'Nikšić',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('b06a65b8-64ac-45a9-94e4-30d36ce25203', false, 'ME-13',
  'Plav',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('a2fb9212-6d75-4282-8508-d2abd8f63c19', false, 'ME-14',
  'Pljevlja',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('531a985e-ae60-4cb0-bcb6-c333bd1fe43b', false, 'ME-15',
  'Plužine',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('52aa8968-510b-402e-a238-700be5be838d', false, 'ME-16',
  'Podgorica',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('2e2549c5-f50c-4758-b523-19cf81d23edd', false, 'ME-17',
  'Rožaje',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('619bb1eb-755b-4f41-a204-3ca61b77c0d2', false, 'ME-18',
  'Šavnik',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('439450be-af2e-4ee1-9159-a542ccc883a0', false, 'ME-19',
  'Tivat',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('9311799a-f602-459a-bc70-8217ea85d18b', false, 'ME-20',
  'Ulcinj',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('9c909f05-1ec7-4043-926c-155905a7edde', false, 'ME-21',
  'Žabljak',
  '32172cb0-4003-4070-988e-107c2556cfe0');
INSERT INTO yacare_admission.province
 VALUES ('c020bbce-2db5-4564-9d2a-988a07f09d70', false, 'MG-T',
  'Antananarivo',
  'f05efa8c-d902-4d72-8812-bcc944546b29');
INSERT INTO yacare_admission.province
 VALUES ('b7e5dfff-642b-4510-9f91-4dacf108fe56', false, 'MG-D',
  'Antsiranana',
  'f05efa8c-d902-4d72-8812-bcc944546b29');
INSERT INTO yacare_admission.province
 VALUES ('7104ea8d-1132-4d24-b371-1bb023f2723e', false, 'MG-F',
  'Fianarantsoa',
  'f05efa8c-d902-4d72-8812-bcc944546b29');
INSERT INTO yacare_admission.province
 VALUES ('68663e7f-65de-410e-b31e-7231e7707a41', false, 'MG-M',
  'Mahajanga',
  'f05efa8c-d902-4d72-8812-bcc944546b29');
INSERT INTO yacare_admission.province
 VALUES ('d381185e-c04a-4eba-bda6-31ca0862c0c7', false, 'MG-A',
  'Toamasina',
  'f05efa8c-d902-4d72-8812-bcc944546b29');
INSERT INTO yacare_admission.province
 VALUES ('db45a029-44e4-47e4-9f85-d7c7d3d8e759', false, 'MG-U',
  'Toliara',
  'f05efa8c-d902-4d72-8812-bcc944546b29');
INSERT INTO yacare_admission.province
 VALUES ('7233b10d-4373-4d2b-942e-25815c927336', false, 'MH-ALL',
  'Ailinglapalap',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('2acd9790-5fe3-4a50-a9fa-46a2a737fe67', false, 'MH-ALK',
  'Ailuk',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('8483cf85-6e1c-4c96-86aa-1e7ff440946c', false, 'MH-ARN',
  'Arno',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('6949549a-e2b8-4a6b-94f6-39de2f3541fd', false, 'MH-AUR',
  'Aur',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('d16236ae-2fbd-4d81-bdf5-398e5b8fd23b', false, 'MH-EBO',
  'Ebon',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('eda33c01-a6e7-4519-9992-9b72044ee0a1', false, 'MH-ENI',
  'Eniwetok',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('f788793c-3356-46b2-8b17-fa0af4c74c6f', false, 'MH-JAL',
  'Jaluit',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('e4796bb7-0530-47bc-87b5-690e89fab1ca', false, 'MH-KIL',
  'Kili',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('d6987c45-9281-4950-9dde-66ddda59707c', false, 'MH-KWA',
  'Kwajalein',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('e003bf1f-a27a-4555-8e5c-2037789a40b1', false, 'MH-LAE',
  'Lae',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('d804389c-3a21-4fcc-8e74-84425562b829', false, 'MH-LIB',
  'Lib',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('ce46fbbc-dbb5-4667-8e0e-6a09f01d95af', false, 'MH-LIK',
  'Likiep',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('8370292d-09d5-412f-9db6-38bac4fcd1bd', false, 'MH-MAJ',
  'Majuro',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('1b8a4ff2-399b-407c-a87d-117caa919790', false, 'MH-MAL',
  'Maloelap',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('2d38928f-dfe7-4235-b179-94442e91daaf', false, 'MH-MEJ',
  'Mejit',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('8a5f0289-3823-4769-9ea0-1f0556b4138e', false, 'MH-MIL',
  'Mili',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('371757c2-6eeb-4e69-8cc5-2b649ed0553d', false, 'MH-NMK',
  'Namorik',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('c1d16651-e5c4-434a-97fa-c6ce9bfd43af', false, 'MH-NMU',
  'Namu',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('08f25576-555a-4385-82d2-0791eb628d0e', false, 'MH-RON',
  'Rongelap',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('96d0c51d-e2a7-4e07-a693-65acdd3cc0cc', false, 'MH-UJA',
  'Ujae',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('045992e0-f688-435d-bb82-5360e5c031ac', false, 'MH-UJL',
  'Ujelang',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('da4cd780-97eb-4d3a-8692-ac119b8c6530', false, 'MH-UTI',
  'Utirik',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('92e3fb00-e8c7-408a-ac4d-aac2528da553', false, 'MH-WTH',
  'Wotho',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('a922e837-85c6-4965-8805-9642ddbbcaf9', false, 'MH-WTJ',
  'Wotje',
  '4edd6b47-d926-4384-a0bd-3aaf40bc4f29');
INSERT INTO yacare_admission.province
 VALUES ('ff844f03-d629-4c2d-a97b-7860cedf7612', false, 'MK-AD',
  'Aerodrom',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('fea10682-0413-41b8-8934-2d898734bfff', false, 'MK-AR',
  'Aračinovo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('060558a8-1f29-4590-95ef-28498b046ce1', false, 'MK-BR',
  'Berovo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('0d6cb4fa-00c5-4c9a-87c1-d8853b154225', false, 'MK-TL',
  'Bitola',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('c3ed3371-7c58-443a-9848-6a125d8b1624', false, 'MK-BG',
  'Bogdanci',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('638fb1fc-9423-4ce3-a488-38a1bfefbcb1', false, 'MK-VJ',
  'Bogovinje',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('e1277ea2-b6cf-40a9-8568-401e46cbab12', false, 'MK-BS',
  'Bosilovo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('aa7950be-dd99-4947-bcaa-1b4e71de97e1', false, 'MK-BN',
  'Brvenica',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('d7654335-4bc7-4f48-ba83-34d14743b29d', false, 'MK-BU',
  'Butel',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('c23204c6-0ad2-4881-b3e1-b518ab69f711', false, 'MK-CI',
  'Čair',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('2548ab92-4ced-469a-a017-079d149c0477', false, 'MK-CA',
  'Čaška',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('7e75effa-bc28-43f8-b077-c186c300f498', false, 'MK-CE',
  'Centar',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('780c063b-2a60-4abc-b00d-cb8fdc5d5691', false, 'MK-CZ',
  'Centar Župa',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('1bc84ad8-a3cb-4d0a-8a10-f6557121a009', false, 'MK-CH',
  'Češinovo-Obleševo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('e4e3a177-c944-4b07-ab3c-4548481639d7', false, 'MK-CS',
  'Čučer-Sandevo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('9c39cf53-4068-4770-8188-ba018a973649', false, 'MK-DB',
  'Debar',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('4cdb82ac-3ce3-4ac5-b160-9b9525fbeee5', false, 'MK-DA',
  'Debarca',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('e49b35b6-aed0-4c93-851c-23f69fbe1ff5', false, 'MK-DL',
  'Delčevo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('ab5e1fb4-5af6-46e5-82d1-ae16a009f461', false, 'MK-DM',
  'Demir Hisar',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('163d7947-9710-4e64-b15f-740e88c23189', false, 'MK-DK',
  'Demir Kapija',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('ca0e0988-cd2d-400a-9084-fdfb0a5ba5e5', false, 'MK-DE',
  'Dolneni',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('ea820023-0741-43f6-ae3d-a487f979fa0b', false, 'MK-SD',
  'Doјran',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('8c795845-fb2a-41cb-a8bb-05b467785fd3', false, 'MK-DR',
  'Drugovo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('65562ec1-cea9-42d6-a5c8-b14d252255d1', false, 'MK-GB',
  'Gazi Baba',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('a01b6796-5009-450f-b303-52730e75cd50', false, 'MK-GV',
  'Gevgelija',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('3ef9db5b-7d4e-43f7-8c1b-119824489fb5', false, 'MK-GP',
  'Gjorče Petrov',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('eb326f3a-9c36-4671-9900-3367949b8119', false, 'MK-GT',
  'Gostivar',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('0664929f-5759-4495-a3fb-7258bfb05f0d', false, 'MK-GR',
  'Gradsko',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('6283bd3d-89ab-43df-98fe-79c35ef67450', false, 'MK-IL',
  'Ilinden',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('687a633f-8956-4677-8304-362c3f2115c7', false, 'MK-JG',
  'Jegunovce',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('72bf0adf-bb93-4b91-bb7a-fe0d18d30c97', false, 'MK-KB',
  'Karbinci',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('4c914ac7-f7f6-4ff5-8587-c3648dab2853', false, 'MK-KX',
  'Karpoš',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('14ae14dd-8c7c-4597-97a4-e4effb78d1f5', false, 'MK-AV',
  'Kavadarci',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('e05a955f-3169-4bba-bb7b-4ea53489f21d', false, 'MK-KH',
  'Kicevo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('f2d2158e-b432-4911-b637-7722e64d5f16', false, 'MK-VD',
  'Kisela Voda',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('0d41298c-38ef-42b4-88f7-312adae53ee0', false, 'MK-OC',
  'Kocani',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('14af1a6e-1dd9-47db-802b-5e81c65e1985', false, 'MK-KN',
  'Konče',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('72be9010-c4e5-4c5f-a1fa-8c821da04dad', false, 'MK-KY',
  'Kratovo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('8eedd725-27a7-428e-abc3-4c526284f93d', false, 'MK-KZ',
  'Kriva Palanka',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('96ed55ec-d3ad-41b3-8926-021939ce956b', false, 'MK-KG',
  'Krivogaštani',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('fe749bb3-dca6-4d97-8bef-39d9858e1de3', false, 'MK-KS',
  'Kruševo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('6b5004ee-06dc-4da5-b0c8-7c261f1b6d86', false, 'MK-UM',
  'Kumanovo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('a5650620-bbdb-4595-af9c-20487fde85ef', false, 'MK-LI',
  'Lipkovo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('90aafd89-eace-48ea-9241-6b056adf51b0', false, 'MK-LO',
  'Lozovo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('b3ab028f-1a96-4cd0-992d-74a49960779b', false, 'MK-MK',
  'Makedonska Kamenica',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('c7eff0dc-844f-4e50-9442-639f8574d8f5', false, 'MK-MD',
  'Makedonski Brod',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('84465899-2995-4f5a-b5fe-4039d01af639', false, 'MK-MR',
  'Mavrovo and Rostuša',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('0d5f622f-1762-48ff-956c-32c481943d5b', false, 'MK-MG',
  'Mogila',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('424ac0d2-99ca-4b0a-9bdf-acd6c58c073a', false, 'MK-NG',
  'Negotino',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('70d8459a-b909-4c18-bfd9-c28ce7de78d7', false, 'MK-NV',
  'Novaci',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('0448b64e-ec67-4a97-831d-445721f95d71', false, 'MK-NS',
  'Novo Selo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('ca0bb36e-100a-48c9-b8c6-8990172919ca', false, 'MK-OD',
  'Ohrid',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('bbdbc451-e297-49ba-ad37-94cd431ba6e2', false, 'MK-OS',
  'Oslomej',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('7b346455-2471-41d2-bd9b-8cce03a70905', false, 'MK-PH',
  'Pehčevo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('03042fc9-f436-4ab5-b956-86e9cbd009a8', false, 'MK-PE',
  'Petrovec',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('5ba33f71-e6e9-4329-ac35-6fd41ec41a5a', false, 'MK-PN',
  'Plasnica',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('752f3590-4fc8-4a09-8de2-aa86438e43d1', false, 'MK-PP',
  'Prilep',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('3fcfd65f-69aa-4913-9691-707745eb73cc', false, 'MK-PT',
  'Probištip',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('dabce707-ac47-46b9-bba9-04c0b7a414f0', false, 'MK-RV',
  'Radoviš',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('1ba2bba0-08c2-4c00-aedd-1e98de555b0e', false, 'MK-RN',
  'Rankovce',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('b9268a2b-aa4f-446d-b52b-1a9277150ec8', false, 'MK-RE',
  'Resen',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('f00cea76-bb06-4b75-9a13-115dbad3b6f9', false, 'MK-RM',
  'Rosoman',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('054b2439-ba6e-48aa-954b-0b7f4f4dcc2b', false, 'MK-AJ',
  'Saraj',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('5dac2dec-95fa-4d6b-ad01-d530fc3a2104', false, 'MK-SS',
  'Sopište',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('ee53ff5a-105a-4aa3-af52-f4a4d69e0c4a', false, 'MK-NA',
  'Staro Nagoričane',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('0da18dfe-967a-4a67-8fb8-311f1c9146c2', false, 'MK-ST',
  'Štip',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('4dfcd3fb-cf9b-4318-97c7-567a7af3576a', false, 'MK-UG',
  'Struga',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('8d10a92c-6667-4e9e-9f5c-6ae123b9cadc', false, 'MK-RU',
  'Strumica',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('16508550-bcb8-479d-8757-d48353b63015', false, 'MK-SU',
  'Studeničani',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('ca807042-5eff-4fef-a4c3-2eac1e5935b1', false, 'MK-SO',
  'Šuto Orizari',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('11244323-1d1b-4620-8dbe-1c2f3ad18505', false, 'MK-SL',
  'Sveti Nikole',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('6304158a-ee46-402d-8450-e495316cf01c', false, 'MK-TR',
  'Tearce',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('ca84f01f-f352-4137-b23b-cc7e1d4ac405', false, 'MK-ET',
  'Tetovo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('7e6a1475-4bc8-4fae-b6eb-744d6bf642dd', false, 'MK-VA',
  'Valandovo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('e23075f8-95ed-4eb1-89f4-44ad2e744322', false, 'MK-VL',
  'Vasilevo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('ca501103-c17c-47cf-ae6b-a988fa792259', false, 'MK-VE',
  'Veles',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('5b8352c5-723c-4473-aa45-e3306c0ac8b5', false, 'MK-VV',
  'Vevčani',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('0e2b2805-0d17-4005-b9c9-14b91ff09599', false, 'MK-NI',
  'Vinica',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('db464e15-d9b5-4605-9f8f-a4d9a8cf152a', false, 'MK-VC',
  'Vraneštica',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('a59e3b74-0933-4905-b201-64ab2f735577', false, 'MK-VH',
  'Vrapčište',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('aaea4b8e-950f-41ac-82eb-2b0ab56301b5', false, 'MK-ZA',
  'Zajas',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('7d18ef78-b495-43d7-9bee-c27d1ed1c4bd', false, 'MK-ZK',
  'Zelenikovo',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('9a133624-3d72-41fb-983d-24dcf29157e1', false, 'MK-ZE',
  'Želino',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('19fb3683-3a66-431d-8329-8f89780e6b3b', false, 'MK-ZR',
  'Zrnovci',
  'd12df290-e03f-4465-91c0-b9f584bb3a04');
INSERT INTO yacare_admission.province
 VALUES ('bce07d18-4c8c-41ff-8cd3-74ec2b3cb614', false, 'ML-BKO',
  'Bamako',
  '085db63c-ccf8-4436-ab8c-03c22ba50882');
INSERT INTO yacare_admission.province
 VALUES ('386d7be3-3636-4501-b88b-9aaef272e93b', false, 'ML-7',
  'Gao',
  '085db63c-ccf8-4436-ab8c-03c22ba50882');
INSERT INTO yacare_admission.province
 VALUES ('2eb45302-8756-461c-b4d6-6ea7783873a2', false, 'ML-1',
  'Kayes',
  '085db63c-ccf8-4436-ab8c-03c22ba50882');
INSERT INTO yacare_admission.province
 VALUES ('1374a3a3-b398-4b41-908b-994a260b2daf', false, 'ML-8',
  'Kidal',
  '085db63c-ccf8-4436-ab8c-03c22ba50882');
INSERT INTO yacare_admission.province
 VALUES ('ba7b8641-bf38-4355-8293-d9309bac2e50', false, 'ML-2',
  'Koulikoro',
  '085db63c-ccf8-4436-ab8c-03c22ba50882');
INSERT INTO yacare_admission.province
 VALUES ('7c85eddc-d3d1-49ac-ac7f-4e24de2fa1e6', false, 'ML-5',
  'Mopti',
  '085db63c-ccf8-4436-ab8c-03c22ba50882');
INSERT INTO yacare_admission.province
 VALUES ('e69f3ff3-4b93-4c9e-80c6-61fcd092ceaf', false, 'ML-4',
  'Ségou',
  '085db63c-ccf8-4436-ab8c-03c22ba50882');
INSERT INTO yacare_admission.province
 VALUES ('83afa239-5365-4290-9718-fdaee706639b', false, 'ML-3',
  'Sikasso',
  '085db63c-ccf8-4436-ab8c-03c22ba50882');
INSERT INTO yacare_admission.province
 VALUES ('64136b3e-2d36-4bc6-bf7c-90b139cd6630', false, 'ML-6',
  'Tombouctou',
  '085db63c-ccf8-4436-ab8c-03c22ba50882');
INSERT INTO yacare_admission.province
 VALUES ('1178a6ad-dab0-4e22-b767-1276f23ab92b', false, 'MM-07',
  'Ayeyarwady',
  'b109653f-dc7b-464a-ac19-dc1116430bca');
INSERT INTO yacare_admission.province
 VALUES ('8db658c6-822f-4af8-8013-306fe000d409', false, 'MM-02',
  'Bago',
  'b109653f-dc7b-464a-ac19-dc1116430bca');
INSERT INTO yacare_admission.province
 VALUES ('90633b4c-3700-42ae-96cf-c36ea6effcb7', false, 'MM-14',
  'Chin',
  'b109653f-dc7b-464a-ac19-dc1116430bca');
INSERT INTO yacare_admission.province
 VALUES ('6ac88ef3-2cc2-4e52-b51e-3aa5701963a0', false, 'MM-11',
  'Kachin',
  'b109653f-dc7b-464a-ac19-dc1116430bca');
INSERT INTO yacare_admission.province
 VALUES ('4c444f13-b8d5-4d8f-ba55-6bf18191cc09', false, 'MM-12',
  'Kayah',
  'b109653f-dc7b-464a-ac19-dc1116430bca');
INSERT INTO yacare_admission.province
 VALUES ('e31d673a-cde5-440b-8020-abfb65efa21c', false, 'MM-13',
  'Kayin',
  'b109653f-dc7b-464a-ac19-dc1116430bca');
INSERT INTO yacare_admission.province
 VALUES ('9ead1619-9030-4d06-94a0-6b465059e8df', false, 'MM-03',
  'Magway',
  'b109653f-dc7b-464a-ac19-dc1116430bca');
INSERT INTO yacare_admission.province
 VALUES ('82476870-6939-4702-ba2e-2efdfda5c6a9', false, 'MM-04',
  'Mandalay',
  'b109653f-dc7b-464a-ac19-dc1116430bca');
INSERT INTO yacare_admission.province
 VALUES ('e037aa9a-67cf-4e7b-9861-bd80c81a92be', false, 'MM-15',
  'Mon',
  'b109653f-dc7b-464a-ac19-dc1116430bca');
INSERT INTO yacare_admission.province
 VALUES ('dc0dc230-74c3-4f9c-b5c3-8d52521f14a5', false, 'MM-16',
  'Rakhine',
  'b109653f-dc7b-464a-ac19-dc1116430bca');
INSERT INTO yacare_admission.province
 VALUES ('d1911cc0-1284-4647-987a-a2b57b1fed1e', false, 'MM-01',
  'Sagaing',
  'b109653f-dc7b-464a-ac19-dc1116430bca');
INSERT INTO yacare_admission.province
 VALUES ('66c5323f-7a6e-4a80-8b7c-caf8b0e68309', false, 'MM-17',
  'Shan',
  'b109653f-dc7b-464a-ac19-dc1116430bca');
INSERT INTO yacare_admission.province
 VALUES ('1f99b9bc-0173-444e-b331-16e436710339', false, 'MM-05',
  'Tanintharyi',
  'b109653f-dc7b-464a-ac19-dc1116430bca');
INSERT INTO yacare_admission.province
 VALUES ('72389421-9803-4898-a414-b6411d035a58', false, 'MM-06',
  'Yangon',
  'b109653f-dc7b-464a-ac19-dc1116430bca');
INSERT INTO yacare_admission.province
 VALUES ('ba55385e-2aa6-44e6-b1b5-107298ead428', false, 'MN-073',
  'Архангай',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('a4d330a7-0747-4da7-bf08-8ce0985d69d7', false, 'MN-071',
  'Баян-Өлгий',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('a551d2d6-3502-4ad8-9896-905d74469bb6', false, 'MN-069',
  'Баянхонгор',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('206b5077-b618-4804-adbd-fdd8fa3ffefa', false, 'MN-067',
  'Булган',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('03306455-b236-4dc7-bcfe-446fff5d9070', false, 'MN-055',
  'Өвөрхангай',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('409cc696-7c31-4e41-9cfb-48848991d811', false, 'MN-065',
  'Говь-Алтай',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('8d630d8d-9d01-4971-a014-4fdba6a34994', false, 'MN-064',
  'Говьсүмбэр',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('7c5bfaf4-a4c8-4eb5-b9cd-93e1d0e2c677', false, 'MN-037',
  'Дархан-Уул',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('0e96074a-7b54-4302-8ddd-89364f4bb64a', false, 'MN-063',
  'Дорноговь',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('bea10d90-cea8-4d6c-aaa9-9aeae201615b', false, 'MN-061',
  'Дорнод',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('5b6c7eee-9e75-403b-938d-212b75b31cfa', false, 'MN-059',
  'Дундговь',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('97c4d80d-4521-435b-a828-5676bac2365d', false, 'MN-057',
  'Завхан',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('333ced5a-8ff8-49c7-aa30-b044ac39210a', false, 'MN-053',
  'Өмнөговь',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('b897f3e2-8ec0-4693-ae29-3b1486b5716b', false, 'MN-035',
  'Орхон',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('d70a6006-9c33-4dda-9be4-48f8f73334b5', false, 'MN-051',
  'Сүхбаатар',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('dc4d1e15-6e67-43a8-b565-af9616e340ae', false, 'MN-049',
  'Сэлэнгэ',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('f761967e-79e9-4ab9-bbe4-ca9ba5e45a75', false, 'MN-047',
  'Төв',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('cc4f8acc-c026-4f2e-816d-efad775761ed', false, 'MN-046',
  'Увс',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('8f56b7ad-cb21-498d-a5d7-831c41edd5bf', false, 'MN-1',
  'Улаанбаатар',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('51ddb579-e8b3-4b57-b7ee-5fdec5b3a113', false, 'MN-041',
  'Хөвсгөл',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('9df67e12-d717-4b73-a738-a68f998ea343', false, 'MN-043',
  'Ховд',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('f0e0cd82-2a24-431b-ac38-2a2a22d86a56', false, 'MN-039',
  'Хэнтий',
  '3e560995-566a-4159-9632-c286565fa307');
INSERT INTO yacare_admission.province
 VALUES ('ee4fac7b-c77d-464e-8ab3-0afdf82a5186', false, 'MR-07',
  'Adrar',
  '2118e10c-3d43-409a-8603-5e19b1d8fa25');
INSERT INTO yacare_admission.province
 VALUES ('e072ec17-f79f-4c56-a4aa-b1e20a48f3f2', false, 'MR-03',
  'Assaba',
  '2118e10c-3d43-409a-8603-5e19b1d8fa25');
INSERT INTO yacare_admission.province
 VALUES ('75b3530c-f925-4d1b-ae90-3e941a9c3dce', false, 'MR-05',
  'Brakna',
  '2118e10c-3d43-409a-8603-5e19b1d8fa25');
INSERT INTO yacare_admission.province
 VALUES ('eb031aca-7008-4bb2-a0df-52cefdb35a60', false, 'MR-08',
  'Dakhlet Nouâdhibou',
  '2118e10c-3d43-409a-8603-5e19b1d8fa25');
INSERT INTO yacare_admission.province
 VALUES ('d46bfa65-d994-4774-ab08-07ea27e998a8', false, 'MR-04',
  'Gorgol',
  '2118e10c-3d43-409a-8603-5e19b1d8fa25');
INSERT INTO yacare_admission.province
 VALUES ('a9ef7f5d-a7b1-4e41-8461-a97df274dbda', false, 'MR-10',
  'Guidimaka',
  '2118e10c-3d43-409a-8603-5e19b1d8fa25');
INSERT INTO yacare_admission.province
 VALUES ('b99b0dc9-77b3-4e6e-8642-32a82399a787', false, 'MR-01',
  'Hodh ech Chargui',
  '2118e10c-3d43-409a-8603-5e19b1d8fa25');
INSERT INTO yacare_admission.province
 VALUES ('34a3f90a-e2d5-4415-8764-76ddd1ea8815', false, 'MR-02',
  'Hodh el Gharbi',
  '2118e10c-3d43-409a-8603-5e19b1d8fa25');
INSERT INTO yacare_admission.province
 VALUES ('071275b2-aa2a-4bbb-afc6-71827187c215', false, 'MR-12',
  'Inchiri',
  '2118e10c-3d43-409a-8603-5e19b1d8fa25');
INSERT INTO yacare_admission.province
 VALUES ('ec2d6922-fd0a-428c-b4ef-20bbe62ab59c', false, 'MR-NKC',
  'Nouakchott',
  '2118e10c-3d43-409a-8603-5e19b1d8fa25');
INSERT INTO yacare_admission.province
 VALUES ('9a2c0d81-7deb-4222-9040-563394f4b26a', false, 'MR-09',
  'Tagant',
  '2118e10c-3d43-409a-8603-5e19b1d8fa25');
INSERT INTO yacare_admission.province
 VALUES ('bee7e612-aa46-4fb4-a529-bd9c2d9b75af', false, 'MR-11',
  'Tiris Zemmour',
  '2118e10c-3d43-409a-8603-5e19b1d8fa25');
INSERT INTO yacare_admission.province
 VALUES ('ee50f28c-b872-4d32-9eec-ca6436444d9b', false, 'MR-06',
  'Trarza',
  '2118e10c-3d43-409a-8603-5e19b1d8fa25');
INSERT INTO yacare_admission.province
 VALUES ('c006cd5c-7908-4b27-9b04-35024ef14950', false, 'MT-01',
  'Attard',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('ea8e6cd6-23f8-4cd5-93f8-0816e3508cb0', false, 'MT-02',
  'Balzan',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('d05446ca-9bdc-44ec-bd80-505b0cfd51c3', false, 'MT-03',
  'Birgu',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('128a9072-6eb5-4513-b177-2c5febf747b6', false, 'MT-04',
  'Birkirkara',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('93b695a1-e4ff-499d-873b-01cdcf77bd34', false, 'MT-05',
  'Birzebbuga',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('140d359a-9d5d-44a4-890d-ce7dfbfc682d', false, 'MT-06',
  'Bormla',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('86592a67-5052-4df4-9ad9-825f63d69863', false, 'MT-07',
  'Dingli',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('f3175736-16c7-4c14-8dad-00da175a31da', false, 'MT-08',
  'Fgura',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('5f6ec757-dbe3-4bf6-8b28-f8ce14c7dde1', false, 'MT-09',
  'Floriana',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('4ac54449-e559-4e30-984d-de53a5265cff', false, 'MT-10',
  'Fontana',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('8ced73cb-8ad1-4601-8fcb-3085d645c8eb', false, 'MT-13',
  'Għajnsielem',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('547a2263-2f1b-433a-8959-7d0a615368de', false, 'MT-14',
  'Għarb',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('876e5fce-7ee8-406b-8f20-00f671e8bc5a', false, 'MT-15',
  'Għargħur',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('36dffbeb-7dc5-4d42-b39d-0d232a186a79', false, 'MT-16',
  'Għasri',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('15a7f4aa-af62-4a70-8b36-db00ea6f38b7', false, 'MT-17',
  'Għaxaq',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('2d1e5813-0829-4c87-86ab-65acd0146c29', false, 'MT-11',
  'Gudja',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('1c9bd7be-19c2-4b11-838c-a18be17039a9', false, 'MT-12',
  'Gzira',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('0232154c-3dec-44df-bd76-6f938a91d7bd', false, 'MT-18',
  'Ħamrun',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('7eec3a1b-0212-4ec0-b6c3-b60263babc3f', false, 'MT-19',
  'Iklin',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('48c2071b-1d0f-4d32-9f72-4821345b6aa3', false, 'MT-20',
  'Isla',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('45b7a19a-241c-40f4-b4cb-fe6eae68e65b', false, 'MT-21',
  'Kalkara',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('b9551f9a-1c29-4072-ab92-7a40b503abb4', false, 'MT-22',
  'Kercem',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('a1a04369-59cc-4292-8713-f395f2e5aba8', false, 'MT-23',
  'Kirkop',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('713a6642-c160-4d55-844b-6c6098b43c8a', false, 'MT-24',
  'Lija',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('204a6a92-45a5-4d18-92cc-6d8eba5b0cb1', false, 'MT-25',
  'Luqa',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('4f15dbdb-7f8c-4b19-9d74-ba1c5397cf83', false, 'MT-26',
  'Marsa',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('aa358b55-c38f-4a01-b591-a1b01e10e60d', false, 'MT-27',
  'Marsaskala',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('8bec2e23-ac0d-48ed-9300-32b8756529e4', false, 'MT-28',
  'Marsaxlokk',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('f7cbe087-189e-436b-a4ff-9f2792d03d01', false, 'MT-29',
  'Mdina',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('8b99763f-1919-4079-b3a5-4ae77a640783', false, 'MT-30',
  'Mellieħa',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('19938c1e-1d4c-479b-b57f-2b0bb6cb689d', false, 'MT-31',
  'Mgarr',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('0c4ba5e6-fac8-4be0-8a80-e2ed519b1290', false, 'MT-32',
  'Mosta',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('b60737b2-a982-4346-9421-cc253d926755', false, 'MT-33',
  'Mqabba',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('04d07e1b-141e-48f9-bd46-8906ecac5d51', false, 'MT-34',
  'Msida',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('bb25a8e2-e3b7-4432-8019-57786f51ce87', false, 'MT-35',
  'Mtarfa',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('89b8afc0-bcde-41e2-9b80-10dceb053ae0', false, 'MT-36',
  'Munxar',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('fe327eee-7172-48f4-bb33-83c38f32d130', false, 'MT-37',
  'Nadur',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('8106c5f5-0084-4974-9584-eb018852c3bb', false, 'MT-38',
  'Naxxar',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('ee49e247-859b-4803-ade7-82ceffefa4a8', false, 'MT-39',
  'Paola',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('dc8341a7-c125-48ee-9b6b-c0090fc73b73', false, 'MT-40',
  'Pembroke',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('07b4d32d-56fb-4398-8f34-8ef039f7c16a', false, 'MT-41',
  'Pietà',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('6877b818-129b-408b-bfb3-37d614ffd107', false, 'MT-42',
  'Qala',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('0244161f-8b61-4171-9ba3-0480ca54519b', false, 'MT-43',
  'Qormi',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('163c7c20-5de4-4407-a70f-f222eafce530', false, 'MT-44',
  'Qrendi',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('052ae6ea-4aa4-4538-87d5-22dbe8d80119', false, 'MT-45',
  'Rabat (Għawdex)',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('f4f46292-1b7a-4d7e-ba47-1e01c1b7f5d0', false, 'MT-46',
  'Rabat (Malta)',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('48709df7-7e74-475a-a28b-5c1c3f7766cc', false, 'MT-47',
  'Safi',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('8c84ecf6-dc9d-49fe-9df8-886d5c954cc5', false, 'MT-48',
  'San Ġiljan',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('36e7284c-2c29-46b3-a2b2-8dd84c994769', false, 'MT-49',
  'San Ġwann',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('ca03a72f-cb07-42ee-ad94-5aee861a7e0f', false, 'MT-50',
  'San Lawrenz',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('3a7a42b4-8684-4e7b-ae37-51d71f51995d', false, 'MT-51',
  'San Pawl il-Baħar',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('71842eca-91cc-44c8-9814-2d9cf898cc4d', false, 'MT-52',
  'Sannat',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('a79ea3aa-a66e-4308-b3c0-f03114288c39', false, 'MT-53',
  'Santa Lucija',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('cc7c0808-0539-4236-bdd0-145e6d08909c', false, 'MT-54',
  'Santa Venera',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('94c5955d-c644-4a3b-b388-f815bdea0049', false, 'MT-55',
  'Siggiewi',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('6fa5fdf6-6da1-46eb-b426-6a01d9f29af7', false, 'MT-56',
  'Sliema',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('cfbb9590-e8e9-4950-be9d-a4ab7879885d', false, 'MT-57',
  'Swieqi',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('b1095106-ba58-4e29-9ad1-8ab6e31ecff9', false, 'MT-58',
  'Ta'' Xbiex',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('68005eef-e227-40b6-8443-56b636ba95fa', false, 'MT-59',
  'Tarxien',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('d24e657d-158a-4464-92fb-e1618905397f', false, 'MT-60',
  'Valletta',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('a1108f1d-90d3-456a-8555-b8470e3acb43', false, 'MT-61',
  'Xagħra',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('1c127fbc-af0c-43c4-91f5-2611b866056d', false, 'MT-62',
  'Xewkija',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('9b702902-03d9-46d3-aca0-d3335962984e', false, 'MT-63',
  'Xgħajra',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('f1f77704-3818-46aa-9439-586bbaa90ec3', false, 'MT-64',
  'Żabbar',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('55616833-a7fd-4007-be40-2f97c8dc7fef', false, 'MT-65',
  'Żebbuġ (Għawdex)',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('5ee1e5cf-07f7-493f-9e29-efc76bc06f63', false, 'MT-66',
  'Żebbuġ (Malta)',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('c596ec12-7646-4371-ac91-853d3991cd30', false, 'MT-67',
  'Zejtun',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('0e325c15-3e08-4467-bfb8-ae7589ea78b3', false, 'MT-68',
  'Zurrieq',
  '5de130c7-cc7a-4cac-aa3b-b7fdbc6bae1c');
INSERT INTO yacare_admission.province
 VALUES ('16477fd1-baba-4be9-b667-3eec6ce644a0', false, 'MU-AG',
  'Agalega Islands',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('4c12e409-3ff0-408d-83dd-3b87627b84aa', false, 'MU-BR',
  'Beau Bassin-Rose Hill',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('09d9b892-aa3f-4774-b46d-d5558d00348d', false, 'MU-BL',
  'Black River',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('309a3bdc-755b-42eb-99ae-93c32e9242da', false, 'MU-CC',
  'Cargados Carajos',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('e5417ffa-65ec-4724-b186-844e7b0322c1', false, 'MU-CU',
  'Curepipe',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('c3baa3b2-5733-404e-94ea-544f53f8001d', false, 'MU-FL',
  'Flacq',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('e6f09f70-efa9-4ffb-b339-a8008d6bc9e0', false, 'MU-GP',
  'Grand Port',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('4c338db3-c7c6-42cc-8384-e4b6d6b4426e', false, 'MU-MO',
  'Moka',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('11c9457c-262b-4fcf-918f-43cfe1e5a5a3', false, 'MU-PA',
  'Pamplemousses',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('4904c2db-cc53-446e-8498-8fd3e95c9da6', false, 'MU-PW',
  'Plaines Wilhems',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('671e100c-6142-490c-b628-80eabad674e3', false, 'MU-PL',
  'Port Louis City',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('9203fe9c-5ff8-4953-9fcb-c3deed8c81c1', false, 'MU-PU',
  'Port Louis District',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('b9f9c702-1002-42fa-bc57-5a09dfe29df4', false, 'MU-QB',
  'Quatre Bornes',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('40e9b521-4ec9-41fc-adcd-c6a6a16b691f', false, 'MU-RR',
  'Rivière du Rempart',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('a14e1fbf-21f6-4d0c-ab3d-e471ad221994', false, 'MU-RO',
  'Rodrigues Island',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('17739178-d68c-423b-ba7f-e0a446b7cf0b', false, 'MU-SA',
  'Savanne',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('7f094db2-9307-499f-b175-c4dd979a349d', false, 'MU-VP',
  'Vacoas-Phoenix',
  '4a286fbb-2ed9-4374-9c3e-a4a0ae302859');
INSERT INTO yacare_admission.province
 VALUES ('0a2748ad-15bc-45df-b653-0bb44eb24b6f', false, 'MV-02',
  'Alif Dhaalu',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('86ad8622-14fd-4d87-b47c-b6eac0b5c6a1', false, 'MV-20',
  'Baa',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('1f9780be-67b3-40ae-aa60-df3971c41a8a', false, 'MV-17',
  'Dhaalu Atoll',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('e1fb66f5-182b-4cac-87df-38e8f707aa11', false, 'MV-14',
  'Faafu',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('1551c583-85b0-4de8-af82-6feed5376d9a', false, 'MV-27',
  'Gaafu Alif',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('80d33591-de98-43ce-8383-93766ee97e41', false, 'MV-28',
  'Gaafu Dhaalu',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('8229bd43-badb-48d5-9afe-7ec1b5f632bc', false, 'MV-29',
  'Gnaviyani',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('7247d015-84cf-4cda-ab38-76e3ec92fe49', false, 'MV-07',
  'Haa Alif',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('6a89962e-889d-400c-a2cb-8c13417e45e0', false, 'MV-23',
  'Haa Dhaalu',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('7106b59b-fe85-44c8-836f-38aafecff2ab', false, 'MV-26',
  'Kaafu',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('4a82f4b7-6d00-45e3-8bff-a179b9154003', false, 'MV-05',
  'Laamu',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('0206d9d7-1ce5-4541-80ea-1a040ebe2197', false, 'MV-03',
  'Lhaviyani',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('b1c87ee3-6e53-47f8-8ad9-e92147de1e5b', false, 'MV-MLE',
  'Malé',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('d969cd64-b23e-4eaf-9c84-87fe8584f711', false, 'MV-12',
  'Meemu',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('5db78fba-cf76-4633-ac4f-40c3a8660df1', false, 'MV-25',
  'Noonu',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('47a06e9f-dcc7-4283-8d7e-9936b9233d1a', false, 'MV-13',
  'Raa',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('369e2635-4e62-48c9-a22b-f3eac928d36a', false, 'MV-01',
  'Seenu',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('9eb8a374-ff69-4a03-84f2-d013ebb8860c', false, 'MV-24',
  'Shaviyani',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('3ba490c3-4e61-46bb-97b9-b9dd5088a23d', false, 'MV-08',
  'Thaa',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('e9074e6b-b634-46dc-bf00-8fb7f47d0c07', false, 'MV-04',
  'Vaavu',
  '92d39be0-4dbd-4f3e-9dc2-3874779bcc35');
INSERT INTO yacare_admission.province
 VALUES ('be3da63f-b869-4336-bcb7-6ccbad0b5972', false, 'MW-BA',
  'Balaka',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('88a61d8b-f678-4212-8be6-cb15f0e99bfa', false, 'MW-BL',
  'Blantyre',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('83424c38-7836-497a-8cda-ccd00cb74d18', false, 'MW-CK',
  'Chikwawa',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('2546ec70-3d72-48e3-aa81-223e121e7b52', false, 'MW-CR',
  'Chiradzulu',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('a7f379d2-8e0b-4b17-8a6f-c34d726ceeed', false, 'MW-CT',
  'Chitipa',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('1201bc2f-a8dc-4f85-a871-4210c7754ee7', false, 'MW-DE',
  'Dedza',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('423c8c96-8ba1-46b4-bdfa-52c0d7097b4e', false, 'MW-DO',
  'Dowa',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('f54d1527-35c6-44f0-8161-424975ce11b1', false, 'MW-KR',
  'Karonga',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('d936aa6f-bee4-4690-b298-49c39ded2a34', false, 'MW-KS',
  'Kasungu',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('2f3b7173-cc89-4e18-94ec-0d9b9fb22500', false, 'MW-LK',
  'Likoma',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('a37338a7-339b-47eb-8817-159f0796c60d', false, 'MW-LI',
  'Lilongwe',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('8c623cf0-44fe-4374-b7ab-37b8c3e71909', false, 'MW-MH',
  'Machinga',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('e87c0588-3136-49f6-8fe7-124516375ab8', false, 'MW-MG',
  'Mangochi',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('2660852a-a9ae-4ceb-9b65-b547c7943a1f', false, 'MW-MC',
  'Mchinji',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('25121691-6932-4ce2-8203-5e42c6c10820', false, 'MW-MU',
  'Mulanje',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('ab8bdbeb-c81d-4301-a76d-2f049d85ebf3', false, 'MW-MW',
  'Mwanza',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('4155641e-0640-4792-930e-bf327536eec7', false, 'MW-MZ',
  'Mzimba',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('c788f28d-6c15-4a18-b415-6dbfa6d999dc', false, 'MW-NE',
  'Neno',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('32b29d72-d2dd-4248-99cb-66481c185faa', false, 'MW-NB',
  'Nkhata Bay',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('eca6a847-a0c6-4744-9298-a11ca71b7fd8', false, 'MW-NK',
  'Nkhotakota',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('f724e0c6-9022-4642-8738-7f20458a92aa', false, 'MW-NS',
  'Nsanje',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('4b993320-81d6-4bf1-bbd9-2f921baa8d74', false, 'MW-NU',
  'Ntcheu',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('6979a0c4-cfe5-433e-ae91-9900e6103a06', false, 'MW-NI',
  'Ntchisi',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('8656a821-36c7-4ae8-b869-c570cbcf6d29', false, 'MW-PH',
  'Phalombe',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('f9fb8fc3-766f-44bd-975c-6c5703448078', false, 'MW-RU',
  'Rumphi',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('8f808062-b059-475e-9bad-fd7b8f8a6063', false, 'MW-SA',
  'Salima',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('e75fde10-2f66-432f-a247-aacbd450c2f9', false, 'MW-TH',
  'Thyolo',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('95a926c6-a003-47d6-a80a-e9b94c3386b4', false, 'MW-ZO',
  'Zomba',
  '26e1cf6e-2bb1-4a8d-98ba-801c5d79109e');
INSERT INTO yacare_admission.province
 VALUES ('87c0c9b5-c339-49e1-b45c-0d2be53a6850', false, 'MX-AGU',
  'Aguascalientes',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('c599b58c-449a-44d8-ad73-aa01b26a72b8', false, 'MX-BCN',
  'Baja California',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('bd05cc8b-4599-4a5a-ab0f-c21d59a3e375', false, 'MX-BCS',
  'Baja California Sur',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('a97be956-6beb-47e3-968a-704c6f8c54e0', false, 'MX-CAM',
  'Campeche',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('3871da8e-57af-4367-bb42-1b0756cdcbf4', false, 'MX-CHP',
  'Chiapas',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('043395e1-a48e-4854-bc77-9c0863c8a794', false, 'MX-CHH',
  'Chihuahua',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('41df2ed1-12db-43a8-be1b-5b5c0f35e360', false, 'MX-COA',
  'Coahuila de Zaragoza',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('6ae45ba8-2cfa-4f33-84dd-16a612d806ac', false, 'MX-COL',
  'Colima',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('acd41497-7780-4473-be2d-3e6ed91e9e34', false, 'MX-DIF',
  'Distrito Federal',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('243f9353-900c-43eb-9644-6f3d0a067ee8', false, 'MX-DUR',
  'Durango',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('1f18e9bb-a76f-41ae-a771-bbb49140f94e', false, 'MX-GUA',
  'Guanajuato',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('71405e80-b222-46c7-9668-460e8fa6626d', false, 'MX-GRO',
  'Guerrero',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('4eb61f78-3850-4305-8ae0-0f9c55dac3ba', false, 'MX-HID',
  'Hidalgo',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('d275ad48-1f5b-4933-8b36-c476da97b925', false, 'MX-JAL',
  'Jalisco',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('cccb8d74-74e6-435e-b3a3-c8914534c75b', false, 'MX-MEX',
  'México',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('1e92f2e5-961a-47fe-b0af-2c28fddcc583', false, 'MX-MIC',
  'Michoacán de Ocampo',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('4a9cff2c-28b6-448d-966f-e71bd87ea786', false, 'MX-MOR',
  'Morelos',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('2d9facae-333d-4d5c-992d-f82d8ef13e3d', false, 'MX-NAY',
  'Nayarit',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('10e304fb-ad9d-451c-88a5-0743a9fae155', false, 'MX-NLE',
  'Nuevo León',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('6ddbe3ea-8b88-4185-8da7-d051e92ae002', false, 'MX-OAX',
  'Oaxaca',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('4c9a4741-5402-4e9d-b0a5-bf6e3eb9fd03', false, 'MX-PUE',
  'Puebla',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('f8a25e65-41a6-4059-ac9b-d8d087a6610f', false, 'MX-QUE',
  'Querétaro Arteaga',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('9102ff17-adc1-4a96-8ad2-d1d64b7a1fe1', false, 'MX-ROO',
  'Quintana Roo',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('77888297-11c0-4f08-8eef-f94cf9607428', false, 'MX-SLP',
  'San Luís Potosí',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('b3d5e5db-1b40-4867-8830-93ac1ff4f030', false, 'MX-SIN',
  'Sinaloa',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('0e72e9c5-1d76-42a3-8833-1810261b4d48', false, 'MX-SON',
  'Sonora',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('b612d76e-f3ae-403f-9e46-8ee7415bdb6d', false, 'MX-TAB',
  'Tabasco',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('4eada5db-e649-4a85-8e24-aeaa88f614ce', false, 'MX-TAM',
  'Tamaulipas',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('2a74768a-7955-4306-b9cd-5143da593b73', false, 'MX-TLA',
  'Tlaxcala',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('c14c516c-a7b0-4936-ac77-017b34ed2ae1', false, 'MX-VER',
  'Veracruz Llave',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('79f2be1a-3956-4b9c-bd56-44c18a0e71e8', false, 'MX-YUC',
  'Yucatán',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('8912ed7a-b8be-41da-be3f-0b724e2f85b3', false, 'MX-ZAC',
  'Zacatecas',
  'a11a002e-395c-4db4-b0e8-17744d364396');
INSERT INTO yacare_admission.province
 VALUES ('d0a308a9-aa79-45ea-99df-22a1ab2b980c', false, 'MY-01',
  'Johor',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('ef4b967a-045d-4b91-93b5-3ee9884afc0a', false, 'MY-02',
  'Kedah',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('2c8a35a5-edae-46c2-abd2-31a3ee040892', false, 'MY-03',
  'Kelantan',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('7698cbc3-3657-40c3-890b-79d2c8105cca', false, 'MY-04',
  'Melaka',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('7a04c811-8d40-41f4-88f6-6966476631ac', false, 'MY-05',
  'Negeri Sembilan',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('29ba724f-90b0-440b-973c-3896f83529c6', false, 'MY-06',
  'Pahang',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('d1c18302-4101-4f0b-ad2f-6ba0e6bb56cc', false, 'MY-08',
  'Perak',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('8e708881-79ba-4c56-935f-1c8fef68f243', false, 'MY-09',
  'Perlis',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('68fc185f-60bf-4dab-84dc-b5540c2018e2', false, 'MY-07',
  'Pulau Pinang',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('c2a3aa93-0ed5-414c-b62e-a893bf4f9e42', false, 'MY-12',
  'Sabah',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('51ab5623-4f19-4516-9252-c80c73130193', false, 'MY-13',
  'Sarawak',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('c4513cb6-cd9a-4522-81c1-c0b8a6541eff', false, 'MY-10',
  'Selangor',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('feace134-31a7-44a2-975f-008e0df70959', false, 'MY-11',
  'Terengganu',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('d835442d-d476-4de6-82f2-ec1af7bd8eae', false, 'MY-14',
  'Wilayah Persekutuan Kuala Lumpur',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('f7179abb-9f7e-46e0-b845-9e6cfaad70a4', false, 'MY-15',
  'Wilayah Persekutuan Labuan',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('16e5644b-4f95-4362-9c2f-739207543e16', false, 'MY-16',
  'Wilayah Persekutuan Putra Jaya',
  'fc776207-7a82-479c-86c7-dff644152554');
INSERT INTO yacare_admission.province
 VALUES ('8cd79e59-fbfd-4326-9fad-7363f20d0670', false, 'MZ-P',
  'Cabo Delgado',
  'dcf7d98f-178a-4173-84f6-d9d2561a78d3');
INSERT INTO yacare_admission.province
 VALUES ('c30a7f56-f3ba-4e08-b1d6-49fe1697e3e8', false, 'MZ-G',
  'Gaza',
  'dcf7d98f-178a-4173-84f6-d9d2561a78d3');
INSERT INTO yacare_admission.province
 VALUES ('57457f20-9090-4603-944d-c6fb24eef1c1', false, 'MZ-I',
  'Inhambane',
  'dcf7d98f-178a-4173-84f6-d9d2561a78d3');
INSERT INTO yacare_admission.province
 VALUES ('92b0339d-9fe5-4d90-9e1f-98734996863c', false, 'MZ-B',
  'Manica',
  'dcf7d98f-178a-4173-84f6-d9d2561a78d3');
INSERT INTO yacare_admission.province
 VALUES ('47ab6853-fa96-44f0-985f-6d28223b4433', false, 'MZ-L',
  'Maputo',
  'dcf7d98f-178a-4173-84f6-d9d2561a78d3');
INSERT INTO yacare_admission.province
 VALUES ('e8844440-dc2d-40a8-b47d-51398ced2369', false, 'MZ-N',
  'Nampula',
  'dcf7d98f-178a-4173-84f6-d9d2561a78d3');
INSERT INTO yacare_admission.province
 VALUES ('0696007d-7c5f-487a-9c82-9925d53b8007', false, 'MZ-A',
  'Niassa',
  'dcf7d98f-178a-4173-84f6-d9d2561a78d3');
INSERT INTO yacare_admission.province
 VALUES ('8fa65b3c-517a-4622-a2cc-810f6d9371b4', false, 'MZ-S',
  'Sofala',
  'dcf7d98f-178a-4173-84f6-d9d2561a78d3');
INSERT INTO yacare_admission.province
 VALUES ('ca434509-782d-4a4a-a539-6d5218917a8c', false, 'MZ-T',
  'Tete',
  'dcf7d98f-178a-4173-84f6-d9d2561a78d3');
INSERT INTO yacare_admission.province
 VALUES ('924a959f-29f9-4f71-a5b6-bed319860d91', false, 'MZ-Q',
  'Zambézia',
  'dcf7d98f-178a-4173-84f6-d9d2561a78d3');
INSERT INTO yacare_admission.province
 VALUES ('665dbd3d-e59b-4a59-9368-0c47fb4bcdb0', false, 'NA-CA',
  'Caprivi',
  '01f31412-8b38-4cf4-8eb8-23c9fbfa9a19');
INSERT INTO yacare_admission.province
 VALUES ('e7719a58-fa10-4294-b70e-b4f2cf404e2a', false, 'NA-ER',
  'Erongo',
  '01f31412-8b38-4cf4-8eb8-23c9fbfa9a19');
INSERT INTO yacare_admission.province
 VALUES ('6bc62ad4-990b-4a1d-a27a-3dd67cd868da', false, 'NA-HA',
  'Hardap',
  '01f31412-8b38-4cf4-8eb8-23c9fbfa9a19');
INSERT INTO yacare_admission.province
 VALUES ('332859fc-4db9-4b8f-80ac-cc2e6a7f3d52', false, 'NA-KA',
  'Karas',
  '01f31412-8b38-4cf4-8eb8-23c9fbfa9a19');
INSERT INTO yacare_admission.province
 VALUES ('eeda12f6-a903-436c-935d-c9dd3f39c561', false, 'NA-KH',
  'Khomas',
  '01f31412-8b38-4cf4-8eb8-23c9fbfa9a19');
INSERT INTO yacare_admission.province
 VALUES ('0ef1c57c-d222-434e-acc1-82540537db4f', false, 'NA-KU',
  'Kunene',
  '01f31412-8b38-4cf4-8eb8-23c9fbfa9a19');
INSERT INTO yacare_admission.province
 VALUES ('c2d83b59-3a8f-478f-afdc-c47058db25f2', false, 'NA-OW',
  'Ohangwena',
  '01f31412-8b38-4cf4-8eb8-23c9fbfa9a19');
INSERT INTO yacare_admission.province
 VALUES ('eee29bc1-86bd-4480-b222-8a4cbbf79947', false, 'NA-OK',
  'Okavango',
  '01f31412-8b38-4cf4-8eb8-23c9fbfa9a19');
INSERT INTO yacare_admission.province
 VALUES ('200b405f-6b64-4e2c-9f02-c8b59b7d6773', false, 'NA-OH',
  'Omaheke',
  '01f31412-8b38-4cf4-8eb8-23c9fbfa9a19');
INSERT INTO yacare_admission.province
 VALUES ('ccda9c0e-f7a3-469e-8f9a-3d86f5825eeb', false, 'NA-OS',
  'Omusati',
  '01f31412-8b38-4cf4-8eb8-23c9fbfa9a19');
INSERT INTO yacare_admission.province
 VALUES ('efe40d55-b298-471b-aed2-086e9a5ff822', false, 'NA-ON',
  'Oshana',
  '01f31412-8b38-4cf4-8eb8-23c9fbfa9a19');
INSERT INTO yacare_admission.province
 VALUES ('6e60305d-4a8a-43a9-9d9c-60b67ace83c1', false, 'NA-OT',
  'Oshikoto',
  '01f31412-8b38-4cf4-8eb8-23c9fbfa9a19');
INSERT INTO yacare_admission.province
 VALUES ('b64d1101-3f1f-4ae5-94e2-36b2c6218322', false, 'NA-OD',
  'Otjozondjupa',
  '01f31412-8b38-4cf4-8eb8-23c9fbfa9a19');
INSERT INTO yacare_admission.province
 VALUES ('7ab6da1e-a816-437d-bd6b-1155c4ceaf43', false, 'NE-1',
  'Agadez',
  '4d2a1791-b7c0-497e-adc9-9aa8e3d1fccf');
INSERT INTO yacare_admission.province
 VALUES ('73405350-209a-4510-8bc2-44083fa7ef1f', false, 'NE-2',
  'Diffa',
  '4d2a1791-b7c0-497e-adc9-9aa8e3d1fccf');
INSERT INTO yacare_admission.province
 VALUES ('97293b52-feb9-4d53-8d18-f8726eb9c617', false, 'NE-3',
  'Dosso',
  '4d2a1791-b7c0-497e-adc9-9aa8e3d1fccf');
INSERT INTO yacare_admission.province
 VALUES ('4874a47c-ec3a-42d0-922f-f7612abc4d51', false, 'NE-4',
  'Maradi',
  '4d2a1791-b7c0-497e-adc9-9aa8e3d1fccf');
INSERT INTO yacare_admission.province
 VALUES ('eb17461e-d5d3-4481-be08-19fa92c53334', false, 'NE-8',
  'Niamey',
  '4d2a1791-b7c0-497e-adc9-9aa8e3d1fccf');
INSERT INTO yacare_admission.province
 VALUES ('5f904b3e-b339-4ef4-93e5-3420f10adfaa', false, 'NE-5',
  'Tahoua',
  '4d2a1791-b7c0-497e-adc9-9aa8e3d1fccf');
INSERT INTO yacare_admission.province
 VALUES ('1065f15a-4b89-43de-8e95-b880ee9327a5', false, 'NE-6',
  'Tillabéri',
  '4d2a1791-b7c0-497e-adc9-9aa8e3d1fccf');
INSERT INTO yacare_admission.province
 VALUES ('d799319d-3b14-4c8e-bf64-1e0b7cce85cb', false, 'NE-7',
  'Zinder',
  '4d2a1791-b7c0-497e-adc9-9aa8e3d1fccf');
INSERT INTO yacare_admission.province
 VALUES ('ac3a46df-0c64-4990-9e9a-f8eba289bd99', false, 'NG-AB',
  'Abia',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('28903298-fff7-416b-be7d-fac7e24a86c2', false, 'NG-FC',
  'Abuja (FCT)',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('3aa652f8-4e3b-45db-84fa-4fb79952f84b', false, 'NG-AD',
  'Adamawa',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('8cde37d5-65a3-4802-aafc-475bef7b57e2', false, 'NG-AK',
  'Akwa Ibom',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('271a21f3-be41-4f27-b426-05f78e7655ed', false, 'NG-AN',
  'Anambra',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('5f11fb9f-e987-4dd6-b31b-a5998784ccd2', false, 'NG-BA',
  'Bauchi',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('78790d68-a5e1-463c-adf8-c1797a0a0b54', false, 'NG-BY',
  'Bayelsa',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('3b26868a-22bc-4f52-aa33-a0b225b6d2de', false, 'NG-BE',
  'Benue',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('2d2922ff-d188-491d-8b88-6d6da59f73dd', false, 'NG-BO',
  'Borno',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('c3a018c0-1e0c-4a0a-b4cf-ee81984d12dc', false, 'NG-CR',
  'Cross River',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('2a5c1c4f-c019-4746-9506-bd779e6b0bdc', false, 'NG-DE',
  'Delta',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('f8289bc0-80a0-4e7d-83f9-12f03f5a2e10', false, 'NG-EB',
  'Ebonyi',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('b9fd7bc9-357f-482a-99ca-a185edb339da', false, 'NG-ED',
  'Edo',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('f530111e-15c6-438b-9eb2-32305347bd97', false, 'NG-EK',
  'Ekiti',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('86b58789-742c-42bd-85b3-289a7b1c28e7', false, 'NG-EN',
  'Enugu',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('9e91552c-4c0b-4206-9869-73f3033037c4', false, 'NG-GO',
  'Gombe',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('5002d23b-0ded-4621-b9cc-d9209fe00640', false, 'NG-IM',
  'Imo',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('78e88c45-3868-4676-9dca-209bd584db6d', false, 'NG-JI',
  'Jigawa',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('214d0494-5c6f-41df-8f83-680342dbcd8e', false, 'NG-KD',
  'Kaduna',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('4aca9145-185b-4076-a2b6-de26184bfaac', false, 'NG-KN',
  'Kano',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('dfcbe2fe-72d2-4832-b3f4-f88dd653f9e7', false, 'NG-KT',
  'Katsina',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('0d355dfa-1dbd-484d-9782-0d70cc1d138c', false, 'NG-KE',
  'Kebbi',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('5fe3857f-bef8-4621-ad3e-ed99830c52f5', false, 'NG-KO',
  'Kogi',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('5a165e40-f4a7-4e99-9164-2e1ab53caaeb', false, 'NG-KW',
  'Kwara',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('5c03c22e-e25c-47e9-bb33-8ab022af1664', false, 'NG-LA',
  'Lagos',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('5bdbbf34-2944-4e14-9c0f-d1e8d3e20759', false, 'NG-NA',
  'Nasarawa',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('301f3dbf-fc18-426b-9ba2-af63b4fbdfb1', false, 'NG-NI',
  'Niger',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('d6b727cc-2638-4884-b541-939367ce23bd', false, 'NG-OG',
  'Ogun',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('629fee42-6771-45b3-831f-9d2b52b9826c', false, 'NG-ON',
  'Ondo',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('7ca2cfb7-f379-4796-8bbf-df3519e2c49c', false, 'NG-OS',
  'Osun',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('891fba28-6326-41bc-9b50-475cc724b904', false, 'NG-OY',
  'Oyo',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('12ea50c3-e840-4f2e-81c4-f86d4ddfde7d', false, 'NG-PL',
  'Plateau',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('ad0c4dc8-744a-4fd0-959f-76027989901a', false, 'NG-RI',
  'Rivers',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('5212bf28-06e0-4240-9052-c99f957d1d45', false, 'NG-SO',
  'Sokoto',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('c486ee93-a827-4c67-8e08-b8e20757eb0b', false, 'NG-TA',
  'Taraba',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('26a9b4c9-4421-41b1-8f94-81474eee5cb7', false, 'NG-YO',
  'Yobe',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('6483917e-8a28-40b1-9656-bf49e8ec0a94', false, 'NG-ZA',
  'Zamfara',
  '6ceb99d1-60c4-4ada-8a29-05ef4ecf15b1');
INSERT INTO yacare_admission.province
 VALUES ('b1be836c-592b-4aee-bf2d-5d435b598159', false, 'NI-AN',
  'Atlántico Norte',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('76a7bb0a-2331-4cf3-a38a-b7f8235985cb', false, 'NI-AS',
  'Atlántico Sur',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('ad74e229-9465-4c25-9033-fd50db73a65b', false, 'NI-BO',
  'Boaco',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('f1465db8-1698-49bd-99dd-79b359895cb9', false, 'NI-CA',
  'Carazo',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('d33a9a09-e102-4254-a9b0-6a5359392a52', false, 'NI-CI',
  'Chinandega',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('d68a3cfb-fb72-441b-b50b-e49cfb51485c', false, 'NI-CO',
  'Chontales',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('038ba16b-9729-4749-a3ee-126caa36b2be', false, 'NI-ES',
  'Estelí',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('88674c61-6ab7-4898-ae6d-97c01f42ed10', false, 'NI-GR',
  'Granada',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('5d758d07-564b-4556-9a0b-286e03e9fbda', false, 'NI-JI',
  'Jinotega',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('6c5ebc63-2a05-4785-9156-c5b6a35e654e', false, 'NI-LE',
  'León',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('5f72e60c-42f6-40df-b4ce-a57eb93862a6', false, 'NI-MD',
  'Madriz',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('a4c5848a-ff3e-4e7c-96d1-368400d411b2', false, 'NI-MN',
  'Managua',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('e67a4b1a-f398-4eed-8943-ea34f142ad3f', false, 'NI-MS',
  'Masaya',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('c9f62466-a757-4593-b4f4-d519cd97d879', false, 'NI-MT',
  'Matagalpa',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('43f6f289-acf3-4e76-96a1-f36da03b2525', false, 'NI-NS',
  'Nueva Segovia',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('011f39ac-a080-4fb4-8571-122567a7c998', false, 'NI-SJ',
  'Río San Juan',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('21037507-af9d-47db-9971-90cc6590f2f9', false, 'NI-RI',
  'Rivas',
  'd6e64ec8-deba-4821-8dec-2bd2874c3071');
INSERT INTO yacare_admission.province
 VALUES ('0ba68cdb-ea70-428d-bd04-635632c5ca71', false, 'NL-DR',
  'Drenthe',
  '6db6d5db-0bc9-47fd-b23b-3c811c366a45');
INSERT INTO yacare_admission.province
 VALUES ('ee9fd56e-ed03-4494-a824-481517a51d1d', false, 'NL-FL',
  'Flevoland',
  '6db6d5db-0bc9-47fd-b23b-3c811c366a45');
INSERT INTO yacare_admission.province
 VALUES ('c3a5a680-8d60-4026-8880-0e9c47cf793a', false, 'NL-FR',
  'Friesland',
  '6db6d5db-0bc9-47fd-b23b-3c811c366a45');
INSERT INTO yacare_admission.province
 VALUES ('903b50e1-3d55-4016-9836-a28cd165245c', false, 'NL-GE',
  'Gelderland',
  '6db6d5db-0bc9-47fd-b23b-3c811c366a45');
INSERT INTO yacare_admission.province
 VALUES ('63dd03d9-7538-43cd-b612-16408a325332', false, 'NL-GR',
  'Groningen',
  '6db6d5db-0bc9-47fd-b23b-3c811c366a45');
INSERT INTO yacare_admission.province
 VALUES ('8ba5f507-be2b-4761-b109-45938239e0d8', false, 'NL-LI',
  'Limburg',
  '6db6d5db-0bc9-47fd-b23b-3c811c366a45');
INSERT INTO yacare_admission.province
 VALUES ('3bc2b8ba-ac11-421a-939e-16e1cd8ab2a4', false, 'NL-NB',
  'Noord-Brabant',
  '6db6d5db-0bc9-47fd-b23b-3c811c366a45');
INSERT INTO yacare_admission.province
 VALUES ('67cf1783-66e5-4bfd-9474-a74b3021b555', false, 'NL-NH',
  'Noord-Holland',
  '6db6d5db-0bc9-47fd-b23b-3c811c366a45');
INSERT INTO yacare_admission.province
 VALUES ('4ee4bdbe-8be1-4178-a1be-b701b8849b33', false, 'NL-OV',
  'Overijssel',
  '6db6d5db-0bc9-47fd-b23b-3c811c366a45');
INSERT INTO yacare_admission.province
 VALUES ('24bd1532-23ef-4321-8c3b-3b778ac445b6', false, 'NL-UT',
  'Utrecht',
  '6db6d5db-0bc9-47fd-b23b-3c811c366a45');
INSERT INTO yacare_admission.province
 VALUES ('94e53847-be78-4ade-84e5-d7b8efc06a13', false, 'NL-ZE',
  'Zeeland',
  '6db6d5db-0bc9-47fd-b23b-3c811c366a45');
INSERT INTO yacare_admission.province
 VALUES ('7eb55ce7-d0f8-436b-bf6c-b75b428b2189', false, 'NL-ZH',
  'Zuid-Holland',
  '6db6d5db-0bc9-47fd-b23b-3c811c366a45');
INSERT INTO yacare_admission.province
 VALUES ('b07a5f7a-6e96-41ce-b09f-50bca3cf5b70', false, 'NO-02',
  'Akershus',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('b622ef58-4022-4f24-a995-8999666356e0', false, 'NO-09',
  'Aust-Agder',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('dc8694f2-39b6-497b-830f-e76fd9b6e49d', false, 'NO-06',
  'Buskerud',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('af56847b-7d28-4155-a4f6-a9f98abb530a', false, 'NO-20',
  'Finnmark',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('f3bb8534-ca2b-4263-96a7-859c8a0db3e6', false, 'NO-04',
  'Hedmark',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('cfb72e15-a9f3-4efb-b946-1bfb3e1d2b6d', false, 'NO-12',
  'Hordaland',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('de0c34b9-ac01-4da6-a54c-6e671b06db88', false, 'NO-22',
  'Jan Mayen',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('8698667b-882a-4bb4-9cc1-f1eb823bbd4c', false, 'NO-15',
  'Møre og Romsdal',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('d27f93a8-e2bd-4207-84b6-666de3bddc3a', false, 'NO-18',
  'Nordland',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('8b882bf2-fe58-4e86-a1c2-dc1c292169b6', false, 'NO-17',
  'Nord-Trøndelag',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('264af5e4-f88a-4f5d-b61d-ae97c6847c92', false, 'NO-05',
  'Oppland',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('873d273a-5d84-4fda-844e-f4b57d36642b', false, 'NO-03',
  'Oslo',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('3382c334-446a-4926-a3f5-6ee2a87891a7', false, 'NO-01',
  'Østfold',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('8bd22d26-fa4d-405e-b8a3-5a3ba4dfb9c9', false, 'NO-11',
  'Rogaland',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('1e30047b-f963-46d3-8685-8d206abd2e1d', false, 'NO-14',
  'Sogn og Fjordane',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('45bdc98e-8923-4964-b9ee-262410a3b202', false, 'NO-16',
  'Sør-Trøndelag',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('cc615493-0e4c-4ece-b3f6-0d536746dfdf', false, 'NO-21',
  'Svalbard',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('39c3dac0-7ea8-4076-82c6-feeeefae8e21', false, 'NO-08',
  'Telemark',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('bae441cf-480d-4d85-b006-033fcbd54d2d', false, 'NO-19',
  'Troms',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('16d720aa-ede9-49b2-84f7-3474bff59221', false, 'NO-10',
  'Vest-Agder',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('ec276f3a-d995-4e4f-979f-7fe6b8aa4be5', false, 'NO-07',
  'Vestfold',
  '48f8fb7d-4199-4d9b-9e2d-cabe48b0616a');
INSERT INTO yacare_admission.province
 VALUES ('3e6f55b1-f862-4707-9890-5c1a84714cac', false, 'NP-BA',
  'Bagmati',
  '5b3b15a3-a35e-47a3-8291-1049e42b1fa5');
INSERT INTO yacare_admission.province
 VALUES ('1dbbdb85-8898-42be-96bd-40ca3f5efea6', false, 'NP-BH',
  'Bheri',
  '5b3b15a3-a35e-47a3-8291-1049e42b1fa5');
INSERT INTO yacare_admission.province
 VALUES ('648d1e10-9ee4-4d6c-8e9b-8bccb98f453b', false, 'NP-DH',
  'Dhawalagiri',
  '5b3b15a3-a35e-47a3-8291-1049e42b1fa5');
INSERT INTO yacare_admission.province
 VALUES ('167fd8b9-7d63-4d93-b127-88fc0e4a21e4', false, 'NP-GA',
  'Gandaki',
  '5b3b15a3-a35e-47a3-8291-1049e42b1fa5');
INSERT INTO yacare_admission.province
 VALUES ('bd8c6f90-2f85-4662-b628-da8e5aada6fb', false, 'NP-JA',
  'Janakpur',
  '5b3b15a3-a35e-47a3-8291-1049e42b1fa5');
INSERT INTO yacare_admission.province
 VALUES ('8ba3d388-4314-46da-ab6d-e522c93e3b0b', false, 'NP-KA',
  'Karnali',
  '5b3b15a3-a35e-47a3-8291-1049e42b1fa5');
INSERT INTO yacare_admission.province
 VALUES ('edd11187-90b6-4703-a5cc-17b07b110cab', false, 'NP-KO',
  'Kosi',
  '5b3b15a3-a35e-47a3-8291-1049e42b1fa5');
INSERT INTO yacare_admission.province
 VALUES ('08d20555-ed29-403f-8e54-fef9c6adbe49', false, 'NP-LU',
  'Lumbini',
  '5b3b15a3-a35e-47a3-8291-1049e42b1fa5');
INSERT INTO yacare_admission.province
 VALUES ('c57c5e2d-ada7-4d4b-8dfc-0f0fd679af03', false, 'NP-MA',
  'Mahakali',
  '5b3b15a3-a35e-47a3-8291-1049e42b1fa5');
INSERT INTO yacare_admission.province
 VALUES ('7a004ecd-ac75-4df3-b731-fee92817f98b', false, 'NP-ME',
  'Mechi',
  '5b3b15a3-a35e-47a3-8291-1049e42b1fa5');
INSERT INTO yacare_admission.province
 VALUES ('f58016b8-014c-4898-a632-f720549d2b1d', false, 'NP-NA',
  'Narayani',
  '5b3b15a3-a35e-47a3-8291-1049e42b1fa5');
INSERT INTO yacare_admission.province
 VALUES ('d30ac392-ac29-481f-b076-1d03bd4db086', false, 'NP-RA',
  'Rapti',
  '5b3b15a3-a35e-47a3-8291-1049e42b1fa5');
INSERT INTO yacare_admission.province
 VALUES ('b49e9de4-620d-4d16-813c-3ee789f9a82a', false, 'NP-SA',
  'Sagarmatha',
  '5b3b15a3-a35e-47a3-8291-1049e42b1fa5');
INSERT INTO yacare_admission.province
 VALUES ('d5f69260-b0e5-447e-902d-befab391c01c', false, 'NP-SE',
  'Seti',
  '5b3b15a3-a35e-47a3-8291-1049e42b1fa5');
INSERT INTO yacare_admission.province
 VALUES ('09da2dc5-ce3b-43d7-bbd2-50994ae23ece', false, 'NR-01',
  'Aiwo',
  '2df4d2de-5d49-4da0-a757-c655f6b08d77');
INSERT INTO yacare_admission.province
 VALUES ('356eb910-f653-4d47-a2fb-887068ff3ab1', false, 'NR-02',
  'Anabar',
  '2df4d2de-5d49-4da0-a757-c655f6b08d77');
INSERT INTO yacare_admission.province
 VALUES ('abb4c1c5-b37d-4059-b718-8a9a4928efc6', false, 'NR-03',
  'Anetan',
  '2df4d2de-5d49-4da0-a757-c655f6b08d77');
INSERT INTO yacare_admission.province
 VALUES ('f75bcae8-8c01-49e0-9c76-5d9d3d225112', false, 'NR-04',
  'Anibare',
  '2df4d2de-5d49-4da0-a757-c655f6b08d77');
INSERT INTO yacare_admission.province
 VALUES ('958665ce-7653-480d-a471-7e04872037f7', false, 'NR-05',
  'Baiti',
  '2df4d2de-5d49-4da0-a757-c655f6b08d77');
INSERT INTO yacare_admission.province
 VALUES ('3d1bed95-43a6-4c27-9b03-041bb29b1c2a', false, 'NR-06',
  'Boe',
  '2df4d2de-5d49-4da0-a757-c655f6b08d77');
INSERT INTO yacare_admission.province
 VALUES ('2a55d970-0fc4-4a26-b99d-998968496430', false, 'NR-07',
  'Buada',
  '2df4d2de-5d49-4da0-a757-c655f6b08d77');
INSERT INTO yacare_admission.province
 VALUES ('104c19d3-6164-417c-b4e5-2d9a56970fe6', false, 'NR-08',
  'Denigomodu',
  '2df4d2de-5d49-4da0-a757-c655f6b08d77');
INSERT INTO yacare_admission.province
 VALUES ('6023d1c6-61fe-47e2-88ce-84b9f84e12c9', false, 'NR-09',
  'Ewa',
  '2df4d2de-5d49-4da0-a757-c655f6b08d77');
INSERT INTO yacare_admission.province
 VALUES ('54c53562-afee-4c07-9679-66263b755dfc', false, 'NR-10',
  'Ijuw',
  '2df4d2de-5d49-4da0-a757-c655f6b08d77');
INSERT INTO yacare_admission.province
 VALUES ('bb50f1ad-df43-4999-9442-d79b04278555', false, 'NR-11',
  'Meneng',
  '2df4d2de-5d49-4da0-a757-c655f6b08d77');
INSERT INTO yacare_admission.province
 VALUES ('a06029f5-2ca0-4521-8c88-6f89261b41c7', false, 'NR-12',
  'Nibok',
  '2df4d2de-5d49-4da0-a757-c655f6b08d77');
INSERT INTO yacare_admission.province
 VALUES ('24c2a4f4-136f-43b7-9d3b-48fdb84485ef', false, 'NR-13',
  'Uaboe',
  '2df4d2de-5d49-4da0-a757-c655f6b08d77');
INSERT INTO yacare_admission.province
 VALUES ('de76f58f-1be4-451d-b19a-4aeca6def52b', false, 'NR-14',
  'Yaren',
  '2df4d2de-5d49-4da0-a757-c655f6b08d77');
INSERT INTO yacare_admission.province
 VALUES ('857f29ca-ea51-488d-8cf3-751e98520be0', false, 'NZ-AUK',
  'Auckland',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('c76cdd74-9620-4f27-a0ba-e0b66f39536d', false, 'NZ-BOP',
  'Bay of Plenty',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('a58a8c9d-9f44-4023-95d7-a1df76aa739b', false, 'NZ-CAN',
  'Canterbury',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('474a5e07-8563-42f9-8105-6d91664bf5f2', false, 'NZ-GIS',
  'Gisborne',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('d4955495-8e87-411b-8733-e035afe91b07', false, 'NZ-HKB',
  'Hawke''s Bay',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('edb4613b-ddbf-4fe5-84af-8b030da67898', false, 'NZ-MWT',
  'Manawatu-Wanganui',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('3763e31c-ac2a-4b87-a7d6-d99063199dae', false, 'NZ-MBH',
  'Marlborough',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('9c9c75f3-1c45-4dc9-9d0f-e5e5fd7a045a', false, 'NZ-NSN',
  'Nelson',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('a7fa68b8-b2ef-4823-b1b9-de8c1fad5676', false, 'NZ-NTL',
  'Northland',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('45b98b38-d50c-4ad0-98e8-e0dbac68527c', false, 'NZ-OTA',
  'Otago',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('8a5dde57-9b87-449f-99f4-9d03b9765854', false, 'NZ-STL',
  'Southland',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('e6609c23-8939-4860-b628-cc28113d25f2', false, 'NZ-TKI',
  'Taranaki',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('d62e015e-b2a1-4940-a217-7e67211c1fe1', false, 'NZ-TAS',
  'Tasman',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('ff6248b0-0d8a-4243-8d4a-bdb816f07b86', false, 'NZ-WKO',
  'Waikato',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('db924463-89c6-41e5-af4d-3b04be60c27d', false, 'NZ-WGN',
  'Wellington',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('7efef167-942f-49eb-87ab-b160e4cca40a', false, 'NZ-WTC',
  'West Coast',
  'ff0db778-064f-4d65-b34c-b1dc0b0679a0');
INSERT INTO yacare_admission.province
 VALUES ('ceeb33da-a9d5-4ed1-8109-0cfb808c2e03', false, 'OM-DA',
  'Ad Dakhiliyah',
  'c6eae6c6-aa1e-44f5-bb2f-343dc8927d60');
INSERT INTO yacare_admission.province
 VALUES ('bc6509e4-2793-41ae-a5ff-27d98fed4a05', false, 'OM-BA',
  'Al Batinah',
  'c6eae6c6-aa1e-44f5-bb2f-343dc8927d60');
INSERT INTO yacare_admission.province
 VALUES ('fab1f05c-6aad-4856-a7d7-f3fe035a22da', false, 'OM-BU',
  'Al Buraymi',
  'c6eae6c6-aa1e-44f5-bb2f-343dc8927d60');
INSERT INTO yacare_admission.province
 VALUES ('3f042992-844c-48fe-914d-2142ac9bcf77', false, 'OM-WU',
  'Al Wustá',
  'c6eae6c6-aa1e-44f5-bb2f-343dc8927d60');
INSERT INTO yacare_admission.province
 VALUES ('7dea4318-2839-4171-94c8-59409858e5da', false, 'OM-SH',
  'Ash Sharqiyah',
  'c6eae6c6-aa1e-44f5-bb2f-343dc8927d60');
INSERT INTO yacare_admission.province
 VALUES ('6bcdca57-e212-4883-ab49-a9d04585d895', false, 'OM-ZA',
  'Az Zahirah',
  'c6eae6c6-aa1e-44f5-bb2f-343dc8927d60');
INSERT INTO yacare_admission.province
 VALUES ('567d4cdd-b815-4764-87e8-ba1d82747dba', false, 'OM-MA',
  'Masqat',
  'c6eae6c6-aa1e-44f5-bb2f-343dc8927d60');
INSERT INTO yacare_admission.province
 VALUES ('38dbc8a7-70b2-4d0c-9226-7c5804297659', false, 'OM-MU',
  'Musandam',
  'c6eae6c6-aa1e-44f5-bb2f-343dc8927d60');
INSERT INTO yacare_admission.province
 VALUES ('fd03e7b8-90d0-42ee-9a2b-5ddb5d8a9b44', false, 'OM-ZU',
  'Zhufar',
  'c6eae6c6-aa1e-44f5-bb2f-343dc8927d60');
INSERT INTO yacare_admission.province
 VALUES ('4ac1ba3d-d2b3-4db7-b301-12f3715b80e7', false, 'PA-1',
  'Bocas del Toro',
  'b37141ed-5904-4bd5-bbe3-147dc359f22a');
INSERT INTO yacare_admission.province
 VALUES ('9fa35eae-3167-4e7f-8048-133599364b16', false, 'PA-4',
  'Chiriquí',
  'b37141ed-5904-4bd5-bbe3-147dc359f22a');
INSERT INTO yacare_admission.province
 VALUES ('54ca5161-f4ea-4729-9989-17393d07b1f3', false, 'PA-2',
  'Coclé',
  'b37141ed-5904-4bd5-bbe3-147dc359f22a');
INSERT INTO yacare_admission.province
 VALUES ('21f03b8f-8666-4379-a11e-d98272844da8', false, 'PA-3',
  'Colón',
  'b37141ed-5904-4bd5-bbe3-147dc359f22a');
INSERT INTO yacare_admission.province
 VALUES ('d1388ac1-a44f-419b-94d9-84e2f3bd8c72', false, 'PA-5',
  'Darién',
  'b37141ed-5904-4bd5-bbe3-147dc359f22a');
INSERT INTO yacare_admission.province
 VALUES ('3e049e52-29ac-4ecf-b5ad-ede71c092ee0', false, 'PA-6',
  'Herrera',
  'b37141ed-5904-4bd5-bbe3-147dc359f22a');
INSERT INTO yacare_admission.province
 VALUES ('2434ec0d-6a54-47c3-8ee4-019c035385d0', false, 'PA-7',
  'Los Santos',
  'b37141ed-5904-4bd5-bbe3-147dc359f22a');
INSERT INTO yacare_admission.province
 VALUES ('5f54c37d-cbf7-4c43-aa5e-ad7aa5ab72f8', false, 'PA-8',
  'Panamá',
  'b37141ed-5904-4bd5-bbe3-147dc359f22a');
INSERT INTO yacare_admission.province
 VALUES ('25f0b13f-6c35-47e3-ad76-ce61e7048ac1', false, 'PA-9',
  'Veraguas',
  'b37141ed-5904-4bd5-bbe3-147dc359f22a');
INSERT INTO yacare_admission.province
 VALUES ('f83fd7bf-5cb1-4d8f-9085-567293518dfa', false, 'PE-AMA',
  'Amazonas',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('825f1625-b070-4122-b110-249d2735a312', false, 'PE-ANC',
  'Ancash',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('d75667af-ffdf-46e9-bdbe-1820ecbb4000', false, 'PE-APU',
  'Apurimac',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('f36c92b0-becb-4999-957f-e5646a41f798', false, 'PE-ARE',
  'Arequipa',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('4e7e09a3-8e36-42d4-bf71-7ad0053b733a', false, 'PE-AYA',
  'Ayacucho',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('f1c9c3cb-83ea-4b90-9967-daf2414577f4', false, 'PE-CAJ',
  'Cajamarca',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('e81dc4be-a0df-4041-9eb5-e079ea84e462', false, 'PE-CAL',
  'Callao',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('976b5e79-fc47-412e-a13d-266316d434f9', false, 'PE-CUS',
  'Cusco',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('a99a59ef-489f-4e5b-bea1-5729860f43e0', false, 'PE-HUV',
  'Huancavelica',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('95631afc-7fbc-42cb-946a-bf02ee87fe3f', false, 'PE-HUC',
  'Huanuco',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('e031b0ec-7586-4ae3-9357-df1b5044abb4', false, 'PE-ICA',
  'Ica',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('f2569102-ce53-4d57-b742-ce6b447a385c', false, 'PE-JUN',
  'Junín',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('0f89c18a-4546-42c8-96b4-c6549816c806', false, 'PE-LAL',
  'La Libertad',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('e5319113-a8da-4600-b6e9-c95aaa2857e6', false, 'PE-LAM',
  'Lambayeque',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('a7bbec1a-46e3-4ac3-a96b-b02f33fa88bb', false, 'PE-LIM',
  'Lima',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('5f6de3ae-c1ee-4f15-85db-65339ca32f05', false, 'PE-LOR',
  'Loreto',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('076f6eb5-55e5-417d-8f55-7f3abdca19ae', false, 'PE-MDD',
  'Madre de Dios',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('9e0ccc16-768e-4fb7-85d2-a4edf8025347', false, 'PE-MOQ',
  'Moquegua',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('f26f7718-cac0-43f4-aef5-31ccf4902b20', false, 'PE-PAS',
  'Pasco',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('de8472a2-31e1-4299-a7f8-c237279c3850', false, 'PE-PIU',
  'Piura',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('d1e405ab-f4d4-468c-b022-52757e5770ee', false, 'PE-PUN',
  'Puno',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('c86f1fcf-47c6-4482-b104-70ecb585074e', false, 'PE-SAM',
  'San Martin',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('694c13db-ccd7-4ea7-925b-cb467d333fa2', false, 'PE-TAC',
  'Tacna',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('75daa5ff-ebc2-4a88-aed4-faffccebe6eb', false, 'PE-TUM',
  'Tumbes',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('c99ed580-1715-4527-b5be-b8b7d1600608', false, 'PE-UCA',
  'Ucayali',
  '68aab402-ec76-4f3a-ad33-1608653474a1');
INSERT INTO yacare_admission.province
 VALUES ('fadb366d-45da-413f-a04f-ba89c37643bb', false, 'PG-CPM',
  'Central',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('a2e8935f-7761-4886-a414-ee2968ea2ccd', false, 'PG-EBR',
  'East New Britain',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('02a07203-1751-4c27-8c99-effd5243b8bc', false, 'PG-ESW',
  'East Sepik',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('87297a49-8f64-4c80-8a5b-33cd9ba62620', false, 'PG-EHG',
  'Eastern Highlands',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('8dfa6ff9-3b4e-4a04-af49-ae283eb6c515', false, 'PG-EPW',
  'Enga',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('7a135624-5449-4b2a-bbd3-4fa71d00b989', false, 'PG-GPK',
  'Gulf',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('fb4b4a97-8853-4a76-948b-4cc2e91a4486', false, 'PG-MPM',
  'Madang',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('a53e37b1-10f7-41c7-b353-6d734290f551', false, 'PG-MRL',
  'Manus',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('5713092f-948a-4355-a5e5-5a8fa25dcdce', false, 'PG-MBA',
  'Milne Bay',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('b4168496-939b-41d3-a705-80da871d3aff', false, 'PG-MPL',
  'Morobe',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('863c3efb-65a1-434f-bc7c-a7e00f7b8339', false, 'PG-NCD',
  'National Capital District',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('2b031d46-2e0a-4f41-b6f5-e22b91922195', false, 'PG-NIK',
  'New Ireland',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('2224b99c-85ff-4d68-ad4e-e507e99f4b1e', false, 'PG-NSA',
  'North Solomons',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('05d71b88-fa05-4aff-a5a6-b17b128da8fe', false, 'PG-NPP',
  'Oro',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('4e1442c0-1b65-4363-87f6-82c69e961f06', false, 'PG-SAN',
  'Sandaun',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('7798d3f6-cd39-4c1c-a36b-ac089cd0b868', false, 'PG-CPK',
  'Simbu',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('a1014968-15d3-49f4-825c-7c817f28ce96', false, 'PG-SHM',
  'Southern Highlands',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('289f6330-cdbf-491e-8c28-940a941f7652', false, 'PG-WBK',
  'West New Britain',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('bebddd3a-da2e-4a2c-a6f3-9b03bb04fde7', false, 'PG-WPD',
  'Western',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('7fe95830-8a9b-4f37-bac9-fb8b0aeb92c9', false, 'PG-WHM',
  'Western Highlands',
  '0e1f42fb-fcd6-4be6-abdd-a5c5edf3c11d');
INSERT INTO yacare_admission.province
 VALUES ('31137844-00be-4cdf-afa5-10ccc9a0966a', false, 'PH-ABR',
  'Abra',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('980073ce-8287-43d6-8eae-f20d76edc38a', false, 'PH-AGN',
  'Agusan del Norte',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('70d8ab62-2285-4e7d-aa7d-2d2324837694', false, 'PH-AGS',
  'Agusan del Sur',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('b688499d-77ef-4cc4-9d6b-fe21dd5d7c0a', false, 'PH-AKL',
  'Aklan',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('c088c016-37c4-43b7-bf4b-6062ddb66a2a', false, 'PH-ALB',
  'Albay',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('6530bde5-2c8c-463e-a29a-7584893141ed', false, 'PH-ANT',
  'Antique',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('77c286f5-fc4d-43de-8b9d-c82a21b208a5', false, 'PH-APA',
  'Apayao',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('b2455b14-06a4-44f3-85cb-0373aa8127bc', false, 'PH-AUR',
  'Aurora',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('fe8e1a75-414f-47c5-b3cd-296638021e35', false, 'PH-14',
  'Autonomous Region in Muslim Mindanao (ARMM)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('58479232-3228-4e76-a072-49f093aed03f', false, 'PH-BAS',
  'Basilan',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('591d042e-856b-458c-9550-449740c5d209', false, 'PH-BAN',
  'Bataan',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('24ba3353-ad9c-4495-808d-02b0ee218465', false, 'PH-BTN',
  'Batanes',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('c7cb7286-6818-45a9-88eb-81428fb44701', false, 'PH-BTG',
  'Batangas',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('ff96d2e7-40ce-4f55-971f-a7a4a3077ee5', false, 'PH-BEN',
  'Benguet',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('7f578d63-9724-4848-9862-732b7a12c580', false, 'PH-05',
  'Bicol Region (Region V)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('a698096b-a299-4760-8edb-fbc5eb8f6872', false, 'PH-BIL',
  'Biliran',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('73bded29-6eff-420a-8fb4-530c6db35252', false, 'PH-BOH',
  'Bohol',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('3f51fe12-5663-4e86-9905-dc8f64c4fb8a', false, 'PH-BUK',
  'Bukidnon',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('838a4ad3-7c2f-45ff-8030-194035fe12c1', false, 'PH-BUL',
  'Bulacan',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('940eaf01-d42f-40e9-a628-87753e3eba19', false, 'PH-CAG',
  'Cagayan',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('48a67037-fddf-4793-8864-6f4ec1e0e103', false, 'PH-02',
  'Cagayan Valley (Region II)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('33839cd5-3cda-4a8a-8e1c-e579388e9565', false, 'PH-40',
  'Calabarzon (Region IV-A)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('40420a20-3784-411a-97ea-e3dfa5290389', false, 'PH-CAN',
  'Camarines Norte',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('6cfbf08a-1368-4981-802a-ad5c00ce1d9b', false, 'PH-CAS',
  'Camarines Sur',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('780b8ef0-6bde-4acc-a55b-92c1f1471185', false, 'PH-CAM',
  'Camiguin',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('fa80bc4b-ca68-4a31-b9c4-16068ff0d544', false, 'PH-CAP',
  'Capiz',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('a30974b5-4b0b-4cb0-b55e-d4d7d26da9dd', false, 'PH-13',
  'Caraga (Region XIII)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('24ab5323-cbd3-4d74-ab6e-a6597147a3b7', false, 'PH-CAT',
  'Catanduanes',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('370c624c-fd62-48a4-9a53-f48987e24505', false, 'PH-CAV',
  'Cavite',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('94ef9b61-2904-4d38-9be8-b2a36277cc28', false, 'PH-CEB',
  'Cebu',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('0c6b6181-6bd7-4236-b187-290899451d7c', false, 'PH-03',
  'Central Luzon (Region III)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('8da3be44-6bf0-4222-b200-f330ff013352', false, 'PH-07',
  'Central Visayas (Region VII)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('98c3993e-4c3e-4355-8828-dad762454fc8', false, 'PH-COM',
  'Compostela Valley',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('5ee51f48-f32e-4d60-bd97-af6cf1548cbf', false, 'PH-15',
  'Cordillera Administrative Region (CAR)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('483818ad-52a1-4752-b658-e27eb2318ebb', false, 'PH-NCO',
  'Cotabato',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('6a221165-e217-49ed-8401-e954b9359bbb', false, 'PH-DAV',
  'Davao del Norte',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('db5fa96e-d66e-40de-9285-bb1eef1dcd5b', false, 'PH-DAS',
  'Davao del Sur',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('6b94a140-2d9d-46cc-8019-790c09acac40', false, 'PH-DAO',
  'Davao Oriental',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('d3fd4cc7-31f1-48cc-8ffd-1d92cdddd814', false, 'PH-11',
  'Davao Region (Region XI)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('5405c362-5463-45be-96b4-aef2eff02c28', false, 'PH-DIN',
  'Dinagat Islands',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('83d3d11f-557b-4064-a6a0-d79f3f006e8f', false, 'PH-EAS',
  'Eastern Samar',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('8db99e1a-7164-4cdf-95ca-fdb3068c90b3', false, 'PH-08',
  'Eastern Visayas (Region VIII)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('fb9829e7-4949-45a7-9882-d6ca57011808', false, 'PH-GUI',
  'Guimaras',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('85c66d51-3506-4066-b26e-3aa634850bd9', false, 'PH-IFU',
  'Ifugao',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('f5b53a98-2d91-4341-a174-316f7e2c0e08', false, 'PH-ILN',
  'Ilocos Norte',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('badbaaec-166a-4768-8a52-c46a5aabcdea', false, 'PH-01',
  'Ilocos Region (Region I)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('849adda0-bd3a-436d-90f0-f8965361694d', false, 'PH-ILS',
  'Ilocos Sur',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('aa5ee8b6-f0f3-457b-9dd6-0f0a27296934', false, 'PH-ILI',
  'Iloilo',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('696bc6bc-d548-45f2-b2e0-ea5042cd445c', false, 'PH-ISA',
  'Isabela',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('a9ec28c6-f71e-40aa-9ddb-28b232490712', false, 'PH-KAL',
  'Kalinga',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('4c447ea3-a404-405a-95d4-742f426fd32d', false, 'PH-LUN',
  'La Union',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('86ec5107-0ed8-4021-8ead-1be3b6c8657f', false, 'PH-LAG',
  'Laguna',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('20c8a34f-fe6d-4ce5-bca5-4861576ed030', false, 'PH-LAN',
  'Lanao del Norte',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('35bdcf22-b4d5-4dec-9d7c-5785b3b8bb8b', false, 'PH-LAS',
  'Lanao del Sur',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('255e0a94-1c67-492b-bb4a-5fe395884cb0', false, 'PH-LEY',
  'Leyte',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('3c73d068-90f0-4adf-9517-d74b00acf78b', false, 'PH-MAG',
  'Maguindanao',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('5d19cbbc-c7d1-467d-89e1-49dd6efd339f', false, 'PH-MAD',
  'Marinduque',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('9892df98-763a-44cc-a0bc-4b800f6eee4a', false, 'PH-MAS',
  'Masbate',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('95ded672-e38a-44c4-8c74-6196173daeb8', false, 'PH-41',
  'Mimaropa (Region IV-B)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('49f163ed-c554-4cb9-a4e4-94b10763b39c', false, 'PH-MSC',
  'Misamis Occidental',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('1e131d36-f5dc-4e04-996f-7066dfa85e8e', false, 'PH-MSR',
  'Misamis Oriental',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('51d78e93-2ce0-4db6-ab64-ff36ba81a2f8', false, 'PH-MOU',
  'Mountain Province',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('086eb069-5272-4c12-889b-50803e1bbdd8', false, 'PH-00',
  'National Capital Region (NCR)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('6f71577d-fd29-4d89-b54f-5cad1cd67302', false, 'PH-NEC',
  'Negros Occidental',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('dae47282-0270-437d-87b3-5a8bb598657f', false, 'PH-NER',
  'Negros Oriental',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('173c5599-07e4-4a1b-b74a-1008ff82147e', false, 'PH-10',
  'Northern Mindanao (Region X)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('30660605-f161-4702-a658-6d306420d533', false, 'PH-NSA',
  'Northern Samar',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('dd999479-20f8-4c1f-9198-a76880c53fc0', false, 'PH-NUE',
  'Nueva Ecija',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('6d0cefdf-65ed-45b3-bc15-9b4a050ae4df', false, 'PH-NUV',
  'Nueva Vizcaya',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('2538f8f9-7d46-4a73-a210-747fe7f3622c', false, 'PH-MDC',
  'Occidental Mindoro',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('8728b46f-8b3d-466e-9e6d-33ce61bb648e', false, 'PH-MDR',
  'Oriental Mindoro',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('e3f1384f-0598-4f06-b4f1-75fb5840ab17', false, 'PH-PLW',
  'Palawan',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('c52d4d32-37ab-4990-989f-23ade5b0d12d', false, 'PH-PAM',
  'Pampanga',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('57af6f74-8e2f-4814-bcab-2772bffee656', false, 'PH-PAN',
  'Pangasinan',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('91c59e29-8b8c-4299-9d58-e9f8c79b4fd9', false, 'PH-QUE',
  'Quezon',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('ae2dc24c-581f-4565-8bd7-80ebcb080445', false, 'PH-QUI',
  'Quirino',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('49564fdd-4467-423e-a9aa-77631d47e3fc', false, 'PH-RIZ',
  'Rizal',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('b4b8775b-0bd0-4ad6-b78d-9a03131ff3be', false, 'PH-ROM',
  'Romblon',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('25c8ca86-d41c-4605-b5aa-117eaf8a5c33', false, 'PH-WSA',
  'Samar',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('24add918-dd9b-4ac2-9e39-ba21f11b10b2', false, 'PH-SAR',
  'Sarangani',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('0ce970ec-00de-4800-8394-bfbc8c66de17', false, 'PH-SIG',
  'Siquijor',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('392f4255-3cde-44db-b4de-28e05ffec06e', false, 'PH-12',
  'Soccsksargen (Region XII)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('508f193c-46f3-448a-889d-006dd6669f7d', false, 'PH-SOR',
  'Sorsogon',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('3174f06b-f974-4bd4-acae-9982214253d9', false, 'PH-SCO',
  'South Cotabato',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('ec9c77cb-f859-4784-91c1-26d22f630653', false, 'PH-SLE',
  'Southern Leyte',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('51a7a8cb-b3ff-4d7a-85e9-de4c0db6b891', false, 'PH-SUK',
  'Sultan Kudarat',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('ae3cc1ce-59d2-4a99-9358-a06b93a4c732', false, 'PH-SLU',
  'Sulu',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('8e3ad3be-2d06-45c5-87cf-bb13914c1f69', false, 'PH-SUN',
  'Surigao del Norte',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('6f163995-4379-42e9-82f0-f5087d96e03b', false, 'PH-SUR',
  'Surigao del Sur',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('0c78ae1f-cfc7-4321-8555-7567741fa8ad', false, 'PH-TAR',
  'Tarlac',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('aa54ea2e-3120-4b0d-92bd-fcfe3edd4f0b', false, 'PH-TAW',
  'Tawi-Tawi',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('bcbce71a-5595-426c-a09a-cfa175f35d01', false, 'PH-06',
  'Western Visayas (Region VI)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('b3a6a92f-c461-42f1-859b-97410c8eb38e', false, 'PH-ZMB',
  'Zambales',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('57008a06-a2cb-466b-bca8-e867abe846be', false, 'PH-ZAN',
  'Zamboanga del Norte',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('8ad3e107-46aa-47a9-a8ea-43a0bde2a0fd', false, 'PH-ZAS',
  'Zamboanga del Sur',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('b42f7aff-fb55-4416-baa7-87490f79dcac', false, 'PH-09',
  'Zamboanga Peninsula (Region IX)',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('7e3bf605-5bcb-4476-9f49-4a6e26bd5db9', false, 'PH-ZSI',
  'Zamboanga Sibugay',
  'c762de53-e6eb-45e4-bce5-7e3b3c1bcd0e');
INSERT INTO yacare_admission.province
 VALUES ('688e0c24-d928-463f-aff2-1189a6876c3f', false, 'PK-JK',
  'Azad Kashmir',
  '8e39edc6-2fe3-4629-9a8f-b3b40fc9ccab');
INSERT INTO yacare_admission.province
 VALUES ('519bc459-ce4d-46fe-a7bf-06afd4849fef', false, 'PK-BA',
  'Balochisan',
  '8e39edc6-2fe3-4629-9a8f-b3b40fc9ccab');
INSERT INTO yacare_admission.province
 VALUES ('78712e21-fde5-4230-9f1f-508bed03b956', false, 'PK-TA',
  'Federally Administered Tribal Areas',
  '8e39edc6-2fe3-4629-9a8f-b3b40fc9ccab');
INSERT INTO yacare_admission.province
 VALUES ('3118de8c-6932-4203-bee6-ec5fe131accc', false, 'PK-NA',
  'Gilgit-Baltistan',
  '8e39edc6-2fe3-4629-9a8f-b3b40fc9ccab');
INSERT INTO yacare_admission.province
 VALUES ('c100044c-f928-4d37-b650-181505361207', false, 'PK-IS',
  'Islamabad',
  '8e39edc6-2fe3-4629-9a8f-b3b40fc9ccab');
INSERT INTO yacare_admission.province
 VALUES ('20b016d6-f6af-41fb-bd40-a7bf24834091', false, 'PK-NW',
  'Khyber Pakhtunkhwa',
  '8e39edc6-2fe3-4629-9a8f-b3b40fc9ccab');
INSERT INTO yacare_admission.province
 VALUES ('902db42d-616e-4a72-af71-9510d50d4341', false, 'PK-PB',
  'Punjab',
  '8e39edc6-2fe3-4629-9a8f-b3b40fc9ccab');
INSERT INTO yacare_admission.province
 VALUES ('303f29c4-dca9-4134-9f3d-60bf04819ad0', false, 'PK-SD',
  'Sindh',
  '8e39edc6-2fe3-4629-9a8f-b3b40fc9ccab');
INSERT INTO yacare_admission.province
 VALUES ('478d5cfd-07c8-47f9-8b05-6bdfd2dfae4c', false, 'PL-DS',
  'Dolnośląskie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('27f6193f-de72-4c85-b330-cd67b977e338', false, 'PL-KP',
  'Kujawsko-Pomorskie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('d6515632-85a2-4d85-9f94-9b0d8944e1bc', false, 'PL-LD',
  'Łódzkie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('3945f73e-33d3-4e0f-b20c-49f7f8abe65b', false, 'PL-LU',
  'Lubelskie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('ea34bb24-7bfd-4ede-87f3-d21228c7f637', false, 'PL-LB',
  'Lubuskie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('335cf15d-8090-452d-9f8e-035c9d771958', false, 'PL-MA',
  'Małopolskie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('d4dcef5d-9332-4727-89d2-a4a1fc427ca1', false, 'PL-MZ',
  'Mazowieckie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('93dd2378-a632-4d3b-adc8-7714dc75566c', false, 'PL-OP',
  'Opolskie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('8ce02d86-626f-475c-b38b-d914c93360e0', false, 'PL-PK',
  'Podkarpackie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('f1b92609-ba1b-45ce-b466-23bb739cdc1b', false, 'PL-PD',
  'Podlaskie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('d079b430-1472-492f-bb29-b2f60869d6e7', false, 'PL-PM',
  'Pomorskie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('90ae446b-7fc7-4401-9ba1-969dff0798d2', false, 'PL-SL',
  'Śląskie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('0eb5cafd-3ee7-48af-803b-208d99975d5b', false, 'PL-SK',
  'Świętokrzyskie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('a99c2b91-a6db-4d3b-8812-6319eda7c777', false, 'PL-WN',
  'Warmińsko-Mazurskie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('955facbc-e55f-47f3-aad3-b4dfe2a5b3d2', false, 'PL-WP',
  'Wielkopolskie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('d724db0d-ac9e-4517-818a-cb614d0c9875', false, 'PL-ZP',
  'Zachodniopomorskie',
  '8fe75a1e-0ad1-4123-8948-e7ac117aac51');
INSERT INTO yacare_admission.province
 VALUES ('9653fd2f-40c6-4379-b39f-d038b3efe46f', false, 'PT-20',
  'Açores',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('b3ffe8cc-e2c8-4445-beae-3aadfe55a750', false, 'PT-01',
  'Aveiro',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('d76c13d8-2b7c-464d-8dd2-572178b1898e', false, 'PT-02',
  'Beja',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('39c5ffd5-960f-4e8d-8ea7-65689b89191b', false, 'PT-03',
  'Braga',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('bf925916-ae73-40f7-8ba1-f071b0970984', false, 'PT-04',
  'Bragança',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('6570378c-97cf-47f8-871e-e4fb1aacf6e2', false, 'PT-05',
  'Castelo Branco',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('fe4f7a08-a2ab-434f-b984-d2139c879a67', false, 'PT-06',
  'Coimbra',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('dd5cfb89-1b00-4972-bed7-ece0846db38c', false, 'PT-07',
  'Évora',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('8f000187-958d-4071-bcf0-999d8d95f08d', false, 'PT-08',
  'Faro',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('d5186001-7e7e-4b50-ae45-98a1f4312f01', false, 'PT-09',
  'Guarda',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('251eb69c-6fe4-4373-9513-913f281a7ea6', false, 'PT-10',
  'Leiria',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('035c44d9-7b9c-45a3-b1e7-7cef4a752a75', false, 'PT-11',
  'Lisboa',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('3e00e8e6-15d8-4763-a7e6-a852ff25e4f5', false, 'PT-30',
  'Madeira',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('6900d077-92ed-439b-a6db-11b9dc60a950', false, 'PT-12',
  'Portalegre',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('9e3bc9e5-938b-466c-9b15-390e2ad3393a', false, 'PT-13',
  'Porto',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('88d3c625-0532-4b8f-a201-044594ae7f68', false, 'PT-14',
  'Santarém',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('46e56e6d-c6c7-4c17-b1f7-6c52e15c6183', false, 'PT-15',
  'Setúbal',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('ba4348bf-6ca2-4e84-9627-9de586260192', false, 'PT-16',
  'Viana do Castelo',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('44e57ac8-5535-4598-8f73-5f157d794b8a', false, 'PT-17',
  'Vila Real',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('19e6dd37-f7f0-41cc-8a88-6d9212b998b3', false, 'PT-18',
  'Viseu',
  '0cfe53f9-1617-41b7-b125-84e26bb529ea');
INSERT INTO yacare_admission.province
 VALUES ('d78c020f-4041-4fab-8be1-dc7a89ca21c6', false, 'PW-002',
  'Aimeliik',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('31c6257d-4797-4b1c-9213-6f2cbb002dbd', false, 'PW-004',
  'Airai',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('da5bb0bd-0c26-49be-beb6-b376cda96d80', false, 'PW-010',
  'Angaur',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('7c9eb7c6-0c79-43c4-b42c-6258c2b929e5', false, 'PW-050',
  'Hatobohei',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('f44b8d38-4966-4670-84c0-e8d4f5ac567f', false, 'PW-100',
  'Kayangel',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('352c485c-54a3-4b30-8563-6fef2f15cac3', false, 'PW-150',
  'Koror',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('72516dfd-11c4-44bd-bfaa-b3735470d54c', false, 'PW-212',
  'Melekeok',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('f41fffc6-7c30-4941-87c5-925f1903d764', false, 'PW-214',
  'Ngaraard',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('b188b770-7cf4-40a4-b9cf-48c54734ba04', false, 'PW-218',
  'Ngarchelong',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('9d1848e6-4d8e-43ee-9b86-df10ab2112a0', false, 'PW-222',
  'Ngardmau',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('9da060a5-b76b-48f4-ac42-48a22a3baeb6', false, 'PW-224',
  'Ngatpang',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('7e4f934c-9e4c-4cd4-9791-2016b8098ee3', false, 'PW-226',
  'Ngchesar',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('26245494-0d9f-4ebb-9e34-b649d86f5524', false, 'PW-227',
  'Ngeremlengui',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('0d9440ae-13da-482d-a043-46d8c96d14cb', false, 'PW-228',
  'Ngiwal',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('abb03f81-a450-437f-bc04-85f0910d8645', false, 'PW-350',
  'Peleliu',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('59d248a5-3fa3-4e03-9ba9-456d021ce8ba', false, 'PW-370',
  'Sonsorol',
  '24bd8803-dbcf-4543-b8f9-589670933c47');
INSERT INTO yacare_admission.province
 VALUES ('7c04267c-25b0-44fd-9c28-e79b7d9632f9', false, 'PY-16',
  'Alto Paraguay',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('a06656bd-34a5-45cb-a7e2-bcc4ab5bfead', false, 'PY-10',
  'Alto Paraná',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('4887df7a-5bd5-428b-a3bb-30826eaf023a', false, 'PY-13',
  'Amambay',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('c9660018-90e8-420e-b595-fe6c0a9b01e4', false, 'PY-ASU',
  'Asunción - Distrito Capital',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('b6f6447d-37f9-49f6-b9d7-0d012c2420c0', false, 'PY-19',
  'Boquerón',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('64dd1959-6828-4bbc-a252-1ec0d2138c15', false, 'PY-5',
  'Caaguazú',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('e3b0f5db-0b15-478d-a70d-dd697e5d115d', false, 'PY-6',
  'Caazapá',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('6318022d-46ca-4389-b527-4ce38e5a9bbd', false, 'PY-14',
  'Canindeyú',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('5785d6bd-900f-4a69-a271-32974f6b6f26', false, 'PY-11',
  'Central',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('0031f53b-2621-474d-bc8e-183568857cca', false, 'PY-1',
  'Concepción',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('dac693ff-50d4-439b-aad1-f231aec90442', false, 'PY-3',
  'Cordillera',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('f6f8e6f0-37d7-4da5-810c-ec16a6c952a5', false, 'PY-4',
  'Guairá',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('740ca3c5-7834-4dad-836c-06241810328e', false, 'PY-7',
  'Itapúa',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('58bd2f74-013c-413d-b316-bd76277d57b9', false, 'PY-8',
  'Misiones',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('219c6324-ca9d-4b9f-8b49-bd72c5cd8f4c', false, 'PY-12',
  'Ñeembucú',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('0781149c-7903-48f1-aa35-df2d1848fe6c', false, 'PY-9',
  'Paraguarí',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('c42ed803-ad96-45fe-91b3-bc36bc037d6c', false, 'PY-15',
  'Presidente Hayes',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('c0f3eeb5-b61b-4ca2-8695-7a3442ecc7d6', false, 'PY-2',
  'San Pedro',
  '16bb534b-a248-4cb3-a29c-01a5804b275d');
INSERT INTO yacare_admission.province
 VALUES ('5ff9aae4-d63f-45bc-ad61-bd77b62540ee', false, 'QA-DA',
  'Ad Dawhah',
  'c2ca5a54-e14d-4ef2-8462-2c069875223b');
INSERT INTO yacare_admission.province
 VALUES ('f5835b24-fa83-483a-9555-6907e006ec50', false, 'QA-GH',
  'Al Ghuwayriyah',
  'c2ca5a54-e14d-4ef2-8462-2c069875223b');
INSERT INTO yacare_admission.province
 VALUES ('71029ef4-7431-4f38-bb41-fa1e541fbc94', false, 'QA-JU',
  'Al Jumayliyah',
  'c2ca5a54-e14d-4ef2-8462-2c069875223b');
INSERT INTO yacare_admission.province
 VALUES ('2a156ed7-ae36-4f64-a9aa-48a07ec6b9c7', false, 'QA-KH',
  'Al Khawr',
  'c2ca5a54-e14d-4ef2-8462-2c069875223b');
INSERT INTO yacare_admission.province
 VALUES ('06d3e991-8127-4aaa-a13d-ec99af30824c', false, 'QA-WA',
  'Al Wakrah',
  'c2ca5a54-e14d-4ef2-8462-2c069875223b');
INSERT INTO yacare_admission.province
 VALUES ('2fc3d27b-40be-47a5-b2bf-cecf13fb5ed4', false, 'QA-RA',
  'Ar Rayyan',
  'c2ca5a54-e14d-4ef2-8462-2c069875223b');
INSERT INTO yacare_admission.province
 VALUES ('11b1ac5a-4428-4fc0-b17c-d2b718cee6a8', false, 'QA-JB',
  'Jariyan al Batnah',
  'c2ca5a54-e14d-4ef2-8462-2c069875223b');
INSERT INTO yacare_admission.province
 VALUES ('b98e4eaa-8259-481a-9adf-2b9d29cd4131', false, 'QA-MS',
  'Madinat ash Shamal',
  'c2ca5a54-e14d-4ef2-8462-2c069875223b');
INSERT INTO yacare_admission.province
 VALUES ('bc7bbcdd-4a5b-4d72-9373-358ff13dec41', false, 'QA-US',
  'Umm Salal',
  'c2ca5a54-e14d-4ef2-8462-2c069875223b');
INSERT INTO yacare_admission.province
 VALUES ('384f7f04-74b0-458b-9a32-9db0cc942be5', false, 'RO-AB',
  'Alba',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('97735b3d-3e20-4faf-9c25-fbde61fe941b', false, 'RO-AR',
  'Arad',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('02dd4d86-f1d9-4e92-a6fe-0819d31cae8a', false, 'RO-AG',
  'Argeş',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('e61707f4-c316-408f-9505-5b63a4ce4af2', false, 'RO-BC',
  'Bacău',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('01d4af66-f1a8-4f0a-9452-e6bbc707bfd0', false, 'RO-BH',
  'Bihor',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('6bee5458-6863-4bf8-917e-f016f70d3b46', false, 'RO-BN',
  'Bistriţa-Năsăud',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('4c1f0cd1-4af9-4051-82cb-de5c184fdf6f', false, 'RO-BT',
  'Botoşani',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('3e340b65-925d-4c01-82db-fa5d59fa9467', false, 'RO-BR',
  'Brăila',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('db4937fe-963a-4561-ae0d-4fe7f8f16406', false, 'RO-BV',
  'Braşov',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('ec7149db-f51e-48c5-a8af-f7b6511cfc63', false, 'RO-B',
  'Bucureşti',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('7651677a-ea49-489b-bbdd-b089557dc666', false, 'RO-BZ',
  'Buzău',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('b577647d-bcd4-4a1b-b019-9430935cdb2f', false, 'RO-CL',
  'Călăraşi',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('3071c84c-f57d-4fee-9858-9d7847a0628b', false, 'RO-CS',
  'Caraş-Severin',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('09905c50-3341-4efd-a765-7dd57ad417e2', false, 'RO-CJ',
  'Cluj',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('b3dcae3f-162e-4257-be36-3d84a042920f', false, 'RO-CT',
  'Constanţa',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('5c8779f6-cb31-4030-a7f7-81076a589365', false, 'RO-CV',
  'Covasna',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('104fee84-c54b-4cbe-ba93-1dbc52af46ef', false, 'RO-DB',
  'Dâmboviţa',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('cc0b1b76-c2b8-445e-b1b6-610f5a4dc49d', false, 'RO-DJ',
  'Dolj',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('793cc26b-4786-4d52-b2b7-0cb7bcb02330', false, 'RO-GL',
  'Galaţi',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('907e98a3-9d5c-4f53-9297-1f987ee79e35', false, 'RO-GR',
  'Giurgiu',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('58cc40ef-ab13-4a9b-88be-bb460b9d31f5', false, 'RO-GJ',
  'Gorj',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('3a1b1ee9-7ed9-49a3-a256-532f89ec7ef0', false, 'RO-HR',
  'Harghita',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('cd7dbf5d-6ff7-480b-be34-ea93743e9958', false, 'RO-HD',
  'Hunedoara',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('9103e524-bfae-4d6a-a994-5d7c95cc92bc', false, 'RO-IL',
  'Ialomiţa',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('aa71c9c3-1552-4901-9f69-004eb48131c7', false, 'RO-IS',
  'Iaşi',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('68e2ad93-c84f-4723-91f9-2c6789a16cb6', false, 'RO-IF',
  'Ilfov',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('36253e5c-f5e9-4206-98af-527cd8a51aac', false, 'RO-MM',
  'Maramureş',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('7447306e-0006-43c7-9e21-f632eaa66bfd', false, 'RO-MH',
  'Mehedinţi',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('a58f678b-bbb0-4653-93a6-36504682d8e1', false, 'RO-MS',
  'Mureş',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('e4610f0f-35a4-4e3b-9dd4-c7fe74cd5671', false, 'RO-NT',
  'Neamţ',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('af6dd4d5-72c1-4d71-a743-d01be9d84f2f', false, 'RO-OT',
  'Olt',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('79e52add-f090-40da-a7e2-e9b566338edc', false, 'RO-PH',
  'Prahova',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('0a9f36e0-2e8c-436b-b44a-969032f1950c', false, 'RO-SJ',
  'Sălaj',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('7367d4ec-ec46-46ea-8ba7-3025eb47cb12', false, 'RO-SM',
  'Satu Mare',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('10e6d986-4854-4d81-bce3-61ea1a66870f', false, 'RO-SB',
  'Sibiu',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('e1f75887-67da-4edb-818f-328cf31b13a6', false, 'RO-SV',
  'Suceava',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('aad4437b-9ca0-48da-81ec-b438ba0d9658', false, 'RO-TR',
  'Teleorman',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('65a27094-f8a9-4bb5-bdfb-9ecc159f0ac7', false, 'RO-TM',
  'Timiş',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('faf87143-f26c-4098-ac08-7666084e51cd', false, 'RO-TL',
  'Tulcea',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('73fdbe1a-d7db-47eb-9c22-9dec37cdd6d5', false, 'RO-VL',
  'Valcea',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('2a2b2dc3-d5a5-4db6-9aa3-a35f05aeced5', false, 'RO-VS',
  'Vaslui',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('1a676ec1-dbc8-45f7-85ab-ab89ba47e0ee', false, 'RO-VN',
  'Vrancea',
  '1d3a9400-22a6-46ca-b05e-1260c1ece6d1');
INSERT INTO yacare_admission.province
 VALUES ('2fe10901-c748-4cb0-88a7-7ae2e966cb80', false, 'RS-00',
  'Beograd',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('197aaebe-1e14-47e5-bcfc-7d1ba155271c', false, 'RS-14',
  'Borski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('b0ce6932-860a-449d-812e-829040a7a959', false, 'RS-11',
  'Braničevski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('f9385690-863f-432a-ae99-a632c1f71f71', false, 'RS-23',
  'Jablanički',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('7b26033d-5f64-44c1-8a82-c83fe95e547b', false, 'RS-06',
  'Južnobački',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('66faf698-8b26-4b18-ab11-593a97c51ab9', false, 'RS-04',
  'Južno-Banatski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('2b44f95e-81a6-4a48-a417-110c1af9e5eb', false, 'RS-09',
  'Kolubarski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('cc41695c-3474-42fa-bacf-18898fc41beb', false, 'RS-KM',
  'Kosovo',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('678a759c-8a49-40d9-a039-7d0eb59cab1f', false, 'RS-25',
  'Kosovski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('7e682566-075b-45a3-a70b-d0aad3981145', false, 'RS-28',
  'Kosovsko-Mitrovački',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('5e3ffb95-e808-4a27-b4f4-249f98bfa740', false, 'RS-29',
  'Kosovsko-Pomoravski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('0aae4dce-f035-4391-ad98-b7d54f8e9fe8', false, 'RS-08',
  'Mačvanski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('f9521bbb-e559-4723-8d31-4f406c633693', false, 'RS-17',
  'Moravički',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('a01a5e31-3a28-4805-a72e-a85ba5277014', false, 'RS-20',
  'Nišavski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('3dee5918-7fe8-4c65-acd6-ba6b1ec9e094', false, 'RS-24',
  'Pčinjski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('baa81440-f265-4844-9bf1-abd26693711f', false, 'RS-26',
  'Pećki',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('45735cb1-59d0-4460-bd35-c830778ca2a0', false, 'RS-22',
  'Pirotski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('2ef09a4d-cb6d-48f2-89f7-002a4e1a4c2f', false, 'RS-10',
  'Podunavski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('4139786a-d183-484f-bfeb-c6fcb0a2e6a8', false, 'RS-13',
  'Pomoravski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('0a9d71c1-817e-437c-b8cf-45d03600bb70', false, 'RS-27',
  'Prizrenski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('7274dc2c-6ec9-4373-8e3d-a24e2d5e0d4e', false, 'RS-19',
  'Rasinski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('5a376228-0976-47f7-a8e3-f464a8d415f0', false, 'RS-18',
  'Raški',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('11ad331c-7902-4300-b5dc-a8aa25a12d46', false, 'RS-01',
  'Severnobački',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('782e0ceb-0666-46af-b17c-9166b167ee9f', false, 'RS-03',
  'Severno-banatski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('c8d05193-aef5-4803-9784-68df83cb4cbd', false, 'RS-02',
  'Srednje-banatski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('c6bf1704-856f-4ba1-9861-e3bfdfb71f34', false, 'RS-07',
  'Sremski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('f016f62a-3388-45bc-a630-4da18bf04fe7', false, 'RS-12',
  'Šumadijski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('a1d3d507-16d6-42a2-bb0a-98c7f03db1f6', false, 'RS-21',
  'Toplički',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('8ef2e6a0-9d28-4fc1-8229-84acc38f8587', false, 'RS-VO',
  'Vojvodina',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('1891c06b-e69e-4dba-b729-cb34ee8e0202', false, 'RS-15',
  'Zaječarski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('4990bb30-1d39-47e6-93f4-2b241e3c4f29', false, 'RS-05',
  'Zapadno-Bački',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('b0db2b31-81df-4ba3-adff-59b08f73b970', false, 'RS-16',
  'Zlatiborski',
  '1dc41b92-93a7-43d9-b238-c061ccd6f2bd');
INSERT INTO yacare_admission.province
 VALUES ('96631195-b04d-4f08-953a-d0fd68498719', false, 'RU-KHM',
  '',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('6475374e-2311-431c-b544-b7938022d453', false, 'RU-YAN',
  '',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('b193f388-d75e-42df-a170-7a8908543657', false, 'RU-YEV',
  '',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('33e53cc0-332c-4c1a-a996-39d9216caf63', false, 'RU-AD',
  'Адыгея республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('593241fc-fe0d-49ba-8f10-b1cd09b99089', false, 'RU-AL',
  'Алтай республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('0fa367c4-79ae-49b6-9c4c-86567120b0a9', false, 'RU-ALT',
  'Алтайский край',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('a433a007-74ca-4037-ba49-7f4ac303553f', false, 'RU-AMU',
  'Амурская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('e8471a0e-5b2b-4ce9-a0a5-4cd2a9ea2333', false, 'RU-ARK',
  'Архангельская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('c49388b8-18b0-46ad-881c-38b97bc5b676', false, 'RU-AST',
  'Астраханская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('5cb96434-8164-4b64-9173-584fd0f549c8', false, 'RU-BA',
  'Башкортостан республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('74800c24-6f71-4d35-a03d-ebfe06aea830', false, 'RU-BEL',
  'Белгородская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('9ca2ae16-7132-4b6c-b7db-3f008c94980a', false, 'RU-BRY',
  'Брянская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('036c465c-c92e-497a-93ac-1096eb2d0982', false, 'RU-BU',
  'Бурятия республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('c8a2401e-9630-4a60-8dc1-a006dcff8144', false, 'RU-VLA',
  'Владимирская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('2d8ff66d-ffc7-46be-b712-4e3fe7647cab', false, 'RU-VGG',
  'Волгоградская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('7b30b3c6-4d24-4aff-a6e4-35bdae388b95', false, 'RU-VLG',
  'Вологодская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('6c707f62-11df-4954-8ddc-d7cd240e34a3', false, 'RU-VOR',
  'Воронежская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('0ae7ac14-9cc0-40d1-920f-3b7d413334a8', false, 'RU-DA',
  'Дагестан республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('f6eccf14-2588-4c84-840d-dec9f9a16da5', false, 'RU-ZAB',
  'Забайкальский край',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('1696d2b8-6522-4785-bdb1-b1468a87aa9e', false, 'RU-IVA',
  'Ивановская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('88d2fce8-42fb-4096-bb76-3efc8869de98', false, 'RU-IN',
  'Ингушетия республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('1b2716e5-f222-4c2d-8e1c-9e9b01d20037', false, 'RU-IRK',
  'Иркутская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('7513559d-cd0f-490d-ba86-97c146cf74ab', false, 'RU-KB',
  'Кабардино-Балкарская республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('e017f450-9910-42b7-a5c2-67ea253e5b6d', false, 'RU-KGD',
  'Калининградская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('f4678555-1b0d-4d75-9b7e-e2521417471a', false, 'RU-KL',
  'Калмыкия республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('bb6c70a1-3ba2-4c57-9099-5f77b6caefc4', false, 'RU-KLU',
  'Калужская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('6d61ff95-3bcf-4a9e-a010-f446194dc470', false, 'RU-KAM',
  'Камчатский край',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('d9043ecc-aeea-4469-a274-285bc80f5b01', false, 'RU-KC',
  'Карачаево-Черкесская республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('2a17044d-8628-4a02-8c20-feed9c3656c0', false, 'RU-KR',
  'Карелия республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('b1c1eef6-ad88-4ec2-b6c5-f2a54a479cab', false, 'RU-KEM',
  'Кемеровская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('fb4bebf2-ce05-41b8-ac33-4fca76fbf3a0', false, 'RU-KIR',
  'Кировская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('58f5e63c-c11c-4dda-97cd-4b847b7f23fe', false, 'RU-KO',
  'Коми республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('087be302-1c56-40c3-853b-6917fef0bb62', false, 'RU-KOS',
  'Костромская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('726675bd-daf8-4dee-8123-e79fa9c2c36e', false, 'RU-KDA',
  'Краснодарский край',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('77e81dc9-5708-44e0-a8b5-38c3173bdf47', false, 'RU-KYA',
  'Красноярский край',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('0c99fea2-a4fd-4aeb-a8e7-6cbfab670069', false, 'RU-KGN',
  'Курганская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('4c6d5f3c-4567-4723-a19e-8ea70b44c4b1', false, 'RU-KRS',
  'Курская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('4fd29857-277a-4e36-9eb6-2c273c39c401', false, 'RU-LEN',
  'Ленинградская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('383b3c6d-3177-4f31-84b5-7b8d841bf993', false, 'RU-LIP',
  'Липецкая область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('52856914-b3ca-45a6-aa1d-701a11d75406', false, 'RU-MAG',
  'Магаданская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('0eb9d153-8a7c-49fe-8e1a-a6737800f75e', false, 'RU-ME',
  'Марий Эл республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('fccc0e73-64c4-4fa6-9561-7c945ba0348d', false, 'RU-MO',
  'Мордовия республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('c5d5da27-0191-40db-9712-a3a2c43c6fa9', false, 'RU-MOW',
  'Москва',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('d14b9f5c-9f9b-435f-aa19-208105469b8e', false, 'RU-MOS',
  'Московская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('4a7f0c30-d6b8-49b6-9095-7860a8611b46', false, 'RU-MUR',
  'Мурманская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('08d79e95-50f8-4c9f-8861-6dd9012baa63', false, 'RU-NEN',
  'Ненецкий автономный округ',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('dd00a6e1-41a1-41da-b299-fd8b4d7eafa9', false, 'RU-NIZ',
  'Нижегородская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('ab722a50-6847-491b-9ded-6c4b92f56248', false, 'RU-NGR',
  'Новгородская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('08657991-5a95-4dd4-abe9-427a98a8455f', false, 'RU-NVS',
  'Новосибирская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('cbf9edb6-5ee0-431c-8b95-682f85c0c43a', false, 'RU-OMS',
  'Омская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('09ea9430-93b6-462f-be6b-94d7c9f76738', false, 'RU-ORE',
  'Оренбургская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('eca7b872-e459-4aa8-87f0-55ef6528100f', false, 'RU-ORL',
  'Орловская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('2855cdc6-c9ea-4b09-ab57-3eae0cc0cb43', false, 'RU-PNZ',
  'Пензенская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('2b923194-4bfd-4d20-bb37-52c4a6c3017b', false, 'RU-PER',
  'Пермский край',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('2197d52f-509a-4c6d-9024-ec13de9ac7a3', false, 'RU-PRI',
  'Приморский край',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('2eeebb29-a625-4fb4-9788-1a316d97e3fd', false, 'RU-PSK',
  'Псковская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('f09cedd8-1a8d-4276-95c4-31903a8c22e7', false, 'RU-ROS',
  'Ростовская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('e6475377-3abb-46c5-9c8d-c451af8facc3', false, 'RU-RYA',
  'Рязанская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('48b5a11f-1da7-458c-a31c-6a4c99584f99', false, 'RU-SAM',
  'Самарская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('7fee071a-3261-45b6-8079-ba15dfedcaf2', false, 'RU-SPE',
  'Санкт-Петербург',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('2a04b6b4-edc0-4775-b011-3db7eb3d09eb', false, 'RU-SAR',
  'Саратовская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('73cfdd21-3a90-45a3-a5b5-10b069c78173', false, 'RU-SA',
  'Саха (Якутия) республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('7d6b9466-1320-43cb-b9c6-33e6c8a9bad9', false, 'RU-SAK',
  'Сахалинская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('0be8c2d0-bc2b-4624-a927-d5abff10faa6', false, 'RU-SVE',
  'Свердловская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('5efd6c89-39e8-4f73-8164-68e13ed3b7a2', false, 'RU-SE',
  'Северная Осетия-Алания республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('eb6b2b79-df3e-4cd3-995c-6ad62d9ab5b1', false, 'RU-SMO',
  'Смоленская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('e0618a82-a38a-4545-baca-ad8229644589', false, 'RU-STA',
  'Ставропольский край',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('11caeb13-1ecb-47c0-be27-084cd9ef7524', false, 'RU-TAM',
  'Тамбовская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('4453ed93-49f4-47cb-9d2b-c2501954eb4e', false, 'RU-TA',
  'Татарстан республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('3468173a-8714-4d02-8a5b-06da8d839394', false, 'RU-TVE',
  'Тверская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('be4a1425-8c06-4a20-bec4-7903a1f3f8dd', false, 'RU-TOM',
  'Томская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('3ac9da38-3822-467d-8121-71f0d736b7a7', false, 'RU-TUL',
  'Тульская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('357f4dc1-3231-4446-b09c-9848c1041603', false, 'RU-TY',
  'Тыва республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('1e4ed6be-190e-40c9-a3d9-9bdd56789a17', false, 'RU-TYU',
  'Тюменская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('66603d6c-760f-42eb-a0b3-e8ea67841416', false, 'RU-UD',
  'Удмуртская республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('747dc78b-5035-4169-87b9-403c9394dec6', false, 'RU-ULY',
  'Ульяновская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('9b6cf28f-dae6-4d22-b73d-a9fbf9c556ed', false, 'RU-KHA',
  'Хабаровский край',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('77f7d1e8-f738-495d-a5ad-ec3fbd278c34', false, 'RU-KK',
  'Хакасия республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('0e68f7a4-42ea-4d57-8aa1-1abce3f5c2f1', false, 'RU-CHE',
  'Челябинская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('92a1444b-4122-49ef-9185-31a061df68d4', false, 'RU-CE',
  'Чеченская республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('29cbfafa-8c58-4007-a970-95a9cb4fc830', false, 'RU-CU',
  'Чувашская республика',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('f546c1e0-1688-4680-978a-2d60dba0b858', false, 'RU-CHU',
  'Чукотский АО',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('43922afa-ced5-4b49-9a5e-e79e69de532b', false, 'RU-YAR',
  'Ярославская область',
  '52bb83e0-5066-4e3f-a9f1-802952a1bb3e');
INSERT INTO yacare_admission.province
 VALUES ('ccb70aed-c55a-4574-b584-7a94c0f2e582', false, 'RW-02',
  'Est',
  'a99ef3fc-7cf9-4e0a-a65c-ccae1980bf14');
INSERT INTO yacare_admission.province
 VALUES ('1a52d94c-4b18-421c-afe5-a85bfaa8b3a9', false, 'RW-01',
  'Kigali',
  'a99ef3fc-7cf9-4e0a-a65c-ccae1980bf14');
INSERT INTO yacare_admission.province
 VALUES ('cac132e5-4a38-43d2-ac81-b7406748f8c1', false, 'RW-03',
  'Nord',
  'a99ef3fc-7cf9-4e0a-a65c-ccae1980bf14');
INSERT INTO yacare_admission.province
 VALUES ('6a48d8e0-dcae-4060-8527-5080add63d0b', false, 'RW-04',
  'Ouest',
  'a99ef3fc-7cf9-4e0a-a65c-ccae1980bf14');
INSERT INTO yacare_admission.province
 VALUES ('dd5c3694-96f2-4bd8-a33a-9fee3f7c931d', false, 'RW-05',
  'Sud',
  'a99ef3fc-7cf9-4e0a-a65c-ccae1980bf14');
INSERT INTO yacare_admission.province
 VALUES ('102cde73-6a46-45d2-ba08-876d1aba0e83', false, 'SA-11',
  'Al Bahah',
  '212dae8e-1627-44cf-9574-c5e25ee87976');
INSERT INTO yacare_admission.province
 VALUES ('5962f99b-c545-46b1-a1e7-08d2c0738718', false, 'SA-12',
  'Al Jawf',
  '212dae8e-1627-44cf-9574-c5e25ee87976');
INSERT INTO yacare_admission.province
 VALUES ('7576c27c-e1de-4e93-b0d8-4920f6024b01', false, 'SA-03',
  'Al Madinah',
  '212dae8e-1627-44cf-9574-c5e25ee87976');
INSERT INTO yacare_admission.province
 VALUES ('17839e45-27ef-43a9-b080-167d5c41bcdf', false, 'SA-05',
  'Al Qasim',
  '212dae8e-1627-44cf-9574-c5e25ee87976');
INSERT INTO yacare_admission.province
 VALUES ('2146801c-fa64-4793-9c49-68d1d92ae547', false, 'SA-01',
  'Al Riyadh',
  '212dae8e-1627-44cf-9574-c5e25ee87976');
INSERT INTO yacare_admission.province
 VALUES ('ea57bb50-7dbe-4d12-92e9-8f04bd24884b', false, 'SA-14',
  'Asir',
  '212dae8e-1627-44cf-9574-c5e25ee87976');
INSERT INTO yacare_admission.province
 VALUES ('b8b19a13-2047-4c8f-bac0-54c30d42417f', false, 'SA-04',
  'Eastern Province',
  '212dae8e-1627-44cf-9574-c5e25ee87976');
INSERT INTO yacare_admission.province
 VALUES ('c71633b8-59d6-4a41-9f70-ee6e3d97d5a2', false, 'SA-06',
  'Ha''il',
  '212dae8e-1627-44cf-9574-c5e25ee87976');
INSERT INTO yacare_admission.province
 VALUES ('4356ddb4-138f-4de5-91e6-d4e677fe9de2', false, 'SA-09',
  'Jizan',
  '212dae8e-1627-44cf-9574-c5e25ee87976');
INSERT INTO yacare_admission.province
 VALUES ('79bfdb18-b8b7-46f9-bccd-aa48981287d4', false, 'SA-02',
  'Makkah',
  '212dae8e-1627-44cf-9574-c5e25ee87976');
INSERT INTO yacare_admission.province
 VALUES ('803ba0b1-463a-4b4a-a788-fb1ecb619510', false, 'SA-10',
  'Najran',
  '212dae8e-1627-44cf-9574-c5e25ee87976');
INSERT INTO yacare_admission.province
 VALUES ('349be54d-62a3-4cc6-8e87-23810a5d496a', false, 'SA-08',
  'Northern Border',
  '212dae8e-1627-44cf-9574-c5e25ee87976');
INSERT INTO yacare_admission.province
 VALUES ('13dd13ce-26b4-4138-be25-2e51e582f092', false, 'SA-07',
  'Tabuk',
  '212dae8e-1627-44cf-9574-c5e25ee87976');
INSERT INTO yacare_admission.province
 VALUES ('1b6c0e18-247b-4f10-98c7-7e3ae6d78e8d', false, 'SB-CE',
  'Central',
  'fdced2e8-cbd4-43b4-9ac4-e35a6fc073c7');
INSERT INTO yacare_admission.province
 VALUES ('41dbcd8d-e3e6-4910-a43f-7909a5bd1109', false, 'SB-CH',
  'Choiseul',
  'fdced2e8-cbd4-43b4-9ac4-e35a6fc073c7');
INSERT INTO yacare_admission.province
 VALUES ('3a7a0c22-afd4-41e0-b0dc-0f9bc6d1bbd8', false, 'SB-GU',
  'Guadalcanal',
  'fdced2e8-cbd4-43b4-9ac4-e35a6fc073c7');
INSERT INTO yacare_admission.province
 VALUES ('b383c5c3-df17-402c-92d1-787df2ce7858', false, 'SB-CT',
  'Honiara',
  'fdced2e8-cbd4-43b4-9ac4-e35a6fc073c7');
INSERT INTO yacare_admission.province
 VALUES ('445144dd-b3d0-44e6-9a8e-0460ee8e2c28', false, 'SB-IS',
  'Isabel',
  'fdced2e8-cbd4-43b4-9ac4-e35a6fc073c7');
INSERT INTO yacare_admission.province
 VALUES ('d5af97b7-85d0-45ab-93af-9a79abf6dc23', false, 'SB-MK',
  'Makira',
  'fdced2e8-cbd4-43b4-9ac4-e35a6fc073c7');
INSERT INTO yacare_admission.province
 VALUES ('2c567dc7-da83-486f-b862-e1ec0d26db21', false, 'SB-ML',
  'Malaita',
  'fdced2e8-cbd4-43b4-9ac4-e35a6fc073c7');
INSERT INTO yacare_admission.province
 VALUES ('0c700d16-0e69-45ad-8f1b-43b8f4ff509d', false, 'SB-RB',
  'Rennell and Bellona',
  'fdced2e8-cbd4-43b4-9ac4-e35a6fc073c7');
INSERT INTO yacare_admission.province
 VALUES ('1de5251f-0ef9-4cbe-bc03-9dd46f4f3050', false, 'SB-TE',
  'Temotu',
  'fdced2e8-cbd4-43b4-9ac4-e35a6fc073c7');
INSERT INTO yacare_admission.province
 VALUES ('c532b438-4ff8-4bec-b979-08ff19f26d60', false, 'SB-WE',
  'Western',
  'fdced2e8-cbd4-43b4-9ac4-e35a6fc073c7');
INSERT INTO yacare_admission.province
 VALUES ('b29e1bfc-82f2-4ef4-8646-2b16c46e5eb1', false, 'SC-01',
  'Anse aux Pins',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('96323387-806a-42a9-a076-8c0d860f86e4', false, 'SC-02',
  'Anse Boileau',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('f0b99276-e1ab-4e15-b16e-e99c55dbc841', false, 'SC-03',
  'Anse Étoile',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('1fa2a970-6ff6-4fb2-96ce-4a1964ea3024', false, 'SC-04',
  'Anse Louis',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('590c50d3-9995-48b2-b107-729698444bfa', false, 'SC-05',
  'Anse Royale',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('d27e913c-6232-40ea-8a9b-2278cd0c07ff', false, 'SC-06',
  'Baie Lazare',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('c7da25dc-dc07-417e-a8b1-728bff07adc9', false, 'SC-07',
  'Baie Sainte Anne',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('cebc81b4-c49d-42f4-9884-6050f59d38cb', false, 'SC-08',
  'Beau Vallon',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('6355e1ea-e926-4860-be4f-6f3e3bbcd870', false, 'SC-09',
  'Bel Air',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('7a6755b3-4d15-4727-8a99-7f9081700476', false, 'SC-10',
  'Bel Ombre',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('f8d91736-49fe-47c3-a8f0-6ce7f50f1417', false, 'SC-11',
  'Cascade',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('d48c115b-93b0-41fc-a2ad-302753672a4f', false, 'SC-12',
  'Glacis',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('aece00dc-6de4-4a45-926e-7c047e643187', false, 'SC-13',
  'Grand''Anse (Mahé)',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('4a783570-2fff-4d50-8ff3-0df23f3a27a9', false, 'SC-14',
  'Grand''Anse (Praslin)',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('7074325e-ee4a-4571-866e-3f0ca6456949', false, 'SC-15',
  'La Digue',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('d04782c0-26d5-468d-8663-3ea4eea3f432', false, 'SC-16',
  'La Rivière Anglaise',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('01eb78cc-141f-40f6-8bc3-c35e690d9686', false, 'SC-24',
  'Les Mamelles',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('a7ac13da-667c-42d0-ba6d-4ae1bd673439', false, 'SC-17',
  'Mont Buxton',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('72a50349-68d9-4449-a3c6-7e04162e2d5a', false, 'SC-18',
  'Mont Fleuri',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('29c1e54d-15b3-462f-9cee-4115faaad60f', false, 'SC-19',
  'Plaisance',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('fc1df8e0-a7c9-4dfe-96f9-ecc086ec051f', false, 'SC-20',
  'Pointe La Rue',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('98b13ca3-5c30-4647-ab48-30477192c3d6', false, 'SC-21',
  'Port Glaud',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('0ef24f88-0b1e-45ab-ba5e-a1aaf6f87fa1', false, 'SC-25',
  'Roche Caiman',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('57950916-5780-4945-9992-c591cd384485', false, 'SC-22',
  'Saint Louis',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('bfa3087d-5d15-4904-bd60-a086e9ac73bf', false, 'SC-23',
  'Takamaka',
  '1ae9590f-073f-412b-8ff3-6c1420b4f9f8');
INSERT INTO yacare_admission.province
 VALUES ('efaa8f3e-a7ef-4d1b-8124-4508ddb20776', false, 'SD-07',
  'Al Jazirah',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('69f489d5-fc25-44fc-8f94-4cfbdec27e78', false, 'SD-06',
  'Al Qadarif',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('84ced149-2422-4cd1-a07e-707edcf4eb40', false, 'SD-17',
  'Bahr al Jebel',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('4c288b74-c653-4ab9-b4fd-7fc1d585d2ce', false, 'SD-24',
  'Blue Nile',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('4ac67c0b-fcad-4041-9773-1944fc56af47', false, 'SD-19',
  'East Equatoria',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('0ece981a-7231-48b9-8dba-ec4a5b1341cb', false, 'SD-20',
  'Jonglei',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('50c8f605-72e7-4dd2-9d8e-3de697ae4fd0', false, 'SD-05',
  'Kassala',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('ca90bc22-dd6d-437f-ad02-4e1b0052abff', false, 'SD-03',
  'Khartoum',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('e7622c0f-3d12-4168-ba6e-6a3a2f08a6fa', false, 'SD-18',
  'Lakes',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('cda2dc1d-9be1-4aa3-a9c4-bf717159726a', false, 'SD-15',
  'North Bahr al Ghazal',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('501abb88-f792-45fd-866d-8d34fd15e521', false, 'SD-02',
  'North Darfur',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('a0cc8630-677f-42b5-bcd2-41db0164476a', false, 'SD-09',
  'North Kurdufan',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('c5bee175-ebf7-42bf-8fbd-341e5204337d', false, 'SD-01',
  'Northern',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('5bee1d1d-3465-4ee4-b03d-fd69e711d983', false, 'SD-26',
  'Red Sea',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('c8e1ec1f-6d7f-4d4a-ba78-8a65833fe658', false, 'SD-04',
  'River Nile',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('bb6010bf-3c98-413e-937a-9b1741dde817', false, 'SD-25',
  'Sennar',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('9eadb516-9534-4b99-994d-1f10d8d92648', false, 'SD-11',
  'South Darfur',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('7e0a2402-0c55-4155-b00d-ca24b1a35f0b', false, 'SD-13',
  'South Kurdufan',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('d62103d4-2a4f-4e96-a726-792edcdd8ede', false, 'SD-22',
  'Unity',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('78ef8147-f591-44d7-8fc3-72827a96565b', false, 'SD-23',
  'Upper Nile',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('eff811ab-99ce-4144-a16e-6a0cd7810393', false, 'SD-21',
  'Warab',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('7234f104-7359-43c9-8b13-ed84e7d13d61', false, 'SD-14',
  'West Bahr al Ghazal',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('8cd643cf-8f5d-4fd5-92a0-49e4351c89a8', false, 'SD-12',
  'West Darfur',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('e788cf4c-0f56-4ff2-afde-b87c981a8833', false, 'SD-16',
  'West Equatoria',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('3fed74c5-20d5-4715-85e6-ef91c4a14eef', false, 'SD-10',
  'West Kurdufan',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('0a99eb78-319c-4e2f-aa35-ed976aeda1c5', false, 'SD-08',
  'White Nile',
  'e91e3b87-631c-4111-824c-fbb20d72317e');
INSERT INTO yacare_admission.province
 VALUES ('ef030ad2-ce9b-46f8-b017-7261dd0f4470', false, 'SE-K',
  'Blekinge län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('3c00c845-7b4c-4eed-a61c-7c67ab712ff1', false, 'SE-W',
  'Dalarnas län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('2dce20f6-c5a2-46e4-a44c-1ec3fb8822b3', false, 'SE-X',
  'Gävleborgs län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('6dc73734-c2c3-4444-97b8-f63c0ec5fa04', false, 'SE-I',
  'Gotlands län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('f6131fe7-df36-4396-8d68-eb1879de25bc', false, 'SE-N',
  'Hallands län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('105e1117-a0fc-4e06-a2e1-17d5cc2298f2', false, 'SE-Z',
  'Jämtlands län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('dd4a0430-7b45-4706-83ec-7cfaaff9c687', false, 'SE-F',
  'Jönköpings län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('02cdaf4d-74f0-4b80-9c22-914d5498079d', false, 'SE-H',
  'Kalmar län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('53caa07f-7e61-4883-a7c1-3b3285a080ab', false, 'SE-G',
  'Kronobergs län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('00899726-a3fd-4a7a-b6d3-68ece21185e8', false, 'SE-BD',
  'Norrbottens län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('555a994b-f28a-4085-b23f-eb8c017916a9', false, 'SE-T',
  'Örebro län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('8f07486e-de60-4ce0-a289-633a21401ba7', false, 'SE-E',
  'Östergötlands län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('ddeb7472-ce62-4ac2-bdde-f27f3e0dd70d', false, 'SE-M',
  'Skåne län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('e9acbbd7-bdc1-4717-a436-70a75fc9c7a6', false, 'SE-D',
  'Södermanlands län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('d3ef3f64-905c-4d53-90bb-1a59f7b60909', false, 'SE-AB',
  'Stockholms län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('c56a0e2e-e825-4baa-8291-1580cb0cd8b8', false, 'SE-C',
  'Uppsala län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('b1cb09da-1e90-4bf5-ac49-49707b77b3ad', false, 'SE-S',
  'Värmlands län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('29bae8d6-8fc6-4180-8810-83773da3726e', false, 'SE-AC',
  'Västerbottens län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('cb307964-ad68-47a0-8994-3363e834723c', false, 'SE-Y',
  'Västernorrlands län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('6eb0e581-2e8b-4c42-9752-0ca7fde1f922', false, 'SE-U',
  'Västmanlands län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('aa20e589-77b5-425f-a7d8-0ff25600341d', false, 'SE-O',
  'Västra Götalands län',
  'f0640cf5-24ea-4bad-ae7b-794acce5fb82');
INSERT INTO yacare_admission.province
 VALUES ('96fd9f45-32c7-407f-b198-760979ec2feb', false, 'SG-01',
  'Central Singapore',
  '37dcbc2c-f74e-4900-acd1-5c300f50062c');
INSERT INTO yacare_admission.province
 VALUES ('62cc8fa3-3d07-4b42-9f28-4732f838366e', false, 'SG-02',
  'North-East',
  '37dcbc2c-f74e-4900-acd1-5c300f50062c');
INSERT INTO yacare_admission.province
 VALUES ('e8b57ac6-d431-4033-9c12-0019030c9ecc', false, 'SG-03',
  'North-West',
  '37dcbc2c-f74e-4900-acd1-5c300f50062c');
INSERT INTO yacare_admission.province
 VALUES ('599d8784-7251-48ae-9455-de9396b4efa5', false, 'SG-04',
  'South-East',
  '37dcbc2c-f74e-4900-acd1-5c300f50062c');
INSERT INTO yacare_admission.province
 VALUES ('fe8d2885-c63a-42e3-b4f2-fba3b65ee9de', false, 'SG-05',
  'South-West',
  '37dcbc2c-f74e-4900-acd1-5c300f50062c');
INSERT INTO yacare_admission.province
 VALUES ('30ecfe0e-1d63-4c49-ad5b-40aa347ff387', false, 'SI-001',
  'Ajdovščina',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('59adc412-5ced-4883-a96e-da6d265ef8ce', false, 'SI-195',
  'Apače',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('7c99a6d3-0b48-4d1b-ab6f-1d5639671747', false, 'SI-002',
  'Beltinci',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('36514a9e-86c9-41e0-b298-265e4b0a32eb', false, 'SI-148',
  'Benedikt',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('1ee56b94-2a58-44ee-bc63-969d7073207c', false, 'SI-149',
  'Bistrica ob Sotli',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('2e1c996b-2d8b-4625-aa49-d536be68d8c3', false, 'SI-003',
  'Bled',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('85f0de12-5804-419c-8df1-ead49776ad1f', false, 'SI-150',
  'Bloke',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('1c39a2fb-ca52-4315-935a-7a317a72c048', false, 'SI-004',
  'Bohinj',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('d0c884ed-0a1c-4437-9f8e-c7e35f8dfbc9', false, 'SI-005',
  'Borovnica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('58cb0044-7432-458b-a805-8244260d8bf6', false, 'SI-006',
  'Bovec',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('c554f687-5168-4237-882e-9101f4930f2e', false, 'SI-151',
  'Braslovče',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('c05b7430-6837-467f-baaa-8fe8e8a28006', false, 'SI-007',
  'Brda',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('bca4d5ec-0ffd-493a-87be-32f08a1c9f11', false, 'SI-009',
  'Brežice',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('9a556d8a-ae93-4c08-8db2-854908cada51', false, 'SI-008',
  'Brezovica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('39e5a624-a261-4c89-8d0e-7eacbbdc2bc9', false, 'SI-152',
  'Cankova',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('acb228ad-7e7e-4390-9243-d3cfc7643599', false, 'SI-011',
  'Celje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('62d1410a-0987-4ac8-ad5c-569098ac0149', false, 'SI-012',
  'Cerklje na Gorenjskem',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('b9251b14-06ad-437b-a6e9-26df8946e951', false, 'SI-013',
  'Cerknica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('07464dce-7986-49a9-8363-094c0486e7fe', false, 'SI-014',
  'Cerkno',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('f4582b63-4891-4298-b241-13660cc3e763', false, 'SI-153',
  'Cerkvenjak',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('3fccd326-d9fb-4cda-a3b7-8fb60e2ae7ed', false, 'SI-196',
  'Cirkulane',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('c2c2de1b-1f9d-429c-89ab-0a191cb4f6e2', false, 'SI-015',
  'Črenšovci',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('5e0d5684-da19-4993-9e10-7d96f2c0576e', false, 'SI-016',
  'Črna na Koroškem',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('c1e4b6ed-0e3c-4f7a-9938-a5ec781c0207', false, 'SI-017',
  'Črnomelj',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('4097b293-1b36-43af-a26f-4ff5f73105da', false, 'SI-018',
  'Destrnik',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('cb3c8938-6afe-4d17-9b5d-af6db0aa643c', false, 'SI-019',
  'Divača',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('bfba1df7-a303-4956-9d32-94a18fe61d4b', false, 'SI-154',
  'Dobje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('32981471-c441-4c3f-9493-0d29dc564ef5', false, 'SI-020',
  'Dobrepolje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('10d51d75-4037-4ba2-a78b-16d5266e7707', false, 'SI-155',
  'Dobrna',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('5b5d05da-c779-487a-94f1-0417f18eb272', false, 'SI-021',
  'Dobrova-Polhov Gradec',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('06dce354-a2a8-40d7-bea2-fca731c5b7c8', false, 'SI-156',
  'Dobrovnik',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('4ef9f13e-86ab-4656-87bc-3b74db68fa15', false, 'SI-022',
  'Dol pri Ljubljani',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('cda630fc-6115-42b8-ba55-dd44af859cde', false, 'SI-157',
  'Dolenjske Toplice',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('c8862a0d-f4d1-4156-825b-78e910585cd0', false, 'SI-023',
  'Domžale',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('301d39dd-f600-4a52-b15d-8e0a79894628', false, 'SI-024',
  'Dornava',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('6e563799-53c6-4595-821c-86beca7369b4', false, 'SI-025',
  'Dravograd',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('9967dd01-f60b-4349-8c1f-92849fb8919c', false, 'SI-026',
  'Duplek',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('756b4e40-4f0e-4d94-9ee8-0e638f950f44', false, 'SI-027',
  'Gorenja vas-Poljane',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('477fb9f8-6c61-4b40-a6a9-c789c10ec471', false, 'SI-028',
  'Gorišnica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('84ab41f2-d727-462e-9cd6-ccc726a5d8a2', false, 'SI-207',
  'Gorje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('be7f529c-7923-4ade-b996-cbd91b227a1f', false, 'SI-029',
  'Gornja Radgona',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('4a004557-8c2f-4d9f-aec0-ceaa6db8ea4d', false, 'SI-030',
  'Gornji Grad',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('b5a10465-c032-49f4-8d18-1dc9135d511f', false, 'SI-031',
  'Gornji Petrovci',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('c5f4d02b-84f1-48c0-a97f-ff35ebbb7c2e', false, 'SI-158',
  'Grad',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('065b714a-9c00-46a7-9d99-1802e5575f08', false, 'SI-032',
  'Grosuplje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('637cb30c-f5a6-4159-8082-53c18abafef4', false, 'SI-159',
  'Hajdina',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('e7491a5d-bb8e-43d9-ac01-f51b6ce4deed', false, 'SI-160',
  'Hoče-Slivnica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('7130ab79-e687-42e1-8ec9-15f30100ad66', false, 'SI-161',
  'Hodoš',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('8dd7dc4b-8375-4bc4-9cca-64844ec81580', false, 'SI-162',
  'Horjul',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('6f81ea2a-29ab-4d31-ba19-910694d4d7b1', false, 'SI-034',
  'Hrastnik',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('ecbd9a9c-cbc7-4528-bed9-1118cfa40ab9', false, 'SI-035',
  'Hrpelje-Kozina',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('1d53b0d5-af28-418d-a2ca-aaed1a63d8f2', false, 'SI-036',
  'Idrija',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('74f1ab27-c891-4a4f-be6a-c12fa56bf5fe', false, 'SI-037',
  'Ig',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('aa705f85-f670-49c5-a6d6-ab7017870ab6', false, 'SI-038',
  'Ilirska Bistrica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('6767e38b-eef1-41b0-ad35-89f98defb620', false, 'SI-039',
  'Ivančna Gorica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('95c8965b-4e55-4bfe-adde-91f59e90ca46', false, 'SI-040',
  'Izola',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('6934db55-5f3f-4ab2-830c-3594ec45be78', false, 'SI-041',
  'Jesenice',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('efa86e9d-3609-4809-9d9a-50cc097b7e78', false, 'SI-163',
  'Jezersko',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('0e76fd58-e27f-4861-a8c9-87b1e2d06733', false, 'SI-042',
  'Juršinci',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('866ec63a-03cc-4639-9ea6-7edc122dc616', false, 'SI-043',
  'Kamnik',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('d47c8ebd-d29e-46f3-9fb1-05cadc910846', false, 'SI-044',
  'Kanal',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('19aa6bbf-0948-46ae-a055-e861b43efa1b', false, 'SI-045',
  'Kidričevo',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('e183c77a-c1ec-45fd-9c37-86246c826ae5', false, 'SI-046',
  'Kobarid',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('500577f2-c67e-49b9-867f-f67a8349f70e', false, 'SI-047',
  'Kobilje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('9e7fe9bd-1759-4d2b-8358-2b92ed72d873', false, 'SI-048',
  'Kočevje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('ac99da40-7347-4cad-945e-d9b5fd6dec64', false, 'SI-049',
  'Komen',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('aef6ea12-64d1-4d16-9550-fb450e819529', false, 'SI-164',
  'Komenda',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('e74229f5-d842-4055-ac45-95916196c322', false, 'SI-050',
  'Koper',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('e1bd03f4-7856-4220-95bd-0d1624fd6a36', false, 'SI-197',
  'Kostanjevica na Krki',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('b75ae386-780c-47e7-a2ef-389b9db33392', false, 'SI-165',
  'Kostel',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('9627df7c-3533-4ff5-9540-f41b909326ab', false, 'SI-051',
  'Kozje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('e3a2c791-ef44-4fd9-9a7e-9e7bbdef37eb', false, 'SI-052',
  'Kranj',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('4add7b5c-e030-4b89-9e11-3318ec78474f', false, 'SI-053',
  'Kranjska Gora',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('853a02a1-329e-4b4e-8b58-142f258ec234', false, 'SI-166',
  'Križevci',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('18853eed-7752-4950-906b-9ebf97f704a3', false, 'SI-054',
  'Krško',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('e471f3e7-4b49-4972-89db-173e14a3d3c1', false, 'SI-055',
  'Kungota',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('8e15a960-a7ed-4981-837a-6dfaa95948a0', false, 'SI-056',
  'Kuzma',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('f898b302-5269-488d-ad63-efc4419185e1', false, 'SI-057',
  'Laško',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('321f7da3-ca7e-4539-9b5a-270029fb15f6', false, 'SI-058',
  'Lenart',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('824605b3-1c51-4e09-865d-d8d5cf2de9f5', false, 'SI-059',
  'Lendava',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('52fba835-7c4d-4ad2-adbd-7a07d90adf1c', false, 'SI-060',
  'Litija',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('5a472221-7536-45dd-8617-5e5662395455', false, 'SI-061',
  'Ljubljana',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('ad74537a-f8ed-4a56-ba77-96de066b07a3', false, 'SI-062',
  'Ljubno',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('1926dcb9-8157-4994-ad56-12c821af3b56', false, 'SI-063',
  'Ljutomer',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('ad2c8663-5f22-4865-a20a-caeddd410c00', false, 'SI-064',
  'Logatec',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('fe960f40-e9e1-42b7-93a0-a2caf58b2235', false, 'SI-208',
  'Log-Dragomer',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('a4972106-c991-426d-a20f-86f0959f0074', false, 'SI-065',
  'Loška dolina',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('358f7e44-0c7c-4b00-9f6c-5e6542905607', false, 'SI-066',
  'Loški Potok',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('fa7a2569-8603-40b3-a271-4e92abd6c4ec', false, 'SI-167',
  'Lovrenc na Pohorju',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('de288521-40c9-4583-8dc9-b1cab871a286', false, 'SI-067',
  'Luče',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('ab4e94b7-865b-4a91-887d-fd954e2792fa', false, 'SI-068',
  'Lukovica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('32008566-39cc-4838-8f90-df186c5a9c7f', false, 'SI-069',
  'Majšperk',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('8d9a8402-131d-42f4-b3e8-f789b3afa80e', false, 'SI-198',
  'Makole',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('648e4635-861c-44ad-97a2-08c54afdba6b', false, 'SI-070',
  'Maribor',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('55edd2f6-9434-4e0b-af76-90247ecda048', false, 'SI-168',
  'Markovci',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('4021b877-3f9d-4145-bf9e-d3ea7d351276', false, 'SI-071',
  'Medvode',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('09cfb324-6921-43de-bb9d-89b84205d6b9', false, 'SI-072',
  'Mengeš',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('2cd38004-0409-4d54-bf4b-8359a4871a50', false, 'SI-073',
  'Metlika',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('79824f65-fdd3-462a-a919-3e23b81e81df', false, 'SI-074',
  'Mežica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('bb25d64e-6836-49ea-bb0c-eaebfb569371', false, 'SI-169',
  'Miklavž na Dravskem polju',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('9b5372fc-7318-400f-8bb6-3a694417f10d', false, 'SI-075',
  'Miren-Kostanjevica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('9ea20f12-2853-421a-b5d1-3d99b45bcf58', false, 'SI-170',
  'Mirna Peč',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('b9e094b8-e2b7-4104-b5b6-bb2da79c0ede', false, 'SI-076',
  'Mislinja',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('5310525b-3339-4a8c-bbb0-60a97068457a', false, 'SI-199',
  'Mokronog-Trebelno',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('3ea44b80-1e02-4447-b79d-d734d191a628', false, 'SI-077',
  'Moravče',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('69ecb3ba-bc49-48d3-a31e-d19c693f620f', false, 'SI-078',
  'Moravske Toplice',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('45d4e7d9-c737-4e99-91c4-ff7fc30706bc', false, 'SI-079',
  'Mozirje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('3d9c6cbd-7bee-4b66-806b-68a104c10832', false, 'SI-080',
  'Murska Sobota',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('6713e841-d02a-4ba1-a0cb-b114a3ba4f92', false, 'SI-081',
  'Muta',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('b6830f09-db06-41fb-ae80-400acf6f175b', false, 'SI-082',
  'Naklo',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('59255bb3-096c-4016-935d-d59eda6c690a', false, 'SI-083',
  'Nazarje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('73481939-b2fa-4a4d-bece-79b815e796d8', false, 'SI-084',
  'Nova Gorica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('7218c709-f59a-466f-bf03-d5c191d01a5b', false, 'SI-085',
  'Novo mesto',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('9dd0b35e-122b-4789-b213-bab6bd395e2d', false, 'SI-086',
  'Odranci',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('b48af9f1-95b0-4cb7-a7af-d1282905755d', false, 'SI-171',
  'Oplotnica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('7540c99c-433a-4db9-9abc-c06c3333cd49', false, 'SI-087',
  'Ormož',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('c3be3fb2-68ce-4964-afb1-b02ae1ee9f6c', false, 'SI-088',
  'Osilnica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('06598de1-3837-4dd9-b1a1-63e9f9574606', false, 'SI-089',
  'Pesnica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('18c23c68-66d9-4d39-8a25-7d3bfb0a323b', false, 'SI-090',
  'Piran',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('b4092702-a1e3-4df3-9be1-827741161fd7', false, 'SI-091',
  'Pivka',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('72c38a93-5058-4f89-b28a-8030284c0245', false, 'SI-092',
  'Podčetrtek',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('6df73166-25e3-4ce1-bbf5-1c1354b07256', false, 'SI-172',
  'Podlehnik',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('56dad01d-fe5b-4d0a-b86d-8a263cd0d450', false, 'SI-093',
  'Podvelka',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('9d799cf3-aa3f-4b69-a8de-eb23119d8739', false, 'SI-200',
  'Poljčane',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('106ab24d-2465-4eba-86e5-0852d2078313', false, 'SI-173',
  'Polzela',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('9b0871c4-2807-4778-949b-e1eb76aedf6c', false, 'SI-094',
  'Postojna',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('41600fe8-ace1-46c0-8510-9746d1c3547e', false, 'SI-174',
  'Prebold',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('402324eb-1367-4056-bdb3-f11340b9574f', false, 'SI-095',
  'Preddvor',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('fe99e6e0-0846-482d-98da-2c6b1e6cd34f', false, 'SI-175',
  'Prevalje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('ea4b81a6-9030-4789-b211-e5ecb13175eb', false, 'SI-096',
  'Ptuj',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('47251def-4e8b-4f58-acc9-c07c8deefecc', false, 'SI-097',
  'Puconci',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('e446da41-48e7-4113-ab47-a6df9a57b1a5', false, 'SI-098',
  'Rače-Fram',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('35c7bbaa-9435-43c1-b966-1ab08452f961', false, 'SI-099',
  'Radeče',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('babdc366-ca13-4129-9ed7-35439a3d2e39', false, 'SI-100',
  'Radenci',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('d621c3ef-7dd1-4a6a-8ee9-36c1084eb8ce', false, 'SI-101',
  'Radlje ob Dravi',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('a227f7fd-2b41-4622-b076-4044190b136f', false, 'SI-102',
  'Radovljica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('f20ee56d-f5cc-4d7e-ac49-3967ab2b44d7', false, 'SI-103',
  'Ravne na Koroškem',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('3ca3ea0c-34fa-41e8-b3fd-da3d14d60240', false, 'SI-176',
  'Razkrižje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('e3ec195b-458b-40ef-bf85-aafdf808f580', false, 'SI-209',
  'Rečica ob Savinji',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('8f5ea69d-2a3f-4a66-91bf-21993b701481', false, 'SI-201',
  'Renče-Vogrsko',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('4d7ffc15-1b6e-4feb-b258-c5489e6ef9dd', false, 'SI-104',
  'Ribnica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('81999cbf-6336-4510-8ae2-41a1ea312c56', false, 'SI-177',
  'Ribnica na Pohorju',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('38c63d39-a58c-4e56-8cd6-891b46d48e68', false, 'SI-106',
  'Rogaška Slatina',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('142d92a4-3bfb-4222-9acd-2fdd17a157b7', false, 'SI-105',
  'Rogašovci',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('7bf631ea-413e-4964-a63b-c92e4b17ed78', false, 'SI-107',
  'Rogatec',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('cffd30a0-20bb-46b3-a589-94a3aabe7df2', false, 'SI-108',
  'Ruše',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('effdfaf0-2f8a-486d-bd59-af65e1b005a2', false, 'SI-033',
  'Šalovci',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('af8472f9-f961-4d61-8f3a-3a19409b2952', false, 'SI-178',
  'Selnica ob Dravi',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('0d2abc96-df6e-4c71-8a3e-5e06512e0c76', false, 'SI-109',
  'Semič',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('058cf1d1-6b9d-4677-9917-f09102506671', false, 'SI-183',
  'Šempeter-Vrtojba',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('a5579536-9ce8-4e32-9c0c-3aa967946f2c', false, 'SI-117',
  'Šenčur',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('7b16b2c0-9053-446e-8c9b-9da167454afb', false, 'SI-118',
  'Šentilj',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('526ed695-4ae5-475e-93af-b33bfae322cd', false, 'SI-119',
  'Šentjernej',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('9d5c35ee-191a-49bb-8c75-f0364a893ef0', false, 'SI-120',
  'Šentjur',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('7e0b1fa3-9c19-4d4f-83da-5879b614c9f6', false, 'SI-211',
  'Šentrupert',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('b35480c4-c51e-42ae-bcdd-4b124ca2e808', false, 'SI-110',
  'Sevnica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('bdd8097b-7866-40d6-bad0-954314d87335', false, 'SI-111',
  'Sežana',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('3053a56f-0464-4075-b8f9-207e2aa06be7', false, 'SI-121',
  'Škocjan',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('a6617a41-ad0e-4065-87b7-27fd719fc552', false, 'SI-122',
  'Škofja Loka',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('00d3f444-fe00-4432-a614-497f0bf6a62b', false, 'SI-123',
  'Škofljica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('7242cfcc-68f5-4caf-8900-122e5ae0a2f0', false, 'SI-112',
  'Slovenj Gradec',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('a3aaa462-29bd-4b42-9dbf-5b3586d9d939', false, 'SI-113',
  'Slovenska Bistrica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('cf897401-2cac-4798-96d8-f5034d534a10', false, 'SI-114',
  'Slovenske Konjice',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('db58c82c-7bcc-4186-b5a4-3eb6dbceed13', false, 'SI-124',
  'Šmarje pri Jelšah',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('d10e20ea-7267-40a1-9810-45aa72e67bf8', false, 'SI-206',
  'Šmarješke Toplice',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('10639d1c-10f6-402d-a600-3a7bdde6f07a', false, 'SI-125',
  'Šmartno ob Paki',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('8e7fa1b3-0edb-477c-9274-198dd4cfb5a5', false, 'SI-194',
  'Šmartno pri Litiji',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('e51700e1-b5ab-4414-9386-44478880d72a', false, 'SI-179',
  'Sodražica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('f9379395-e656-4dcd-92ea-789995379483', false, 'SI-180',
  'Solčava',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('22875adf-5af0-4202-a865-47dc19a25ac6', false, 'SI-126',
  'Šoštanj',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('8d26b0ed-5578-48e5-a203-504d5064d5b6', false, 'SI-202',
  'Središče ob Dravi',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('e7b973d1-7742-494b-86f3-fa9ed8c17774', false, 'SI-115',
  'Starše',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('a7d947f6-7c27-4548-bd44-d8334c672362', false, 'SI-127',
  'Štore',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('f01fffad-6d30-4033-810a-a8c930798d1b', false, 'SI-203',
  'Straža',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('7e9bf640-dba9-4363-9237-4d3d557356d1', false, 'SI-181',
  'Sveta Ana',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('520f0cc8-528a-4235-8dfe-b9ce8fa1e843', false, 'SI-204',
  'Sveta Trojica v Slovenskih goricah',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('db7911f5-5e5a-4e27-b17a-d517621df726', false, 'SI-182',
  'Sveti Andraž v Slovenskih goricah',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('27df2655-7483-48a9-aaa9-4b56ceec2197', false, 'SI-116',
  'Sveti Jurij ob Ščavnici',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('83e7d6e2-0030-41f3-bbbf-d63ab7e1f7d5', false, 'SI-210',
  'Sveti Jurij v Slovenskih goricah',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('7d944fd4-3626-47b5-9b0e-872ec83782e1', false, 'SI-205',
  'Sveti Tomaž',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('3bb96728-d141-4843-8289-a1d28a9d6aeb', false, 'SI-184',
  'Tabor',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('3beb77f1-bdca-42a7-a134-18a6857ad920', false, 'SI-010',
  'Tišina',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('8a42a16d-cbc0-4f12-a09d-bd6bd5929070', false, 'SI-128',
  'Tolmin',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('1970e74d-cf2d-498c-a206-6e8a1809b971', false, 'SI-129',
  'Trbovlje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('2629853b-8a33-4dbf-aa36-41390d750dac', false, 'SI-130',
  'Trebnje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('336dfcd9-16ad-4b5c-8cac-afcb53bece33', false, 'SI-185',
  'Trnovska vas',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('4697a270-b3f8-44af-aa70-829593424100', false, 'SI-131',
  'Tržič',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('61b28535-a974-4790-adf7-3112f681b46d', false, 'SI-186',
  'Trzin',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('e952dcae-9244-4759-b150-fdf49a0e105b', false, 'SI-132',
  'Turnišče',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('b6899f36-e171-4527-86fa-86b252cda47e', false, 'SI-133',
  'Velenje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('ad0353ec-0970-44c4-87e9-a67af9969014', false, 'SI-187',
  'Velika Polana',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('67654e9a-0f0e-47d4-aeb0-2a85909139ba', false, 'SI-134',
  'Velike Lašče',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('90d614ce-6f44-4093-9fff-f19b0302705f', false, 'SI-188',
  'Veržej',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('e8387656-482f-4668-91f9-bca9245d4da2', false, 'SI-135',
  'Videm',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('17b23527-9f69-4925-b14c-e7361c8d7ea9', false, 'SI-136',
  'Vipava',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('a04534a9-4f88-4385-9cc5-1bc2f9c9f4c4', false, 'SI-137',
  'Vitanje',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('a906abf2-92cf-41a7-bb0a-61e4cec84f6e', false, 'SI-138',
  'Vodice',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('20ec2e92-8186-4250-8e64-cb55e50502e0', false, 'SI-139',
  'Vojnik',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('4dc95b9a-ed0e-450c-9b8a-f218b3ef0970', false, 'SI-189',
  'Vransko',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('d41dd258-4429-4820-bfb6-7b70a5cdf989', false, 'SI-140',
  'Vrhnika',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('22a713ac-0d8c-4c11-b8bf-5899cca5a801', false, 'SI-141',
  'Vuzenica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('2dd592fd-d981-4053-9d7b-e7874bb8a064', false, 'SI-142',
  'Zagorje ob Savi',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('1356f1d5-bd52-432f-b83b-39ad164cd595', false, 'SI-190',
  'Žalec',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('2026f82c-cea8-4410-b531-37509188ad2c', false, 'SI-143',
  'Zavrč',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('868964e2-8357-4148-8708-726c0155354b', false, 'SI-146',
  'Železniki',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('11f86250-749b-44c9-b385-ae78ff15879b', false, 'SI-191',
  'Žetale',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('6075c2f2-47ae-44ef-a4fd-335d33650c59', false, 'SI-147',
  'Žiri',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('4f5198c1-5fa7-4bef-8523-20671624e3c2', false, 'SI-192',
  'Žirovnica',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('f5d8937b-efb7-4b26-b703-7af01c53248e', false, 'SI-144',
  'Zreče',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('ceae92aa-8e6c-4539-80f3-22dac26f5bfb', false, 'SI-193',
  'Žužemberk',
  'b0f9952d-d205-41de-b41f-24be03d5dba0');
INSERT INTO yacare_admission.province
 VALUES ('8c2eeac0-1b44-472c-9fef-cfa88cefc7b1', false, 'SK-BC',
  'Banskobystrický kraj',
  '3e4ccbdb-26b1-473e-baaf-e5e9d73b5afa');
INSERT INTO yacare_admission.province
 VALUES ('946cb676-cdd6-4aa7-8dbc-9054e18859c2', false, 'SK-BL',
  'Bratislavský kraj',
  '3e4ccbdb-26b1-473e-baaf-e5e9d73b5afa');
INSERT INTO yacare_admission.province
 VALUES ('b64f0e69-e1f4-4801-81c4-1d17b76a0cee', false, 'SK-KI',
  'Košický kraj',
  '3e4ccbdb-26b1-473e-baaf-e5e9d73b5afa');
INSERT INTO yacare_admission.province
 VALUES ('0ce942d3-1543-45cc-a225-7200d0029829', false, 'SK-NI',
  'Nitriansky kraj',
  '3e4ccbdb-26b1-473e-baaf-e5e9d73b5afa');
INSERT INTO yacare_admission.province
 VALUES ('4337a04a-1777-4d05-b7e0-819b626270c5', false, 'SK-PV',
  'Prešovský kraj',
  '3e4ccbdb-26b1-473e-baaf-e5e9d73b5afa');
INSERT INTO yacare_admission.province
 VALUES ('f04503a0-c7bb-490a-b9ac-f0c2fa2154c7', false, 'SK-TC',
  'Trenčiansky kraj',
  '3e4ccbdb-26b1-473e-baaf-e5e9d73b5afa');
INSERT INTO yacare_admission.province
 VALUES ('937e36f6-b06f-4390-bdc1-095e3c5925e8', false, 'SK-TA',
  'Trnavský kraj',
  '3e4ccbdb-26b1-473e-baaf-e5e9d73b5afa');
INSERT INTO yacare_admission.province
 VALUES ('2271d1b8-c4c5-4b34-b4e5-e0e43e7add5e', false, 'SK-ZI',
  'Žilinský kraj',
  '3e4ccbdb-26b1-473e-baaf-e5e9d73b5afa');
INSERT INTO yacare_admission.province
 VALUES ('947d00f4-8b91-46a2-beb5-89570aa3f7bb', false, 'SL-E',
  'Eastern',
  '47e3d7eb-dad6-4381-b218-41d1aff8de3b');
INSERT INTO yacare_admission.province
 VALUES ('5bd7ce79-d442-4ecc-ab53-936c5e59e229', false, 'SL-N',
  'Northern',
  '47e3d7eb-dad6-4381-b218-41d1aff8de3b');
INSERT INTO yacare_admission.province
 VALUES ('8478921f-4b70-4740-b846-95dd184607b2', false, 'SL-S',
  'Southern',
  '47e3d7eb-dad6-4381-b218-41d1aff8de3b');
INSERT INTO yacare_admission.province
 VALUES ('cb9c2677-3071-42c6-9a5f-7d8131f198dd', false, 'SL-W',
  'Western Area',
  '47e3d7eb-dad6-4381-b218-41d1aff8de3b');
INSERT INTO yacare_admission.province
 VALUES ('3d958085-7d04-4e5f-8bb8-2302171b1508', false, 'SM-01',
  'Acquaviva',
  '5e52d70a-9d19-4fbd-a723-396ff144ace8');
INSERT INTO yacare_admission.province
 VALUES ('ca7896c3-54b3-47cc-834b-56e125ef9690', false, 'SM-06',
  'Borgo Maggiore',
  '5e52d70a-9d19-4fbd-a723-396ff144ace8');
INSERT INTO yacare_admission.province
 VALUES ('4fa92313-43c9-420b-b2c3-e0c72a0212e0', false, 'SM-02',
  'Chiesanuova',
  '5e52d70a-9d19-4fbd-a723-396ff144ace8');
INSERT INTO yacare_admission.province
 VALUES ('ba3b4d97-3bf7-476a-967d-1a04be26c894', false, 'SM-03',
  'Domagnano',
  '5e52d70a-9d19-4fbd-a723-396ff144ace8');
INSERT INTO yacare_admission.province
 VALUES ('2ec4e23f-52ec-45b3-8f09-6508fbb40aa9', false, 'SM-04',
  'Faetano',
  '5e52d70a-9d19-4fbd-a723-396ff144ace8');
INSERT INTO yacare_admission.province
 VALUES ('12841840-6723-4406-a658-225ba616b057', false, 'SM-05',
  'Fiorentino',
  '5e52d70a-9d19-4fbd-a723-396ff144ace8');
INSERT INTO yacare_admission.province
 VALUES ('99a2bd0d-ad73-4917-a73a-08a74097eae4', false, 'SM-08',
  'Montegiardino',
  '5e52d70a-9d19-4fbd-a723-396ff144ace8');
INSERT INTO yacare_admission.province
 VALUES ('cf466efd-53e1-4d8d-8f11-716045144a1b', false, 'SM-07',
  'San Marino',
  '5e52d70a-9d19-4fbd-a723-396ff144ace8');
INSERT INTO yacare_admission.province
 VALUES ('b621f9fa-0d41-4cd8-86e2-71a8f9e310a2', false, 'SM-09',
  'Serravalle',
  '5e52d70a-9d19-4fbd-a723-396ff144ace8');
INSERT INTO yacare_admission.province
 VALUES ('f3dfbc00-ace1-457b-a387-8dca91f2727b', false, 'SN-DK',
  'Dakar',
  '235a33db-d9d2-4715-812f-9b95cc11df05');
INSERT INTO yacare_admission.province
 VALUES ('f44594b0-122c-4f7e-863b-62dab427661e', false, 'SN-DB',
  'Diourbel',
  '235a33db-d9d2-4715-812f-9b95cc11df05');
INSERT INTO yacare_admission.province
 VALUES ('27b4576e-dcf4-4385-bf58-6efda0a70ca1', false, 'SN-FK',
  'Fatick',
  '235a33db-d9d2-4715-812f-9b95cc11df05');
INSERT INTO yacare_admission.province
 VALUES ('27dda7c6-d513-4a6d-972b-7ab224b7205f', false, 'SN-KA',
  'Kaffrine',
  '235a33db-d9d2-4715-812f-9b95cc11df05');
INSERT INTO yacare_admission.province
 VALUES ('c2421c97-00c4-4355-9777-ca5318ffd753', false, 'SN-KL',
  'Kaolack',
  '235a33db-d9d2-4715-812f-9b95cc11df05');
INSERT INTO yacare_admission.province
 VALUES ('8384a587-22cf-4452-8c38-27ecb873d842', false, 'SN-KE',
  'Kédougou',
  '235a33db-d9d2-4715-812f-9b95cc11df05');
INSERT INTO yacare_admission.province
 VALUES ('8297d5bc-7cb7-4b1d-ae95-536a3c43dbee', false, 'SN-KD',
  'Kolda',
  '235a33db-d9d2-4715-812f-9b95cc11df05');
INSERT INTO yacare_admission.province
 VALUES ('ce5ca504-d9ac-4cfc-824c-c9109402ab1c', false, 'SN-LG',
  'Louga',
  '235a33db-d9d2-4715-812f-9b95cc11df05');
INSERT INTO yacare_admission.province
 VALUES ('6720ca83-85ce-4dc7-9d9d-6a82d40adac9', false, 'SN-MT',
  'Matam',
  '235a33db-d9d2-4715-812f-9b95cc11df05');
INSERT INTO yacare_admission.province
 VALUES ('d51a210f-a676-4564-8994-110996699289', false, 'SN-SL',
  'Saint-Louis',
  '235a33db-d9d2-4715-812f-9b95cc11df05');
INSERT INTO yacare_admission.province
 VALUES ('5fbb5650-1ad1-497b-8eb8-5bc19f7db168', false, 'SN-SE',
  'Sédhiou',
  '235a33db-d9d2-4715-812f-9b95cc11df05');
INSERT INTO yacare_admission.province
 VALUES ('b391d4aa-461b-4f63-9a7b-9eb8d51ed1cd', false, 'SN-TC',
  'Tambacounda',
  '235a33db-d9d2-4715-812f-9b95cc11df05');
INSERT INTO yacare_admission.province
 VALUES ('cc99febc-086c-4d3e-bdd3-a90cc9acf096', false, 'SN-TH',
  'Thiès',
  '235a33db-d9d2-4715-812f-9b95cc11df05');
INSERT INTO yacare_admission.province
 VALUES ('7158c714-3f9a-4cff-80cf-64c16934ae66', false, 'SN-ZG',
  'Ziguinchor',
  '235a33db-d9d2-4715-812f-9b95cc11df05');
INSERT INTO yacare_admission.province
 VALUES ('a5f51a39-b27f-4b8f-975f-5634e4d968bc', false, 'SO-AW',
  'Awdal',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('a0d36c86-bb08-4fa7-9ad3-8de663a86e61', false, 'SO-BK',
  'Bakool',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('acf44280-6333-44f1-a435-b87c58334c1a', false, 'SO-BN',
  'Banaadir',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('7c67e0bd-9099-4af2-bfb9-6ec8d6a9a2b6', false, 'SO-BR',
  'Bari',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('bfb3d030-21fd-4c69-890e-779c92218eb8', false, 'SO-BY',
  'Bay',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('e5e39944-466e-4d41-a0be-f43a48deedf7', false, 'SO-GA',
  'Galguduud',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('b162313d-abc2-4d7d-bf84-903de2912934', false, 'SO-GE',
  'Gedo',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('1b6bcae3-899b-45b0-8f95-f4b6b0ed2e36', false, 'SO-HI',
  'Hiiraan',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('ab5c47d5-5cf4-41bd-834c-8dd52f8d496c', false, 'SO-JD',
  'Jubbada Dhexe',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('3a6349e5-5f63-4f66-8294-b6f176ddf2f5', false, 'SO-JH',
  'Jubbada Hoose',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('6ce88b79-c5d2-49fb-aa51-f4b6f19a46fe', false, 'SO-MU',
  'Mudug',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('a19ca855-0747-436f-aec3-28fb2a7f70ac', false, 'SO-NU',
  'Nugaal',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('16ebcb08-2815-4cd6-ad95-210447c3fd9a', false, 'SO-SA',
  'Sanaag',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('7017a570-36b6-409d-b9a4-97a890b35c09', false, 'SO-SD',
  'Shabeellaha Dhexe',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('4e00cb79-5cdd-4724-a82b-9a346ba70f59', false, 'SO-SH',
  'Shabeellaha Hoose',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('d159cddd-4df4-466c-9024-5c22102b402e', false, 'SO-SO',
  'Sool',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('95638dc1-8625-4bc9-bedc-2d5208dcd253', false, 'SO-TO',
  'Togdheer',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('9a68e027-9529-44b6-bc39-c3bfaee8beb9', false, 'SO-WO',
  'Woqooyi Galbeed',
  '95ff1daa-022e-4a6e-9b80-af384b15c09b');
INSERT INTO yacare_admission.province
 VALUES ('ecbe2881-2af4-4d17-aec2-a23177a03cc5', false, 'SR-BR',
  'Brokopondo',
  '5fe89ab4-9d2d-4c9e-a19e-52f71a5e04b1');
INSERT INTO yacare_admission.province
 VALUES ('4f51adfa-b7b5-4e99-bcbd-fe1b58dedb02', false, 'SR-CM',
  'Commewijne',
  '5fe89ab4-9d2d-4c9e-a19e-52f71a5e04b1');
INSERT INTO yacare_admission.province
 VALUES ('66be1392-c644-4dfc-8e87-cea1efe5b379', false, 'SR-CR',
  'Coronie',
  '5fe89ab4-9d2d-4c9e-a19e-52f71a5e04b1');
INSERT INTO yacare_admission.province
 VALUES ('c47588a1-3c4f-4908-81dd-f2bcdb987814', false, 'SR-MA',
  'Marowijne',
  '5fe89ab4-9d2d-4c9e-a19e-52f71a5e04b1');
INSERT INTO yacare_admission.province
 VALUES ('4e040fca-82be-4e74-8521-fc2c81b2b1ed', false, 'SR-NI',
  'Nickerie',
  '5fe89ab4-9d2d-4c9e-a19e-52f71a5e04b1');
INSERT INTO yacare_admission.province
 VALUES ('b30c8282-eab2-4a5d-80d9-9e6dbf2c2db6', false, 'SR-PR',
  'Para',
  '5fe89ab4-9d2d-4c9e-a19e-52f71a5e04b1');
INSERT INTO yacare_admission.province
 VALUES ('120ca872-1f51-4d1c-8c52-20ac44ee825f', false, 'SR-PM',
  'Paramaribo',
  '5fe89ab4-9d2d-4c9e-a19e-52f71a5e04b1');
INSERT INTO yacare_admission.province
 VALUES ('ecfabd63-3d0f-4c19-8463-8c5b66a056c3', false, 'SR-SA',
  'Saramacca',
  '5fe89ab4-9d2d-4c9e-a19e-52f71a5e04b1');
INSERT INTO yacare_admission.province
 VALUES ('f2e5efab-e607-4c6b-b02f-5843ff92cf9b', false, 'SR-SI',
  'Sipaliwini',
  '5fe89ab4-9d2d-4c9e-a19e-52f71a5e04b1');
INSERT INTO yacare_admission.province
 VALUES ('40cf84cf-bae7-4eeb-96dc-1ca693bfb2b5', false, 'SR-WA',
  'Wanica',
  '5fe89ab4-9d2d-4c9e-a19e-52f71a5e04b1');
INSERT INTO yacare_admission.province
 VALUES ('3fb1451c-709b-4444-8d15-82280ce2660f', false, 'ST-P',
  'Príncipe',
  '12346457-78d2-4626-99fe-edb7c59c5b42');
INSERT INTO yacare_admission.province
 VALUES ('b7c254c4-c7b8-455d-a609-fe4e40be6a9f', false, 'ST-S',
  'São Tomé',
  '12346457-78d2-4626-99fe-edb7c59c5b42');
INSERT INTO yacare_admission.province
 VALUES ('d39828c5-3fd1-48c1-a893-748191426f5e', false, 'SV-AH',
  'Ahuachapán',
  '60396eca-42a4-4c1e-929a-d0702b36c235');
INSERT INTO yacare_admission.province
 VALUES ('2402d540-9933-49bc-8314-7178e552a941', false, 'SV-CA',
  'Cabañas',
  '60396eca-42a4-4c1e-929a-d0702b36c235');
INSERT INTO yacare_admission.province
 VALUES ('ae9171ba-f2e1-4c45-8590-232e84ca8e57', false, 'SV-CH',
  'Chalatenango',
  '60396eca-42a4-4c1e-929a-d0702b36c235');
INSERT INTO yacare_admission.province
 VALUES ('8bc52aa4-1abe-4a5e-9397-fe2ff88e3182', false, 'SV-CU',
  'Cuscatlán',
  '60396eca-42a4-4c1e-929a-d0702b36c235');
INSERT INTO yacare_admission.province
 VALUES ('b718265c-59c0-4491-9fcb-b28fe3b63126', false, 'SV-LI',
  'La Libertad',
  '60396eca-42a4-4c1e-929a-d0702b36c235');
INSERT INTO yacare_admission.province
 VALUES ('c150e444-1561-480f-a9ba-62e867774c81', false, 'SV-PA',
  'La Paz',
  '60396eca-42a4-4c1e-929a-d0702b36c235');
INSERT INTO yacare_admission.province
 VALUES ('f7a8224a-94eb-4f84-98bf-12ca004cb06e', false, 'SV-UN',
  'La Unión',
  '60396eca-42a4-4c1e-929a-d0702b36c235');
INSERT INTO yacare_admission.province
 VALUES ('e0d5d47a-1906-439a-bc69-a15a18042ba6', false, 'SV-MO',
  'Morazán',
  '60396eca-42a4-4c1e-929a-d0702b36c235');
INSERT INTO yacare_admission.province
 VALUES ('69138c64-a573-4b32-bbe6-79d6efda5e0c', false, 'SV-SM',
  'San Miguel',
  '60396eca-42a4-4c1e-929a-d0702b36c235');
INSERT INTO yacare_admission.province
 VALUES ('865083dc-306b-4a9c-840c-cdff3d58b2f5', false, 'SV-SS',
  'San Salvador',
  '60396eca-42a4-4c1e-929a-d0702b36c235');
INSERT INTO yacare_admission.province
 VALUES ('2bd64fa0-299b-4da6-b195-a40c718aa3b4', false, 'SV-SV',
  'San Vicente',
  '60396eca-42a4-4c1e-929a-d0702b36c235');
INSERT INTO yacare_admission.province
 VALUES ('15beb36c-54af-4cb4-b114-290ce96ce0a2', false, 'SV-SA',
  'Santa Ana',
  '60396eca-42a4-4c1e-929a-d0702b36c235');
INSERT INTO yacare_admission.province
 VALUES ('ee97381b-1e0f-478d-838e-c6d690d54139', false, 'SV-SO',
  'Sonsonate',
  '60396eca-42a4-4c1e-929a-d0702b36c235');
INSERT INTO yacare_admission.province
 VALUES ('6495247b-0119-495e-846a-68f426535116', false, 'SV-US',
  'Usulután',
  '60396eca-42a4-4c1e-929a-d0702b36c235');
INSERT INTO yacare_admission.province
 VALUES ('81c9477b-d717-4bfe-9f32-a4218026a737', false, 'SY-HL',
  'Aleppo',
  'e0acdc03-59e1-444a-b139-79276d19777c');
INSERT INTO yacare_admission.province
 VALUES ('bb04980a-55d7-4256-a7fe-86bddc27f49d', false, 'SY-HA',
  'Al-Hasakah',
  'e0acdc03-59e1-444a-b139-79276d19777c');
INSERT INTO yacare_admission.province
 VALUES ('bb82bb63-08bb-4f7d-8529-1015fe7d2929', false, 'SY-RA',
  'Ar-Raqqah',
  'e0acdc03-59e1-444a-b139-79276d19777c');
INSERT INTO yacare_admission.province
 VALUES ('749489ee-b5cf-41af-bf5e-bf1c7a63a4b6', false, 'SY-SU',
  'As-Suwayda',
  'e0acdc03-59e1-444a-b139-79276d19777c');
INSERT INTO yacare_admission.province
 VALUES ('45a88381-7e3b-4d43-a545-c92da2a5271f', false, 'SY-DR',
  'Daraa',
  'e0acdc03-59e1-444a-b139-79276d19777c');
INSERT INTO yacare_admission.province
 VALUES ('a9747931-aa6b-43ff-8cbd-b1a650be2898', false, 'SY-DY',
  'Deir ez-Zor',
  'e0acdc03-59e1-444a-b139-79276d19777c');
INSERT INTO yacare_admission.province
 VALUES ('b34f03dd-da20-4156-a4c6-228543ca11f5', false, 'SY-DI',
  'Dimashq',
  'e0acdc03-59e1-444a-b139-79276d19777c');
INSERT INTO yacare_admission.province
 VALUES ('931b0045-bef7-49fe-bb47-14c463cad4c6', false, 'SY-HM',
  'Hama',
  'e0acdc03-59e1-444a-b139-79276d19777c');
INSERT INTO yacare_admission.province
 VALUES ('b06cb7df-1906-43bd-a6d1-043e6c286f78', false, 'SY-HI',
  'Hims',
  'e0acdc03-59e1-444a-b139-79276d19777c');
INSERT INTO yacare_admission.province
 VALUES ('c4d43cde-cb73-49f8-8621-4272d98b76ad', false, 'SY-ID',
  'Idlib',
  'e0acdc03-59e1-444a-b139-79276d19777c');
INSERT INTO yacare_admission.province
 VALUES ('c2b2b31a-0a63-474b-9610-048b70f4a13a', false, 'SY-LA',
  'Latakia',
  'e0acdc03-59e1-444a-b139-79276d19777c');
INSERT INTO yacare_admission.province
 VALUES ('7cf57c7e-4b68-4c27-a3f9-13283d98a049', false, 'SY-QU',
  'Quneitra',
  'e0acdc03-59e1-444a-b139-79276d19777c');
INSERT INTO yacare_admission.province
 VALUES ('b27a8bb3-6f20-47d3-b73e-e0b0e7414b1c', false, 'SY-RD',
  'Rif Dimashq',
  'e0acdc03-59e1-444a-b139-79276d19777c');
INSERT INTO yacare_admission.province
 VALUES ('a2c4b828-5663-416f-9c38-e1e07732658c', false, 'SY-TA',
  'Tartus',
  'e0acdc03-59e1-444a-b139-79276d19777c');
INSERT INTO yacare_admission.province
 VALUES ('9ca11d7d-0d2d-49a5-9b9e-14491ec691ce', false, 'SZ-HH',
  'Hhohho',
  '451886be-b521-420e-bceb-a13fba356477');
INSERT INTO yacare_admission.province
 VALUES ('6476e9bf-c2db-4ca2-b163-16b121aec311', false, 'SZ-LU',
  'Lubombo',
  '451886be-b521-420e-bceb-a13fba356477');
INSERT INTO yacare_admission.province
 VALUES ('e8632dba-e51b-426f-be67-1dba398ad51b', false, 'SZ-MA',
  'Manzini',
  '451886be-b521-420e-bceb-a13fba356477');
INSERT INTO yacare_admission.province
 VALUES ('5cfe386e-51ef-4b99-bffb-17e6d1f1878b', false, 'SZ-SH',
  'Shiselweni',
  '451886be-b521-420e-bceb-a13fba356477');
INSERT INTO yacare_admission.province
 VALUES ('4144b8f4-b27f-4a03-82cf-695c4d5d0e9d', false, 'TD-BG',
  'Bahr el Gazel',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('801ffb5d-145b-4130-b9ae-75c2cd37901c', false, 'TD-BA',
  'Batha',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('1787e94d-ee85-4cf3-abdf-b95f6e8a1a8b', false, 'TD-BO',
  'Borkou',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('e99f4e4b-8be9-48f2-80ea-8832aa612b33', false, 'TD-CB',
  'Chari-Baguirmi',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('f342b218-912a-41fe-8482-cd01d9f5866d', false, 'TD-EN',
  'Ennedi',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('8b98d0bc-d0c1-44a5-83e4-fd17ef3b062e', false, 'TD-GR',
  'Guéra',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('ce69486b-aa68-4c57-b92c-2ea7801c8c63', false, 'TD-HL',
  'Hadjer-Lamis',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('eb6212fb-749a-4490-8c36-cdc0548eddff', false, 'TD-KA',
  'Kanem',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('01da93e2-f84e-4556-a6d7-3c3164d0d79d', false, 'TD-LC',
  'Lac',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('cd97a44a-3648-4a28-9c42-dcca3d04ee3c', false, 'TD-LO',
  'Logone Occidental',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('28148c6f-da34-4844-ad5f-2476b3505a33', false, 'TD-LR',
  'Logone Oriental',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('4be1b4d6-6c2b-48ea-9c44-f182ae4b6e12', false, 'TD-MA',
  'Mandoul',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('13c1b715-5bfd-47d1-b3df-94ec5165eb44', false, 'TD-ME',
  'Mayo-Kébbi Est',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('4012e91c-83e3-4443-83ce-1064504c2a46', false, 'TD-MO',
  'Mayo-Kébbi Ouest',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('21f41b09-cb9f-4cff-8c21-12683f6f345c', false, 'TD-MC',
  'Moyen-Chari',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('526372bd-ecf8-4b53-874a-917de35fe296', false, 'TD-ND',
  'N''Djamena',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('018b0b67-f1c6-48c9-a516-63f461f9404f', false, 'TD-OD',
  'Ouaddaï',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('68cf037d-82ef-4a6b-b29c-2d36357c516a', false, 'TD-SA',
  'Salamat',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('914a96e9-48d3-4104-8c37-e096dbac1817', false, 'TD-SI',
  'Sila',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('fbcbdfeb-2635-48d3-a7fa-de32800439c3', false, 'TD-TA',
  'Tandjilé',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('d880f401-e61d-4459-a896-c49a9d0f85fd', false, 'TD-TI',
  'Tibesti',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('a4e479ab-c340-41e6-920a-4a08c9dfd630', false, 'TD-WF',
  'Wadi Fira',
  'dcc59896-cdab-4b2e-9b93-ec92ba469b02');
INSERT INTO yacare_admission.province
 VALUES ('003ef167-8380-4889-bdc1-15e47e5ef968', false, 'TG-C',
  'Centre',
  '7a026664-33cb-43fe-bc72-12794e9c967a');
INSERT INTO yacare_admission.province
 VALUES ('d82fbfa0-8cd2-44f4-b341-bc8114c9b422', false, 'TG-K',
  'Kara',
  '7a026664-33cb-43fe-bc72-12794e9c967a');
INSERT INTO yacare_admission.province
 VALUES ('373b78a6-0940-416c-9cc8-73b639377f8d', false, 'TG-P',
  'Plateaux',
  '7a026664-33cb-43fe-bc72-12794e9c967a');
INSERT INTO yacare_admission.province
 VALUES ('a69afd9e-3782-4d74-9804-18ebca0a2d1a', false, 'TG-M',
  'Région Maritime',
  '7a026664-33cb-43fe-bc72-12794e9c967a');
INSERT INTO yacare_admission.province
 VALUES ('a1fcee09-7f7a-480e-81e3-0cdef61fa0d3', false, 'TG-S',
  'Savannes',
  '7a026664-33cb-43fe-bc72-12794e9c967a');
INSERT INTO yacare_admission.province
 VALUES ('5aeab6d7-a857-4059-8648-c0d790fa1578', false, 'TH-37',
  'Amnat Charoen',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('f82ad52c-6c17-4f87-b3f6-79471b6fae9d', false, 'TH-15',
  'Ang Thong',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('1d8f4811-7e4e-4c15-b305-c80395906439', false, 'TH-10',
  'Bangkok',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('320e263d-bcf1-4770-bb6e-9c8d32134dfb', false, 'TH-31',
  'Buri Ram',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('eed60c74-826f-4f2d-916f-c7df45a0f433', false, 'TH-24',
  'Chachoengsao',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('cf185a54-33b0-429d-ac3a-823f35d44704', false, 'TH-18',
  'Chai Nat',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('5221c7f7-f678-4522-a6ae-2a8632edab8c', false, 'TH-36',
  'Chaiyaphum',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('a740b7e5-565a-4d27-9d1e-3819a32e3453', false, 'TH-22',
  'Chanthaburi',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('ffdeff6f-6030-47cd-95fb-b359d0685933', false, 'TH-50',
  'Chiang Mai',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('ae2a7dba-cf85-490d-9408-9198c859e138', false, 'TH-57',
  'Chiang Rai',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('daade3e4-4d2d-4737-ba0b-c97f23e9955d', false, 'TH-20',
  'Chonburi',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('8d06c910-9b1f-4b11-a651-2f22742d18fc', false, 'TH-86',
  'Chumphon',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('8a4cc176-a616-484c-928f-4b186a8946fc', false, 'TH-46',
  'Kalasin',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('2e07c9e1-3c51-4955-a781-650941abe838', false, 'TH-62',
  'Kamphaeng Phet',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('817f988d-748c-402d-a183-9af9340bee68', false, 'TH-71',
  'Kanchanaburi',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('e14b7ead-10f1-4d9f-9f79-e17533ac9db2', false, 'TH-40',
  'Khon Kaen',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('0802668a-ff85-4c13-a54f-739a76b84e96', false, 'TH-81',
  'Krabi',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('b964f53d-6f66-4d9e-a2d8-616409965a52', false, 'TH-52',
  'Lampang',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('c145293c-e57d-44e9-bfb0-1f7d9317d71b', false, 'TH-51',
  'Lamphun',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('82f921e0-7aa1-47aa-90d7-9589476821f4', false, 'TH-42',
  'Loei',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('438fca55-8164-4999-b5c8-6c606f14ff02', false, 'TH-16',
  'Lopburi',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('a7e62575-8cfb-4100-84a3-3419d5a42776', false, 'TH-58',
  'Mae Hong Son',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('3392e125-87f6-4d20-9d59-5005e02e26b4', false, 'TH-44',
  'Maha Sarakham',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('5a90e676-0f08-4a74-bcbf-4c4ac0d1802d', false, 'TH-49',
  'Mukdahan',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('a6fa3525-d8cc-493e-a5a5-9d35f3f582d3', false, 'TH-26',
  'Nakhon Nayok',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('51b7de86-f7ea-40c1-a7c5-5ddfe8480d4f', false, 'TH-73',
  'Nakhon Pathom',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('35e5bb27-797f-45dc-bfe5-fbeec4793207', false, 'TH-48',
  'Nakhon Phanom',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('cccaec6d-2bf3-45c7-9fbf-52e157009939', false, 'TH-30',
  'Nakhon Ratchasima',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('92c05345-3fa6-4257-88ba-5020e9b0a2f7', false, 'TH-60',
  'Nakhon Sawan',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('f1eb1f89-3a47-4f7d-9850-6e2c045b5d08', false, 'TH-80',
  'Nakhon Si Thammarat',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('255212df-7515-4c1a-a853-182307a73f4e', false, 'TH-55',
  'Nan',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('d68aaf17-f434-4b1b-ba6a-9f0bb9f80551', false, 'TH-96',
  'Narathiwat',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('6d3b3c9c-a339-480e-a1be-ae56e786d98b', false, 'TH-39',
  'Nong Bua Lamphu',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('c804c941-2724-404a-8ad6-a688c02fccf7', false, 'TH-43',
  'Nong Khai',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('780b0d8d-a70f-40d0-9815-ced68737bd9f', false, 'TH-12',
  'Nonthaburi',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('ad91ef40-e4fd-4c45-94df-db58e8444738', false, 'TH-13',
  'Pathum Thani',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('e29f17f4-985c-4cdf-8994-ea2d52ed2e02', false, 'TH-94',
  'Pattani',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('27d14146-9f1d-4c5a-8cb6-e4f6cc07df59', false, 'TH-S',
  'Pattaya',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('a503cf00-eed4-47eb-8b1e-01ed3bc7cc0f', false, 'TH-82',
  'Phang Nga',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('1f04acea-2a88-48cf-8ccc-34fb014d3500', false, 'TH-93',
  'Phatthalung',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('3e97bba7-dba1-4ded-b9a0-893b1541856a', false, 'TH-56',
  'Phayao',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('07b9908a-a9b5-43ef-873e-7db6f21df53d', false, 'TH-67',
  'Phetchabun',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('04a1e309-58af-4b2f-b774-f025404052b4', false, 'TH-76',
  'Phetchaburi',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('08d6a253-7ad8-4c50-a37e-4ffab4a10048', false, 'TH-66',
  'Phichit',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('d4715e90-1f00-4031-a183-85405e216438', false, 'TH-65',
  'Phitsanulok',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('ece739d2-a22b-42a4-b5a1-3ebb960c4874', false, 'TH-14',
  'Phra Nakhon Si Ayutthaya',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('9cae6ecb-1cb3-48d0-98dd-ce84e7bda484', false, 'TH-54',
  'Phrae',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('118819b4-ab61-4090-ab3b-2e3468f043a3', false, 'TH-83',
  'Phuket',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('e9aaefa3-67a8-4536-bf9e-58940b58c865', false, 'TH-25',
  'Prachin Buri',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('7d392f24-946a-4ff0-9715-d82b30f36169', false, 'TH-77',
  'Prachuap Khiri Khan',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('80739dcb-a4a9-47a8-9b3a-ec2454005c6f', false, 'TH-85',
  'Ranong',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('689e8418-7b89-4fe2-bf09-048e72b89e12', false, 'TH-70',
  'Ratchaburi',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('b93e64ec-f58c-45d6-ac39-fa3609549822', false, 'TH-21',
  'Rayong',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('714d24db-e032-47d1-be46-374f4844ac61', false, 'TH-45',
  'Roi Et',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('c7999d41-e3da-4607-99a5-ada74b43b4ce', false, 'TH-27',
  'Sa Kaeo',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('d38049c1-6617-4516-8a01-aa11eccc78b4', false, 'TH-47',
  'Sakon Nakhon',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('0877268b-8abc-4860-97ab-28827f31c687', false, 'TH-11',
  'Samut Prakan',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('66037957-6f52-4878-934a-098148299f07', false, 'TH-74',
  'Samut Sakhon',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('353710cc-ff8b-4a4a-a389-9cc09324b57c', false, 'TH-75',
  'Samut Songkhram',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('e58b47f9-6490-4416-9978-08ff0d0d603d', false, 'TH-19',
  'Saraburi',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('4017452c-ded5-45bb-9ce3-6b4daf1f434e', false, 'TH-91',
  'Satun',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('347f9f02-7a83-4fb1-9e83-341d7f51a511', false, 'TH-17',
  'Sing Buri',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('c393f284-fadb-44be-b046-f5311a463fdb', false, 'TH-33',
  'Sisaket',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('8bda438e-5cc8-45eb-9115-f4a15c7155d8', false, 'TH-90',
  'Songkhla',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('0238368d-24aa-4231-abd2-dbfdd5eb0e6b', false, 'TH-64',
  'Sukhothai',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('be57dbd5-3e7f-4401-8dcd-5f67e8fd491b', false, 'TH-72',
  'Suphan Buri',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('e994e648-e4d3-498d-bdf5-bfbf1fb2ba2f', false, 'TH-84',
  'Surat Thani',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('9b005975-c020-4e13-a669-ca087a972d76', false, 'TH-32',
  'Surin',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('f8b57e8f-2344-4d19-b350-afdea6c22fbd', false, 'TH-63',
  'Tak',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('325c515d-3b6d-4126-91e8-3db126dfc024', false, 'TH-92',
  'Trang',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('d18e6c0d-2d26-4c57-919b-b8958e7f79b8', false, 'TH-23',
  'Trat',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('79fa7351-7237-4d31-b170-420900b6b6b8', false, 'TH-34',
  'Ubon Ratchathani',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('d646b9ac-6a72-43a2-8d25-2ba8271c0644', false, 'TH-41',
  'Udon Thani',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('92a7d8e3-03a6-4802-a892-55289c1efd1d', false, 'TH-61',
  'Uthai Thani',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('116c7e5d-1cec-4231-a0ef-55be018feee8', false, 'TH-53',
  'Uttaradit',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('f250ed6c-c276-422e-8d9b-e65649323115', false, 'TH-95',
  'Yala',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('566b8cc2-37b5-40b9-8c78-1b6ecee9d464', false, 'TH-35',
  'Yasothon',
  'e69cc00c-b10a-4f98-9d9c-0acdf32728ea');
INSERT INTO yacare_admission.province
 VALUES ('a3a07b9f-a7b3-4bb6-adf2-01673a25a74f', false, 'TJ-GB',
  'Gorno-Badakhshan',
  '8dbb4607-eb7f-4980-9079-addcedf2235f');
INSERT INTO yacare_admission.province
 VALUES ('990228ea-bd1d-49b9-bb76-97cd2ec4156a', false, 'TJ-KT',
  'Khatlon',
  '8dbb4607-eb7f-4980-9079-addcedf2235f');
INSERT INTO yacare_admission.province
 VALUES ('3723cea1-d7ae-47bb-89ae-2fa8c55bb306', false, 'TJ-SU',
  'Sughd',
  '8dbb4607-eb7f-4980-9079-addcedf2235f');
INSERT INTO yacare_admission.province
 VALUES ('592559b4-294b-4a29-b8eb-26cc752c2bd1', false, 'TL-AL',
  'Aileu',
  '69de021b-2925-4d68-9aca-b7128a461528');
INSERT INTO yacare_admission.province
 VALUES ('f39266e7-883d-4f2f-8bbf-17da5ef01afd', false, 'TL-AN',
  'Ainaro',
  '69de021b-2925-4d68-9aca-b7128a461528');
INSERT INTO yacare_admission.province
 VALUES ('0d25399e-fca4-48a5-80e0-297108044e20', false, 'TL-BA',
  'Baucau',
  '69de021b-2925-4d68-9aca-b7128a461528');
INSERT INTO yacare_admission.province
 VALUES ('3e9ded9d-188e-47a8-8b59-8c1eb3bb73cf', false, 'TL-BO',
  'Bobonaro',
  '69de021b-2925-4d68-9aca-b7128a461528');
INSERT INTO yacare_admission.province
 VALUES ('0eecaba1-0664-4d94-9c6c-5124abe41177', false, 'TL-CO',
  'Cova Lima',
  '69de021b-2925-4d68-9aca-b7128a461528');
INSERT INTO yacare_admission.province
 VALUES ('3b223606-90ef-4ad8-9ff9-f89bf724d942', false, 'TL-DI',
  'Dili',
  '69de021b-2925-4d68-9aca-b7128a461528');
INSERT INTO yacare_admission.province
 VALUES ('79a41fa2-1ebd-4502-b30d-9523071e9cc6', false, 'TL-ER',
  'Ermera',
  '69de021b-2925-4d68-9aca-b7128a461528');
INSERT INTO yacare_admission.province
 VALUES ('e732b701-86f5-478a-b885-40d12d0bcd4f', false, 'TL-LA',
  'Lautem',
  '69de021b-2925-4d68-9aca-b7128a461528');
INSERT INTO yacare_admission.province
 VALUES ('fc56d63f-8632-41c9-aec6-9107bf9d1bae', false, 'TL-LI',
  'Liquiça',
  '69de021b-2925-4d68-9aca-b7128a461528');
INSERT INTO yacare_admission.province
 VALUES ('15ec2bfe-0c1f-41d7-befd-1659c8ea9b83', false, 'TL-MT',
  'Manatuto',
  '69de021b-2925-4d68-9aca-b7128a461528');
INSERT INTO yacare_admission.province
 VALUES ('ab52bad1-8169-4429-bd20-fff6d8fd5812', false, 'TL-MF',
  'Manufahi',
  '69de021b-2925-4d68-9aca-b7128a461528');
INSERT INTO yacare_admission.province
 VALUES ('3a39549f-fa0e-418f-80f1-8ffec7f39705', false, 'TL-OE',
  'Oecussi',
  '69de021b-2925-4d68-9aca-b7128a461528');
INSERT INTO yacare_admission.province
 VALUES ('c0f598dd-c26b-4c77-a5d5-62f5c900745c', false, 'TL-VI',
  'Viqueque',
  '69de021b-2925-4d68-9aca-b7128a461528');
INSERT INTO yacare_admission.province
 VALUES ('0680bc65-e5e8-40d1-8101-fce4f682f012', false, 'TM-A',
  'Ahal',
  '9f909158-f75a-4296-8202-ef46253d86f4');
INSERT INTO yacare_admission.province
 VALUES ('24df7f1f-1735-497a-8c8e-d1e581cac7be', false, 'TM-B',
  'Balkan',
  '9f909158-f75a-4296-8202-ef46253d86f4');
INSERT INTO yacare_admission.province
 VALUES ('eb9e076c-ee82-40ab-b21d-394879b11a71', false, 'TM-D',
  'Dasoguz',
  '9f909158-f75a-4296-8202-ef46253d86f4');
INSERT INTO yacare_admission.province
 VALUES ('fbbfb808-b2ec-483e-a63b-933fb38a530b', false, 'TM-L',
  'Lebap',
  '9f909158-f75a-4296-8202-ef46253d86f4');
INSERT INTO yacare_admission.province
 VALUES ('4bd37049-2762-44f3-be7b-1671606fa74a', false, 'TM-M',
  'Mary',
  '9f909158-f75a-4296-8202-ef46253d86f4');
INSERT INTO yacare_admission.province
 VALUES ('efbd2f76-5236-48f6-86c5-f72d11e67f81', false, 'TN-12',
  'Ariana',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('7055175c-3ce2-484b-9bfb-de2c12998254', false, 'TN-31',
  'Béja',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('4acd9c37-915a-400e-a692-f1dc0a731fc3', false, 'TN-13',
  'Ben Arous',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('e51b4bf0-ab8f-488a-9ba5-6ebbaefbbbcb', false, 'TN-23',
  'Bizerte',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('1508535d-9079-450c-96ff-0b25c0614c52', false, 'TN-81',
  'Gabes',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('8f22052f-2077-4bda-a916-d154edcfb519', false, 'TN-71',
  'Gafsa',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('d30e9383-6c5d-4c83-9df5-9f26984dfd9b', false, 'TN-32',
  'Jendouba',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('10718a2d-894a-4b32-bb2f-712e8fe3b04f', false, 'TN-41',
  'Kairouan',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('44724343-b87a-473b-b425-c4e945bdc7f4', false, 'TN-42',
  'Kasserine',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('1f4a53e4-07ff-4b6f-9f73-d0f0fe5307af', false, 'TN-73',
  'Kebili',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('a2be2ef7-8c39-4d07-be0c-70d3980fab27', false, 'TN-14',
  'La Manouba',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('089dbb7c-6ed8-46db-b5d3-abab9f3e00ef', false, 'TN-33',
  'Le Kef',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('8a18381e-bfcb-4dfd-ba8a-708728b07c10', false, 'TN-53',
  'Mahdia',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('44d434bd-c72a-497c-9ad6-f942126ff120', false, 'TN-82',
  'Médenine',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('70beeca9-b145-45f4-8a7d-48f79bbc7849', false, 'TN-52',
  'Monastir',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('100ff0d3-5e3f-45c1-90de-3245c0484ce1', false, 'TN-21',
  'Nabeul',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('9f323fd3-f099-40bd-9f90-0c6383d4aa09', false, 'TN-61',
  'Sfax',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('ccee702f-0146-4509-a745-1a3d8acafeba', false, 'TN-43',
  'Sidi Bouzid',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('f8678704-8b11-4b33-aa10-6424c1325166', false, 'TN-34',
  'Siliana',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('059d7119-eca2-4385-9b3d-73717bc85b4e', false, 'TN-51',
  'Sousse',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('3ade6b6e-a270-4486-b933-e9e445fdf7d4', false, 'TN-83',
  'Tataouine',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('7d542af3-8ed2-4c7e-876c-5ae01e85a3a6', false, 'TN-72',
  'Tozeur',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('142947e7-5b90-4e1e-9599-22b0f67f492b', false, 'TN-11',
  'Tunis',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('a79425e6-1b8a-4467-acc4-2cb0e2b6d314', false, 'TN-22',
  'Zaghouan',
  'e3c1001d-2e16-40dc-b0af-e26a99f33d57');
INSERT INTO yacare_admission.province
 VALUES ('63749886-95cf-41b8-bec2-7b0a8d5425e1', false, 'TO-01',
  'Eua',
  'ca5aa9c6-2e4c-446b-8665-a3ed49b7642f');
INSERT INTO yacare_admission.province
 VALUES ('b3847a5e-1c71-40d1-90b0-96d7262ae30a', false, 'TO-02',
  'Ha''apai',
  'ca5aa9c6-2e4c-446b-8665-a3ed49b7642f');
INSERT INTO yacare_admission.province
 VALUES ('66cc76d3-8469-42d2-98ef-5ea0e0702d24', false, 'TO-03',
  'Niuas',
  'ca5aa9c6-2e4c-446b-8665-a3ed49b7642f');
INSERT INTO yacare_admission.province
 VALUES ('df66d753-a876-4a6b-8e8a-0085fbeb84b5', false, 'TO-04',
  'Tongatapu',
  'ca5aa9c6-2e4c-446b-8665-a3ed49b7642f');
INSERT INTO yacare_admission.province
 VALUES ('a6572ea2-27a6-436d-9535-6d794ecc0964', false, 'TO-05',
  'Vava''u',
  'ca5aa9c6-2e4c-446b-8665-a3ed49b7642f');
INSERT INTO yacare_admission.province
 VALUES ('adecd1ce-b31a-496e-8aed-dfdcfe4c97d8', false, 'TR-01',
  'Adana',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('e1769a65-ef25-4575-a994-f1663c17a739', false, 'TR-02',
  'Adıyaman',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('9ce30a02-70c5-4ada-8e81-301fc855582c', false, 'TR-03',
  'Afyonkarahisar',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('17e70e66-4073-4c93-83c8-2752d2b95fb7', false, 'TR-04',
  'Ağrı',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('1a789a1e-9d7c-4459-8924-acb5cc0d7441', false, 'TR-68',
  'Aksaray',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('36f5b896-33b3-4f03-9b22-0cb719d64d17', false, 'TR-05',
  'Amasya',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('a94fa75d-7deb-4d89-aae6-076c4ff60456', false, 'TR-06',
  'Ankara',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('e31c4c0b-f0b7-4431-8a34-e9f540736cb4', false, 'TR-07',
  'Antalya',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('2e2d5ecc-9165-4b0a-9a6d-77257a285df1', false, 'TR-75',
  'Ardahan',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('0b2cd99d-b17a-421d-b12b-59f5e7004544', false, 'TR-08',
  'Artvin',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('cd289fdc-4615-4ef7-8422-7eec9a592b8d', false, 'TR-09',
  'Aydın',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('028c35cd-219f-4116-be99-f6cc953cd254', false, 'TR-10',
  'Balıkesir',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('203aebbe-8fe5-48bc-9656-4a3710313d81', false, 'TR-74',
  'Bartın',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('85fc9e4d-58f3-4874-8459-4aac48bfb9c5', false, 'TR-72',
  'Batman',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('592d161e-9808-4f07-8688-d2e38179e0ea', false, 'TR-69',
  'Bayburt',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('5b8a445f-1c6d-454c-8697-c764ef874d2f', false, 'TR-11',
  'Bilecik',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('a0035b5b-8158-4d48-869e-5787d1f296fa', false, 'TR-12',
  'Bingöl',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('e5c343bf-8610-4346-bec1-321c132cb7c1', false, 'TR-13',
  'Bitlis',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('466ec0a9-7c0b-48de-9c1e-055ff594c3fa', false, 'TR-14',
  'Bolu',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('c810017c-5296-48aa-92fd-8d75e18aaa66', false, 'TR-15',
  'Burdur',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('55d59bb2-8088-4120-afdf-c3418842dc3e', false, 'TR-16',
  'Bursa',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('00b3c765-fba9-411e-b2c5-e7af446b37a9', false, 'TR-17',
  'Çanakkale',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('f249fa42-2f4e-4a1d-9ec8-05554a4793f5', false, 'TR-18',
  'Çankırı',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('0ba7ff43-3d4c-4284-a4ac-5a068b3047f9', false, 'TR-19',
  'Çorum',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('9064864b-0793-46cf-aae6-839ab6685fe2', false, 'TR-20',
  'Denizli',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('2c41d87e-5183-4a19-9531-ad0a07281c3c', false, 'TR-21',
  'Diyarbakır',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('71b17b1c-60e8-4944-94f8-6e04ec00feb6', false, 'TR-81',
  'Düzce',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('09399afc-5267-4804-a285-294c443ad9a0', false, 'TR-22',
  'Edirne',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('db73c22c-2464-4605-9af8-d0040db75319', false, 'TR-23',
  'Elazığ',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('54fda028-c6c7-4b7b-a170-612eafddb8e4', false, 'TR-24',
  'Erzincan',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('6f68b219-9772-4868-9595-c14bec8c2a56', false, 'TR-25',
  'Erzurum',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('5fd84b11-33e7-43cb-b762-c01e2e1caaaa', false, 'TR-26',
  'Eskişehir',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('f0288537-4dae-43bc-abcf-a778f9a2cde9', false, 'TR-27',
  'Gaziantep',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('e52589d1-5d86-4223-98d1-c04386815a1c', false, 'TR-28',
  'Giresun',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('1dac3df5-19a9-4f61-96d7-baa8db85b2ae', false, 'TR-29',
  'Gümüşhane',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('9fa03837-d297-4783-a879-9c708568c5e4', false, 'TR-30',
  'Hakkari',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('352b19d0-a3e7-4c05-ab97-c64c4f820fce', false, 'TR-31',
  'Hatay',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('99035b46-f33c-4a89-b6c5-b4e876aa9408', false, 'TR-76',
  'İğdir',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('d3627d56-a15e-472f-b43d-67de66b1d9cc', false, 'TR-32',
  'Isparta',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('fb8d35f7-88ce-432f-94c4-b06fee87cc5e', false, 'TR-34',
  'İstanbul',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('0fcdea00-c4fc-47a4-a3bc-c01d60eecf3a', false, 'TR-35',
  'İzmir',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('f67c6a7b-faf3-4ebf-a3d4-5453000d7000', false, 'TR-46',
  'Kahramanmaraş',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('861a188e-fdcd-4534-ad58-2926ef9272cf', false, 'TR-78',
  'Karabük',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('0590d552-29e8-4665-b209-ef61ed9ef67e', false, 'TR-70',
  'Karaman',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('79346347-60f2-462d-a113-c341a5e17014', false, 'TR-36',
  'Kars',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('c5c98af2-4c3e-4baf-886f-8c19a7d0093c', false, 'TR-37',
  'Kastamonu',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('93e0fece-1dc7-4e95-92f8-4ac84228c7a7', false, 'TR-38',
  'Kayseri',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('284022cc-95c4-4a31-ab6d-60e619d8b017', false, 'TR-79',
  'Kilis',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('589acd73-b5b7-4cc2-8046-5ef99fe72e2d', false, 'TR-71',
  'Kırıkkale',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('b16ca048-ec18-42aa-bc52-63d3c52f688b', false, 'TR-39',
  'Kırklareli',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('3ede2f12-6669-4b5b-82bf-05a0142c3d0c', false, 'TR-40',
  'Kırşehir',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('68a8d1cd-9bbf-44cd-b444-95f717343df5', false, 'TR-41',
  'Kocaeli',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('cc92c756-b73b-4aea-bc5b-c1b36209d77c', false, 'TR-42',
  'Konya',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('95f1239a-2c58-4d29-93d6-1ad03bfbb676', false, 'TR-43',
  'Kütahya',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('a108b222-727f-4f66-909c-7a5cb126481b', false, 'TR-44',
  'Malatya',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('d0b8bc3e-7875-4bd7-bc4f-9b6cff314deb', false, 'TR-45',
  'Manisa',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('c09e8102-91a5-4d25-9f37-0682c4727ac4', false, 'TR-47',
  'Mardin',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('d9e6eac9-ce5f-41f7-b93d-53e4429a1ebe', false, 'TR-33',
  'Mersin',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('01a7b5e7-f7a6-47ad-b216-19bc75dda026', false, 'TR-48',
  'Muğla',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('acbed5e5-06ec-4be6-84d9-5035880d3cee', false, 'TR-49',
  'Muş',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('bb4c6107-b427-48e3-acb2-5d7be1f06d08', false, 'TR-50',
  'Nevşehir',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('dab14a57-0c9c-4b8b-b2a6-284f32626571', false, 'TR-51',
  'Niğde',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('77be8ac3-71cc-405b-acc7-737f05a41e65', false, 'TR-52',
  'Ordu',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('61fdffe2-5059-416d-a16b-a32d5e1283c1', false, 'TR-80',
  'Osmaniye',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('cf247096-ae23-4ac6-a8e8-757be9a65323', false, 'TR-53',
  'Rize',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('8911f669-4279-466f-bb03-f341661914dc', false, 'TR-54',
  'Sakarya',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('0f9d3b3c-7b45-4ca1-8d20-bcd0bb3497ae', false, 'TR-55',
  'Samsun',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('bfdd6106-877f-4e9f-aead-2f8e720e8562', false, 'TR-63',
  'Şanlıurfa',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('408cb425-0611-4738-8f2c-e0c05d4faf89', false, 'TR-56',
  'Siirt',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('1b299e84-a619-415e-b949-a3e1f0f871de', false, 'TR-57',
  'Sinop',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('73c07f46-aaa8-4cc0-ba62-f21ded7a6336', false, 'TR-73',
  'Şırnak',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('94392e8f-a9a8-4065-8714-ecc225d2bf4b', false, 'TR-58',
  'Sivas',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('8930f246-7835-453b-9d78-261ec64da257', false, 'TR-59',
  'Tekirdağ',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('058dcb94-0677-40d7-b3c4-5159398bfbbc', false, 'TR-60',
  'Tokat',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('986b448e-b88a-4f4f-9214-7227260747d9', false, 'TR-61',
  'Trabzon',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('cb8010f1-ac63-4975-bf8a-e66181b49ab2', false, 'TR-62',
  'Tunceli',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('9578d416-7519-4ee1-a0f7-077dd1943e86', false, 'TR-64',
  'Uşak',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('8f08f7b6-0de1-4e2a-9f7c-1f542bedf541', false, 'TR-65',
  'Van',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('69373049-d176-4a88-819d-e2cc32ba1e48', false, 'TR-77',
  'Yalova',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('c39feb50-3c11-4bd5-b66a-a7423daf31e3', false, 'TR-66',
  'Yozgat',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('ae089d24-38eb-4d90-b285-355da796baee', false, 'TR-67',
  'Zonguldak',
  'e5cbe70e-ec74-4b0c-9511-be772354c234');
INSERT INTO yacare_admission.province
 VALUES ('8cfe4c63-f562-4493-af9d-5576c911bb95', false, 'TT-ARI',
  'Arima',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('cafb9fa9-a10c-4080-9b50-7b9698c3a670', false, 'TT-CHA',
  'Chaguanas',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('fe91d893-7dde-45b1-bb44-665c2834098e', false, 'TT-CTT',
  'Couva-Tabaquite-Talparo',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('eead0d06-853a-4e8e-99b3-2b86a7464acf', false, 'TT-DMN',
  'Diego Martin',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('a79c0c88-96c0-40c3-b67c-62eb8c3afbe4', false, 'TT-ETO',
  'Eastern Tobago',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('a31db5b7-da8f-4f08-a682-3a58891e5b01', false, 'TT-PED',
  'Penal-Debe',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('12f66d75-5eb1-4aaf-ab43-cbc792e07ee5', false, 'TT-PTF',
  'Point Fortin',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('ec5d9b62-2ab9-47f9-b1e1-dea06f0858fc', false, 'TT-POS',
  'Port of Spain',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('d6c30aca-8345-491e-9827-2d79b516838e', false, 'TT-PRT',
  'Princes Town',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('7c9cdaaf-6277-439f-b144-505dd2c36bf4', false, 'TT-RCM',
  'Rio Claro-Mayaro',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('3438d5c0-a315-4b01-a9c9-1f4beb83d6ae', false, 'TT-SFO',
  'San Fernando',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('a6c00b37-c4cb-4f56-9526-fcbc9b4adacc', false, 'TT-SJL',
  'San Juan-Laventille',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('12bc3872-19ca-4106-9aa4-e683705b8f9c', false, 'TT-SGE',
  'Sangre Grande',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('60b5af65-a224-4367-a490-22c54232fb30', false, 'TT-SIP',
  'Siparia',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('df18bcd3-c2a1-4a34-beea-056df1e132e6', false, 'TT-TUP',
  'Tunapuna-Piarco',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('3a59ff3a-e6ce-4cb5-b6a6-0c559ef37db4', false, 'TT-WTO',
  'Western Tobago',
  'a0a3f407-13b1-418e-916c-b6e44cce26fd');
INSERT INTO yacare_admission.province
 VALUES ('7be34b4a-ad00-4e7f-8127-61e1a29dacbb', false, 'TV-FUN',
  'Funafuti',
  '74e65aad-e2c2-4af6-b059-0d4ed7af776c');
INSERT INTO yacare_admission.province
 VALUES ('80322702-0fd4-48bc-9f0f-08bcc7ed578a', false, 'TV-NMG',
  'Nanumanga',
  '74e65aad-e2c2-4af6-b059-0d4ed7af776c');
INSERT INTO yacare_admission.province
 VALUES ('8595687f-8374-4a9d-8c0c-6dbe453ce5ae', false, 'TV-NMA',
  'Nanumea',
  '74e65aad-e2c2-4af6-b059-0d4ed7af776c');
INSERT INTO yacare_admission.province
 VALUES ('de322133-375e-48f3-9dac-92bbe5f85864', false, 'TV-NIT',
  'Niutao',
  '74e65aad-e2c2-4af6-b059-0d4ed7af776c');
INSERT INTO yacare_admission.province
 VALUES ('f05f5725-c00c-4fbb-b7fd-24677d0521a0', false, 'TV-NIU',
  'Nui',
  '74e65aad-e2c2-4af6-b059-0d4ed7af776c');
INSERT INTO yacare_admission.province
 VALUES ('0a39a5ba-1136-4a29-8da8-7a8a5cdeeecc', false, 'TV-NKF',
  'Nukufetau',
  '74e65aad-e2c2-4af6-b059-0d4ed7af776c');
INSERT INTO yacare_admission.province
 VALUES ('94b8593a-df78-4751-81af-d1e1824b75f0', false, 'TV-NKL',
  'Nukulaelae',
  '74e65aad-e2c2-4af6-b059-0d4ed7af776c');
INSERT INTO yacare_admission.province
 VALUES ('6f2a38eb-de6f-4d69-b04e-8468d042c974', false, 'TV-VAI',
  'Vaitupu',
  '74e65aad-e2c2-4af6-b059-0d4ed7af776c');
INSERT INTO yacare_admission.province
 VALUES ('62dcf1f2-df27-4848-88f6-19a52a859325', false, 'TW-CHA',
  'Changhua County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('efa4a12d-a08c-4a2b-8197-9cd861ea9df3', false, 'TW-CYI',
  'Chiayi City',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('88a45ca2-ce8d-47c6-b469-5b50aa6d3b22', false, 'TW-CYQ',
  'Chiayi County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('1a18b734-25bc-4c9b-bc2f-574fe35d3560', false, 'TW-HSZ',
  'Hsinchu City',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('d8d6cefc-b8cc-4f89-b6a5-a62ec3969021', false, 'TW-HSQ',
  'Hsinchu County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('9f6a462e-e148-4702-a503-203da4747005', false, 'TW-HUA',
  'Hualien County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('d47cec87-3fb1-42c4-aa9a-8b50c5edff0d', false, 'TW-KHH',
  'Kaohsiung City',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('7b1e00f9-e65b-4d5b-8267-782338448735', false, 'TW-KHQ',
  'Kaohsiung County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('56f6aa03-fa89-43e5-875f-9e2efd7b134a', false, 'TW-KEE',
  'Keelung City',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('2717718a-8f69-4421-ba14-331a10295273', false, 'TW-nan',
  'Kinmen County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('f663a867-8433-4026-a02e-a640f31ccd05', false, 'TW-na2',
  'Lienchiang County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('08d732b5-4f86-4f3a-951e-3323a158a8c1', false, 'TW-MIA',
  'Miaoli County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('4786b922-0049-4eb5-9604-99f0dd05df5b', false, 'TW-na3',
  'Nanhai Islands',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('a9f1ec44-e92a-499b-a7dd-19798f2d44a8', false, 'TW-PEN',
  'Penghu County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('17d11077-1420-4bda-a103-850a6f0c25f3', false, 'TW-PIF',
  'Pingtung County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('3f407e36-b944-45c4-95f7-06fbe3bcfd9d', false, 'TW-TXG',
  'Taichung City',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('2a748537-babb-45f5-b7e5-b636bae6407f', false, 'TW-TXQ',
  'Taichung County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('46991a14-d154-4d79-8625-3b0826ee83a4', false, 'TW-TNN',
  'Tainan City',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('5c999357-1698-4a9c-840c-76936435d0cb', false, 'TW-TNQ',
  'Tainan County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('e971c5cf-f3cc-481e-a7e4-1569de742fe0', false, 'TW-TPE',
  'Taipei City',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('23db62f0-a113-403e-9e22-43d2c66618bf', false, 'TW-TPQ',
  'Taipei County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('50d66bc2-cbb4-4b53-9067-3586c2e63358', false, 'TW-TTT',
  'Taitung County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('213eccc1-a35e-4017-85f8-d5a515f01fd0', false, 'TW-TAO',
  'Taoyuan County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('52d3a690-8ee4-443e-8c88-6b42ba01d7d5', false, 'TW-ILA',
  'Yilan County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('69f46bd4-1c45-4537-a506-4d1e5a8f7688', false, 'TW-YUN',
  'Yunlin County',
  'c34255ed-2392-4fa1-b236-282d98918a6c');
INSERT INTO yacare_admission.province
 VALUES ('31a3c01e-7131-4dc5-acf6-cbd205e63a69', false, 'TZ-01',
  'Arusha',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('e616f0a4-4167-4bbe-a62a-68b787703ed1', false, 'TZ-02',
  'Dar es Salaam',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('2e16da57-d9d9-409d-a720-72c1e895a40b', false, 'TZ-03',
  'Dodoma',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('05dec216-8c26-439d-9132-0d3a2bae5e90', false, 'TZ-04',
  'Iringa',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('60a15236-9a33-4c43-bbfb-c59f6f23604d', false, 'TZ-05',
  'Kagera',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('731cdb4b-7cb3-4611-bf8a-8ed3687c3d7d', false, 'TZ-06',
  'Kaskazini Pemba',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('cc773421-484c-4db1-93b0-1105ed9c0a08', false, 'TZ-07',
  'Kaskazini Unguja',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('52f502eb-2976-4f33-895a-cc35f9507109', false, 'TZ-08',
  'Kigoma',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('5bbd965c-2d37-4b8a-8890-85cd466da1fe', false, 'TZ-09',
  'Kilimanjaro',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('4fc514df-44e3-4857-a27e-6b9c246e7179', false, 'TZ-10',
  'Kusini Pemba',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('d6f97a87-a8a1-4dbf-adef-5cf2700cede5', false, 'TZ-11',
  'Kusini Unguja',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('40430492-bd3b-45a9-9d20-26c0673b6ab1', false, 'TZ-12',
  'Lindi',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('88cd5f5b-fcfb-4e15-9ec4-0f40d154c4c1', false, 'TZ-26',
  'Manyara',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('e88d25ba-fc72-4cb3-a86b-20d938221eda', false, 'TZ-13',
  'Mara',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('9c7e548e-496b-4768-945f-63f77b436495', false, 'TZ-14',
  'Mbeya',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('7ff77bf9-4f70-45ee-ae71-4699b0788834', false, 'TZ-15',
  'Mjini Magharibi',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('af5d3b61-fd9f-4fc1-84db-c467104f91ec', false, 'TZ-16',
  'Morogoro',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('5073f1fb-98ca-43a6-8ddc-795d602beca2', false, 'TZ-17',
  'Mtwara',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('22329f1a-8007-475d-a759-75cdd7794b3b', false, 'TZ-18',
  'Mwanza',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('d3f00a81-6e1b-4d46-9a2d-a850d742416b', false, 'TZ-19',
  'Pwani',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('06406f40-c149-46a3-8425-9206988d926f', false, 'TZ-20',
  'Rukwa',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('3194a100-6c66-449a-8b2b-2295a868946c', false, 'TZ-21',
  'Ruvuma',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('78ccbed9-74c6-4628-8073-b62a53f5a8f0', false, 'TZ-22',
  'Shinyanga',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('785539e6-c048-483a-8419-4a1ca6f4c8a2', false, 'TZ-23',
  'Singida',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('87afb94e-9c50-418f-a16e-0a9a2ad83ea9', false, 'TZ-24',
  'Tabora',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('cb32e1e6-92eb-42e9-8195-454914989f16', false, 'TZ-25',
  'Tanga',
  'ab45fb2b-2c6c-48fb-a8fd-952cf53bb2bf');
INSERT INTO yacare_admission.province
 VALUES ('ad237327-1525-42ec-99d3-1ae2adef53aa', false, 'UA-43',
  'Автономна Республіка Крим',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('ddeac783-e958-4b3a-b389-3afe9394c37f', false, 'UA-05',
  'Вінницька область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('8694a98f-9a86-445e-b23e-28d76cf469fb', false, 'UA-07',
  'Волинська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('31bdc2ae-449b-4cbe-bf92-415cd9b6b269', false, 'UA-12',
  'Дніпропетровська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('23b1486a-3ffc-4e58-b19f-78f462bda638', false, 'UA-14',
  'Донецька область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('1fac8350-6b85-4eeb-8c11-23f91f707549', false, 'UA-18',
  'Житомирська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('9dd75992-e92e-4e95-b59e-239bcfac899d', false, 'UA-21',
  'Закарпатська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('c0189cd4-c734-4cd0-af70-9f3902224711', false, 'UA-23',
  'Запорізька область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('3aaaa7c9-5ad6-44c3-b354-e89b2ea4bfbe', false, 'UA-26',
  'Івано-Франківська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('b92de2c0-3ceb-4a4a-b1d4-d5addc1fc097', false, 'UA-30',
  'Київ',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('0c7872b0-f0b5-42ab-bac9-5ee64682388d', false, 'UA-32',
  'Київська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('75cccb67-9a20-4526-9689-13705076ec50', false, 'UA-35',
  'Кіровоградська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('f084446d-d91d-432e-9474-6e9e2954b83a', false, 'UA-09',
  'Луганська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('686bc041-e999-48ef-9e76-26ce95e0d0e5', false, 'UA-46',
  'Львівська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('5df12c25-a249-495e-9bac-173ec073fecf', false, 'UA-48',
  'Миколаївська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('a76858a8-f326-4c44-9cb4-bf295b7d616c', false, 'UA-51',
  'Одеська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('e789e7c3-4d4f-4a8b-99be-faf4b4a30fef', false, 'UA-53',
  'Полтавська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('264c3bba-e24b-42fe-94f4-295a3bcbc390', false, 'UA-56',
  'Рівненська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('8a27cdf1-bd47-45bd-9200-8b8f05b684dd', false, 'UA-40',
  'Севастополь',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('b7e42a98-56b7-483f-973b-40880aa76155', false, 'UA-59',
  'Сумська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('0d9c081e-6822-4bbc-b23e-e235a955e163', false, 'UA-61',
  'Тернопільська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('662abba3-55b1-4e55-9552-6e92c2b07535', false, 'UA-63',
  'Харківська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('53695404-c4e2-49c3-ad92-7514dcf35914', false, 'UA-65',
  'Херсонська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('e55e89be-6566-40db-981b-eb30b6e62344', false, 'UA-68',
  'Хмельницька область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('47c28448-674b-4682-b6cd-38df68b4c933', false, 'UA-71',
  'Черкаська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('3b80ef67-bade-4429-914b-409d9a646c9a', false, 'UA-77',
  'Чернівецька область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('eb1ffe51-8629-4550-b90c-f328b55619c8', false, 'UA-74',
  'Чернігівська область',
  '5e7d0d1d-53b1-4846-bfa8-2e94f10231d3');
INSERT INTO yacare_admission.province
 VALUES ('f7d61ba1-7682-47bb-9a3a-0a9eddf6d9a8', false, 'UG-301',
  'Adjumani',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('b8788130-92f2-4524-82d8-a30b721aad4a', false, 'UG-302',
  'Apac',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('bf2b44e4-4327-4065-8ca2-c519adae3d6b', false, 'UG-303',
  'Arua',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('547b0f54-fe21-4100-919a-bda474bfbb4e', false, 'UG-201',
  'Bugiri',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('bcd0a2af-be3b-4b5d-ac53-2ab9ba30241a', false, 'UG-401',
  'Bundibugyo',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('22730747-3c9e-436e-927a-357cb386f1ce', false, 'UG-402',
  'Bushenyi',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('025c89fc-6b85-43bb-a43d-ac33a138f517', false, 'UG-202',
  'Busia',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('6ead9eff-f4a5-4039-b97a-25445c78af11', false, 'UG-304',
  'Gulu',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('3186be4c-fc0f-4381-8cc1-23ade999a060', false, 'UG-403',
  'Hoima',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('e6d9599e-13ed-4a75-9203-93cabd8ed770', false, 'UG-203',
  'Iganga',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('a2f652aa-d51c-4aef-9a6f-7fa92987ed50', false, 'UG-204',
  'Jinja',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('1ab18255-3965-488c-800f-f461c4773698', false, 'UG-404',
  'Kabale',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('343b40f6-ee18-4b13-ba1c-635d93c782b8', false, 'UG-405',
  'Kabarole',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('95a8ce93-c984-4593-ba9d-7e423e570873', false, 'UG-213',
  'Kaberamaido',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('fcc1b87e-7267-419f-a5d3-303aeabb5982', false, 'UG-101',
  'Kalangala',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('ef2a3e58-c3ad-469b-b11b-a40aa68e93bf', false, 'UG-102',
  'Kampala',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('cdbac527-c62c-46c5-afee-4aa496f39c64', false, 'UG-205',
  'Kamuli',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('af6daba5-a8dc-4219-8e91-78969a55d6a9', false, 'UG-413',
  'Kamwenge',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('aeb4bdc0-ba69-4a66-bfa0-83d741d1a688', false, 'UG-414',
  'Kanungu',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('85f6f1c4-5a32-4718-bcec-07fd3ba655da', false, 'UG-206',
  'Kapchorwa',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('bf769a6b-e50e-4e34-973b-6de7a3daa4d2', false, 'UG-406',
  'Kasese',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('73cea57d-dc0e-4b0d-a57f-ba6b68169fb7', false, 'UG-207',
  'Katakwi',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('3a0e1922-d50f-439b-be56-7760eb15553f', false, 'UG-112',
  'Kayunga',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('7d6e2ab7-76a7-4bdd-a3c5-869f3aaf3397', false, 'UG-407',
  'Kibale',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('51d1aa7c-1e7c-4a9c-a697-1d2e23489f06', false, 'UG-103',
  'Kiboga',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('f204d929-e264-422b-9a4b-e7834c4f7715', false, 'UG-408',
  'Kisoro',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('f51497f3-4f36-4036-ba69-98faceec187d', false, 'UG-305',
  'Kitgum',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('079bbf8f-c263-437d-8b4d-308888d20347', false, 'UG-306',
  'Kotido',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('98670899-a9cc-4b80-a02e-c29024e7d64b', false, 'UG-208',
  'Kumi',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('3838d4b5-45d6-407b-a2bf-c6bcdd1b96c2', false, 'UG-415',
  'Kyenjojo',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('da12d03c-7f42-4f67-8689-86344d705617', false, 'UG-307',
  'Lira',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('fa5ed78e-4414-4f55-8fe9-398ce6ad461d', false, 'UG-104',
  'Luwero',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('32bfa790-d503-40ff-92ca-871f729464c2', false, 'UG-105',
  'Masaka',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('4b621562-e9d9-4430-b05f-30d1bd1de8e7', false, 'UG-409',
  'Masindi',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('d4a6026f-6c8f-45da-8a0a-886020733d0a', false, 'UG-214',
  'Mayuge',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('0c19afc2-3117-4f01-a7bb-02746d7804b6', false, 'UG-209',
  'Mbale',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('1b8861a9-bfc1-486c-91f1-b7bbb9f7ba91', false, 'UG-410',
  'Mbarara',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('db2ea804-13ef-4f90-bd27-3a3e68d96e32', false, 'UG-308',
  'Moroto',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('ed968353-e0ab-4311-bc20-cd2af7eff899', false, 'UG-309',
  'Moyo',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('52a1375e-45e6-489d-ae4a-1ffc1cd3d0c2', false, 'UG-106',
  'Mpigi',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('316766a5-77ad-40db-9ca4-d74066fda7e1', false, 'UG-107',
  'Mubende',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('448649b3-c202-468c-a576-53b5ee7e43c0', false, 'UG-108',
  'Mukono',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('bb973a03-7756-48c4-87b9-c588ea697f73', false, 'UG-311',
  'Nakapiripirit',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('7f18d09b-0a2e-4b42-ad3b-a74f617f4f59', false, 'UG-109',
  'Nakasongola',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('8a44c159-0b8b-4f51-ae92-a976813d62b8', false, 'UG-310',
  'Nebbi',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('4f54160b-9910-4c22-a1ae-55bdda6b6935', false, 'UG-411',
  'Ntungamo',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('07ecf325-d8bc-4c2d-9e65-c59928b22489', false, 'UG-312',
  'Pader',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('3cb9fa7e-283c-4421-903e-5f383986e108', false, 'UG-210',
  'Pallisa',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('1d3073cb-f89c-4ee1-9017-5ee285cf7b5c', false, 'UG-110',
  'Rakai',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('afdd01be-d0d2-4f46-8235-41190e7792ab', false, 'UG-412',
  'Rukungiri',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('b82f9ea8-a98c-401f-918f-06ba386a7d1b', false, 'UG-111',
  'Sembabule',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('281c3263-b7d0-41a4-9482-25167695919d', false, 'UG-215',
  'Sironko',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('aa7f4e2a-2425-448c-baef-a8641eb68259', false, 'UG-211',
  'Soroti',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('355e52c6-e4cf-4b80-a0b1-e936e08b0d05', false, 'UG-212',
  'Tororo',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('7bcbc6f5-287c-4f95-a50e-6b07b86f45b2', false, 'UG-113',
  'Wakiso',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('dcc7e868-14c3-4b5b-8d1b-004b72a3d108', false, 'UG-313',
  'Yumbe',
  'de86619b-fd90-4467-a63b-0bf4352496fe');
INSERT INTO yacare_admission.province
 VALUES ('6e333481-1040-4725-baab-d2bdf8d1a295', false, 'US-AL',
  'Alabama',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('d51d0062-a3a3-4c25-8c91-20504cb0ad2c', false, 'US-AK',
  'Alaska',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('e5877369-0ab7-462b-80df-5586f31da0d2', false, 'US-AS',
  'American Samoa',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('a9e68f1b-c105-4598-9134-3b1e8e653cc3', false, 'US-AZ',
  'Arizona',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('cb7d11d0-3f29-4707-9a57-80231221b965', false, 'US-AR',
  'Arkansas',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('093067c9-5124-4e06-876b-f33619921251', false, 'US-CA',
  'California',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('a98de18e-2822-4dd1-9f8b-b0ea0edbded2', false, 'US-CO',
  'Colorado',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('6c335fc9-6bd1-449a-a9e7-74abe715f467', false, 'US-CT',
  'Connecticut',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('d3387def-3969-4506-a2a9-a1e5468b5d3f', false, 'US-DE',
  'Delaware',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('be7b0527-596c-4da5-a5f4-54318ca3fdb8', false, 'US-DC',
  'District Of Columbia',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('f126a32c-6670-4ace-a16a-5e274652dd01', false, 'US-FM',
  'Federated States of Micronesia',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('7884579e-94e9-4a43-8cc8-dbbd1a8fc343', false, 'US-FL',
  'Florida',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('8302dfe8-cfff-465a-b64f-a0fdfcfa3208', false, 'US-GA',
  'Georgia',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('d75519c2-fa1f-43e9-8829-0eeb1a4d97c7', false, 'US-GU',
  'Guam',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('04779a95-a3a2-454d-8534-7214a7cb9d7e', false, 'US-HI',
  'Hawaii',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('36c71b13-86bc-400f-a4b6-579c18205729', false, 'US-ID',
  'Idaho',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('cd802504-444a-469a-ac97-18d820b10b2b', false, 'US-IL',
  'Illinois',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('2e13a92e-305f-4bc4-b9a4-59199d638819', false, 'US-IN',
  'Indiana',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('d59ffc9a-cb1a-4b11-976d-9e80ccffedf4', false, 'US-IA',
  'Iowa',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('0ea00ccb-1407-4910-b859-906dbd424be9', false, 'US-KS',
  'Kansas',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('ec5c3a82-53da-4c90-bc37-79a149a34310', false, 'US-KY',
  'Kentucky',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('6b0a6657-49af-4337-b4fe-aee2df72d9e4', false, 'US-LA',
  'Louisiana',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('e18bc819-8af4-4744-9bca-e683558428f0', false, 'US-ME',
  'Maine',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('684390ac-fd15-495f-bde9-01797fbd1d1f', false, 'US-MH',
  'Marshall Islands',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('2ca4388b-0a51-4def-b78e-11a4773ba9f2', false, 'US-MD',
  'Maryland',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('315ed650-16d8-465b-8d1e-ca7b86472317', false, 'US-MA',
  'Massachusetts',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('be171f9a-eb86-4744-80b2-aa6338d7e33b', false, 'US-MI',
  'Michigan',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('7bf95d11-cdb9-4943-938a-41d7a82c9914', false, 'US-MN',
  'Minnesota',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('c256354d-6cd7-4e4d-89c1-c1ae47d91e68', false, 'US-UM',
  'Minor Outlying Islands',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('6e44f2bb-6a8a-4858-8f77-3c16049d295e', false, 'US-MS',
  'Mississippi',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('b799c660-8a4f-49b5-9b73-5ef17dc2ea18', false, 'US-MO',
  'Missouri',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('39d45bc5-2f37-465f-b9e1-5e8ddf8424ba', false, 'US-MT',
  'Montana',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('5eb9677a-3a18-4de2-9d49-a368f86623d1', false, 'US-NE',
  'Nebraska',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('ed2aadf1-c8c6-4910-a2d0-13e22f37f3fa', false, 'US-NV',
  'Nevada',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('ccff9937-d970-47cf-ac26-ab58b3f28fad', false, 'US-NH',
  'New Hampshire',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('9fb300b8-ab2e-4514-80a3-5c28a3eb6ece', false, 'US-NJ',
  'New Jersey',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('a671af5d-ab7f-4aff-8ba7-0751cb1b0342', false, 'US-NM',
  'New Mexico',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('aa710d8a-be23-4471-9889-cb08cdd8a475', false, 'US-NY',
  'New York',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('c573d979-ed10-490c-ad27-94e4f13e508d', false, 'US-NC',
  'North Carolina',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('813a15d2-ae97-4e7c-8b99-fd8be35c391e', false, 'US-ND',
  'North Dakota',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('81d74365-0196-4828-a892-599158893890', false, 'US-MP',
  'Northern Mariana Islands',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('3215f85c-9a2c-4b7f-b26e-d5bf2790c2de', false, 'US-OH',
  'Ohio',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('82bcabcd-b565-4c48-9325-239d8140557e', false, 'US-OK',
  'Oklahoma',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('7d76d16b-560f-4e74-8c41-c26f940a142d', false, 'US-OR',
  'Oregon',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('0cddcdd4-36c9-40f0-84a4-61355f73dd71', false, 'US-PW',
  'Palau',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('e9f0eb55-f030-491e-9f5b-739728772d70', false, 'US-PA',
  'Pennsylvania',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('07cf8b7d-355c-4906-b682-48b2efc63f03', false, 'US-PR',
  'Puerto Rico',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('f7d24650-1d93-41d5-88a5-629902a3f33d', false, 'US-RI',
  'Rhode Island',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('2ec93977-8372-4b6e-8cb6-7e8f526f261d', false, 'US-SC',
  'South Carolina',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('246a820b-220b-4c96-b0f4-d6c9688f6325', false, 'US-SD',
  'South Dakota',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('d4a36af4-efe6-4d0d-9fcf-828ae4fdb448', false, 'US-TN',
  'Tennessee',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('ee431da9-6f14-4f32-9ffc-993f2faccade', false, 'US-TX',
  'Texas',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('cfa509d4-854a-48e4-b623-40de69f5e680', false, 'US-UT',
  'Utah',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('0a257757-3f7f-48af-8e1e-c7e10e83a329', false, 'US-VT',
  'Vermont',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('f90ab5c3-66d6-43b2-a011-54e8003b94bd', false, 'US-VI',
  'Virgin Islands',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('12efb263-7545-4c2b-880e-6cc777dd3781', false, 'US-VA',
  'Virginia',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('acaa8095-82dc-414e-be43-e69b5a96f8f9', false, 'US-WA',
  'Washington',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('9fb3c482-eb49-42c5-9179-edec5abfaed4', false, 'US-WV',
  'West Virginia',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('b658fec8-041f-4cb8-8509-bd7e57a4dc04', false, 'US-WI',
  'Wisconsin',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('d2e38294-e57d-43a9-aaf2-cdb1fb8ca288', false, 'US-WY',
  'Wyoming',
  'd9c8168f-691b-4230-9e25-935b4c48d0b5');
INSERT INTO yacare_admission.province
 VALUES ('2d6493fe-9027-4f7d-aa59-08b09668fee9', false, 'UY-AR',
  'Artigas',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('981d876a-2fbc-4e9e-861d-f23d64af695c', false, 'UY-CA',
  'Canelones',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('9e092f9d-ae8f-42b4-94c4-b101044f3787', false, 'UY-CL',
  'Cerro Largo',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('43aeb7a2-2355-4734-b022-16eafcd975a8', false, 'UY-CO',
  'Colonia',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('1b2bb5c0-21db-444d-9b4a-430a1131f8ef', false, 'UY-DU',
  'Durazno',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('11b8f524-538a-486e-b481-0895da4c6bf5', false, 'UY-FS',
  'Flores',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('6f26b018-1a51-46a8-9696-d1d322647386', false, 'UY-FD',
  'Florida',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('8982002a-74ef-44db-bbc2-f5950ef4617d', false, 'UY-LA',
  'Lavalleja',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('a7287cf5-7d76-41db-95c3-866c74987053', false, 'UY-MA',
  'Maldonado',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('1c2f16db-7fc9-49b6-82bd-599f68ab1a18', false, 'UY-MO',
  'Montevideo',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('f6cd2532-4459-42f4-b8e6-4ac089747bf9', false, 'UY-PA',
  'Paysandú',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('b52476c2-e7ff-4f4f-8fd7-9ae630871805', false, 'UY-RN',
  'Rio Negro',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('13f7c3d0-aa3e-453a-9f52-5341d315daea', false, 'UY-RV',
  'Rivera',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('5e0be3c4-3397-4561-a49b-259bddd68d34', false, 'UY-RO',
  'Rocha',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('ae59b0d2-fe0a-458d-be54-e80ac34e9926', false, 'UY-SA',
  'Salto',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('e4a16cf6-e632-424a-a62c-df46c4ca584b', false, 'UY-SJ',
  'San José',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('7ca0177b-c815-4758-bf7f-16d809a2aa09', false, 'UY-SO',
  'Soriano',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('f5d2be43-795e-4ad4-905a-0fe27bba89b3', false, 'UY-TA',
  'Tacuarembó',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('70e7e367-6900-4fc4-a068-c9800643b1dd', false, 'UY-TT',
  'Treinta y tres',
  '51cbb6e2-6d1f-496a-a4c9-51aa17b1fc08');
INSERT INTO yacare_admission.province
 VALUES ('91940bab-e05a-4edd-b270-2d8d8cbace57', false, 'UZ-AN',
  'Andijan province',
  '0f966650-544e-4507-8218-921137ab6bc5');
INSERT INTO yacare_admission.province
 VALUES ('4f39b422-348a-417b-ad45-1db98acc0849', false, 'UZ-BU',
  'Bukhara province',
  '0f966650-544e-4507-8218-921137ab6bc5');
INSERT INTO yacare_admission.province
 VALUES ('35d8dcc7-321d-4083-aa15-376d20413573', false, 'UZ-FA',
  'Fergana province',
  '0f966650-544e-4507-8218-921137ab6bc5');
INSERT INTO yacare_admission.province
 VALUES ('013eca97-6e82-4239-aafd-212bfc8d6a45', false, 'UZ-JI',
  'Jizzakh province',
  '0f966650-544e-4507-8218-921137ab6bc5');
INSERT INTO yacare_admission.province
 VALUES ('0604f874-ec93-48a1-b258-f2e96e17fb9a', false, 'UZ-QR',
  'Karakalpakstan republic',
  '0f966650-544e-4507-8218-921137ab6bc5');
INSERT INTO yacare_admission.province
 VALUES ('05d8c541-98ff-43cd-94b7-9857f0c579fb', false, 'UZ-NG',
  'Namangan province',
  '0f966650-544e-4507-8218-921137ab6bc5');
INSERT INTO yacare_admission.province
 VALUES ('981a0bc4-6d11-44b7-9b33-f9c05f157611', false, 'UZ-NW',
  'Navoiy province',
  '0f966650-544e-4507-8218-921137ab6bc5');
INSERT INTO yacare_admission.province
 VALUES ('e2faf17c-0359-4fb3-b36b-48bede7394ea', false, 'UZ-QA',
  'Qashqadaryo province',
  '0f966650-544e-4507-8218-921137ab6bc5');
INSERT INTO yacare_admission.province
 VALUES ('3759c092-2182-4466-9c6f-5a6aad2f7f90', false, 'UZ-SA',
  'Samarqand province',
  '0f966650-544e-4507-8218-921137ab6bc5');
INSERT INTO yacare_admission.province
 VALUES ('cee18d75-88c8-488c-bfb9-b8082980698d', false, 'UZ-SI',
  'Sirdaryo province',
  '0f966650-544e-4507-8218-921137ab6bc5');
INSERT INTO yacare_admission.province
 VALUES ('b85a198b-98b0-4b27-b8e8-0d94411a7e93', false, 'UZ-SU',
  'Surxondaryo province',
  '0f966650-544e-4507-8218-921137ab6bc5');
INSERT INTO yacare_admission.province
 VALUES ('125bad1a-038c-473b-9616-a53b75743222', false, 'UZ-TK',
  'Tashkent city',
  '0f966650-544e-4507-8218-921137ab6bc5');
INSERT INTO yacare_admission.province
 VALUES ('107effa7-a5fc-41d7-a119-89976be3481e', false, 'UZ-TO',
  'Tashkent province',
  '0f966650-544e-4507-8218-921137ab6bc5');
INSERT INTO yacare_admission.province
 VALUES ('b3b5d08b-c0ce-4166-b676-0d67fac221ea', false, 'UZ-XO',
  'Xorazm province',
  '0f966650-544e-4507-8218-921137ab6bc5');
INSERT INTO yacare_admission.province
 VALUES ('a06c02b6-7e41-469f-bd7d-f94da958eafc', false, 'VC-01',
  'Charlotte',
  '66075d25-b0ae-41eb-9920-be00145c1d40');
INSERT INTO yacare_admission.province
 VALUES ('9c523f49-6998-4dfe-95e7-8564f9ffaaf1', false, 'VC-06',
  'Grenadines',
  '66075d25-b0ae-41eb-9920-be00145c1d40');
INSERT INTO yacare_admission.province
 VALUES ('f7524a85-8d4f-43f9-b905-9f8656b4c766', false, 'VC-02',
  'Saint Andrew',
  '66075d25-b0ae-41eb-9920-be00145c1d40');
INSERT INTO yacare_admission.province
 VALUES ('a5bd8ef5-e6a5-4225-bb78-872d4ede1fb8', false, 'VC-03',
  'Saint David',
  '66075d25-b0ae-41eb-9920-be00145c1d40');
INSERT INTO yacare_admission.province
 VALUES ('99d62ef6-63eb-4c6b-a31a-f616ae8467c0', false, 'VC-04',
  'Saint George',
  '66075d25-b0ae-41eb-9920-be00145c1d40');
INSERT INTO yacare_admission.province
 VALUES ('36f43671-faf0-4706-be87-13595c7bf171', false, 'VC-05',
  'Saint Patrick',
  '66075d25-b0ae-41eb-9920-be00145c1d40');
INSERT INTO yacare_admission.province
 VALUES ('b4bf7f0f-8a28-4a26-b892-e53b8b58996e', false, 'VE-Z',
  'Amazonas',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('9f809b7f-f237-4bf2-a7c1-a50321afad8f', false, 'VE-B',
  'Anzoátegui',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('4efed528-84d1-4702-bc80-00470af7e66c', false, 'VE-C',
  'Apure',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('7be69c4b-65e5-471d-ba6d-e6c4b8996281', false, 'VE-D',
  'Aragua',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('1ad4ac3f-49cd-4666-8220-72ea4a2ac406', false, 'VE-E',
  'Barinas',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('1782c9d0-21cf-4308-807b-db30950bfbf6', false, 'VE-F',
  'Bolívar',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('0e949156-755b-4814-8c93-e81337a15ac7', false, 'VE-G',
  'Carabobo',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('e12aa9af-a2e9-474f-a528-cd53d2a4ae99', false, 'VE-A',
  'Caracas',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('462b7d74-b988-4ef8-9a75-479556006aa1', false, 'VE-H',
  'Cojedes',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('82b86ed7-b6c8-41db-bef7-c1f0b5279329', false, 'VE-Y',
  'Delta Amacuro',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('08c76123-09d1-4c31-90c2-5de3f514d0b8', false, 'VE-W',
  'Dependencias Federales',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('4f33df88-ecac-483e-9ca6-16b5de11c840', false, 'VE-I',
  'Falcón',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('e2a801ea-be96-4db8-92ff-1c4897775da9', false, 'VE-J',
  'Guárico',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('bbcf8613-1403-4e40-b960-931245e91f0c', false, 'VE-K',
  'Lara',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('bea21d1b-34fb-4b17-b938-20ce6bf3e14f', false, 'VE-L',
  'Mérida',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('6624e455-75aa-4f90-a90b-bf860c8f4687', false, 'VE-M',
  'Miranda',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('73e84a58-fdbc-4b77-83f1-feff860a95f9', false, 'VE-N',
  'Monagas',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('4af12f2c-b6b7-4537-9c8d-45c3bc157afe', false, 'VE-O',
  'Nueva Esparta',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('9e50a3bc-82f3-4cae-a821-cd6225a29e6a', false, 'VE-P',
  'Portuguesa',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('17546b0f-0532-4b21-b84c-25b7dccd8fe1', false, 'VE-R',
  'Sucre',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('a6e61bb3-77c9-493c-ba25-324773f7a6a9', false, 'VE-S',
  'Táchira',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('38042414-0e93-40ab-898d-a36cd8c9a470', false, 'VE-T',
  'Trujillo',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('de16ad02-7095-4183-ac17-2c37b7675376', false, 'VE-X',
  'Vargas',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('74385fae-3a71-4e2f-9729-02d9365daf6b', false, 'VE-U',
  'Yaracuy',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('4da497b2-aca6-4739-a791-a37e1e122563', false, 'VE-V',
  'Zulia',
  '7a6059de-540f-4b06-92fb-a1b3f606d1ff');
INSERT INTO yacare_admission.province
 VALUES ('4f7429f2-f94d-4dcd-a131-d0be231e556c', false, 'VN-44',
  'An Giang',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('3d812b40-0453-41dc-97cd-6a0b1b5c5af4', false, 'VN-43',
  'Bà Rịa - Vũng Tàu',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('8b743229-853a-4f79-9e13-e89b54da4ac0', false, 'VN-54',
  'Bắc Giang',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('f8bc1b19-7742-4fef-946b-febeb47732ad', false, 'VN-53',
  'Bắc Kạn',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('775e0359-5331-4cc5-be59-75a4538fc944', false, 'VN-55',
  'Bạc Liêu',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('33ec1e01-923e-4ee0-b9f9-14d26e7fa6e0', false, 'VN-56',
  'Bắc Ninh',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('6a545c12-5db0-428f-9e48-3d78b830ce3f', false, 'VN-50',
  'Bến Tre',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('657832aa-8615-4887-b94b-054d21d7f6fc', false, 'VN-31',
  'Bình Định',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('76f0484d-2a65-440b-8604-cdc9b73c26c8', false, 'VN-57',
  'Bình Dương',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('d63f2cdb-9927-48c5-a4fb-5335ab580ded', false, 'VN-58',
  'Bình Phước',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('8155a08d-c6b9-48cc-9aec-a6843d5b97c2', false, 'VN-40',
  'Bình Thuận',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('9439a797-74bd-4ee1-94a7-0046c7abef94', false, 'VN-59',
  'Cà Mau',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('20918b89-1da4-42c3-aa29-d15beacb6345', false, 'VN-48',
  'Cần Thơ',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('14c7010e-b12c-4ce0-9f9f-47ce942e5d60', false, 'VN-04',
  'Cao Bằng',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('0a0367cb-1147-4fc8-b8d1-acd753585956', false, 'VN-60',
  'Đà Nẵng',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('927e8c42-b3b6-4254-b758-04462d6c675c', false, 'VN-33',
  'Đắk Lắk',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('ce892bda-f176-4d5f-9352-5d6b02ed5520', false, 'VN-72',
  'Đắk Nông',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('0fd1046c-47ef-4c3a-9654-95a58b720856', false, 'VN-71',
  'Điện Biên',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('80b0fdac-3991-448c-8209-e9cd9e67ed77', false, 'VN-39',
  'Đồng Nai',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('72fa097c-2934-4935-9b9a-76017c78029a', false, 'VN-45',
  'Đồng Tháp',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('b0bb7555-1374-4407-8a07-f51d04fcb675', false, 'VN-30',
  'Gia Lai',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('ebbcb02b-f1a5-48a5-92c8-943280bd7eb8', false, 'VN-03',
  'Hà Giang',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('9e355cce-807a-40a0-9a99-1ac67bfc7f35', false, 'VN-63',
  'Hà Nam',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('2b1a6ac8-2584-4fd7-9753-a70cdf961ba4', false, 'VN-64',
  'Hà Nội',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('ba4a319a-433e-4e71-8000-f92be0410e04', false, 'VN-15',
  'Hà Tây',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('2b799ba2-8f2d-4765-b5ac-e68729361404', false, 'VN-23',
  'Hà Tĩnh',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('3e4f255a-0676-42be-babe-63b9f5f5e90b', false, 'VN-61',
  'Hải Dương',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('743c2fda-c6aa-4201-bc02-ef4b9e95a08f', false, 'VN-62',
  'Hải Phòng',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('0d372a9c-427e-478c-a500-60a1b4c1c240', false, 'VN-73',
  'Hậu Giang',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('d0c57dc3-1fef-4108-abd2-ecdcf80e01fe', false, 'VN-65',
  'Hồ Chí Minh',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('6c17e106-bc1e-4947-bfd0-f393bafcbf4f', false, 'VN-14',
  'Hòa Bình',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('e5c03879-8171-44db-8971-86dfe845876c', false, 'VN-66',
  'Hưng Yên',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('725c7bf7-ead8-48de-b615-ec4b7f2f1ef5', false, 'VN-34',
  'Khánh Hòa',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('69a6e74a-ea15-4cb1-afbf-56752922c58d', false, 'VN-47',
  'Kiên Giang',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('eba27205-a532-4038-8622-f47720838de4', false, 'VN-28',
  'Kon Tum',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('7941905d-a804-4f4c-89cf-700eaf7fe957', false, 'VN-01',
  'Lai Châu',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('8397e888-7207-4a2c-a901-b84969e3f0be', false, 'VN-35',
  'Lâm Đồng',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('14288e14-a5f0-4d40-afa7-fe8a1b9f92c1', false, 'VN-09',
  'Lạng Sơn',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('2fb113ff-d359-4f98-a73f-3e423eab9def', false, 'VN-02',
  'Lào Cai',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('21572236-d3e7-4da3-9f2f-5b40dae52c10', false, 'VN-41',
  'Long An',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('2fbb517a-71e0-42e7-a654-c736151fd78c', false, 'VN-67',
  'Nam Định',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('21a0198b-c15c-4848-83ca-b24f5ccb5da2', false, 'VN-22',
  'Nghệ An',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('e7673b11-9dfe-44e5-9913-d51d1e509c86', false, 'VN-18',
  'Ninh Bình',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('28bd5a49-88b0-4503-97af-244e42ef4b65', false, 'VN-36',
  'Ninh Thuận',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('f6ad6487-6ea5-4a5d-94c7-53b6cbf5e073', false, 'VN-68',
  'Phú Thọ',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('89cca8c0-8d54-4829-a6dd-50cecc8a3be7', false, 'VN-32',
  'Phú Yên',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('a56a47e7-4c17-408a-b4f5-a8f9567858d6', false, 'VN-24',
  'Quảng Bình',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('658e193d-8e55-49fe-b44a-66a6f66b0d48', false, 'VN-27',
  'Quảng Nam',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('6cbe35c1-e0f4-4a25-a28a-141b56e53827', false, 'VN-29',
  'Quảng Ngãi',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('3b63243a-bb13-4d0b-838a-37ee02148492', false, 'VN-13',
  'Quảng Ninh',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('20a0dc9c-0ae7-4eb6-9f83-6283839b392a', false, 'VN-25',
  'Quảng Trị',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('24491387-fa97-4d7a-a333-646051470cb7', false, 'VN-52',
  'Sóc Trăng',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('afa821b4-f3c1-46f3-a289-aaabbb9b0313', false, 'VN-05',
  'Sơn La',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('7776165f-0f59-4143-9c58-e22ef0d29616', false, 'VN-37',
  'Tây Ninh',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('39a44494-1b0b-42ee-ba81-b04f9edeb390', false, 'VN-20',
  'Thái Bình',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('3d81de96-bf3c-42d5-b0d8-2b1f366d109c', false, 'VN-69',
  'Thái Nguyên',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('e18af2cc-5085-406e-bafc-ca2c41680a70', false, 'VN-21',
  'Thanh Hóa',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('3fb3127a-c25d-404a-acb9-669545197056', false, 'VN-26',
  'Thừa Thiên - Huế',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('4a78b896-e7dd-4d37-a514-21e161b8a989', false, 'VN-46',
  'Tiền Giang',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('2b9fb2bf-83c5-441b-99b4-4c09e95a343e', false, 'VN-51',
  'Trà Vinh',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('59cb16cc-ae0b-4716-a81e-849a8eec0770', false, 'VN-07',
  'Tuyên Quang',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('a6825aff-4590-4416-b70f-aebc4251442b', false, 'VN-49',
  'Vĩnh Long',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('5b157405-dc9a-4168-9915-7a6caf892e25', false, 'VN-70',
  'Vĩnh Phúc',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('31280d80-034f-4513-b745-9c41c6774ece', false, 'VN-06',
  'Yên Bái',
  '1dd6f8ae-c44b-42f9-a55a-9e52aad1b68d');
INSERT INTO yacare_admission.province
 VALUES ('59189492-2130-4978-bdd8-8c1c4983b039', false, 'VU-MAP',
  'Malampa',
  '1f25f750-805b-41af-b9ae-2369fbb76846');
INSERT INTO yacare_admission.province
 VALUES ('5fa5a030-78da-4a96-b2f0-9a814a831e66', false, 'VU-PAM',
  'Pénama',
  '1f25f750-805b-41af-b9ae-2369fbb76846');
INSERT INTO yacare_admission.province
 VALUES ('42ed7c78-ade0-4025-8eef-2aa5720eadd4', false, 'VU-SAM',
  'Sanma',
  '1f25f750-805b-41af-b9ae-2369fbb76846');
INSERT INTO yacare_admission.province
 VALUES ('1443cd92-cf49-4ce0-b07e-9b5eeb7d108c', false, 'VU-SEE',
  'Shéfa',
  '1f25f750-805b-41af-b9ae-2369fbb76846');
INSERT INTO yacare_admission.province
 VALUES ('5a06e4e6-147d-44a9-986f-cda09f21af3a', false, 'VU-TAE',
  'Taféa',
  '1f25f750-805b-41af-b9ae-2369fbb76846');
INSERT INTO yacare_admission.province
 VALUES ('a68fddf1-4f85-44f6-b80b-569b16008465', false, 'VU-TOB',
  'Torba',
  '1f25f750-805b-41af-b9ae-2369fbb76846');
INSERT INTO yacare_admission.province
 VALUES ('288fde6f-9186-42d6-98e8-ec5b290f728d', false, 'WS-AA',
  'A''ana',
  '59dcbc8f-e5fa-4780-a330-96de07b96e96');
INSERT INTO yacare_admission.province
 VALUES ('23cc3d1e-935f-4dd8-9bd3-d3ab142a020b', false, 'WS-AL',
  'Aiga-i-le-Tai',
  '59dcbc8f-e5fa-4780-a330-96de07b96e96');
INSERT INTO yacare_admission.province
 VALUES ('ef030d85-7522-4de9-9485-eafbdb43a498', false, 'WS-AT',
  'Atua',
  '59dcbc8f-e5fa-4780-a330-96de07b96e96');
INSERT INTO yacare_admission.province
 VALUES ('fe801764-baa1-4e64-8741-ac72f139679c', false, 'WS-FA',
  'Fa''asaleleaga',
  '59dcbc8f-e5fa-4780-a330-96de07b96e96');
INSERT INTO yacare_admission.province
 VALUES ('ea21fa3b-a033-4f2d-8c53-e52ffb7325bd', false, 'WS-GE',
  'Gaga''emauga',
  '59dcbc8f-e5fa-4780-a330-96de07b96e96');
INSERT INTO yacare_admission.province
 VALUES ('7ad8af16-ebf6-49d8-a2e6-ed6eb9ba40c0', false, 'WS-GI',
  'Gagaifomauga',
  '59dcbc8f-e5fa-4780-a330-96de07b96e96');
INSERT INTO yacare_admission.province
 VALUES ('6d8b3717-f569-4835-812d-7f548821de32', false, 'WS-PA',
  'Palauli',
  '59dcbc8f-e5fa-4780-a330-96de07b96e96');
INSERT INTO yacare_admission.province
 VALUES ('af2f2875-f2e2-4689-bac6-faa001ac8c59', false, 'WS-SA',
  'Satupa''itea',
  '59dcbc8f-e5fa-4780-a330-96de07b96e96');
INSERT INTO yacare_admission.province
 VALUES ('fe75af26-3ed3-4473-9247-844b3baf83f9', false, 'WS-TU',
  'Tuamasaga',
  '59dcbc8f-e5fa-4780-a330-96de07b96e96');
INSERT INTO yacare_admission.province
 VALUES ('4525ebae-ef73-4dbf-bcbd-4aff860270cc', false, 'WS-VF',
  'Va''a-o-Fonoti',
  '59dcbc8f-e5fa-4780-a330-96de07b96e96');
INSERT INTO yacare_admission.province
 VALUES ('08671a0e-6a27-4387-97c0-b1d96e3da08e', false, 'WS-VS',
  'Vaisigano',
  '59dcbc8f-e5fa-4780-a330-96de07b96e96');
INSERT INTO yacare_admission.province
 VALUES ('35875df3-6f7e-46a0-a699-446b19fa8743', false, 'YE-AB',
  'Abyan',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('dc21b1de-c41c-4f45-8b24-428292577e7c', false, 'YE-DA',
  'Ad Dali''',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('78a9c753-f09a-4882-959d-6e00ad39a271', false, 'YE-AD',
  'Adan',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('581939d7-082c-4c5f-88ca-3041038ef58c', false, 'YE-BA',
  'Al Bayda''',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('f37b5a77-917a-4b13-a5b5-e01b6a9d81ff', false, 'YE-HU',
  'Al Hudaydah',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('1d64a43c-feba-4b80-88cc-a951dee22aa8', false, 'YE-JA',
  'Al Jawf',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('2b2232ee-fe3a-4e38-811a-c2cd79b36296', false, 'YE-MR',
  'Al Mahrah',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('c9c8a898-8799-4b7d-a1bb-f3ff27ff3ebc', false, 'YE-MW',
  'Al Mahwit',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('0bd09bb5-5c0f-448a-9226-d7b058fdfdf8', false, 'YE-AM',
  'Amran',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('88d72e39-865d-494f-a6aa-973fdeb250c2', false, 'YE-DH',
  'Dhamar',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('7a8ed669-e97e-4f73-b620-7ba94be82162', false, 'YE-HD',
  'Hadramaut',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('bcab2dd9-4bd2-4e2b-8278-bfce747a4e54', false, 'YE-HJ',
  'Hajjah',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('0758c2f8-c355-4478-91fb-b10894e739bb', false, 'YE-IB',
  'Ibb',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('dbcc375c-c72b-4010-87db-047dabfc7eab', false, 'YE-LA',
  'Lahij',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('2d13d7ee-4c0a-4c11-a3a3-09f20d6a228b', false, 'YE-MA',
  'Ma''rib',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('6edea181-99f0-4187-b4c0-b661ec4cb874', false, 'YE-RA',
  'Raymah',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('bcc74900-d9af-4563-9690-9613baf5a052', false, 'YE-SD',
  'Sa''dah',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('01928d56-d749-4c24-a118-911b0ef7c3f0', false, 'YE-SN',
  'Sana''a',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('3c5bc19f-a8f7-4b41-87ab-978db4381e37', false, 'YE-SH',
  'Shabwah',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('125a7280-f129-446f-ae4c-d505b5a97bd6', false, 'YE-TA',
  'Ta''izz',
  '1b503978-d705-45aa-94bc-d5f8b672b441');
INSERT INTO yacare_admission.province
 VALUES ('a7945fb1-7e64-4a0c-86c2-f5a6ea4193b8', false, 'ZA-EC',
  'Eastern Cape',
  '430eb2ea-c946-424f-87bf-d94c193affbe');
INSERT INTO yacare_admission.province
 VALUES ('6410619b-54cc-44bf-91d8-37a0a4a099e6', false, 'ZA-FS',
  'Free State',
  '430eb2ea-c946-424f-87bf-d94c193affbe');
INSERT INTO yacare_admission.province
 VALUES ('9a4841ba-e374-4147-9926-b68318903995', false, 'ZA-GT',
  'Gauteng',
  '430eb2ea-c946-424f-87bf-d94c193affbe');
INSERT INTO yacare_admission.province
 VALUES ('e7822981-5e7c-4063-b584-4a3a4622db2a', false, 'ZA-NL',
  'KwaZulu-Natal',
  '430eb2ea-c946-424f-87bf-d94c193affbe');
INSERT INTO yacare_admission.province
 VALUES ('9b264d27-4d82-4eee-9832-bcc5ecb9f834', false, 'ZA-LP',
  'Limpopo',
  '430eb2ea-c946-424f-87bf-d94c193affbe');
INSERT INTO yacare_admission.province
 VALUES ('9d70a8d7-de77-4d9e-bcbf-7da5a647c820', false, 'ZA-MP',
  'Mpumalanga',
  '430eb2ea-c946-424f-87bf-d94c193affbe');
INSERT INTO yacare_admission.province
 VALUES ('a4cacf92-8cf1-4e07-9da7-1f8d320fafee', false, 'ZA-NW',
  'North West',
  '430eb2ea-c946-424f-87bf-d94c193affbe');
INSERT INTO yacare_admission.province
 VALUES ('08ac9bd3-92b4-4f0e-8bb3-2e6f7d7c48d6', false, 'ZA-NC',
  'Northern Cape',
  '430eb2ea-c946-424f-87bf-d94c193affbe');
INSERT INTO yacare_admission.province
 VALUES ('5ea1d68a-39c5-4f8d-ac22-0a9f40f83b19', false, 'ZA-WC',
  'Western Cape',
  '430eb2ea-c946-424f-87bf-d94c193affbe');
INSERT INTO yacare_admission.province
 VALUES ('931c63ad-c258-4e8e-9a0f-9b9689efeee3', false, 'ZM-02',
  'Central',
  '93e4b8ae-058d-4377-9b08-cfc0ade6c840');
INSERT INTO yacare_admission.province
 VALUES ('af7b3456-39ce-49df-bcf5-b41cc271484d', false, 'ZM-08',
  'Copperbelt',
  '93e4b8ae-058d-4377-9b08-cfc0ade6c840');
INSERT INTO yacare_admission.province
 VALUES ('414b0f9d-bb19-4960-9e3f-ca12991b72a1', false, 'ZM-03',
  'Eastern',
  '93e4b8ae-058d-4377-9b08-cfc0ade6c840');
INSERT INTO yacare_admission.province
 VALUES ('187a7e1e-45e2-4b1e-91d3-f25a353cd855', false, 'ZM-04',
  'Luapula',
  '93e4b8ae-058d-4377-9b08-cfc0ade6c840');
INSERT INTO yacare_admission.province
 VALUES ('88d04c9f-e87a-4cba-8bf3-f4b840b69b42', false, 'ZM-09',
  'Lusaka',
  '93e4b8ae-058d-4377-9b08-cfc0ade6c840');
INSERT INTO yacare_admission.province
 VALUES ('c4906719-8e17-4b83-9040-9f380e2da6a7', false, 'ZM-05',
  'Northern',
  '93e4b8ae-058d-4377-9b08-cfc0ade6c840');
INSERT INTO yacare_admission.province
 VALUES ('8e2f224d-7485-4f51-b62e-259b5fbee3cf', false, 'ZM-06',
  'North-Western',
  '93e4b8ae-058d-4377-9b08-cfc0ade6c840');
INSERT INTO yacare_admission.province
 VALUES ('f361d71c-bef5-4bd2-b8c8-a992ec9b257a', false, 'ZM-07',
  'Southern',
  '93e4b8ae-058d-4377-9b08-cfc0ade6c840');
INSERT INTO yacare_admission.province
 VALUES ('3beb6edf-045d-4b1a-b56a-b0f6af5b9ebc', false, 'ZM-01',
  'Western',
  '93e4b8ae-058d-4377-9b08-cfc0ade6c840');
INSERT INTO yacare_admission.province
 VALUES ('b20d230a-ef1b-42df-857f-6b9837978081', false, 'ZW-BU',
  'Bulawayo',
  '9a44b31b-11b0-48fd-a018-91d3dd3af848');
INSERT INTO yacare_admission.province
 VALUES ('4d95fec1-4084-48a6-971d-ad3688ad066b', false, 'ZW-HA',
  'Harare',
  '9a44b31b-11b0-48fd-a018-91d3dd3af848');
INSERT INTO yacare_admission.province
 VALUES ('1bf20f1c-fa37-4433-8dee-28b49cad29bd', false, 'ZW-MA',
  'Manicaland',
  '9a44b31b-11b0-48fd-a018-91d3dd3af848');
INSERT INTO yacare_admission.province
 VALUES ('e9f76ea1-5371-4acb-ad0c-d5a495785e9a', false, 'ZW-MC',
  'Mashonaland Central',
  '9a44b31b-11b0-48fd-a018-91d3dd3af848');
INSERT INTO yacare_admission.province
 VALUES ('28827039-4cb3-43eb-8e30-04c273a63e0a', false, 'ZW-ME',
  'Mashonaland East',
  '9a44b31b-11b0-48fd-a018-91d3dd3af848');
INSERT INTO yacare_admission.province
 VALUES ('fa91c81a-fcb2-412b-8925-e11733a0d764', false, 'ZW-MW',
  'Mashonaland West',
  '9a44b31b-11b0-48fd-a018-91d3dd3af848');
INSERT INTO yacare_admission.province
 VALUES ('ea2db03a-58d2-44f0-aca3-ece015e8130d', false, 'ZW-MV',
  'Masvingo',
  '9a44b31b-11b0-48fd-a018-91d3dd3af848');
INSERT INTO yacare_admission.province
 VALUES ('088ed374-24b5-49d1-a91a-7b473e7c60f0', false, 'ZW-MN',
  'Matabeleland North',
  '9a44b31b-11b0-48fd-a018-91d3dd3af848');
INSERT INTO yacare_admission.province
 VALUES ('59b7e982-4b33-403f-8701-5dbc5f4ea9ee', false, 'ZW-MS',
  'Matabeleland South',
  '9a44b31b-11b0-48fd-a018-91d3dd3af848');
INSERT INTO yacare_admission.province
 VALUES ('0b9f352d-a712-4f00-9388-d2457283d7e3', false, 'ZW-MI',
  'Midlands',
  '9a44b31b-11b0-48fd-a018-91d3dd3af848');



-- SELECT * FROM yacare_admission.province;

-----------------------------------------------------------------------------

DROP TABLE IF EXISTS yacare_admission.school_shift CASCADE;

CREATE TABLE yacare_admission.school_shift
(
  id character varying NOT NULL DEFAULT uuid_generate_v4(),
  erased boolean NOT NULL DEFAULT false,
  code character varying NOT NULL,
  name character varying NOT NULL,
  description character varying,
  start_school_shift time without time zone NOT NULL,
  end_school_shift time without time zone NOT NULL,

  CONSTRAINT school_shift_pkey PRIMARY KEY (id),

  CONSTRAINT school_shift_code_key UNIQUE (code),
  CONSTRAINT school_shift_name_key UNIQUE (name),
  CONSTRAINT ck_school_shift_code CHECK (code::text ~ '^[a-zA-Z0-9]*$'::text)
);

INSERT INTO yacare_admission.school_shift(id, erased, code, name, description, start_school_shift, end_school_shift)
    VALUES ('d05417a4-4ff6-4e1a-a4c2-916d092acf5a', false, 1, 'M', 'Mañana', '07:15:00', '13:15:00'
    );

INSERT INTO yacare_admission.school_shift(id, erased, code, name, description, start_school_shift, end_school_shift)
    VALUES ('bb03f4b3-735c-4bc8-8e9c-f7d62a2e2e4a', false, 2, 'T', 'Tarde', '13:30:00', '19:30:00'
    );

-- SELECT * FROM yacare_admission.school_shift;

-----------------------------------------------------------------------------

DROP TABLE IF EXISTS yacare_admission.family_relationship_type CASCADE;

CREATE TABLE yacare_admission.family_relationship_type
(
  id character varying NOT NULL DEFAULT uuid_generate_v4(),
  erased boolean NOT NULL DEFAULT false,
  code integer NOT NULL,
  name character varying NOT NULL,
  description character varying,
  CONSTRAINT family_relationship_type_pkey PRIMARY KEY (id),
  CONSTRAINT family_relationship_type_code_key UNIQUE (code),
  CONSTRAINT family_relationship_type_name_key UNIQUE (name),
  CONSTRAINT ck_family_relationship_type_code CHECK (code > 0)
);

INSERT INTO yacare_admission.family_relationship_type (id, code, name) VALUES ('5a723d74-8fac-4044-b6bb-db25ff04dd04', 1, 'Padre');
INSERT INTO yacare_admission.family_relationship_type (id, code, name) VALUES ('04dda3f7-0bcb-4ee3-868a-3b88047a1058', 2, 'Madre');
INSERT INTO yacare_admission.family_relationship_type (id, code, name) VALUES ('8beb0946-f250-46db-a38e-4b22e26c977b', 3, 'Hermano');
INSERT INTO yacare_admission.family_relationship_type (id, code, name) VALUES ('619c2b45-e58c-4f72-ad90-a6ec9742b0b1', 4, 'Tío');
INSERT INTO yacare_admission.family_relationship_type (id, code, name) VALUES ('ad5a9e40-358f-4551-9f00-c58b2e5783aa', 5, 'Abuelo');
INSERT INTO yacare_admission.family_relationship_type (id, code, name) VALUES ('364b23d1-d0e0-4bb2-9ba6-d9841d91e7ea', 7, 'Primo');

INSERT INTO yacare_admission.family_relationship_type (id, code, name) VALUES ('08268341-21b3-450d-9c70-93fbbc5f4d40', 8, 'Sobrino');
INSERT INTO yacare_admission.family_relationship_type (id, code, name) VALUES ('b19c27f5-a59d-4062-a2a7-1d6d369c6a54', 6, 'Otros');


-- SELECT * FROM yacare_admission.family_relationship_type;

-----------------------------------------------------------------------------


DROP TABLE IF EXISTS yacare_admission.person_blood_factor CASCADE;

CREATE TABLE yacare_admission.person_blood_factor
(
  id character varying NOT NULL DEFAULT uuid_generate_v4(),
  erased boolean NOT NULL DEFAULT false,
  code integer NOT NULL,
  name character varying NOT NULL,
  description character varying,
  CONSTRAINT person_blood_factor_pkey PRIMARY KEY (id),
  CONSTRAINT person_blood_factor_code_key UNIQUE (code),
  CONSTRAINT person_blood_factor_name_key UNIQUE (name)
);


INSERT INTO yacare_admission.person_blood_factor (id, erased, code, name, description) VALUES ('0d81ba66-7962-480b-8a96-b4ceda2ececd', false, 0, 'RH- Negativo', 'RH Negativo');
INSERT INTO yacare_admission.person_blood_factor (id, erased, code, name, description) VALUES ('68030edb-50f1-464f-a0d0-f2e9a5886be8', false, 1, 'RH+ Positivo', 'RH Positivo');

-- SELECT * FROM yacare_admission.person_blood_factor;

-----------------------------------------------------------------------------

DROP TABLE IF EXISTS yacare_admission.person_blood_group CASCADE;

CREATE TABLE yacare_admission.person_blood_group
(
  id character varying NOT NULL DEFAULT uuid_generate_v4(),
  erased boolean NOT NULL DEFAULT false,
  code integer NOT NULL,
  name character varying(3) NOT NULL,
  description character varying,
  CONSTRAINT person_blood_group_pkey PRIMARY KEY (id),
  CONSTRAINT person_blood_group_code_key UNIQUE (code),
  CONSTRAINT person_blood_group_name_key UNIQUE (name)
);


INSERT INTO yacare_admission.person_blood_group (id, erased, code, name, description) VALUES ('68bbad8c-6088-4294-9c1e-262eb82432f0', false, 0, '0', null);
INSERT INTO yacare_admission.person_blood_group (id, erased, code, name, description) VALUES ('8a3aab2a-45aa-47ee-aed4-8ea5acff42ff', false, 1, 'A', null);
INSERT INTO yacare_admission.person_blood_group (id, erased, code, name, description) VALUES ('bffe539d-d1e4-441d-9dea-6bca3110a662', false, 2, 'AB', null);
INSERT INTO yacare_admission.person_blood_group (id, erased, code, name, description) VALUES ('c00fead8-76f1-4815-a4da-b30abe50053e', false, 3, 'B', null);

-- SELECT * FROM yacare_admission.person_blood_group;

-----------------------------------------------------------------------------


DROP TABLE IF EXISTS yacare_admission.person_gender CASCADE;

CREATE TABLE yacare_admission.person_gender
(
  id character varying NOT NULL DEFAULT uuid_generate_v4(),
  erased boolean NOT NULL DEFAULT false,
  code character varying(1) NOT NULL,
  name character varying NOT NULL,
  description character varying,
  CONSTRAINT person_gender_pkey PRIMARY KEY (id),
  CONSTRAINT person_gender_code_key UNIQUE (code),
  CONSTRAINT person_gender_name_key UNIQUE (name),
  CONSTRAINT ck_person_gender_code CHECK (code::text ~ '^[A-Z]*$'::text)
);


INSERT INTO yacare_admission.person_gender (id, erased, code, name, description) VALUES ('e3521105-9eba-45f4-b51f-63108158cfbc', false, 'M', 'Masculino', 'Sexo masculino');
INSERT INTO yacare_admission.person_gender (id, erased, code, name, description) VALUES ('e3521105-9eba-45f4-b51f-63108158cfbf', false, 'F', 'Femenino', 'Sexo femenino');

-- SELECT * FROM yacare_admission.person_gender;

-----------------------------------------------------------------------------


DROP TABLE IF EXISTS yacare_admission.admission_form CASCADE;


CREATE TABLE yacare_admission.admission_form
(
  id character varying NOT NULL DEFAULT uuid_generate_v4(),
  --erased boolean NOT NULL DEFAULT false,

  date_form timestamp NOT NULL,
  year_calendar integer not null,

  -- C --> CANDIDATE (ASPIRANTE) ATT
  c_first_name character varying NOT NULL,
  c_other_names character varying,
  c_surnames character varying NOT NULL,
  c_person_gender_id character varying NOT NULL,
  c_dni_number integer NOT NULL,
  c_cuil_number character varying,
  c_person_blood_factor_id character varying,
  c_person_blood_group_id character varying,
  c_birth_date date NOT NULL,
  c_birth_country_id character varying NOT NULL, -- código pais - ej. AR -- https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
  c_birth_province_id character varying NOT NULL, -- código provincia - ej. AR-X -- https://en.wikipedia.org/wiki/ISO_3166-2
  c_birth_locality character varying NOT NULL,
  c_nationality_country_id character varying NOT NULL,  -- código pais - ej. AR -- https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
  c_address_country_id character varying, -- código pais - ej. AR -- https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
  c_address_province_id character varying, -- código provincia - ej. AR-X -- https://en.wikipedia.org/wiki/ISO_3166-2
  c_address_locality character varying NOT NULL,
  c_address_zip_code character varying NOT NULL,
  c_address_neightbourhood character varying NOT NULL, -- vecindario
  c_address_street character varying NOT NULL,
  c_address_street_number character varying,
  c_address_floor character varying,
  c_address_room character varying,
  c_address_building character varying, -- ejemplo "Torre 1", "Mirador Este", etc.
  c_address_comment character varying,

  -- t1 --> Tutor 1 ATT
  t1_family_relationship_type_id character varying  NOT NULL,
  t1_first_name character varying NOT NULL,
  t1_other_names character varying,
  t1_surnames character varying NOT NULL,
  t1_person_gender_id character varying NOT NULL,
  t1_dni_number integer NOT NULL,
  t1_cuil_number character varying NOT NULL,
  t1_birth_date date NOT NULL,
  t1_nationality_country_id character varying NOT NULL,  -- código pais - ej. AR -- https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
  t1_address_country_id character varying NOT NULL, -- código pais - ej. AR -- https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
  t1_address_province_id character varying NOT NULL, -- código provincia - ej. AR-X -- https://en.wikipedia.org/wiki/ISO_3166-2
  t1_address_locality character varying NOT NULL,
  t1_address_zip_code character varying NOT NULL,
  t1_address_neightbourhood character varying NOT NULL, -- vecindario
  t1_address_street character varying NOT NULL,
  t1_address_street_number character varying,
  t1_address_floor character varying,
  t1_address_room character varying,
  t1_address_building character varying, -- ejemplo "Torre 1", "Mirador Este", etc.
  t1_address_comment character varying,
  t1_email character varying,  -- no se va a vaidar !
  t1_phone1_country_id character varying, -- código pais - ej. AR -- https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
  t1_phone1_local_calling_code character varying,
  t1_phone1_number integer,
  t1_phone2_country_id character varying, -- código pais - ej. AR -- https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
  t1_phone2_local_calling_code character varying,
  t1_phone2_number integer,
  t1_profession  character varying,

  -- t2 --> Tutor 2 ATT
  t2_family_relationship_type_id character varying,
  t2_first_name character varying,
  t2_other_names character varying,
  t2_surnames character varying,
  t2_person_gender_id character varying,
  t2_dni_number integer,
  t2_cuil_number character varying,
  t2_birth_date date,
  t2_nationality_country_id character varying,  -- código pais - ej. AR -- https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
  t2_address_country_id character varying, -- código pais - ej. AR -- https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
  t2_address_province_id character varying, -- código provincia - ej. AR-X -- https://en.wikipedia.org/wiki/ISO_3166-2
  t2_address_locality character varying,
  t2_address_zip_code character varying,
  t2_address_neightbourhood character varying, -- vecindario
  t2_address_street character varying,
  t2_address_street_number character varying,
  t2_address_floor character varying,
  t2_address_room character varying,
  t2_address_building character varying, -- ejemplo "Torre 1", "Mirador Este", etc.
  t2_address_comment character varying,
  t2_email character varying,  -- no se va a vaidar !
  t2_phone1_country_id character varying, -- código pais - ej. AR -- https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
  t2_phone1_local_calling_code character varying,
  t2_phone1_number integer,
  t2_phone2_country_id character varying, -- código pais - ej. AR -- https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
  t2_phone2_local_calling_code character varying,
  t2_phone2_number integer,
  t2_profession  character varying,

  -- Solicitud de asignación de turno
  -- s --> por student (estudiante hermano en el colegio)
  school_shift_id character varying,
  s_first_name character varying,
  s_other_names character varying,
  s_surnames character varying,
  s_dni_number character varying,
  s_division character varying,
  s_others_comment  character varying,

  -- Horario (turno) de cursado del cursillo
  shift_1 boolean, -- en caso de falso es el 2, en caso de null es que no toma el cursillo
  -- aula de cursillo asignado
  classroom_course_id character varying,

  -- para llenar por el colegio
  incomplete_docs boolean,
  incomplete_docs_desc character varying,

  -- aula deexamen asignado
  classroom_exam_id character varying,

  --closed
  admission_closed boolean default false,
  date_closed timestamp,

  --nro de inscripcion de admision
  admission_serial bigserial NOT NULL,

  CONSTRAINT person_pkey PRIMARY KEY (id),

  CONSTRAINT person_person_blood_factor_id_fkey FOREIGN KEY (c_person_blood_factor_id)
      REFERENCES yacare_admission.person_blood_factor (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT person_person_blood_group_id_fkey FOREIGN KEY (c_person_blood_group_id)
      REFERENCES yacare_admission.person_blood_group (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT person_person_gender_id_fkey FOREIGN KEY (c_person_gender_id)
      REFERENCES yacare_admission.person_gender (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT legal_guardian_student_family_relationship_type_id_fkey FOREIGN KEY (t1_family_relationship_type_id)
      REFERENCES yacare_admission.family_relationship_type (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT annual_enrollment_school_shift_id_fkey FOREIGN KEY (school_shift_id)
      REFERENCES yacare_admission.school_shift (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT admission_form_classroom_course_id_fkey FOREIGN KEY (classroom_course_id)
      REFERENCES yacare_admission.classroom_exam (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT admission_form_classroom_exam_id_fkey FOREIGN KEY (classroom_exam_id)
      REFERENCES yacare_admission.classroom_exam (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,

  CONSTRAINT admission_form_country_c_birth_country_id_fkey FOREIGN KEY (c_birth_country_id)
      REFERENCES yacare_admission.country (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT admission_form_country_c_nationality_country_id_fkey FOREIGN KEY (c_nationality_country_id)
      REFERENCES yacare_admission.country (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT admission_form_country_c_address_country_id_fkey FOREIGN KEY (c_address_country_id)
      REFERENCES yacare_admission.country (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT admission_form_province_c_birth_province_id_fkey FOREIGN KEY (c_birth_province_id)
      REFERENCES yacare_admission.province (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT admission_form_province_c_address_province_id_fkey FOREIGN KEY (c_address_province_id)
      REFERENCES yacare_admission.province (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,


  CONSTRAINT admission_form_country_t1_nationality_country_id_fkey FOREIGN KEY (t1_nationality_country_id)
      REFERENCES yacare_admission.country (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT admission_form_country_t1_address_country_id_fkey FOREIGN KEY (t1_address_country_id)
      REFERENCES yacare_admission.country (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT admission_form_province_t1_address_province_id_fkey FOREIGN KEY (t1_address_province_id)
      REFERENCES yacare_admission.province (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,

  CONSTRAINT admission_form_country_t2_nationality_country_id_fkey FOREIGN KEY (t2_nationality_country_id)
      REFERENCES yacare_admission.country (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT admission_form_country_t2_address_country_id_fkey FOREIGN KEY (t2_address_country_id)
      REFERENCES yacare_admission.country (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT admission_form_province_t2_address_province_id_fkey FOREIGN KEY (t2_address_province_id)
      REFERENCES yacare_admission.province (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION



);


/*
insert into yacare_admission.admission_form(id, date_form, c_first_name, c_other_names, c_surnames, c_person_gender_id,
            c_dni_number, c_cuil_number, c_person_blood_factor_id, c_person_blood_group_id,
            c_birth_date, c_birth_country_id, c_birth_province_id, c_birth_locality,
            c_nationality_country_id, c_address_country_id, c_address_province_id,
            c_address_locality, c_address_zip_code, c_address_neightbourhood,
            c_address_street, c_address_street_number, c_address_floor, c_address_room,
            c_address_building, c_address_comment, t1_family_relationship_type_id,
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
            classroom_exam_id, classroom_course_id,
            s_division, s_others_comment, year_calendar,admission_closed)
values(
'1','2017-03-02 00:00:00','AXEL','ALVARO','JAIMES GIMENEZ','e3521105-9eba-45f4-b51f-63108158cfbc',47172784,
'20471727847','68030edb-50f1-464f-a0d0-f2e9a5886be8','68bbad8c-6088-4294-9c1e-262eb82432f0','2006-06-10',
'8bb52cba-161f-4106-b10b-a74c420bcac7','50c323f7-8d22-49a4-9096-0b8e3f259137','CORDOBA',
'8bb52cba-161f-4106-b10b-a74c420bcac7','8bb52cba-161f-4106-b10b-a74c420bcac7','50c323f7-8d22-49a4-9096-0b8e3f259137',
'CORDOBA','5000','ALBERDI','TABLADA','3030','-','-','-',null,'5a723d74-8fac-4044-b6bb-db25ff04dd04','DIEGO','ORLANDO',
'JAIMES','e3521105-9eba-45f4-b51f-63108158cfbc',27570431,'20275704319','1979-01-06',
'8bb52cba-161f-4106-b10b-a74c420bcac7','8bb52cba-161f-4106-b10b-a74c420bcac7','50c323f7-8d22-49a4-9096-0b8e3f259137',
'CORDOBA','5000','ALBERDI','TABLADA','3030',null,null,null,null,'jaimes@gmail.com',null,null,156711205,null,null,157522717,'COMECIANTE',
'04dda3f7-0bcb-4ee3-868a-3b88047a1058','ELVA','AZUCENA','GIMENEZ','e3521105-9eba-45f4-b51f-63108158cfbf',18250123,
'27182501234','1966-12-20','8bb52cba-161f-4106-b10b-a74c420bcac7','8bb52cba-161f-4106-b10b-a74c420bcac7',
'50c323f7-8d22-49a4-9096-0b8e3f259137','CORDOBA','5000','ALBERDI','TABLADA','3030',null,null,null,null,'gimenez@gmail.com',
null,null,152537534,null,null,null,'COMERCIANTE','d05417a4-4ff6-4e1a-a4c2-916d092acf5a',null,null,null,null,TRUE,null,
null,null,'ORGANIZACION FAMILIAR',2017,false);

insert into yacare_admission.admission_form(id, date_form, c_first_name, c_other_names, c_surnames, c_person_gender_id,
            c_dni_number, c_cuil_number, c_person_blood_factor_id, c_person_blood_group_id,
            c_birth_date, c_birth_country_id, c_birth_province_id, c_birth_locality,
            c_nationality_country_id, c_address_country_id, c_address_province_id,
            c_address_locality, c_address_zip_code, c_address_neightbourhood,
            c_address_street, c_address_street_number, c_address_floor, c_address_room,
            c_address_building, c_address_comment, t1_family_relationship_type_id,
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
            classroom_exam_id, classroom_course_id,
            s_division, s_others_comment, year_calendar,admission_closed)
values(
'2','2017-03-02 00:00:00','AXEL','ALVARO','JAIMES GIMENEZ','e3521105-9eba-45f4-b51f-63108158cfbc',47172784,
'20471727847','68030edb-50f1-464f-a0d0-f2e9a5886be8','68bbad8c-6088-4294-9c1e-262eb82432f0','2006-06-10',
'8bb52cba-161f-4106-b10b-a74c420bcac7','50c323f7-8d22-49a4-9096-0b8e3f259137','CORDOBA',
'8bb52cba-161f-4106-b10b-a74c420bcac7','8bb52cba-161f-4106-b10b-a74c420bcac7','50c323f7-8d22-49a4-9096-0b8e3f259137',
'CORDOBA','5000','ALBERDI','TABLADA','3030','-','-','-',null,'5a723d74-8fac-4044-b6bb-db25ff04dd04','DIEGO','ORLANDO',
'JAIMES','e3521105-9eba-45f4-b51f-63108158cfbc',27570431,'20275704319','1979-01-06',
'8bb52cba-161f-4106-b10b-a74c420bcac7','8bb52cba-161f-4106-b10b-a74c420bcac7','50c323f7-8d22-49a4-9096-0b8e3f259137',
'CORDOBA','5000','ALBERDI','TABLADA','3030',null,null,null,null,'jaimes@gmail.com',null,null,156711205,null,null,157522717,'COMECIANTE',
'04dda3f7-0bcb-4ee3-868a-3b88047a1058','ELVA','AZUCENA','GIMENEZ','e3521105-9eba-45f4-b51f-63108158cfbf',18250123,
'27182501234','1966-12-20','8bb52cba-161f-4106-b10b-a74c420bcac7','8bb52cba-161f-4106-b10b-a74c420bcac7',
'50c323f7-8d22-49a4-9096-0b8e3f259137','CORDOBA','5000','ALBERDI','TABLADA','3030',null,null,null,null,'gimenez@gmail.com',
null,null,152537534,null,null,null,'COMERCIANTE','d05417a4-4ff6-4e1a-a4c2-916d092acf5a',null,null,null,null,TRUE,null,
null,null,'ORGANIZACION FAMILIAR',2017,false);

insert into yacare_admission.admission_form(id, date_form, c_first_name, c_other_names, c_surnames, c_person_gender_id,
            c_dni_number, c_cuil_number, c_person_blood_factor_id, c_person_blood_group_id,
            c_birth_date, c_birth_country_id, c_birth_province_id, c_birth_locality,
            c_nationality_country_id, c_address_country_id, c_address_province_id,
            c_address_locality, c_address_zip_code, c_address_neightbourhood,
            c_address_street, c_address_street_number, c_address_floor, c_address_room,
            c_address_building, c_address_comment, t1_family_relationship_type_id,
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
            classroom_exam_id, classroom_course_id,
            s_division, s_others_comment, year_calendar,admission_closed)
values(
'3','2017-03-02 00:00:00','AXEL','ALVARO','JAIMES GIMENEZ','e3521105-9eba-45f4-b51f-63108158cfbc',47172784,
'20471727847','68030edb-50f1-464f-a0d0-f2e9a5886be8','68bbad8c-6088-4294-9c1e-262eb82432f0','2006-06-10',
'8bb52cba-161f-4106-b10b-a74c420bcac7','50c323f7-8d22-49a4-9096-0b8e3f259137','CORDOBA',
'8bb52cba-161f-4106-b10b-a74c420bcac7','8bb52cba-161f-4106-b10b-a74c420bcac7','50c323f7-8d22-49a4-9096-0b8e3f259137',
'CORDOBA','5000','ALBERDI','TABLADA','3030','-','-','-',null,'5a723d74-8fac-4044-b6bb-db25ff04dd04','DIEGO','ORLANDO',
'JAIMES','e3521105-9eba-45f4-b51f-63108158cfbc',27570431,'20275704319','1979-01-06',
'8bb52cba-161f-4106-b10b-a74c420bcac7','8bb52cba-161f-4106-b10b-a74c420bcac7','50c323f7-8d22-49a4-9096-0b8e3f259137',
'CORDOBA','5000','ALBERDI','TABLADA','3030',null,null,null,null,'jaimes@gmail.com',null,null,156711205,null,null,157522717,'COMECIANTE',
'04dda3f7-0bcb-4ee3-868a-3b88047a1058','ELVA','AZUCENA','GIMENEZ','e3521105-9eba-45f4-b51f-63108158cfbf',18250123,
'27182501234','1966-12-20','8bb52cba-161f-4106-b10b-a74c420bcac7','8bb52cba-161f-4106-b10b-a74c420bcac7',
'50c323f7-8d22-49a4-9096-0b8e3f259137','CORDOBA','5000','ALBERDI','TABLADA','3030',null,null,null,null,'gimenez@gmail.com',
null,null,152537534,null,null,null,'COMERCIANTE','d05417a4-4ff6-4e1a-a4c2-916d092acf5a',null,null,null,null,TRUE,null,
null,null,'ORGANIZACION FAMILIAR',2017,false);
*/
