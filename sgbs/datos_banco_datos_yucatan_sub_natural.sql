--Esta sección es para el componente natural usv
--Borrando todos los datos de estados para correr el archivo sql
DELETE FROM development.bd_usv_c2_mun;
--Ingresando información de la tabla \sub_natural\bd_usv_c2_mun.csv en development.bd_usv_c2_mun
--La siguiente instrucción se debe correr como superuser
COPY development.bd_usv_c2_mun
FROM '/mnt/c/Dropbox (LANCIS)/CARPETAS_TRABAJO/atorrijos/banco_datos/procesamiento/sub_natural/bd_usv_c2_mun.csv'
WITH DELIMITER ',' CSV HEADER;

--Se colocan correctamente las claves de municipios
UPDATE development.bd_usv_c2_mun SET cve_mun = RIGHT('00'||bd_usv_c2_mun.cve_mun,3);

--Se colocan correctamente las claves cve_geo
UPDATE development.bd_usv_c2_mun SET cve_geo = CONCAT(cve_ent,cve_mun);

--Se realiza la tercer forma normal para la tabla development.bd_usv_c2_mun y el resultado se guarda en development.usv_municipios_coberturas
--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM development.usv_municipios_coberturas;
--Se ingresa la información de la tabla development.bd_usv_c2_mun en development.usv_municipios_coberturas
INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_1, 1
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_2, 2
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_3, 3
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_4, 4
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_5, 5
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_6, 6
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_7, 7
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_8, 8
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_9, 9
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_10, 10
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_11, 11
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_12, 12
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_13, 13
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_14, 14
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_15, 15
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_16, 16
FROM development.bd_usv_c2_mun;

DROP TABLE IF EXISTS development.bd_usv_c2_mun;

--Esta sección es para el componente natural anp
--Borrando todos los datos de estados para correr el archivo sql
DELETE FROM development.bd_anp_c2_mun;
--Ingresando información de la tabla \sub_natural\bd_anp_c2_mun.csv en development.bd_anp_c2_mun
--La siguiente instrucción se debe correr como superuser
COPY development.bd_anp_c2_mun
FROM '/mnt/c/Dropbox (LANCIS)/CARPETAS_TRABAJO/atorrijos/banco_datos/procesamiento/sub_natural/bd_anp_c2_mun.csv'
WITH DELIMITER ',' CSV HEADER;

--Se colocan correctamente las claves de municipios
UPDATE development.bd_anp_c2_mun SET cve_mun = RIGHT('00'||bd_anp_c2_mun.cve_mun,3);

--Se colocan correctamente las claves cve_geo
UPDATE development.bd_anp_c2_mun SET cve_geo = CONCAT(cve_ent,cve_mun);

--Se borran los espacios en blanco del final de region
UPDATE development.bd_anp_c2_mun SET region=rtrim(region);

--Se realiza la tercer forma normal para la tabla development.bd_anp_c2_mun y el resultado se guarda en development.anp_municipios_coberturas
--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM development.anp_municipios_coberturas;
--Se ingresa la información de la tabla development.bd_usv_c2_mun en development.usv_municipios_coberturas
INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_1, 1
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_2, 2
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_3, 3
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_4, 4
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_5, 5
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_6, 6
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_7, 7
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_8, 8
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_9, 9
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_10, 10
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_11, 11
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_12, 12
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_13, 13
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_14, 14
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_15, 15
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_16, 16
FROM development.bd_anp_c2_mun;

DROP TABLE IF EXISTS development.bd_anp_c2_mun;

--Esta sección es para el componente natural deg
--Borrando todos los datos de estados para correr el archivo sql
DELETE FROM development.bd_deg_c2_mun;
--Ingresando información de la tabla \sub_natural\bd_deg_c2_mun.csv en development.bd_deg_c2_mun
--La siguiente instrucción se debe correr como superuser
COPY development.bd_deg_c2_mun
FROM '/mnt/c/Dropbox (LANCIS)/CARPETAS_TRABAJO/atorrijos/banco_datos/procesamiento/sub_natural/bd_deg_c2_mun.csv'
WITH DELIMITER ',' CSV HEADER;

--Se colocan correctamente las claves de municipios
UPDATE development.bd_deg_c2_mun SET cve_mun = RIGHT('00'||bd_deg_c2_mun.cve_mun,3);

--Se colocan correctamente las claves cve_geo
UPDATE development.bd_deg_c2_mun SET cve_geo = CONCAT(cve_ent,cve_mun);

--Se borran los espacios en blanco del final de region
UPDATE development.bd_deg_c2_mun SET region=rtrim(region);

--Se realiza la tercer forma normal para la tabla development.bd_deg_c2_mun y el resultado se guarda en development.deg_municipios_coberturas
--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM development.deg_municipios_coberturas;
--Se ingresa la información de la tabla development.bd_usv_c2_mun en development.usv_municipios_coberturas
INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_1, 1
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_2, 2
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_3, 3
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_4, 4
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_5, 5
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_6, 6
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_7, 7
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_8, 8
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_9, 9
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_10, 10
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_11, 11
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_12, 12
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_13, 13
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_14, 14
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_15, 15
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_ent, cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_ent, cve_mun, cve_geo, serie_usv, cob_16, 16
FROM development.bd_deg_c2_mun;

DROP TABLE IF EXISTS development.bd_deg_c2_mun;