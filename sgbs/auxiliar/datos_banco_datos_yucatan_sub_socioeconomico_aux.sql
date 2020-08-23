/*
    *****************************************************************************************
    Esta sección es para los catalogos de las tablas auxiliares del componente socioeconómico
    *****************************************************************************************
*/

--Borrando todos los datos de dd_ageb_caract para correr el archivo sql
DELETE FROM auxiliar.dd_ageb_caract;
--Ingresando información de la tabla /sub_socioeconomico/dd_ageb_caract.xlsx en auxiliar.dd_ageb_caract
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.dd_ageb_caract
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/dd_ageb_caract.csv'
WITH DELIMITER ',' CSV HEADER;

--Borrando todos los datos de dd_ageb_diag_pobr para correr el archivo sql
DELETE FROM auxiliar.dd_ageb_diag_pobr;
--Ingresando información de la tabla /sub_socioeconomico/dd_ageb_diag_pobr.xlsx en auxiliar.dd_ageb_diag_pobr
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.dd_ageb_diag_pobr
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/dd_ageb_diag_pobr.csv'
WITH DELIMITER ',' CSV HEADER;

--Borrando todos los datos de dd_ageb_diag_rezago para correr el archivo sql
DELETE FROM auxiliar.dd_ageb_diag_rezago;
--Ingresando información de la tabla /sub_socioeconomico/dd_ageb_diag_rezago.xlsx en auxiliar.dd_ageb_diag_rezago
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.dd_ageb_diag_rezago
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/dd_ageb_diag_rezago.csv'
WITH DELIMITER ',' CSV HEADER;

--Borrando todos los datos de dd_idp para correr el archivo sql
DELETE FROM auxiliar.dd_idp;
--Ingresando información de la tabla /sub_socioeconomico/dd_idp.xlsx en auxiliar.dd_idp
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.dd_idp
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/dd_idp.csv'
WITH DELIMITER ',' CSV HEADER;

--Borrando todos los datos de dd_indigena para correr el archivo sql
DELETE FROM auxiliar.dd_indigena;
--Ingresando información de la tabla /sub_socioeconomico/dd_indigena.xlsx en auxiliar.dd_indigena
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.dd_indigena
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/dd_indigena.csv'
WITH DELIMITER ',' CSV HEADER;

--Borrando todos los datos de dd_migracion para correr el archivo sql
DELETE FROM auxiliar.dd_migracion;
--Ingresando información de la tabla /sub_socioeconomico/dd_migracion.xlsx en auxiliar.dd_migracion
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.dd_migracion
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/dd_migracion.csv'
WITH DELIMITER ',' CSV HEADER;

--Borrando todos los datos de dd_pob_afrodesc para correr el archivo sql
DELETE FROM auxiliar.dd_pob_afrodesc;
--Ingresando información de la tabla /sub_socioeconomico/dd_pob_afrodesc.xlsx en auxiliar.dd_pob_afrodesc
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.dd_pob_afrodesc
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/dd_pob_afrodesc.csv'
WITH DELIMITER ',' CSV HEADER;
--Se quitan los valores NA y se remplazan con NULL
UPDATE auxiliar.dd_pob_afrodesc SET año = REPLACE(dd_pob_afrodesc.año,'NA',NULL) WHERE año = 'NA';

--Borrando todos los datos de dd_pob_gpo_edad_quinq para correr el archivo sql
DELETE FROM auxiliar.dd_pob_gpo_edad_quinq;
--Ingresando información de la tabla /sub_socioeconomico/dd_pob_gpo_edad_quinq.xlsx en auxiliar.dd_pob_gpo_edad_quinq
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.dd_pob_gpo_edad_quinq
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/dd_pob_gpo_edad_quinq.csv'
WITH DELIMITER ',' CSV HEADER;

--Borrando todos los datos de dd_socioec_caract para correr el archivo sql
DELETE FROM auxiliar.dd_socioec_caract;
--Ingresando información de la tabla /sub_socioeconomico/dd_socioec_caract.xlsx en auxiliar.dd_socioec_caract
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.dd_socioec_caract
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/dd_socioec_caract.csv'
WITH DELIMITER ',' CSV HEADER;

--Borrando todos los datos de dd_socioec_diagn para correr el archivo sql
DELETE FROM auxiliar.dd_socioec_diagn;
--Ingresando información de la tabla /sub_socioeconomico/dd_socioec_diagn.xlsx en auxiliar.dd_socioec_diagn
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.dd_socioec_diagn
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/dd_socioec_diagn.csv'
WITH DELIMITER ',' CSV HEADER;

/*
    *************************************************
    Esta sección es para el componente socioeconómico
    *************************************************
*/

--Borrando todos los datos de bd_ageb_caract para correr el archivo sql
DELETE FROM auxiliar.bd_ageb_caract;
--Ingresando información de la tabla /sub_socioeconomico/bd_ageb_caract.csv en auxiliar.bd_ageb_caract
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.bd_ageb_caract
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/bd_ageb_caract.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE auxiliar.bd_ageb_caract SET cve_mun = LPAD(bd_ageb_caract.cve_mun,3,'0');

--Borrando todos los datos de bd_ageb_diag_pobr_16jul20 para correr el archivo sql
DELETE FROM auxiliar.bd_ageb_diag_pobr;
--Ingresando información de la tabla /sub_socioeconomico/bd_ageb_diag_pobr_16jul20.csv en auxiliar.bd_ageb_diag_pobr_16jul20
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.bd_ageb_diag_pobr
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/bd_ageb_diag_pobr_16jul20.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE auxiliar.bd_ageb_diag_pobr SET cve_mun = LPAD(bd_ageb_diag_pobr.cve_mun,3,'0');

--Borrando todos los datos de bd_ageb_diag_rezago_16jul20 para correr el archivo sql
DELETE FROM auxiliar.bd_ageb_diag_rezago;
--Ingresando información de la tabla /sub_socioeconomico/bd_ageb_diag_rezago_16jul20.csv en auxiliar.bd_ageb_diag_rezago_16jul20
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.bd_ageb_diag_rezago
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/bd_ageb_diag_rezago_16jul20.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE auxiliar.bd_ageb_diag_rezago SET cve_mun = LPAD(bd_ageb_diag_rezago.cve_mun,3,'0');

--Borrando todos los datos de bd_idp para correr el archivo sql
DELETE FROM auxiliar.bd_idp;
--Ingresando información de la tabla /sub_socioeconomico/bd_idp.csv en auxiliar.bd_idp
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.bd_idp
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/bd_idp.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE auxiliar.bd_idp SET cve_mun = LPAD(bd_idp.cve_mun,3,'0');
--Se colocan correctamente las claves cve_geo
UPDATE auxiliar.bd_idp SET cve_geo = CONCAT(cve_ent,cve_mun);
--Se quitan los espacios del campo idp_cat
UPDATE auxiliar.bd_idp SET idp_cat = RTRIM(idp_cat);

--Borrando todos los datos de bd_indigena para correr el archivo sql
DELETE FROM auxiliar.bd_indigena;
--Ingresando información de la tabla /sub_socioeconomico/bd_indigena.csv en auxiliar.bd_indigena
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.bd_indigena
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/bd_indigena.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE auxiliar.bd_indigena SET cve_mun = LPAD(bd_indigena.cve_mun,3,'0');
--Se colocan correctamente las claves cve_geo
UPDATE auxiliar.bd_indigena SET cve_geo = CONCAT(cve_ent,cve_mun);

--Borrando todos los datos de bd_migracion para correr el archivo sql
DELETE FROM auxiliar.bd_migracion;
--Ingresando información de la tabla /sub_socioeconomico/bd_migracion.csv en auxiliar.bd_migracion
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.bd_migracion
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/bd_migracion.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE auxiliar.bd_migracion SET cve_mun = LPAD(bd_migracion.cve_mun,3,'0');
--Se colocan correctamente las claves cve_geo
UPDATE auxiliar.bd_migracion SET cve_geo = CONCAT(cve_ent,cve_mun);

--Borrando todos los datos de bd_pob_afrodesc para correr el archivo sql
DELETE FROM auxiliar.bd_pob_afrodesc;
--Ingresando información de la tabla /sub_socioeconomico/bd_pob_afrodesc.csv en auxiliar.bd_pob_afrodesc
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.bd_pob_afrodesc
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/bd_pob_afrodesc.csv'
WITH DELIMITER ',' CSV HEADER;
--Se asigna como '000' al campo que tenaía 'Resto de los municipios'
UPDATE auxiliar.bd_pob_afrodesc SET cve_mun = '000' WHERE cve_mun LIKE 'Res%';
--Se colocan correctamente las claves de municipios
UPDATE auxiliar.bd_pob_afrodesc SET cve_mun = LPAD(bd_pob_afrodesc.cve_mun,3,'0');
--Se quita la coma al campo numerico con coma
UPDATE auxiliar.bd_pob_afrodesc SET pobt_15 = REPLACE(bd_pob_afrodesc.pobt_15,',','');

--Borrando todos los datos de bd_pob_gpo_edad_quinq para correr el archivo sql
DELETE FROM auxiliar.bd_pob_gpo_edad_quinq;
--Ingresando información de la tabla /sub_socioeconomico/bd_pob_gpo_edad_quinq.csv en auxiliar.bd_pob_gpo_edad_quinq
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.bd_pob_gpo_edad_quinq
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/bd_pob_gpo_edad_quinq.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE auxiliar.bd_pob_gpo_edad_quinq SET cve_mun = LPAD(bd_pob_gpo_edad_quinq.cve_mun,3,'0');
--Se quita la coma del campo numérico con coma
UPDATE auxiliar.bd_pob_gpo_edad_quinq SET pobq_15 = REPLACE(bd_pob_gpo_edad_quinq.pobq_15,',','');
UPDATE auxiliar.bd_pob_gpo_edad_quinq SET pobqm_15 = REPLACE(bd_pob_gpo_edad_quinq.pobqm_15,',','');
UPDATE auxiliar.bd_pob_gpo_edad_quinq SET pobqf_15 = REPLACE(bd_pob_gpo_edad_quinq.pobqf_15,',','');

--Borrando todos los datos de bd_socioec_caract para correr el archivo sql
DELETE FROM auxiliar.bd_socioec_caract;
--Ingresando información de la tabla /sub_socioeconomico/bd_socioec_caract.csv en auxiliar.bd_socioec_caract
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.bd_socioec_caract
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/bd_socioec_caract.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE auxiliar.bd_socioec_caract SET cve_mun = LPAD(bd_socioec_caract.cve_mun,3,'0');
--Se colocan correctamente las claves cve_geo
UPDATE auxiliar.bd_socioec_caract SET cve_geo = CONCAT(cve_ent,cve_mun);
--Se quitan los espacios
UPDATE auxiliar.bd_socioec_caract SET p_no_af = REPLACE(bd_socioec_caract.p_no_af,' ',NULL);

--Borrando todos los datos de bd_socioec_diagn para correr el archivo sql
DELETE FROM auxiliar.bd_socioec_diagn;
--Ingresando información de la tabla /sub_socioeconomico/bd_socioec_diagn.csv en auxiliar.bd_socioec_diagn
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.bd_socioec_diagn
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_socioeconomico/bd_socioec_diagn.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE auxiliar.bd_socioec_diagn SET cve_mun = LPAD(bd_socioec_diagn.cve_mun,3,'0');
--Se colocan correctamente las claves cve_geo
UPDATE auxiliar.bd_socioec_diagn SET cve_geo = CONCAT(cve_ent,cve_mun);
--Se quita la coma del campo numérico con coma
UPDATE auxiliar.bd_socioec_diagn SET h_pb_10 = REPLACE(bd_socioec_diagn.h_pb_10,',','');
UPDATE auxiliar.bd_socioec_diagn SET h_pb_15 = REPLACE(bd_socioec_diagn.h_pb_15,',','');
UPDATE auxiliar.bd_socioec_diagn SET h_pm_10 = REPLACE(bd_socioec_diagn.h_pm_10,',','');
UPDATE auxiliar.bd_socioec_diagn SET h_pm_15 = REPLACE(bd_socioec_diagn.h_pm_15,',','');
UPDATE auxiliar.bd_socioec_diagn SET h_pex_10 = REPLACE(bd_socioec_diagn.h_pex_10,',','');
UPDATE auxiliar.bd_socioec_diagn SET h_pex_15 = REPLACE(bd_socioec_diagn.h_pex_15,',','');
UPDATE auxiliar.bd_socioec_diagn SET h_vu_10 = REPLACE(bd_socioec_diagn.h_vu_10,',','');
UPDATE auxiliar.bd_socioec_diagn SET h_vu_15 = REPLACE(bd_socioec_diagn.h_vu_15,',','');