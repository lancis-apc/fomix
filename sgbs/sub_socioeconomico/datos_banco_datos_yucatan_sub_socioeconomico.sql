--Esta sección es para el componente socioeconómico

/*
    ****************************************************************
    Esta sección es para los catalogos del componente socioeconómico
    ****************************************************************
*/

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_idp_grados;
TRUNCATE TABLE development.ct_idp_grados RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_idp_grados (descripcion)
SELECT descripcion
FROM development.dd_idp
WHERE descripcion LIKE 'Grado%';

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_idp;
--Ingresando información
INSERT INTO development.ct_idp (idp_id, descripcion) VALUES
(1, 'Dispersión Poblacional');

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_idp_categorias;
TRUNCATE TABLE development.ct_idp_categorias RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_idp_categorias(categoria)
SELECT DISTINCT TRIM(idp_cat) AS cat FROM development.bd_idp ORDER BY cat DESC;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_idp_rtp;
--Ingresando información
INSERT INTO development.ct_idp_rtp(rtp_id, descripcion)
SELECT 1 AS rtp_id, descripcion
FROM development.dd_idp WHERE nombre = 'rtp';

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_pob_ind;
TRUNCATE TABLE development.ct_pob_ind RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_pob_ind (descripcion)
SELECT descripcion FROM development.dd_indigena
WHERE unidad LIKE '%habitantes'
ORDER BY id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_viv_ind;
TRUNCATE TABLE development.ct_viv_ind RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_viv_ind (descripcion)
SELECT TRIM(descripcion) FROM development.dd_indigena
WHERE unidad LIKE '%viviendas%'
ORDER BY id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_prop_pob_ind_tip;
TRUNCATE TABLE development.ct_prop_pob_ind_tip RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_prop_pob_ind_tip (descripcion)
SELECT DISTINCT TRIM(nom_tipo) AS cat FROM development.bd_indigena ORDER BY cat DESC;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_prop_pob_ind_sub;
--Ingresando información
INSERT INTO development.ct_prop_pob_ind_sub (ppis_id, descripcion, ppit_id)
WITH temp AS (VALUES
    ('A', 'Población indígena >70% de la población municipal'),
    ('B', 'Población indígena 40-69.9%'),
    ('C', 'Población indígena  >= 5,000 habitantes'),
    ('D', 'Población indígena < 5,000 habla lengua indígena'),
    ('E', 'Población indígena dispersa'),
    ('F', 'Sin población indígena'))
SELECT a.column1, a.column2, c.ppit_id
FROM temp AS a
LEFT JOIN (
    SELECT DISTINCT subtipo, TRIM(nom_tipo) AS nom_tipo
    FROM development.bd_indigena ORDER BY subtipo) AS b ON a.column1 = b.subtipo
LEFT JOIN development.ct_prop_pob_ind_tip AS c ON b.nom_tipo = c.descripcion
ORDER BY a.column1;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_prop_pob;
--Ingresando información
INSERT INTO development.ct_prop_pob (pp_id, descripcion) VALUES
(1, 'Población indígena respecto al total municipal (o estatal)');

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_pob_afrodesc;
TRUNCATE TABLE development.ct_pob_afrodesc RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_pob_afrodesc (descripcion)
SELECT descripcion
FROM development.dd_pob_afrodesc
WHERE descripcion LIKE 'Pob%'
ORDER BY id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_gpo_edad_quinq;
TRUNCATE TABLE development.ct_gpo_edad_quinq RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_gpo_edad_quinq (gpo_quin)
SELECT DISTINCT gpo_quin
FROM development.bd_pob_gpo_edad_quinq
WHERE gpo_quin != 'Total'
ORDER BY gpo_quin;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_pob_geq;
--Ingresando información de Población masculina
INSERT INTO development.ct_pob_geq(pgeq_id, descripcion)
SELECT 1, REPLACE(descripcion,' en 2015','.') FROM development.dd_pob_gpo_edad_quinq WHERE nombre = 'pobqm_15';
--Ingresando información de Población femenina
INSERT INTO development.ct_pob_geq(pgeq_id, descripcion)
SELECT 2, REPLACE(descripcion,' en 2015','.') FROM development.dd_pob_gpo_edad_quinq WHERE nombre = 'pobqf_15';

/*
    *************************************************************
    Esta sección es para las tablas del componente socioeconómico
    *************************************************************
*/

--Borrando información para correr las instrucciones sql
DELETE FROM development.idp_grados;
--Ingresando información de los campos
INSERT INTO development.idp_grados (cve_mun, serie, grado, gidp_id)
SELECT a.cve_mun, b.año, a.vgr, 1 AS gidp_id
FROM development.bd_idp AS a
JOIN development.dd_idp AS b ON b.nombre = 'vgr'
UNION SELECT a.cve_mun, b.año, a.vga, 2 AS gidp_id
FROM development.bd_idp AS a
JOIN development.dd_idp AS b ON b.nombre = 'vga'
UNION SELECT a.cve_mun, b.año, a.vgf, 3 AS gidp_id
FROM development.bd_idp AS a
JOIN development.dd_idp AS b ON b.nombre = 'vgf';

--Borrando información para correr las instrucciones sql
DELETE FROM development.idp;
--Ingresando información de los campos
INSERT INTO development.idp (cve_mun, serie, indice, cidp_id, idp_id)
SELECT a.cve_mun, b.año, a.idp, c.cidp_id, 1 AS idp_id
FROM development.bd_idp AS a
JOIN development.dd_idp AS b ON b.nombre = 'idp'
JOIN development.ct_idp_categorias AS c ON a.idp_cat = c.categoria;

--Borrando información para correr las instrucciones sql
DELETE FROM development.idp_rtp;
--Ingresando información de los campos
INSERT INTO development.idp_rtp (cve_mun, serie, rtp, rtp_id)
SELECT a.cve_mun, b.año, a.rtp, 1 AS rtp_id
FROM development.bd_idp AS a
JOIN development.dd_idp AS b ON b.nombre = 'rtp';

--Borrando información para correr las instrucciones sql
DELETE FROM development.habitantes;
--Ingresando información de los campos
INSERT INTO development.habitantes (cve_mun, serie, habitantes)
SELECT a.cve_mun, b.año, a.pobtot
FROM development.bd_idp AS a
JOIN development.dd_idp AS b ON b.nombre = 'pobtot';

--Borrando información para correr las instrucciones sql
DELETE FROM development.pob_ind;
--Ingresando información
INSERT INTO development.pob_ind (cve_geo, cve_mun, serie, habitantes, pi_id)
SELECT a.cve_geo, a.cve_mun, b.año, a.pob_ind_t, 1 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'pob_ind_t'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.iphli5, 2 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'iphli5'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.ip5_bili, 3 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ip5_bili'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.ip5_mon, 4 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ip5_mon'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.ip15_alf, 5 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ip15_alf'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.ip15_ana, 6 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ip15_ana'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.ip_der, 7 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ip_der'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.ip_noder, 8 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ip_noder'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.il_ent, 9 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'il_ent'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.il_otent, 10 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'il_otent'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.ip_act, 11 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ip_act'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.ip_ocu, 12 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ip_ocu'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.ip_des, 13 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ip_des'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.ip_inac, 14 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ip_inac'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.ip_noing, 15 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ip_noing'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.ip_1sm, 16 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ip_1sm'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.ip_1a2sm, 17 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ip_1a2sm'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.ip_m2sm, 18 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ip_m2sm';

--Borrando información para correr las instrucciones sql
DELETE FROM development.viv_ind;
--Ingresando información
INSERT INTO development.viv_ind (cve_geo, cve_mun, serie, viviendas, vi_id)
SELECT a.cve_geo, a.cve_mun, b.año, a.ivivph, 1 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ivivph'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.iv_agent, 2 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'iv_agent'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.iv_noag, 3 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'iv_noag'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.iv_dren, 4 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'iv_dren'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.iv_nodren, 5 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'iv_nodren'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.iv_elec, 6 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'iv_elec'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.iv_noelec, 7 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'iv_noelec'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.iv_tier, 8 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'iv_tier'
UNION SELECT a.cve_geo, a.cve_mun, b.año, a.iv_leña, 9 AS pi_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'iv_leña';

--Borrando información para correr las instrucciones sql
DELETE FROM development.prop_pob_ind;
--Ingresando información
INSERT INTO development.prop_pob_ind (cve_geo, cve_mun, serie, porcentaje, ppis_id, pp_id)
SELECT a.cve_geo, a.cve_mun, b.año, a.ipob_rel, a.subtipo, 1 AS pp_id
FROM development.bd_indigena AS a
JOIN development.dd_indigena AS b ON b.nombre = 'ipob_rel';

--Borrando información para correr las instrucciones sql
DELETE FROM development.pob_afrodesc;
--Ingresando información de los campos
INSERT INTO development.pob_afrodesc (cve_mun, serie, porcentaje, pa_id)
SELECT a.cve_mun, c.año, a.afr_si, 1 AS pa_id
FROM development.bd_pob_afrodesc AS a
JOIN development.dd_pob_afrodesc AS c ON c.nombre = 'afr_si'
UNION SELECT a.cve_mun, c.año, a.afr_parc, 2 AS pa_id
FROM development.bd_pob_afrodesc AS a
JOIN development.dd_pob_afrodesc AS c ON c.nombre = 'afr_parc'
UNION SELECT a.cve_mun, c.año, a.afr_no, 3 AS pa_id
FROM development.bd_pob_afrodesc AS a
JOIN development.dd_pob_afrodesc AS c ON c.nombre = 'afr_no'
UNION SELECT a.cve_mun, c.año, a.afr_ns, 4 AS pa_id
FROM development.bd_pob_afrodesc AS a
JOIN development.dd_pob_afrodesc AS c ON c.nombre = 'afr_ns'
UNION SELECT a.cve_mun, c.año, a.afr_ne, 5 AS pa_id
FROM development.bd_pob_afrodesc AS a
JOIN development.dd_pob_afrodesc AS c ON c.nombre = 'afr_ne';

--Borrando información para correr las instrucciones sql
DELETE FROM development.pob_gpo_edad_quinq;
--Ingresando información
INSERT INTO development.pob_gpo_edad_quinq (cve_mun, serie, geq_id, cantidad, pgeq_id)
WITH wo_total AS (
    SELECT cve_mun, gpo_quin, pobqm_15, pobqf_15
    FROM development.bd_pob_gpo_edad_quinq
    WHERE gpo_quin != 'Total')
SELECT a.cve_mun, c.año, b.geq_id, a.pobqm_15, 1 AS pgeq_id
FROM wo_total AS a
JOIN development.ct_gpo_edad_quinq AS b USING (gpo_quin)
JOIN development.dd_pob_gpo_edad_quinq as c ON nombre = 'pobqm_15'
UNION SELECT d.cve_mun, f.año, e.geq_id, d.pobqf_15, 2 AS pgeq_id
FROM wo_total AS d
JOIN development.ct_gpo_edad_quinq AS e USING (gpo_quin)
JOIN development.dd_pob_gpo_edad_quinq as f ON nombre = 'pobqf_15';









 ---------------------------------------------------------------------
--En esta subsección se llena la información de los catalogos

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_pob;
--Ingresando información
INSERT INTO development.ct_pob VALUES
(1,'Menos de 15,000 habitantes'),
(2,'De 15,000 a 49,999 habitantes'),
(3,'De 50,000 a 99,000 habitantes'),
(4,'Más de 100,000 habitantes');

--Sección en aún prueba
-----------------------------------------------------------------------------------------------------------------
--Borrando información para correr las instrucciones sql
DELETE FROM development.ctg_pobreza;
--Ingresando información de development.bd_ageb_diag_pobr
INSERT INTO development.ctg_pobreza(r_pobr, c_pobr)
SELECT DISTINCT r_pobr, c_pobr FROM development.bd_ageb_diag_pobr WHERE c_pobr = 'Muy bajo';
INSERT INTO development.ctg_pobreza(r_pobr, c_pobr)
SELECT DISTINCT r_pobr, c_pobr FROM development.bd_ageb_diag_pobr WHERE c_pobr != 'Muy bajo' ORDER BY r_pobr;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ctg_pobreza_extrema;
--Ingresando información de development.bd_ageb_diag_pobr
INSERT INTO development.ctg_pobreza_extrema(r_pobr_e, c_pobr_e)
SELECT DISTINCT r_pobr_e, c_pobr_e FROM development.bd_ageb_diag_pobr WHERE c_pobr_e = 'Bajo';
INSERT INTO development.ctg_pobreza_extrema(r_pobr_e, c_pobr_e)
SELECT DISTINCT r_pobr_e, c_pobr_e FROM development.bd_ageb_diag_pobr WHERE c_pobr_e != 'Bajo' ORDER BY r_pobr_e;

--Borrando información para correr las instrucciones sql
DELETE FROM development.diag_pobreza_ageb;
--Ingresando información de development.bd_ageb_diag_pobr
INSERT INTO development.diag_pobreza_ageb(cve_mun, fol_ageb, ctg_p_id)
SELECT bd_ageb_diag_pobr.cve_mun,
    bd_ageb_diag_pobr.fol_ageb,
    ctg_pobreza.id
FROM development.bd_ageb_diag_pobr
JOIN development.ctg_pobreza
USING (c_pobr);

--Borrando información para correr las instrucciones sql
DELETE FROM development.diag_pobreza_extrema_ageb;
--Ingresando información de development.bd_ageb_diag_pobr
INSERT INTO development.diag_pobreza_extrema_ageb(cve_mun, fol_ageb, ctg_pe_id)
SELECT bd_ageb_diag_pobr.cve_mun,
    bd_ageb_diag_pobr.fol_ageb,
    ctg_pobreza_extrema.id
FROM development.bd_ageb_diag_pobr
JOIN development.ctg_pobreza_extrema
USING (c_pobr_e);

---------------------------------------------------------------------
/*
    *******************************************************
    En esta subsección se llenan las fuentes de información
    *******************************************************
*/

--Se crea una secuencia auxiliar para los id's de las fuentes
CREATE SEQUENCE id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_fuentes_informacion;
--Ingresando información
INSERT INTO development.ct_fuentes_informacion(id, subsistema, fuente, web, metadatos)
WITH a AS(
    SELECT fuente, web, metadatos
    FROM development.dd_indigena OFFSET 8
)
SELECT 'S'||RIGHT(LPAD(NEXTVAL('id')::TEXT,4,'0'),4), 'socio-económico', * FROM (SELECT DISTINCT fuente, web, metadatos FROM a) AS b;

INSERT INTO development.ct_fuentes_informacion(id, subsistema, fuente, web)
WITH a AS(
    SELECT fuente, web
    FROM development.dd_pob_afrodesc OFFSET 8
)
SELECT 'S'||RIGHT(LPAD(NEXTVAL('id')::TEXT,4,'0'),4), 'socio-económico', * FROM (SELECT DISTINCT fuente, web FROM a) AS b;

------------------------------------------------------------------------------------
--Borrando información para correr las instrucciones sql
DELETE FROM development.fuentes_informacion;
--Ingresando información de development.bd_ageb_diag_pobr
INSERT INTO development.fuentes_informacion(subsistema, fuente, año, web)
SELECT DISTINCT 'socio-económico', fuente, CAST(año AS SMALLINT), web FROM development.dd_ageb_caract OFFSET 11 UNION ALL
SELECT DISTINCT 'socio-económico', fuente, CAST(año AS SMALLINT), web FROM development.dd_ageb_diag_pobr OFFSET 8 UNION ALL
SELECT DISTINCT 'socio-económico', fuente, CAST(año AS SMALLINT), web FROM development.dd_ageb_diag_rezago OFFSET 11 UNION ALL
SELECT DISTINCT 'socio-económico', fuente, CAST(año AS SMALLINT), web FROM development.dd_idp OFFSET 9 UNION ALL
SELECT DISTINCT 'socio-económico', fuente, CAST(año AS SMALLINT), web FROM development.dd_indigena OFFSET 8 UNION ALL
SELECT DISTINCT 'socio-económico', fuente, CAST(año AS SMALLINT), web FROM development.dd_migracion OFFSET 8 UNION ALL
SELECT DISTINCT 'socio-económico', fuente, CAST(año AS SMALLINT), web FROM development.dd_pob_afrodesc OFFSET 7 UNION ALL
SELECT DISTINCT 'socio-económico', fuente, CAST(año AS SMALLINT), web FROM development.dd_pob_gpo_edad_quinq OFFSET 5 UNION ALL
SELECT DISTINCT 'socio-económico', fuente, CAST(año AS SMALLINT), web FROM development.dd_socioec_caract OFFSET 8 UNION ALL
SELECT DISTINCT 'socio-económico', fuente, CAST(año AS SMALLINT), web FROM development.dd_socioec_diagn OFFSET 8;


--INSERT INTO development.fuentes_informacion(subsistema, fuente, año, web)

SELECT DISTINCT 'socio-económico',* 
FROM (SELECT fuente, CAST(año AS SMALLINT), web, metadatos
        FROM development.dd_ageb_caract 
        WHERE fuente IS NOT NULL OR año IS NOT NULL OR web IS NOT NULL OR metadatos IS NOT NULL
        OFFSET 11) AS foo UNION ALL
SELECT DISTINCT 'socio-económico',* 
FROM (SELECT fuente, CAST(año AS SMALLINT), web, metadatos
        FROM development.dd_ageb_diag_pobr
        WHERE fuente IS NOT NULL OR año IS NOT NULL OR web IS NOT NULL OR metadatos IS NOT NULL
        OFFSET 8) AS foo UNION ALL
SELECT DISTINCT 'socio-económico',* 
FROM (SELECT fuente, CAST(año AS SMALLINT), web, metadatos
        FROM development.dd_ageb_diag_rezago
        WHERE fuente IS NOT NULL OR año IS NOT NULL OR web IS NOT NULL OR metadatos IS NOT NULL
        OFFSET 11) AS foo UNION ALL
SELECT DISTINCT 'socio-económico',* 
FROM (SELECT fuente, CAST(año AS SMALLINT), web, metadatos
        FROM development.dd_idp
        WHERE fuente IS NOT NULL OR año IS NOT NULL OR web IS NOT NULL OR metadatos IS NOT NULL
        OFFSET 9) AS foo UNION ALL
SELECT DISTINCT 'socio-económico',* 
FROM (SELECT fuente, CAST(año AS SMALLINT), web, metadatos
        FROM development.dd_indigena
        WHERE fuente IS NOT NULL OR año IS NOT NULL OR web IS NOT NULL OR metadatos IS NOT NULL
        OFFSET 8) AS foo UNION ALL
SELECT DISTINCT 'socio-económico',* 
FROM (SELECT fuente, CAST(año AS SMALLINT), web, metadatos
        FROM development.dd_migracion
        WHERE fuente IS NOT NULL OR año IS NOT NULL OR web IS NOT NULL OR metadatos IS NOT NULL
        OFFSET 8) AS foo UNION ALL
SELECT DISTINCT 'socio-económico', fuente, año, web, NULL
FROM (SELECT fuente, CAST(año AS SMALLINT), web
        FROM development.dd_pob_afrodesc
        WHERE fuente IS NOT NULL OR año IS NOT NULL OR web IS NOT NULL
        OFFSET 7) AS foo UNION ALL
SELECT DISTINCT 'socio-económico',* 
FROM (SELECT fuente, CAST(año AS SMALLINT), web, metadatos
        FROM development.dd_pob_gpo_edad_quinq
        WHERE fuente IS NOT NULL OR año IS NOT NULL OR web IS NOT NULL OR metadatos IS NOT NULL
        OFFSET 5) AS foo UNION ALL
SELECT DISTINCT 'socio-económico',* 
FROM (SELECT fuente, CAST(año AS SMALLINT), web, metadatos
        FROM development.dd_socioec_caract
        WHERE fuente IS NOT NULL OR año IS NOT NULL OR web IS NOT NULL OR metadatos IS NOT NULL
        OFFSET 8) AS foo UNION ALL
SELECT DISTINCT 'socio-económico',* 
FROM (SELECT fuente, CAST(año AS SMALLINT), web, metadatos
        FROM development.dd_socioec_diagn
        WHERE fuente IS NOT NULL OR año IS NOT NULL OR web IS NOT NULL OR metadatos IS NOT NULL
        OFFSET 8) AS foo;