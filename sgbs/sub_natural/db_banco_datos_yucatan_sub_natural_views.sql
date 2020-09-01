--Se crean vistas para reproducir la información proporcionada por el equipo LANCIS
--Ya que posiblemente sean la información más consultada

--USV por municipio y Cobertura clasificación 2
CREATE VIEW sub_natural.usv_municipios_clasifica_2 AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    d.entidad,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4
FROM sub_natural.usv_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.ct_coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    a.cve_ent,
    a.cve_mun,
    d.entidad,
    b.municipio,
    c.cve_reg,
    a.serie,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4;

--USV por municipio y Cobertura clasificación 3
CREATE VIEW sub_natural.usv_municipios_clasifica_3 AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    d.entidad,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    g.cobertura_c3
FROM sub_natural.usv_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.ct_coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    a.cve_ent,
    a.cve_mun,
    d.entidad,
    b.municipio,
    c.cve_reg,
    a.serie,
    g.cobertura_c3;

--USV por municipio y Cobertura clasificación 4
CREATE VIEW sub_natural.usv_municipios_clasifica_4 AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    d.entidad,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    f.cobertura_c4
FROM sub_natural.usv_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
GROUP BY
    a.cve_ent,
    a.cve_mun,
    d.entidad,
    b.municipio,
    c.cve_reg,
    a.serie,
    f.cobertura_c4;

--USV por región y Cobertura clasificación 2
CREATE VIEW sub_natural.usv_regiones_clasifica_2 AS
SELECT
    c.cve_reg,
    d.entidad,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4
FROM sub_natural.usv_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.ct_coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    c.cve_reg,
    d.entidad,
    a.serie,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4;

--USV por región y Cobertura clasificación 3
CREATE VIEW sub_natural.usv_regiones_clasifica_3 AS
SELECT
    c.cve_reg,
    d.entidad,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    g.cobertura_c3
FROM sub_natural.usv_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.ct_coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    c.cve_reg,
    d.entidad,
    a.serie,
    g.cobertura_c3;

--USV por región y Cobertura clasificación 4
CREATE VIEW sub_natural.usv_regiones_clasifica_4 AS
SELECT
    c.cve_reg,
    d.entidad,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    f.cobertura_c4
FROM sub_natural.usv_municipios_coberturas AS a 
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
GROUP BY
    c.cve_reg,
    d.entidad,
    a.serie,
    f.cobertura_c4;

--Se crean vistas para reproducir la información proporcionada por el equipo LANCIS
--Ya que posiblemente sean la información más consultada

--anp por municipio y Cobertura clasificación 2
CREATE VIEW sub_natural.anp_municipios_clasifica_2 AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    d.entidad,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4
FROM sub_natural.anp_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.ct_coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    a.cve_ent,
    a.cve_mun,
    d.entidad,
    b.municipio,
    c.cve_reg,
    a.serie,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4;

--anp por municipio y Cobertura clasificación 3
CREATE VIEW sub_natural.anp_municipios_clasifica_3 AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    d.entidad,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    g.cobertura_c3
FROM sub_natural.anp_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.ct_coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    a.cve_ent,
    a.cve_mun,
    d.entidad,
    b.municipio,
    c.cve_reg,
    a.serie,
    g.cobertura_c3;

--anp por municipio y Cobertura clasificación 4
CREATE VIEW sub_natural.anp_municipios_clasifica_4 AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    d.entidad,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    f.cobertura_c4
FROM sub_natural.anp_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
GROUP BY
    a.cve_ent,
    a.cve_mun,
    d.entidad,
    b.municipio,
    c.cve_reg,
    a.serie,
    f.cobertura_c4;

--anp por región y Cobertura clasificación 2
CREATE VIEW sub_natural.anp_regiones_clasifica_2 AS
SELECT
    c.cve_reg,
    d.entidad,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4
FROM sub_natural.anp_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.ct_coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    c.cve_reg,
    d.entidad,
    a.serie,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4;

--anp por región y Cobertura clasificación 3
CREATE VIEW sub_natural.anp_regiones_clasifica_3 AS
SELECT
    c.cve_reg,
    d.entidad,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    g.cobertura_c3
FROM sub_natural.anp_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.ct_coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    c.cve_reg,
    d.entidad,
    a.serie,
    g.cobertura_c3;

--anp por región y Cobertura clasificación 4
CREATE VIEW sub_natural.anp_regiones_clasifica_4 AS
SELECT
    c.cve_reg,
    d.entidad,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    f.cobertura_c4
FROM sub_natural.anp_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
GROUP BY
    c.cve_reg,
    d.entidad,
    a.serie,
    f.cobertura_c4;

--Se crean vistas para reproducir la información proporcionada por el equipo LANCIS
--Ya que posiblemente sean la información más consultada

--deg por municipio y Cobertura clasificación 2
CREATE VIEW sub_natural.deg_municipios_clasifica_2 AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    d.entidad,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4
FROM sub_natural.deg_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.ct_coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    a.cve_ent,
    a.cve_mun,
    d.entidad,
    b.municipio,
    c.cve_reg,
    a.serie,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4;

--deg por municipio y Cobertura clasificación 3
CREATE VIEW sub_natural.deg_municipios_clasifica_3 AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    d.entidad,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    g.cobertura_c3
FROM sub_natural.deg_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.ct_coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    a.cve_ent,
    a.cve_mun,
    d.entidad,
    b.municipio,
    c.cve_reg,
    a.serie,
    g.cobertura_c3;

--deg por municipio y Cobertura clasificación 4
CREATE VIEW sub_natural.deg_municipios_clasifica_4 AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    d.entidad,
    b.municipio,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    f.cobertura_c4
FROM sub_natural.deg_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
GROUP BY
    a.cve_ent,
    a.cve_mun,
    d.entidad,
    b.municipio,
    c.cve_reg,
    a.serie,
    f.cobertura_c4;

--deg por región y Cobertura clasificación 2
CREATE VIEW sub_natural.deg_regiones_clasifica_2 AS
SELECT
    c.cve_reg,
    d.entidad,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4
FROM sub_natural.deg_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.ct_coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    c.cve_reg,
    d.entidad,
    a.serie,
    e.cobertura_c2,
    g.cobertura_c3,
    f.cobertura_c4;

--deg por región y Cobertura clasificación 3
CREATE VIEW sub_natural.deg_regiones_clasifica_3 AS
SELECT
    c.cve_reg,
    d.entidad,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    g.cobertura_c3
FROM sub_natural.deg_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
JOIN sub_natural.ct_coberturas_c3 AS g USING(cob_c3_id)
GROUP BY
    c.cve_reg,
    d.entidad,
    a.serie,
    g.cobertura_c3;

--deg por región y Cobertura clasificación 4
CREATE VIEW sub_natural.deg_regiones_clasifica_4 AS
SELECT
    c.cve_reg,
    d.entidad,
    c.region,
    a.serie,
    SUM(a.cobertura) AS hectareas,
    f.cobertura_c4
FROM sub_natural.deg_municipios_coberturas AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
JOIN sub_natural.ct_coberturas_c2 AS e USING(cob_c2_id)
JOIN sub_natural.ct_coberturas_c4 AS f USING(cob_c4_id)
GROUP BY
    c.cve_reg,
    d.entidad,
    a.serie,
    f.cobertura_c4;