--Se crean vistas para reproducir la información proporcionada por el equipo LANCIS
--Ya que posiblemente sean la información más consultada

--USV por municipio y Cobertura clasificación 2
CREATE VIEW sub_natural.usv_municipios_clasifica_2 AS
SELECT
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4
FROM sub_natural.usv_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.id_region,
    a.serie,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4;

--USV por municipio y Cobertura clasificación 3
CREATE VIEW sub_natural.usv_municipios_clasifica_3 AS
SELECT
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    g.cobertura_c3
FROM sub_natural.usv_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.id_region,
    a.serie,
    g.cobertura_c3;

--USV por municipio y Cobertura clasificación 4
CREATE VIEW sub_natural.usv_municipios_clasifica_4 AS
SELECT
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    f.cobertura_c4
FROM sub_natural.usv_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
GROUP BY
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.id_region,
    a.serie,
    f.cobertura_c4;

--USV por región y Cobertura clasificación 2
CREATE VIEW sub_natural.usv_regiones_clasifica_2 AS
SELECT
    c.id_region,
    d.entidad_federativa,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4
FROM sub_natural.usv_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    c.id_region,
    d.entidad_federativa,
    a.serie,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4;

--USV por región y Cobertura clasificación 3
CREATE VIEW sub_natural.usv_regiones_clasifica_3 AS
SELECT
    c.id_region,
    d.entidad_federativa,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    g.cobertura_c3
FROM sub_natural.usv_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    c.id_region,
    d.entidad_federativa,
    a.serie,
    g.cobertura_c3;

--USV por región y Cobertura clasificación 4
CREATE VIEW sub_natural.usv_regiones_clasifica_4 AS
SELECT
    c.id_region,
    d.entidad_federativa,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    f.cobertura_c4
FROM sub_natural.usv_municipios_coberturas AS a 
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
GROUP BY
    c.id_region,
    d.entidad_federativa,
    a.serie,
    f.cobertura_c4;

--Se crean vistas para reproducir la información proporcionada por el equipo LANCIS
--Ya que posiblemente sean la información más consultada

--anp por municipio y Cobertura clasificación 2
CREATE VIEW sub_natural.anp_municipios_clasifica_2 AS
SELECT
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4
FROM sub_natural.anp_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.id_region,
    a.serie,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4;

--anp por municipio y Cobertura clasificación 3
CREATE VIEW sub_natural.anp_municipios_clasifica_3 AS
SELECT
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    g.cobertura_c3
FROM sub_natural.anp_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.id_region,
    a.serie,
    g.cobertura_c3;

--anp por municipio y Cobertura clasificación 4
CREATE VIEW sub_natural.anp_municipios_clasifica_4 AS
SELECT
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    f.cobertura_c4
FROM sub_natural.anp_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
GROUP BY
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.id_region,
    a.serie,
    f.cobertura_c4;

--anp por región y Cobertura clasificación 2
CREATE VIEW sub_natural.anp_regiones_clasifica_2 AS
SELECT
    c.id_region,
    d.entidad_federativa,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4
FROM sub_natural.anp_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    c.id_region,
    d.entidad_federativa,
    a.serie,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4;

--anp por región y Cobertura clasificación 3
CREATE VIEW sub_natural.anp_regiones_clasifica_3 AS
SELECT
    c.id_region,
    d.entidad_federativa,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    g.cobertura_c3
FROM sub_natural.anp_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    c.id_region,
    d.entidad_federativa,
    a.serie,
    g.cobertura_c3;

--anp por región y Cobertura clasificación 4
CREATE VIEW sub_natural.anp_regiones_clasifica_4 AS
SELECT
    c.id_region,
    d.entidad_federativa,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    f.cobertura_c4
FROM sub_natural.anp_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
GROUP BY
    c.id_region,
    d.entidad_federativa,
    a.serie,
    f.cobertura_c4;

--Se crean vistas para reproducir la información proporcionada por el equipo LANCIS
--Ya que posiblemente sean la información más consultada

--deg por municipio y Cobertura clasificación 2
CREATE VIEW sub_natural.deg_municipios_clasifica_2 AS
SELECT
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4
FROM sub_natural.deg_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.id_region,
    a.serie,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4;

--deg por municipio y Cobertura clasificación 3
CREATE VIEW sub_natural.deg_municipios_clasifica_3 AS
SELECT
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    g.cobertura_c3
FROM sub_natural.deg_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.id_region,
    a.serie,
    g.cobertura_c3;

--deg por municipio y Cobertura clasificación 4
CREATE VIEW sub_natural.deg_municipios_clasifica_4 AS
SELECT
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    f.cobertura_c4
FROM sub_natural.deg_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
GROUP BY
    a.cve_geo,
    d.entidad_federativa,
    b.municipio,
    c.id_region,
    a.serie,
    f.cobertura_c4;

--deg por región y Cobertura clasificación 2
CREATE VIEW sub_natural.deg_regiones_clasifica_2 AS
SELECT
    c.id_region,
    d.entidad_federativa,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4
FROM sub_natural.deg_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    c.id_region,
    d.entidad_federativa,
    a.serie,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4;

--deg por región y Cobertura clasificación 3
CREATE VIEW sub_natural.deg_regiones_clasifica_3 AS
SELECT
    c.id_region,
    d.entidad_federativa,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    g.cobertura_c3
FROM sub_natural.deg_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    c.id_region,
    d.entidad_federativa,
    a.serie,
    g.cobertura_c3;

--deg por región y Cobertura clasificación 4
CREATE VIEW sub_natural.deg_regiones_clasifica_4 AS
SELECT
    c.id_region,
    d.entidad_federativa,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    f.cobertura_c4
FROM sub_natural.deg_municipios_coberturas AS a
JOIN general.municipios AS b USING(cve_mun)
JOIN general.regiones AS c USING(id_region)
JOIN general.estados AS d USING(cve_ent)
JOIN sub_natural.coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.coberturas_c4 AS f USING(cob_c4_id)
GROUP BY
    c.id_region,
    d.entidad_federativa,
    a.serie,
    f.cobertura_c4;