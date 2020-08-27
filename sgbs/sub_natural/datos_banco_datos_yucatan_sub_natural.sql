--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM sub_natural.coberturas_c3;
--Se ingresa la información de la tabla coberturas_c3
INSERT INTO sub_natural.coberturas_c3(cob_c3_id, cobertura_c3) VALUES 
    (1,'Natural'),
    (2,'No natural');

--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM sub_natural.coberturas_c4;
--Se ingresa la información de la tabla coberturas_c4
INSERT INTO sub_natural.coberturas_c4(cob_c4_id, cobertura_c4, cob_c3_id) VALUES 
    (1,'Asentamiento humano', 2),
    (2,'Agropecuario', 2),
    (3,'Natural',1);

--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM sub_natural.coberturas_c2;
--Se ingresa la información de la tabla coberturas_c2
INSERT INTO sub_natural.coberturas_c2(cob_c2_id, cobertura_c2, cob_c4_id) VALUES 
    (1,'Agricultura de riego', 2),
    (2,'Agricultura de temporal', 2),
    (3,'Cuerpo de agua', 3),
    (4,'Manglar', 3),
    (5,'Pastizal', 2),
    (6,'Sin vegetación', 1),
    (7,'Asentamiento humano', 1),
    (8,'Vegetación de duna costera', 3),
    (9,'Vegetación de petén', 3),
    (10,'Vegetación secundaria de selva baja', 3),
    (11,'Vegetación secundaria de selva mediana', 3),
    (12,'Acuícola', 2),
    (13,'Bosque cultivado/Palmar inducido', 2),
    (14,'Tular', 3),
    (15,'Vegetación halófila hidrófila', 3),
    (16,'Sábana', 3);

--Se realiza la tercer forma normal para la tabla auxiliar.bd_usv_c2_mun y el resultado se guarda en auxiliar.usv_municipios_coberturas
--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM sub_natural.usv_municipios_coberturas;
--Se ingresa la información de la tabla auxiliar.bd_usv_c2_mun en auxiliar.usv_municipios_coberturas
INSERT INTO sub_natural.usv_municipios_coberturas(cve_mun, cve_geo, serie,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie, cob_1, 1
FROM auxiliar.bd_usv_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_2, 2
FROM auxiliar.bd_usv_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_3, 3
FROM auxiliar.bd_usv_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_4, 4
FROM auxiliar.bd_usv_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_5, 5
FROM auxiliar.bd_usv_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_6, 6
FROM auxiliar.bd_usv_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_7, 7
FROM auxiliar.bd_usv_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_8, 8
FROM auxiliar.bd_usv_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_9, 9
FROM auxiliar.bd_usv_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_10, 10
FROM auxiliar.bd_usv_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_11, 11
FROM auxiliar.bd_usv_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_12, 12
FROM auxiliar.bd_usv_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_13, 13
FROM auxiliar.bd_usv_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_14, 14
FROM auxiliar.bd_usv_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_15, 15
FROM auxiliar.bd_usv_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_16, 16
FROM auxiliar.bd_usv_c2_mun;
-- Se colocan los años en la tabla
UPDATE sub_natural.usv_municipios_coberturas SET serie = 1985 WHERE serie = 1;
UPDATE sub_natural.usv_municipios_coberturas SET serie = 1993 WHERE serie = 2;
UPDATE sub_natural.usv_municipios_coberturas SET serie = 2002 WHERE serie = 3;
UPDATE sub_natural.usv_municipios_coberturas SET serie = 2007 WHERE serie = 4;
UPDATE sub_natural.usv_municipios_coberturas SET serie = 2011 WHERE serie = 5;
UPDATE sub_natural.usv_municipios_coberturas SET serie = 2014 WHERE serie = 6;

--Se realiza la tercer forma normal para la tabla auxiliar.bd_anp_c2_mun y el resultado se guarda en auxiliar.anp_municipios_coberturas
--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM sub_natural.anp_municipios_coberturas;
--Se ingresa la información de la tabla auxiliar.bd_usv_c2_mun en auxiliar.usv_municipios_coberturas
INSERT INTO sub_natural.anp_municipios_coberturas(cve_mun, cve_geo, serie,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie, cob_1, 1
FROM auxiliar.bd_anp_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_2, 2
FROM auxiliar.bd_anp_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_3, 3
FROM auxiliar.bd_anp_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_4, 4
FROM auxiliar.bd_anp_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_5, 5
FROM auxiliar.bd_anp_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_6, 6
FROM auxiliar.bd_anp_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_7, 7
FROM auxiliar.bd_anp_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_8, 8
FROM auxiliar.bd_anp_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_9, 9
FROM auxiliar.bd_anp_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_10, 10
FROM auxiliar.bd_anp_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_11, 11
FROM auxiliar.bd_anp_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_12, 12
FROM auxiliar.bd_anp_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_13, 13
FROM auxiliar.bd_anp_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_14, 14
FROM auxiliar.bd_anp_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_15, 15
FROM auxiliar.bd_anp_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_16, 16
FROM auxiliar.bd_anp_c2_mun;
-- Se colocan los años en la tabla
UPDATE sub_natural.anp_municipios_coberturas SET serie = 1985 WHERE serie = 1;
UPDATE sub_natural.anp_municipios_coberturas SET serie = 1993 WHERE serie = 2;
UPDATE sub_natural.anp_municipios_coberturas SET serie = 2002 WHERE serie = 3;
UPDATE sub_natural.anp_municipios_coberturas SET serie = 2007 WHERE serie = 4;
UPDATE sub_natural.anp_municipios_coberturas SET serie = 2011 WHERE serie = 5;
UPDATE sub_natural.anp_municipios_coberturas SET serie = 2014 WHERE serie = 6;

--Se realiza la tercer forma normal para la tabla auxiliar.bd_deg_c2_mun y el resultado se guarda en auxiliar.deg_municipios_coberturas
--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM sub_natural.deg_municipios_coberturas;
--Se ingresa la información de la tabla auxiliar.bd_usv_c2_mun en auxiliar.usv_municipios_coberturas
INSERT INTO sub_natural.deg_municipios_coberturas(cve_mun, cve_geo, serie,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie, cob_1, 1
FROM auxiliar.bd_deg_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_2, 2
FROM auxiliar.bd_deg_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_3, 3
FROM auxiliar.bd_deg_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_4, 4
FROM auxiliar.bd_deg_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_5, 5
FROM auxiliar.bd_deg_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_6, 6
FROM auxiliar.bd_deg_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_7, 7
FROM auxiliar.bd_deg_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_8, 8
FROM auxiliar.bd_deg_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_9, 9
FROM auxiliar.bd_deg_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_10, 10
FROM auxiliar.bd_deg_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_11, 11
FROM auxiliar.bd_deg_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_12, 12
FROM auxiliar.bd_deg_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_13, 13
FROM auxiliar.bd_deg_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_14, 14
FROM auxiliar.bd_deg_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_15, 15
FROM auxiliar.bd_deg_c2_mun
UNION SELECT cve_mun, cve_geo, serie, cob_16, 16
FROM auxiliar.bd_deg_c2_mun;
-- Se colocan los años en la tabla
UPDATE sub_natural.deg_municipios_coberturas SET serie = 1985 WHERE serie = 1;
UPDATE sub_natural.deg_municipios_coberturas SET serie = 1993 WHERE serie = 2;
UPDATE sub_natural.deg_municipios_coberturas SET serie = 2002 WHERE serie = 3;
UPDATE sub_natural.deg_municipios_coberturas SET serie = 2007 WHERE serie = 4;
UPDATE sub_natural.deg_municipios_coberturas SET serie = 2011 WHERE serie = 5;
UPDATE sub_natural.deg_municipios_coberturas SET serie = 2014 WHERE serie = 6;