--Esta sección es para el componente socioeconómico
--Borrando todos los datos de bd_ageb_caract para correr el archivo sql
DELETE FROM development.bd_ageb_caract;
--Ingresando información de la tabla /sub_socioeconomico/bd_ageb_caract.csv en development.bd_ageb_caract
--La siguiente instrucción se debe correr como superuser
COPY development.bd_ageb_caract
FROM '/mnt/c/Dropbox (LANCIS)/CARPETAS_TRABAJO/atorrijos/banco_datos/procesamiento/sub_socioeconomico/bd_ageb_caract.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE development.bd_ageb_caract SET cve_mun = RIGHT('00'||bd_ageb_caract.cve_mun,3);

--Borrando todos los datos de bd_ageb_diag_pobr para correr el archivo sql
DELETE FROM development.bd_ageb_diag_pobr;
--Ingresando información de la tabla /sub_socioeconomico/bd_ageb_diag_pobr.csv en development.bd_ageb_diag_pobr
--La siguiente instrucción se debe correr como superuser
COPY development.bd_ageb_diag_pobr
FROM '/mnt/c/Dropbox (LANCIS)/CARPETAS_TRABAJO/atorrijos/banco_datos/procesamiento/sub_socioeconomico/bd_ageb_diag_pobr.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE development.bd_ageb_caract SET cve_mun = RIGHT('00'||bd_ageb_caract.cve_mun,3);

--Borrando todos los datos de bd_ageb_diag_rezago para correr el archivo sql
DELETE FROM development.bd_ageb_diag_rezago;
--Ingresando información de la tabla /sub_socioeconomico/bd_ageb_diag_rezago.csv en development.bd_ageb_diag_rezago
--La siguiente instrucción se debe correr como superuser
COPY development.bd_ageb_diag_rezago
FROM '/mnt/c/Dropbox (LANCIS)/CARPETAS_TRABAJO/atorrijos/banco_datos/procesamiento/sub_socioeconomico/bd_ageb_diag_rezago.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE development.bd_ageb_caract SET cve_mun = RIGHT('00'||bd_ageb_caract.cve_mun,3);

--Borrando todos los datos de bd_idp para correr el archivo sql
DELETE FROM development.bd_idp;
--Ingresando información de la tabla /sub_socioeconomico/bd_idp.csv en development.bd_idp
--La siguiente instrucción se debe correr como superuser
COPY development.bd_idp
FROM '/mnt/c/Dropbox (LANCIS)/CARPETAS_TRABAJO/atorrijos/banco_datos/procesamiento/sub_socioeconomico/bd_idp.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE development.bd_ageb_caract SET cve_mun = RIGHT('00'||bd_ageb_caract.cve_mun,3);

--Borrando todos los datos de bd_indigena para correr el archivo sql
DELETE FROM development.bd_indigena;
--Ingresando información de la tabla /sub_socioeconomico/bd_indigena.csv en development.bd_indigena
--La siguiente instrucción se debe correr como superuser
COPY development.bd_indigena
FROM '/mnt/c/Dropbox (LANCIS)/CARPETAS_TRABAJO/atorrijos/banco_datos/procesamiento/sub_socioeconomico/bd_indigena.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE development.bd_ageb_caract SET cve_mun = RIGHT('00'||bd_ageb_caract.cve_mun,3);

--Borrando todos los datos de bd_migracion para correr el archivo sql
DELETE FROM development.bd_migracion;
--Ingresando información de la tabla /sub_socioeconomico/bd_migracion.csv en development.bd_migracion
--La siguiente instrucción se debe correr como superuser
COPY development.bd_migracion
FROM '/mnt/c/Dropbox (LANCIS)/CARPETAS_TRABAJO/atorrijos/banco_datos/procesamiento/sub_socioeconomico/bd_migracion.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE development.bd_ageb_caract SET cve_mun = RIGHT('00'||bd_ageb_caract.cve_mun,3);

--Borrando todos los datos de bd_pob_afrodesc para correr el archivo sql
DELETE FROM development.bd_pob_afrodesc;
--Ingresando información de la tabla /sub_socioeconomico/bd_pob_afrodesc.csv en development.bd_pob_afrodesc
--La siguiente instrucción se debe correr como superuser
COPY development.bd_pob_afrodesc
FROM '/mnt/c/Dropbox (LANCIS)/CARPETAS_TRABAJO/atorrijos/banco_datos/procesamiento/sub_socioeconomico/bd_pob_afrodesc.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE development.bd_ageb_caract SET cve_mun = RIGHT('00'||bd_ageb_caract.cve_mun,3);

--Borrando todos los datos de bd_pob_gpo_edad_quinq para correr el archivo sql
DELETE FROM development.bd_pob_gpo_edad_quinq;
--Ingresando información de la tabla /sub_socioeconomico/bd_pob_gpo_edad_quinq.csv en development.bd_pob_gpo_edad_quinq
--La siguiente instrucción se debe correr como superuser
COPY development.bd_pob_gpo_edad_quinq
FROM '/mnt/c/Dropbox (LANCIS)/CARPETAS_TRABAJO/atorrijos/banco_datos/procesamiento/sub_socioeconomico/bd_pob_gpo_edad_quinq.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE development.bd_ageb_caract SET cve_mun = RIGHT('00'||bd_ageb_caract.cve_mun,3);

--Borrando todos los datos de bd_socioec_caract para correr el archivo sql
DELETE FROM development.bd_socioec_caract;
--Ingresando información de la tabla /sub_socioeconomico/bd_socioec_caract.csv en development.bd_socioec_caract
--La siguiente instrucción se debe correr como superuser
COPY development.bd_socioec_caract
FROM '/mnt/c/Dropbox (LANCIS)/CARPETAS_TRABAJO/atorrijos/banco_datos/procesamiento/sub_socioeconomico/bd_socioec_caract.csv'
WITH DELIMITER ',' CSV HEADER ENCODING 'WIN1252';
--Se colocan correctamente las claves de municipios
UPDATE development.bd_ageb_caract SET cve_mun = RIGHT('00'||bd_ageb_caract.cve_mun,3);

--Borrando todos los datos de bd_socioec_diagn para correr el archivo sql
DELETE FROM development.bd_socioec_diagn;
--Ingresando información de la tabla /sub_socioeconomico/bd_socioec_diagn.csv en development.bd_socioec_diagn
--La siguiente instrucción se debe correr como superuser
COPY development.bd_socioec_diagn
FROM '/mnt/c/Dropbox (LANCIS)/CARPETAS_TRABAJO/atorrijos/banco_datos/procesamiento/sub_socioeconomico/bd_socioec_diagn.csv'
WITH DELIMITER ',' CSV HEADER;
--Se colocan correctamente las claves de municipios
UPDATE development.bd_ageb_caract SET cve_mun = RIGHT('00'||bd_ageb_caract.cve_mun,3);