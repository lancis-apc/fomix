--Esta sección es para el componente natural usv
--Borrando todos los datos de estados para correr el archivo sql
DELETE FROM auxiliar.bd_usv_c2_mun;
--Ingresando información de la tabla \sub_natural\bd_usv_c2_mun.csv en auxiliar.bd_usv_c2_mun
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.bd_usv_c2_mun
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_natural/bd_usv_c2_mun.csv'
WITH DELIMITER ',' CSV HEADER;

--Se colocan correctamente las claves de municipios
UPDATE auxiliar.bd_usv_c2_mun SET cve_mun = LPAD(bd_usv_c2_mun.cve_mun,3,'0');

--Se colocan correctamente las claves cve_geo
UPDATE auxiliar.bd_usv_c2_mun SET cve_geo = CONCAT(cve_ent,cve_mun);

--Se borran los espacios en blanco del final de region
UPDATE auxiliar.bd_usv_c2_mun SET region=rtrim(region);

--Esta sección es para el componente natural anp
--Borrando todos los datos de estados para correr el archivo sql
DELETE FROM auxiliar.bd_anp_c2_mun;
--Ingresando información de la tabla \sub_natural\bd_anp_c2_mun.csv en auxiliar.bd_anp_c2_mun
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.bd_anp_c2_mun
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_natural/bd_anp_c2_mun.csv'
WITH DELIMITER ',' CSV HEADER;

--Se colocan correctamente las claves de municipios
UPDATE auxiliar.bd_anp_c2_mun SET cve_mun = LPAD(bd_anp_c2_mun.cve_mun,3,'0');

--Se colocan correctamente las claves cve_geo
UPDATE auxiliar.bd_anp_c2_mun SET cve_geo = CONCAT(cve_ent,cve_mun);

--Se borran los espacios en blanco del final de region
UPDATE auxiliar.bd_anp_c2_mun SET region=rtrim(region);

--Esta sección es para el componente natural deg
--Borrando todos los datos de estados para correr el archivo sql
DELETE FROM auxiliar.bd_deg_c2_mun;
--Ingresando información de la tabla \sub_natural\bd_deg_c2_mun.csv en auxiliar.bd_deg_c2_mun
--La siguiente instrucción se debe correr como superuser
COPY auxiliar.bd_deg_c2_mun
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_natural/bd_deg_c2_mun.csv'
WITH DELIMITER ',' CSV HEADER;

--Se colocan correctamente las claves de municipios
UPDATE auxiliar.bd_deg_c2_mun SET cve_mun = LPAD(bd_deg_c2_mun.cve_mun,3,'0');

--Se colocan correctamente las claves cve_geo
UPDATE auxiliar.bd_deg_c2_mun SET cve_geo = CONCAT(cve_ent,cve_mun);

--Se borran los espacios en blanco del final de region
UPDATE auxiliar.bd_deg_c2_mun SET region=rtrim(region);