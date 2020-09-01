/*
    *************************************************************
    Esta sección es para las vistas del componente socioeconómico
    *************************************************************
*/

-- Se crea vista para los grados del archivo dd_ageb_caract.csv
CREATE VIEW sub_socioeconomico.view_ageb_caract_pob AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    f.entidad,
    a.cve_ageb,
    a.fol_ageb,
    b.municipio,
    c.region,
    a.serie,
    a.habitantes,
    d.descripcion,
    e.descripcion AS ageb
FROM sub_socioeconomico.ageb_caract_pob AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_ageb_caract_pob AS d USING(acp_id)
JOIN sub_socioeconomico.ct_ageb_caract_nom_loc AS e USING (acnl_id)
JOIN general.ct_entidades AS f USING(cve_ent);

-- Se crea vista para los grados del archivo dd_ageb_caract.csv
CREATE VIEW sub_socioeconomico.view_ageb_caract_viv AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    f.entidad,
    a.cve_ageb,
    a.fol_ageb,
    b.municipio,
    c.region,
    a.serie,
    a.viviendas,
    d.descripcion,
    e.descripcion AS ageb
FROM sub_socioeconomico.ageb_caract_viv AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_ageb_caract_viv AS d USING(acv_id)
JOIN sub_socioeconomico.ct_ageb_caract_nom_loc AS e USING (acnl_id)
JOIN general.ct_entidades AS f USING(cve_ent);

-- Se crea vista para los grados del archivo dd_ageb_caract.csv
CREATE VIEW sub_socioeconomico.view_ageb_caract_prom_hij AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    f.entidad,
    a.cve_ageb,
    a.fol_ageb,
    b.municipio,
    c.region,
    a.serie,
    a.promedio,
    d.descripcion,
    e.descripcion AS ageb
FROM sub_socioeconomico.ageb_caract_prom_hij AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_ageb_caract_prom_hij AS d USING(acph_id)
JOIN sub_socioeconomico.ct_ageb_caract_nom_loc AS e USING (acnl_id)
JOIN general.ct_entidades AS f USING(cve_ent);

-- Se crea vista para los grados del archivo dd_ageb_caract.csv
CREATE VIEW sub_socioeconomico.view_ageb_caract_prom_esc AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    f.entidad,
    a.cve_ageb,
    a.fol_ageb,
    b.municipio,
    c.region,
    a.serie,
    a.promedio,
    d.descripcion,
    e.descripcion AS ageb
FROM sub_socioeconomico.ageb_caract_prom_esc AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_ageb_caract_prom_esc AS d USING(acpe_id)
JOIN sub_socioeconomico.ct_ageb_caract_nom_loc AS e USING (acnl_id)
JOIN general.ct_entidades AS f USING(cve_ent);

-- Se crea vista para los grados del archivo bd_ageb_diag_pobr_16jul20.csv
CREATE VIEW sub_socioeconomico.view_ageb_diag_pobr AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    g.entidad,
    a.fol_ageb,
    b.municipio,
    c.region,
    a.serie,
    d.rango,
    e.categoria,
    f.descripcion
FROM sub_socioeconomico.ageb_diag_pobr AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_ageb_diag_pobr_r AS d USING(adpr_id)
JOIN sub_socioeconomico.ct_ageb_diag_pobr_c AS e USING(adpc_id)
JOIN sub_socioeconomico.ct_ageb_diag_pobr AS f USING(adp_id)
JOIN general.ct_entidades AS g USING(cve_ent);

-- Se crea vista para los grados del archivo bd_ageb_diag_rezago_16jul20.csv
CREATE VIEW sub_socioeconomico.view_ageb_diag_rezago AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    f.entidad,
    a.cve_ageb,
    a.fol_ageb,
    b.municipio,
    c.region,
    a.serie,
    a.habitantes,
    a.viviendas,
    d.categoria AS grado,
    e.descripcion
FROM sub_socioeconomico.ageb_diag_rezago AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_ageb_diag_pobr_c AS d USING(adpc_id)
JOIN sub_socioeconomico.ct_ageb_diag_rezago AS e USING(adr_id)
JOIN general.ct_entidades AS f USING(cve_ent);

-- Se crea vista para los grados del archivo bd_idp.csv
CREATE VIEW sub_socioeconomico.view_idp_grados AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.grado,
    d.descripcion
FROM sub_socioeconomico.idp_grados AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_idp_grados AS d USING(gidp_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para las categorias del archivo bd_idp.csv
CREATE VIEW sub_socioeconomico.view_idp AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    f.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.indice,
    d.categoria,
    e.descripcion
FROM sub_socioeconomico.idp AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_idp_categorias AS d USING(cidp_id)
JOIN sub_socioeconomico.ct_idp AS e USING(idp_id)
JOIN general.ct_entidades AS f USING(cve_ent);

-- Se crea vista para rtp del archivo bd_idp.csv
CREATE VIEW sub_socioeconomico.view_idp_rtp AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.rtp,
    d.descripcion
FROM sub_socioeconomico.idp_rtp AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_idp_rtp AS d USING(rtp_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para la población con información de bd_idp.csv y quinquenios
CREATE VIEW sub_socioeconomico.view_habitantes AS
WITH hab AS (
    SELECT * FROM sub_socioeconomico.habitantes
    UNION SELECT cve_ent, cve_mun, serie, SUM(cantidad) AS habitantes
    FROM sub_socioeconomico.pob_gpo_edad_quinq GROUP BY cve_ent, cve_mun, serie
)
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    d.entidad,
    b.municipio,
    a.serie,
    c.region,
    a.habitantes
FROM hab AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN general.ct_entidades AS d USING(cve_ent)
ORDER BY a.cve_ent, a.cve_mun, a.serie;

-- Se crea vista para rtp del archivo bd_indigena.csv
CREATE VIEW sub_socioeconomico.view_pob_ind AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.habitantes,
    d.descripcion
FROM sub_socioeconomico.pob_ind AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_pob_ind AS d USING(pi_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para rtp del archivo bd_indigena.csv
CREATE VIEW sub_socioeconomico.view_viv_ind AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.viviendas,
    d.descripcion
FROM sub_socioeconomico.viv_ind AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_viv_ind AS d USING(vi_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para rtp del archivo bd_indigena.csv
CREATE VIEW sub_socioeconomico.view_prop_pob_ind AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    h.entidad,
    b.municipio,
    c.region,
    a.serie,
    d.habitantes,
    a.porcentaje,
    e.descripcion,
    f.descripcion AS sub_tipo_municipio,
    g.descripcion AS tipo_municipio
FROM sub_socioeconomico.prop_pob_ind AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN (
    SELECT cve_ent, cve_mun, serie, habitantes
    FROM sub_socioeconomico.pob_ind
    WHERE pi_id=1) AS d USING(cve_ent, cve_mun, serie)
JOIN sub_socioeconomico.ct_prop_pob AS e USING(pp_id)
JOIN sub_socioeconomico.ct_prop_pob_ind_sub AS f USING(ppis_id)
JOIN sub_socioeconomico.ct_prop_pob_ind_tip AS g USING(ppit_id)
JOIN general.ct_entidades AS h USING(cve_ent);

-- Se crea vista para el archivo bd_pob_afrodesc.csv
CREATE VIEW sub_socioeconomico.view_pob_afrodesc AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.porcentaje,
    d.descripcion
FROM sub_socioeconomico.pob_afrodesc AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
LEFT JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_pob_afrodesc AS d USING(pa_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para el archivo bd_migracion.csv
CREATE VIEW sub_socioeconomico.view_mig_prop AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.porcentaje,
    d.descripcion
FROM sub_socioeconomico.mig_prop AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
LEFT JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_mig_prop AS d USING(mp_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para el archivo bd_migracion.csv
CREATE VIEW sub_socioeconomico.view_mig_int AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.indice,
    d.descripcion AS categoria,
    'Intensidad migratoria' AS descripcion
FROM sub_socioeconomico.mig_int AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
LEFT JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_mig_grad AS d USING(mg_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para el archivo bd_migracion.csv
CREATE VIEW sub_socioeconomico.view_mig_mun_cat AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    d.descripcion
FROM sub_socioeconomico.mig_mun_cat AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
LEFT JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_mig_mun_cat AS d USING(cm_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para el archivo bd_migracion.csv
CREATE VIEW sub_socioeconomico.view_mig_mun AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.habitantes ,
    d.descripcion AS grupo,
    'Población de 5 años y  más cuyo lugar de residencia en marzo de 2010 era la misma entidad (%)' AS descripcion
FROM sub_socioeconomico.mig_mun AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
LEFT JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_gpo_mun AS d USING(gm_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para el archivo bd_pob_gpo_edad_quinq.csv
CREATE VIEW sub_socioeconomico.view_pob_gpo_edad_quinq AS
WITH pgeq AS (
    WITH tab_tot AS (
        WITH totales AS (
            SELECT cve_ent, cve_mun, serie, SUM(cantidad) AS cantidad
            FROM sub_socioeconomico.pob_gpo_edad_quinq
            GROUP BY cve_ent, cve_mun, serie)
        SELECT
            a.cve_ent,
            a.cve_mun,
            a.serie,
            18 AS geq_id,
            a.cantidad,
            ROUND((CAST(a.cantidad AS NUMERIC)/b.cantidad)*100,2) AS porcentaje,
            a.pgeq_id
        FROM (
            SELECT cve_ent, cve_mun, serie, pgeq_id, SUM(cantidad) AS cantidad
            FROM sub_socioeconomico.pob_gpo_edad_quinq
            GROUP BY cve_ent, cve_mun, serie, pgeq_id) AS a
        JOIN totales AS b USING(cve_ent, cve_mun, serie)
        UNION SELECT cve_ent, cve_mun, serie, 18 AS geq_id, cantidad, 100.00 AS porcentaje, 3 AS pgeq_id
        FROM totales)
    SELECT
        b.cve_ent,
        b.cve_mun,
        b.serie,
        b.geq_id,
        b.cantidad,
        ROUND((CAST(b.cantidad AS NUMERIC)/c.cantidad)*100,2) AS porcentaje,
        b.pgeq_id
    FROM (
        SELECT * FROM sub_socioeconomico.pob_gpo_edad_quinq
        UNION SELECT cve_ent, cve_mun, serie, geq_id, SUM(cantidad) AS cantidad, 3 AS pgeq_id
        FROM sub_socioeconomico.pob_gpo_edad_quinq
        GROUP BY cve_ent, cve_mun, serie, geq_id) AS b
    JOIN tab_tot AS c USING(cve_ent, cve_mun, serie, pgeq_id)
    UNION SELECT * FROM tab_tot)
SELECT
    CONCAT(d.cve_ent, d.cve_mun) AS cve_geo,
    i.entidad,
    e.municipio,
    f.region,
    d.serie,
    d.cantidad,
    d.porcentaje,
    g.gpo_quin,
    h.descripcion
FROM pgeq AS d
JOIN general.ct_municipios AS e USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS f USING(cve_reg)
JOIN (
    SELECT * FROM sub_socioeconomico.ct_gpo_edad_quinq
    UNION SELECT 18 AS geq_id, 'Total' AS gpo_quin) AS g USING(geq_id)
JOIN (
    SELECT * FROM sub_socioeconomico.ct_pob_geq
    UNION SELECT 3 AS pgeq_id, 'Población por grupo de edad quinquenal.' AS descripcion) AS h USING(pgeq_id)
JOIN general.ct_entidades AS i USING(cve_ent);

-- Se crea vista para el archivo bd_socioec_caract.csv
CREATE VIEW sub_socioeconomico.view_socioec_caract_hab AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.habitantes,
    d.descripcion
FROM sub_socioeconomico.socioec_caract_hab AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
LEFT JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_socioec_caract_hab AS d USING(sch_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para el archivo bd_socioec_caract.csv
CREATE VIEW sub_socioeconomico.view_socioec_caract_prc AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.porcentaje,
    d.descripcion
FROM sub_socioeconomico.socioec_caract_prc AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
LEFT JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_socioec_caract_prc AS d USING(scp_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para el archivo bd_socioec_caract.csv
CREATE VIEW sub_socioeconomico.view_socioec_caract_h AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.habitantes,
    d.descripcion
FROM sub_socioeconomico.socioec_caract_h AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
LEFT JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_socioec_caract_h AS d USING(sch_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para el archivo bd_socioec_caract.csv
CREATE VIEW sub_socioeconomico.view_socioec_caract_iev AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.indice,
    d.descripcion
FROM sub_socioeconomico.socioec_caract_iev AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
LEFT JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_socioec_caract_iev AS d USING(iev_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para el archivo bd_socioec_caract.csv
CREATE VIEW sub_socioeconomico.view_socioec_caract_gpe AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.promedio,
    d.descripcion
FROM sub_socioeconomico.socioec_caract_gpe AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
LEFT JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_socioec_caract_gpe AS d USING(gpe_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para el archivo bd_socioec_caract.csv
CREATE VIEW sub_socioeconomico.view_socioec_caract_viv AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.viviendas,
    d.descripcion
FROM sub_socioeconomico.socioec_caract_viv AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
LEFT JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_socioec_caract_viv AS d USING(viv_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para el archivo bd_socioec_diagn.csv
CREATE VIEW sub_socioeconomico.view_socioec_diagn_rz AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    f.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.indice,
    d.grado,
    e.descripcion
FROM sub_socioeconomico.socioec_diagn_rz AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_grados AS d USING(ctg_id)
JOIN sub_socioeconomico.ct_socioec_diagn_rz AS e USING(sdrz_id)
JOIN general.ct_entidades AS f USING(cve_ent);

-- Se crea vista para el archivo bd_socioec_diagn.csv
CREATE VIEW sub_socioeconomico.view_socioec_diagn_pb AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.porcentaje,
    a.habitantes,
    d.descripcion
FROM sub_socioeconomico.socioec_diagn_pb AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_socioec_diagn_pb AS d USING(pb_id)
JOIN general.ct_entidades AS e USING(cve_ent);

-- Se crea vista para el archivo bd_socioec_caract.csv
CREATE VIEW sub_socioeconomico.view_socioec_diagn_prc AS
SELECT
    CONCAT(a.cve_ent, a.cve_mun) AS cve_geo,
    e.entidad,
    b.municipio,
    c.region,
    a.serie,
    a.porcentaje,
    d.descripcion
FROM sub_socioeconomico.socioec_diagn_prc AS a
JOIN general.ct_municipios AS b USING(cve_ent, cve_mun)
LEFT JOIN general.ct_regiones AS c USING(cve_reg)
JOIN sub_socioeconomico.ct_socioec_diagn_prc AS d USING(sdp_id)
JOIN general.ct_entidades AS e USING(cve_ent);