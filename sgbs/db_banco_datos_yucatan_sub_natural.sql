--Esta sección es para el componente natural

--Se crea la tabla series para el año de los datos
CREATE TABLE development.series (
    serie_usv SMALLINT PRIMARY KEY,
    serie SMALLINT NOT NULL
);

--Se crea la tabla coberturas para distinguir los tipos de cobertura c3
CREATE TABLE development.coberturas_c3 (
    cob_c3_id SMALLINT PRIMARY KEY,
    cobertura_c3 VARCHAR(10)
);

--Se crea la tabla coberturas para distinguir los tipos de cobertura c4
CREATE TABLE development.coberturas_c4 (
    cob_c4_id SMALLINT PRIMARY KEY,
    cobertura_c4 VARCHAR(20),
    cob_c3_id SMALLINT REFERENCES development.coberturas_c3(cob_c3_id)
);

--Se crea la tabla coberturas para distinguir los tipos de cobertura c2
CREATE TABLE development.coberturas_c2 (
    cob_c2_id SMALLINT PRIMARY KEY,
    cobertura_c2 VARCHAR(40),
    cob_c4_id SMALLINT REFERENCES development.coberturas_c4(cob_c4_id)
);

--Se crea la tabla usv_municipios_coberturas para establecer las relaciones de las coberturas con los municipios
CREATE TABLE development.usv_municipios_coberturas (
    cve_ent CHAR(2) REFERENCES development.estados(clave_entidad),
    cve_mun CHAR(3) REFERENCES development.municipios(clave_municipio),
    cve_geo CHAR(5) NOT NULL,
    serie_usv SMALLINT REFERENCES development.series(serie_usv),
    cobertura NUMERIC(10,2) NOT NULL,
    cob_c2_id SMALLINT REFERENCES development.coberturas_c2(cob_c2_id)
);

--Se crea la tabla anp_municipios_coberturas para establecer las relaciones de las coberturas con los municipios
CREATE TABLE development.anp_municipios_coberturas (
    cve_ent CHAR(2) REFERENCES development.estados(clave_entidad),
    cve_mun CHAR(3) REFERENCES development.municipios(clave_municipio),
    cve_geo CHAR(5) NOT NULL,
    serie_usv SMALLINT REFERENCES development.series(serie_usv),
    cobertura NUMERIC(10,2) NOT NULL,
    cob_c2_id SMALLINT REFERENCES development.coberturas_c2(cob_c2_id)
);

--Se crea la tabla deg_municipios_coberturas para establecer las relaciones de las coberturas con los municipios
CREATE TABLE development.deg_municipios_coberturas (
    cve_ent CHAR(2) REFERENCES development.estados(clave_entidad),
    cve_mun CHAR(3) REFERENCES development.municipios(clave_municipio),
    cve_geo CHAR(5) NOT NULL,
    serie_usv SMALLINT REFERENCES development.series(serie_usv),
    cobertura NUMERIC(10,2) NOT NULL,
    cob_c2_id SMALLINT REFERENCES development.coberturas_c2(cob_c2_id)
);

--Se crea una tabla para cargar la información de la tabla \sub_natural\bd_usv_c2_mun.csv
CREATE TABLE development.bd_usv_c2_mun (
    cve_ent CHAR(2) NOT NULL,
    nom_ent VARCHAR(32),
    cve_mun CHAR(3) NOT NULL,
    nom_mun VARCHAR(80),
    mun_ori VARCHAR(80),
    id_region SMALLINT NOT NULL,
    region VARCHAR(20) NOT NULL,
    cve_geo CHAR(5) NOT NULL,
    clasifica SMALLINT NOT NULL,
    serie_usv SMALLINT NOT NULL,
    cob_1 NUMERIC(10,2),
    cob_2 NUMERIC(10,2),
    cob_3 NUMERIC(10,2),
    cob_4 NUMERIC(10,2),
    cob_5 NUMERIC(10,2),
    cob_6 NUMERIC(10,2),
    cob_7 NUMERIC(10,2),
    cob_8 NUMERIC(10,2),
    cob_9 NUMERIC(10,2),
    cob_10 NUMERIC(10,2),
    cob_11 NUMERIC(10,2),
    cob_12 NUMERIC(10,2),
    cob_13 NUMERIC(10,2),
    cob_14 NUMERIC(10,2),
    cob_15 NUMERIC(10,2),
    cob_16 NUMERIC(10,2)
);

--Se crea una tabla para cargar la información de la tabla \sub_natural\bd_anp_c2_mun.csv
CREATE TABLE development.bd_anp_c2_mun (
    cve_ent CHAR(2) NOT NULL,
    nom_ent VARCHAR(32),
    cve_mun CHAR(3) NOT NULL,
    nom_mun VARCHAR(80),
    mun_ori VARCHAR(80),
    id_region SMALLINT NOT NULL,
    region VARCHAR(20) NOT NULL,
    cve_geo CHAR(5) NOT NULL,
    clasifica SMALLINT NOT NULL,
    serie_usv SMALLINT NOT NULL,
    area_anp NUMERIC(10,2),
    cob_1 NUMERIC(10,2),
    cob_2 NUMERIC(10,2),
    cob_3 NUMERIC(10,2),
    cob_4 NUMERIC(10,2),
    cob_5 NUMERIC(10,2),
    cob_6 NUMERIC(10,2),
    cob_7 NUMERIC(10,2),
    cob_8 NUMERIC(10,2),
    cob_9 NUMERIC(10,2),
    cob_10 NUMERIC(10,2),
    cob_11 NUMERIC(10,2),
    cob_12 NUMERIC(10,2),
    cob_13 NUMERIC(10,2),
    cob_14 NUMERIC(10,2),
    cob_15 NUMERIC(10,2),
    cob_16 NUMERIC(10,2)
);

--Se crea una tabla para cargar la información de la tabla \sub_natural\bd_deg_c2_mun.csv
CREATE TABLE development.bd_deg_c2_mun (
    cve_ent CHAR(2) NOT NULL,
    nom_ent VARCHAR(32),
    cve_mun CHAR(3) NOT NULL,
    nom_mun VARCHAR(80),
    mun_ori VARCHAR(80),
    id_region SMALLINT NOT NULL,
    region VARCHAR(20) NOT NULL,
    cve_geo CHAR(5) NOT NULL,
    clasifica SMALLINT NOT NULL,
    serie_usv SMALLINT NOT NULL,
    area_anp NUMERIC(10,2),
    cob_1 NUMERIC(10,2),
    cob_2 NUMERIC(10,2),
    cob_3 NUMERIC(10,2),
    cob_4 NUMERIC(10,2),
    cob_5 NUMERIC(10,2),
    cob_6 NUMERIC(10,2),
    cob_7 NUMERIC(10,2),
    cob_8 NUMERIC(10,2),
    cob_9 NUMERIC(10,2),
    cob_10 NUMERIC(10,2),
    cob_11 NUMERIC(10,2),
    cob_12 NUMERIC(10,2),
    cob_13 NUMERIC(10,2),
    cob_14 NUMERIC(10,2),
    cob_15 NUMERIC(10,2),
    cob_16 NUMERIC(10,2)
);

--Se crean vistas para reproducir la información proporcionada por el equipo LANCIS
--Ya que posiblemente sean la información más consultada

--USV por municipio y Cobertura clasificación 2
CREATE VIEW development.usv_municipios_clasifica_2 AS
SELECT usv_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4,
    SUM(usv_municipios_coberturas.cobertura) AS ha
FROM development.usv_municipios_coberturas
JOIN development.estados ON usv_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.series ON usv_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.municipios ON usv_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.coberturas_c2 ON usv_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN development.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
GROUP BY usv_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4;

--USV por municipio y Cobertura clasificación 3
CREATE VIEW development.usv_municipios_clasifica_3 AS
SELECT usv_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c3.cobertura_c3,
    SUM(usv_municipios_coberturas.cobertura) AS ha
FROM development.usv_municipios_coberturas
JOIN development.estados ON usv_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.series ON usv_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.municipios ON usv_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.coberturas_c2 ON usv_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN development.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
GROUP BY usv_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c3.cobertura_c3;

--USV por municipio y Cobertura clasificación 4
CREATE VIEW development.usv_municipios_clasifica_4 AS
SELECT usv_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c4.cobertura_c4,
    SUM(usv_municipios_coberturas.cobertura) AS ha
FROM development.usv_municipios_coberturas
JOIN development.estados ON usv_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.series ON usv_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.municipios ON usv_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.coberturas_c2 ON usv_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
GROUP BY usv_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c4.cobertura_c4;

--USV por región y Cobertura clasificación 2
CREATE VIEW development.usv_regiones_clasifica_2 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4,
    SUM(usv_municipios_coberturas.cobertura) AS ha
FROM development.usv_municipios_coberturas
JOIN development.estados ON usv_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.municipios ON usv_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.series ON usv_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.coberturas_c2 ON usv_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN development.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4;

--USV por región y Cobertura clasificación 3
CREATE VIEW development.usv_regiones_clasifica_3 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c3.cobertura_c3,
    SUM(usv_municipios_coberturas.cobertura) AS ha
FROM development.usv_municipios_coberturas
JOIN development.estados ON usv_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.municipios ON usv_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.series ON usv_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.coberturas_c2 ON usv_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN development.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c3.cobertura_c3;

--USV por región y Cobertura clasificación 4
CREATE VIEW development.usv_regiones_clasifica_4 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c4.cobertura_c4,
    SUM(usv_municipios_coberturas.cobertura) AS ha
FROM development.usv_municipios_coberturas
JOIN development.estados ON usv_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.municipios ON usv_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.series ON usv_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.coberturas_c2 ON usv_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c4.cobertura_c4;

--Se crean vistas para reproducir la información proporcionada por el equipo LANCIS
--Ya que posiblemente sean la información más consultada

--anp por municipio y Cobertura clasificación 2
CREATE VIEW development.anp_municipios_clasifica_2 AS
SELECT anp_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4,
    SUM(anp_municipios_coberturas.cobertura) AS ha
FROM development.anp_municipios_coberturas
JOIN development.estados ON anp_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.series ON anp_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.municipios ON anp_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.coberturas_c2 ON anp_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN development.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
GROUP BY anp_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4;

--anp por municipio y Cobertura clasificación 3
CREATE VIEW development.anp_municipios_clasifica_3 AS
SELECT anp_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c3.cobertura_c3,
    SUM(anp_municipios_coberturas.cobertura) AS ha
FROM development.anp_municipios_coberturas
JOIN development.estados ON anp_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.series ON anp_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.municipios ON anp_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.coberturas_c2 ON anp_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN development.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
GROUP BY anp_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c3.cobertura_c3;

--anp por municipio y Cobertura clasificación 4
CREATE VIEW development.anp_municipios_clasifica_4 AS
SELECT anp_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c4.cobertura_c4,
    SUM(anp_municipios_coberturas.cobertura) AS ha
FROM development.anp_municipios_coberturas
JOIN development.estados ON anp_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.series ON anp_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.municipios ON anp_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.coberturas_c2 ON anp_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
GROUP BY anp_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c4.cobertura_c4;

--anp por región y Cobertura clasificación 2
CREATE VIEW development.anp_regiones_clasifica_2 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4,
    SUM(anp_municipios_coberturas.cobertura) AS ha
FROM development.anp_municipios_coberturas
JOIN development.estados ON anp_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.municipios ON anp_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.series ON anp_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.coberturas_c2 ON anp_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN development.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4;

--anp por región y Cobertura clasificación 3
CREATE VIEW development.anp_regiones_clasifica_3 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c3.cobertura_c3,
    SUM(anp_municipios_coberturas.cobertura) AS ha
FROM development.anp_municipios_coberturas
JOIN development.estados ON anp_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.municipios ON anp_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.series ON anp_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.coberturas_c2 ON anp_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN development.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c3.cobertura_c3;

--anp por región y Cobertura clasificación 4
CREATE VIEW development.anp_regiones_clasifica_4 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c4.cobertura_c4,
    SUM(anp_municipios_coberturas.cobertura) AS ha
FROM development.anp_municipios_coberturas
JOIN development.estados ON anp_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.municipios ON anp_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.series ON anp_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.coberturas_c2 ON anp_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c4.cobertura_c4;

--Se crean vistas para reproducir la información proporcionada por el equipo LANCIS
--Ya que posiblemente sean la información más consultada

--deg por municipio y Cobertura clasificación 2
CREATE VIEW development.deg_municipios_clasifica_2 AS
SELECT deg_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4,
    SUM(deg_municipios_coberturas.cobertura) AS ha
FROM development.deg_municipios_coberturas
JOIN development.estados ON deg_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.series ON deg_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.municipios ON deg_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.coberturas_c2 ON deg_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN development.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
GROUP BY deg_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4;

--deg por municipio y Cobertura clasificación 3
CREATE VIEW development.deg_municipios_clasifica_3 AS
SELECT deg_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c3.cobertura_c3,
    SUM(deg_municipios_coberturas.cobertura) AS ha
FROM development.deg_municipios_coberturas
JOIN development.estados ON deg_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.series ON deg_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.municipios ON deg_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.coberturas_c2 ON deg_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN development.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
GROUP BY deg_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c3.cobertura_c3;

--deg por municipio y Cobertura clasificación 4
CREATE VIEW development.deg_municipios_clasifica_4 AS
SELECT deg_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c4.cobertura_c4,
    SUM(deg_municipios_coberturas.cobertura) AS ha
FROM development.deg_municipios_coberturas
JOIN development.estados ON deg_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.series ON deg_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.municipios ON deg_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.coberturas_c2 ON deg_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
GROUP BY deg_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c4.cobertura_c4;

--deg por región y Cobertura clasificación 2
CREATE VIEW development.deg_regiones_clasifica_2 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4,
    SUM(deg_municipios_coberturas.cobertura) AS ha
FROM development.deg_municipios_coberturas
JOIN development.estados ON deg_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.municipios ON deg_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.series ON deg_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.coberturas_c2 ON deg_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN development.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4;

--deg por región y Cobertura clasificación 3
CREATE VIEW development.deg_regiones_clasifica_3 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c3.cobertura_c3,
    SUM(deg_municipios_coberturas.cobertura) AS ha
FROM development.deg_municipios_coberturas
JOIN development.estados ON deg_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.municipios ON deg_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.series ON deg_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.coberturas_c2 ON deg_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN development.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c3.cobertura_c3;

--deg por región y Cobertura clasificación 4
CREATE VIEW development.deg_regiones_clasifica_4 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c4.cobertura_c4,
    SUM(deg_municipios_coberturas.cobertura) AS ha
FROM development.deg_municipios_coberturas
JOIN development.estados ON deg_municipios_coberturas.cve_ent = estados.clave_entidad
JOIN development.municipios ON deg_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN development.regiones ON municipios.id_region = regiones.id_region
JOIN development.series ON deg_municipios_coberturas.serie_usv = series.serie_usv
JOIN development.coberturas_c2 ON deg_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN development.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c4.cobertura_c4;