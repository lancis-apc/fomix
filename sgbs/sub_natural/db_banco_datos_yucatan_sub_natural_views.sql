--Se crean vistas para reproducir la información proporcionada por el equipo LANCIS
--Ya que posiblemente sean la información más consultada

--USV por municipio y Cobertura clasificación 2
CREATE VIEW sub_natural.usv_municipios_clasifica_2 AS
SELECT usv_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4,
    SUM(usv_municipios_coberturas.cobertura) AS ha
FROM sub_natural.usv_municipios_coberturas
JOIN sub_natural.series ON usv_municipios_coberturas.serie_usv = series.serie_usv
JOIN general.municipios ON usv_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.coberturas_c2 ON usv_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN sub_natural.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY usv_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4;

--USV por municipio y Cobertura clasificación 3
CREATE VIEW sub_natural.usv_municipios_clasifica_3 AS
SELECT usv_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c3.cobertura_c3,
    SUM(usv_municipios_coberturas.cobertura) AS ha
FROM sub_natural.usv_municipios_coberturas
JOIN sub_natural.series ON usv_municipios_coberturas.serie_usv = series.serie_usv
JOIN general.municipios ON usv_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.coberturas_c2 ON usv_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN sub_natural.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY usv_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c3.cobertura_c3;

--USV por municipio y Cobertura clasificación 4
CREATE VIEW sub_natural.usv_municipios_clasifica_4 AS
SELECT usv_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c4.cobertura_c4,
    SUM(usv_municipios_coberturas.cobertura) AS ha
FROM sub_natural.usv_municipios_coberturas
JOIN sub_natural.series ON usv_municipios_coberturas.serie_usv = series.serie_usv
JOIN general.municipios ON usv_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.coberturas_c2 ON usv_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY usv_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c4.cobertura_c4;

--USV por región y Cobertura clasificación 2
CREATE VIEW sub_natural.usv_regiones_clasifica_2 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4,
    SUM(usv_municipios_coberturas.cobertura) AS ha
FROM sub_natural.usv_municipios_coberturas
JOIN general.municipios ON usv_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.series ON usv_municipios_coberturas.serie_usv = series.serie_usv
JOIN sub_natural.coberturas_c2 ON usv_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN sub_natural.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4;

--USV por región y Cobertura clasificación 3
CREATE VIEW sub_natural.usv_regiones_clasifica_3 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c3.cobertura_c3,
    SUM(usv_municipios_coberturas.cobertura) AS ha
FROM sub_natural.usv_municipios_coberturas
JOIN general.municipios ON usv_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.series ON usv_municipios_coberturas.serie_usv = series.serie_usv
JOIN sub_natural.coberturas_c2 ON usv_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN sub_natural.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c3.cobertura_c3;

--USV por región y Cobertura clasificación 4
CREATE VIEW sub_natural.usv_regiones_clasifica_4 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c4.cobertura_c4,
    SUM(usv_municipios_coberturas.cobertura) AS ha
FROM sub_natural.usv_municipios_coberturas
JOIN general.municipios ON usv_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.series ON usv_municipios_coberturas.serie_usv = series.serie_usv
JOIN sub_natural.coberturas_c2 ON usv_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c4.cobertura_c4;

--Se crean vistas para reproducir la información proporcionada por el equipo LANCIS
--Ya que posiblemente sean la información más consultada

--anp por municipio y Cobertura clasificación 2
CREATE VIEW sub_natural.anp_municipios_clasifica_2 AS
SELECT anp_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4,
    SUM(anp_municipios_coberturas.cobertura) AS ha
FROM sub_natural.anp_municipios_coberturas
JOIN sub_natural.series ON anp_municipios_coberturas.serie_usv = series.serie_usv
JOIN general.municipios ON anp_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.coberturas_c2 ON anp_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN sub_natural.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY anp_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4;

--anp por municipio y Cobertura clasificación 3
CREATE VIEW sub_natural.anp_municipios_clasifica_3 AS
SELECT anp_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c3.cobertura_c3,
    SUM(anp_municipios_coberturas.cobertura) AS ha
FROM sub_natural.anp_municipios_coberturas
JOIN sub_natural.series ON anp_municipios_coberturas.serie_usv = series.serie_usv
JOIN general.municipios ON anp_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.coberturas_c2 ON anp_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN sub_natural.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY anp_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c3.cobertura_c3;

--anp por municipio y Cobertura clasificación 4
CREATE VIEW sub_natural.anp_municipios_clasifica_4 AS
SELECT anp_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c4.cobertura_c4,
    SUM(anp_municipios_coberturas.cobertura) AS ha
FROM sub_natural.anp_municipios_coberturas
JOIN sub_natural.series ON anp_municipios_coberturas.serie_usv = series.serie_usv
JOIN general.municipios ON anp_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.coberturas_c2 ON anp_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY anp_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c4.cobertura_c4;

--anp por región y Cobertura clasificación 2
CREATE VIEW sub_natural.anp_regiones_clasifica_2 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4,
    SUM(anp_municipios_coberturas.cobertura) AS ha
FROM sub_natural.anp_municipios_coberturas
JOIN general.municipios ON anp_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.series ON anp_municipios_coberturas.serie_usv = series.serie_usv
JOIN sub_natural.coberturas_c2 ON anp_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN sub_natural.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4;

--anp por región y Cobertura clasificación 3
CREATE VIEW sub_natural.anp_regiones_clasifica_3 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c3.cobertura_c3,
    SUM(anp_municipios_coberturas.cobertura) AS ha
FROM sub_natural.anp_municipios_coberturas
JOIN general.municipios ON anp_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.series ON anp_municipios_coberturas.serie_usv = series.serie_usv
JOIN sub_natural.coberturas_c2 ON anp_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN sub_natural.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c3.cobertura_c3;

--anp por región y Cobertura clasificación 4
CREATE VIEW sub_natural.anp_regiones_clasifica_4 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c4.cobertura_c4,
    SUM(anp_municipios_coberturas.cobertura) AS ha
FROM sub_natural.anp_municipios_coberturas
JOIN general.municipios ON anp_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.series ON anp_municipios_coberturas.serie_usv = series.serie_usv
JOIN sub_natural.coberturas_c2 ON anp_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c4.cobertura_c4;

--Se crean vistas para reproducir la información proporcionada por el equipo LANCIS
--Ya que posiblemente sean la información más consultada

--deg por municipio y Cobertura clasificación 2
CREATE VIEW sub_natural.deg_municipios_clasifica_2 AS
SELECT deg_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4,
    SUM(deg_municipios_coberturas.cobertura) AS ha
FROM sub_natural.deg_municipios_coberturas
JOIN sub_natural.series ON deg_municipios_coberturas.serie_usv = series.serie_usv
JOIN general.municipios ON deg_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.coberturas_c2 ON deg_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN sub_natural.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY deg_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4;

--deg por municipio y Cobertura clasificación 3
CREATE VIEW sub_natural.deg_municipios_clasifica_3 AS
SELECT deg_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c3.cobertura_c3,
    SUM(deg_municipios_coberturas.cobertura) AS ha
FROM sub_natural.deg_municipios_coberturas
JOIN sub_natural.series ON deg_municipios_coberturas.serie_usv = series.serie_usv
JOIN general.municipios ON deg_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.coberturas_c2 ON deg_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN sub_natural.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY deg_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c3.cobertura_c3;

--deg por municipio y Cobertura clasificación 4
CREATE VIEW sub_natural.deg_municipios_clasifica_4 AS
SELECT deg_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.region,
    series.serie,
    coberturas_c4.cobertura_c4,
    SUM(deg_municipios_coberturas.cobertura) AS ha
FROM sub_natural.deg_municipios_coberturas
JOIN sub_natural.series ON deg_municipios_coberturas.serie_usv = series.serie_usv
JOIN general.municipios ON deg_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.coberturas_c2 ON deg_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY deg_municipios_coberturas.cve_geo,
    estados.entidad_federativa,
    municipios.municipio,
    regiones.id_region,
    series.serie,
    coberturas_c4.cobertura_c4;

--deg por región y Cobertura clasificación 2
CREATE VIEW sub_natural.deg_regiones_clasifica_2 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4,
    SUM(deg_municipios_coberturas.cobertura) AS ha
FROM sub_natural.deg_municipios_coberturas
JOIN general.municipios ON deg_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.series ON deg_municipios_coberturas.serie_usv = series.serie_usv
JOIN sub_natural.coberturas_c2 ON deg_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN sub_natural.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c2.cobertura_c2,
    coberturas_c3.cobertura_c3,
    coberturas_c4.cobertura_c4;

--deg por región y Cobertura clasificación 3
CREATE VIEW sub_natural.deg_regiones_clasifica_3 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c3.cobertura_c3,
    SUM(deg_municipios_coberturas.cobertura) AS ha
FROM sub_natural.deg_municipios_coberturas
JOIN general.municipios ON deg_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.series ON deg_municipios_coberturas.serie_usv = series.serie_usv
JOIN sub_natural.coberturas_c2 ON deg_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN sub_natural.coberturas_c3 ON coberturas_c4.cob_c3_id = coberturas_c3.cob_c3_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c3.cobertura_c3;

--deg por región y Cobertura clasificación 4
CREATE VIEW sub_natural.deg_regiones_clasifica_4 AS
SELECT regiones.id_region,
    estados.entidad_federativa,
    regiones.region,
    series.serie,
    coberturas_c4.cobertura_c4,
    SUM(deg_municipios_coberturas.cobertura) AS ha
FROM sub_natural.deg_municipios_coberturas
JOIN general.municipios ON deg_municipios_coberturas.cve_mun = municipios.clave_municipio
JOIN general.regiones ON municipios.id_region = regiones.id_region
JOIN sub_natural.series ON deg_municipios_coberturas.serie_usv = series.serie_usv
JOIN sub_natural.coberturas_c2 ON deg_municipios_coberturas.cob_c2_id = coberturas_c2.cob_c2_id
JOIN sub_natural.coberturas_c4 ON coberturas_c2.cob_c4_id = coberturas_c4.cob_c4_id
JOIN general.estados ON municipios.cve_ent = estados.clave_entidad
GROUP BY regiones.id_region,
    estados.entidad_federativa,
    series.serie,
    coberturas_c4.cobertura_c4;