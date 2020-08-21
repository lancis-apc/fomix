--Esta sección es para el componente socioeconómico

/*
    ****************************************************************
    Esta sección es para los catalogos del componente socioeconómico
    ****************************************************************
*/

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_caract_pob;
TRUNCATE TABLE development.ct_ageb_caract_pob RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_ageb_caract_pob (descripcion)
SELECT descripcion
FROM development.dd_ageb_caract
WHERE unidad LIKE 'Número de habitantes%'
ORDER BY id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_caract_viv;
TRUNCATE TABLE development.ct_ageb_caract_viv RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_ageb_caract_viv (descripcion)
SELECT descripcion
FROM development.dd_ageb_caract
WHERE unidad LIKE 'Número de viivendas%'
ORDER BY id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_caract_prom_hij;
TRUNCATE TABLE development.ct_ageb_caract_prom_hij RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_ageb_caract_prom_hij (descripcion)
SELECT descripcion
FROM development.dd_ageb_caract
WHERE nombre = 'pro_hv_10';

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_caract_prom_esc;
TRUNCATE TABLE development.ct_ageb_caract_prom_esc RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_ageb_caract_prom_esc (descripcion)
SELECT descripcion
FROM development.dd_ageb_caract
WHERE nombre = 'a_g_esc';

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_caract_nom_loc;
TRUNCATE TABLE development.ct_ageb_caract_nom_loc RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_ageb_caract_nom_loc (descripcion)
SELECT distinct nom_loc
FROM development.bd_ageb_caract;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_diag_pobr_c;
TRUNCATE TABLE development.ct_ageb_diag_pobr_c RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_ageb_diag_pobr_c (categoria)
SELECT distinct TRIM(c_pobr) AS cat
FROM development.bd_ageb_diag_pobr_16jul20
ORDER BY cat DESC;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_diag_pobr_r;
TRUNCATE TABLE development.ct_ageb_diag_pobr_r RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_ageb_diag_pobr_r (rango)
SELECT distinct TRIM(r_pobr) AS ran
FROM development.bd_ageb_diag_pobr_16jul20
UNION SELECT distinct TRIM(r_pobr_e) AS ran
FROM development.bd_ageb_diag_pobr_16jul20
ORDER BY ran;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_diag_pobr;
TRUNCATE TABLE development.ct_ageb_diag_pobr RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_ageb_diag_pobr (adp_id, descripcion)
VALUES
    (1, 'Porcentaje de población que vive en condición de pobreza.'),
    (2, 'Porcentaje de población que vive en condición de pobreza extrema.');

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_diag_rezago;
TRUNCATE TABLE development.ct_ageb_diag_rezago RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_ageb_diag_rezago (adr_id, descripcion)
SELECT 1 AS adr_id, descripcion||'.'
FROM development.dd_ageb_diag_rezago
WHERE nombre = 'ag_rezs';

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
SELECT a.id, UPPER(LEFT(a.descripcion,1))||SUBSTR(a.descripcion,2), c.ppit_id
FROM (
    SELECT
        LEFT(subtipos,1) AS id,
        LOWER(TRIM(SUBSTR(subtipos,4)))||'.' AS descripcion
    FROM(
        SELECT REGEXP_SPLIT_TO_TABLE(SUBSTRING(descripcion from 'A=.*'), '; ') AS subtipos
        FROM development.dd_indigena
        WHERE nombre = 'subtipo') AS a
    ORDER BY id) AS a
LEFT JOIN (
    SELECT DISTINCT subtipo, TRIM(nom_tipo) AS nom_tipo
    FROM development.bd_indigena ORDER BY subtipo) AS b ON a.id = b.subtipo
LEFT JOIN development.ct_prop_pob_ind_tip AS c ON b.nom_tipo = c.descripcion
ORDER BY a.id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_prop_pob;
--Ingresando información
INSERT INTO development.ct_prop_pob (pp_id, descripcion) VALUES
(1, 'Población indígena respecto al total municipal (o estatal)');

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_mig_prop;
TRUNCATE TABLE development.ct_mig_prop RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_mig_prop (descripcion)
SELECT TRIM(descripcion) FROM development.dd_migracion
WHERE unidad LIKE 'Porcentaje%'
ORDER BY id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_mig_grad;
--Ingresando información
INSERT INTO development.ct_mig_grad (mg_id, descripcion)
SELECT DISTINCT
    LEFT(TRIM(gim_2010), 1)::SMALLINT AS mg_id,
    SUBSTR(TRIM(gim_2010), 3) AS descripcion
FROM development.bd_migracion
ORDER BY mg_id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_mig_grad;
--Ingresando información
INSERT INTO development.ct_mig_grad (mg_id, descripcion)
SELECT DISTINCT
    LEFT(TRIM(gim_2010), 1)::SMALLINT AS mg_id,
    SUBSTR(TRIM(gim_2010), 3) AS descripcion
FROM development.bd_migracion
ORDER BY mg_id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_mig_mun_cat;
TRUNCATE TABLE development.ct_mig_mun_cat RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_mig_mun_cat (descripcion)
SELECT DISTINCT TRIM(catm_10) AS descripcion
FROM development.bd_migracion
ORDER BY descripcion;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_gpo_mun;
--Ingresando información
INSERT INTO development.ct_gpo_mun (gm_id, descripcion)
SELECT id, UPPER(LEFT(descripcion,1))||SUBSTR(descripcion,2)
FROM(
    SELECT
        RIGHT(TRIM(SPLIT_PART(grupos,': ',1)),1)::SMALLINT AS id,
        LOWER(TRIM(SPLIT_PART(grupos,': ',2)))||'.' AS descripcion
    FROM(
        SELECT REGEXP_SPLIT_TO_TABLE(SUBSTRING(descripcion from 'Grupo 1.*'), '; ') AS grupos
        FROM development.dd_migracion
        WHERE nombre = 'gpo_mun') AS a
    ORDER BY id) AS b;

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
SELECT 1, TRIM(REPLACE(descr, ', ', ' - 'i)pcion,' en 2015','.') FROM development.dd_pob_gpo_edad_quinq WHERE nombre = 'pobqm_15';
--Ingresando información de Población femenina
INSERT INTO development.ct_pob_geq(pgeq_id, descripcion)
SELECT 2, REPLACE(descripcion,' en 2015','.') FROM development.dd_pob_gpo_edad_quinq WHERE nombre = 'pobqf_15';

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_caract_hab;
TRUNCATE TABLE development.ct_socioec_caract_hab RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_socioec_caract_hab (descripcion)
SELECT descripcion
FROM development.dd_socioec_caract
WHERE unidad LIKE 'Número de habitantes%' AND id >= 19
ORDER BY id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_caract_prc;
TRUNCATE TABLE development.ct_socioec_caract_prc RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_socioec_caract_prc (descripcion)
SELECT descripcion
FROM development.dd_socioec_caract
WHERE unidad LIKE 'Porcentaje'
ORDER BY id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_caract_h;
TRUNCATE TABLE development.ct_socioec_caract_h RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_socioec_caract_h (descripcion)
SELECT descripcion
FROM development.dd_socioec_caract
WHERE descripcion LIKE '%hijos%' AND descripcion NOT LIKE 'Porcentaje%'
ORDER BY id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_caract_iev;
TRUNCATE TABLE development.ct_socioec_caract_iev RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_socioec_caract_iev (iev_id, descripcion)
SELECT 1 AS iev_id, descripcion
FROM development.dd_socioec_caract
WHERE descripcion LIKE 'Índice%'
ORDER BY id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_caract_tmacp;
TRUNCATE TABLE development.ct_socioec_caract_tmacp RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_socioec_caract_tmacp (tmacp_id, descripcion)
SELECT 1 AS tmacp_id, unidad||'.'
FROM development.dd_socioec_caract
WHERE unidad LIKE 'Tasa%'
ORDER BY id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_caract_gpe;
TRUNCATE TABLE development.ct_socioec_caract_gpe RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_socioec_caract_gpe (gpe_id, descripcion)
SELECT 1 AS gpe_id, descripcion||'.'
FROM development.dd_socioec_caract
WHERE descripcion LIKE 'Grado%'
ORDER BY id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_caract_viv;
TRUNCATE TABLE development.ct_socioec_caract_viv RESTART IDENTITY;
--Ingresando información
INSERT INTO development.ct_socioec_caract_viv (viv_id, descripcion)
SELECT 1 AS viv_id, descripcion||'.'
FROM development.dd_socioec_caract
WHERE descripcion LIKE '%Número de viviendas%'
ORDER BY id;

/*
    *************************************************************
    Esta sección es para las tablas del componente socioeconómico
    *************************************************************
*/

--Borrando información para correr las instrucciones sql
DELETE FROM development.ageb_caract_pob;
--Ingresando información de los campos
INSERT INTO development.ageb_caract_pob (cve_mun, cve_ageb, fol_ageb, acnl_id, serie, habitantes, acp_id)
SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.pobt_10, 1 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'pobt_10'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.ap_5mas, 2 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'ap_5mas'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.ap_12mas, 3 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'ap_12mas'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.ap_15m, 4 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'ap_15m'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.ap_1549_f, 5 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'ap_1549_f'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.apnacent, 6 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'apnacent'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.apnacoe, 7 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'apnacoe'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.ap_5hli, 8 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'ap_5hli'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.ap_5l_ne, 9 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'ap_5l_ne'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.ap_5li_e, 10 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'ap_5li_e'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.ap_15_an, 11 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'ap_15_an'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.ap15m_se, 12 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'ap15m_se'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.ap_15pin, 13 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'ap_15pin'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.ap_15sin, 14 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'ap_15sin'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.ap_18pb, 15 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'ap_18pb'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.apea, 16 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'apea'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.apob_ocup, 17 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'apob_ocup'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.apob_des, 18 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'apob_des'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.ap_no_af, 19 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'ap_no_af'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.ap_pob_af, 20 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'ap_pob_af'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.aoc_vp, 21 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'aoc_vp'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.a_pro_oc, 22 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'a_pro_oc';

--Borrando información para correr las instrucciones sql
DELETE FROM development.ageb_caract_viv;
--Ingresando información de los campos
INSERT INTO development.ageb_caract_viv (cve_mun, cve_ageb, fol_ageb, acnl_id, serie, viviendas, acv_id)
SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.avivtot, 1 AS acv_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'avivtot'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.aviv_hab, 2 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'aviv_hab'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.aviv_par, 3 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'aviv_par'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.aviv_p_h, 4 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'aviv_p_h'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.avp_pti, 5 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'avp_pti'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.avp_ele, 6 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'avp_ele'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.avp_noele, 7 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'avp_noele'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.avp_agdv, 8 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'avp_agdv'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.avp_agfv, 9 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'avp_agfv'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.avp_sanit, 10 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'avp_sanit'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.avp_dren, 11 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'avp_dren'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.av_nodren, 12 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'av_nodren'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.av_cserv, 13 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'av_cserv'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.av_snbien, 14 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'av_snbien'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.av_pc, 15 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'av_pc'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.av_telef, 16 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'av_telef'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.av_cel, 17 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'av_cel'
UNION SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.av_inter, 18 AS acp_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'av_inter';

--Borrando información para correr las instrucciones sql
DELETE FROM development.ageb_caract_prom_hij;
--Ingresando información de los campos
INSERT INTO development.ageb_caract_prom_hij (cve_mun, cve_ageb, fol_ageb, acnl_id, serie, promedio, acph_id)
SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.pro_hv_10, 1 AS acph_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'pro_hv_10';

--Borrando información para correr las instrucciones sql
DELETE FROM development.ageb_caract_prom_esc;
--Ingresando información de los campos
INSERT INTO development.ageb_caract_prom_esc (cve_mun, cve_ageb, fol_ageb, acnl_id, serie, promedio, acpe_id)
SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.acnl_id, c.año, a.a_g_esc, 1 AS acpe_id
FROM development.bd_ageb_caract AS a
JOIN development.ct_ageb_caract_nom_loc AS b ON a.nom_loc = b.descripcion
JOIN development.dd_ageb_caract AS c ON c.nombre = 'a_g_esc';

--Borrando información para correr las instrucciones sql
DELETE FROM development.ageb_diag_pobr;
--Ingresando información de los campos
INSERT INTO development.ageb_diag_pobr (cve_mun, fol_ageb, serie, adpr_id, adpc_id, adc_id)
SELECT a.cve_mun, a.fol_ageb, b.año, c.adpr_id, d.adpc_id, 1 AS adc_id
FROM development.bd_ageb_diag_pobr_16jul20 AS a
JOIN development.dd_ageb_diag_pobr AS b ON b.nombre = 'r_pobr'
JOIN development.ct_ageb_diag_pobr_r AS c ON a.r_pobr = c.rango
JOIN development.ct_ageb_diag_pobr_c AS d ON a.c_pobr = d.categoria
UNION SELECT a.cve_mun, a.fol_ageb, b.año, c.adpr_id, d.adpc_id, 2 AS adc_id
FROM development.bd_ageb_diag_pobr_16jul20 AS a
JOIN development.dd_ageb_diag_pobr AS b ON b.nombre = 'r_pobr_e'
JOIN development.ct_ageb_diag_pobr_r AS c ON a.r_pobr_e = c.rango
JOIN development.ct_ageb_diag_pobr_c AS d ON a.c_pobr_e = d.categoria;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ageb_diag_rezago;
--Ingresando información de los campos
INSERT INTO development.ageb_diag_rezago (cve_mun, cve_ageb, fol_ageb, serie, habitantes, viviendas, adpc_id, adr_id)
SELECT a.cve_mun, a.cve_ageb, a.fol_ageb, b.año, a.pobt_10, a.aviv_p_h, c.adpc_id, 1 AS adr_id
FROM development.bd_ageb_diag_rezago_16jul20 AS a
JOIN development.dd_ageb_diag_rezago AS b ON b.nombre = 'pobt_10'
JOIN development.ct_ageb_diag_pobr_c AS c ON TRIM(a.ag_rezs) = c.categoria;

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
DELETE FROM development.mig_prop;
--Ingresando información
INSERT INTO development.mig_prop (cve_geo, cve_mun, serie, porcentaje, mp_id)
SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.pob_ment, 1 AS mp_id
FROM development.bd_migracion AS a
JOIN development.dd_migracion AS b ON b.nombre = 'pob_ment'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.pob_mmcp, 2 AS mp_id
FROM development.bd_migracion AS a
JOIN development.dd_migracion AS b ON b.nombre = 'pob_mmcp'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.pob_otrm, 3 AS mp_id
FROM development.bd_migracion AS a
JOIN development.dd_migracion AS b ON b.nombre = 'pob_otrm'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.pob_enne, 4 AS mp_id
FROM development.bd_migracion AS a
JOIN development.dd_migracion AS b ON b.nombre = 'pob_enne'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.pob_oten, 5 AS mp_id
FROM development.bd_migracion AS a
JOIN development.dd_migracion AS b ON b.nombre = 'pob_oten';

--Borrando información para correr las instrucciones sql
DELETE FROM development.mig_int;
--Ingresando información
INSERT INTO development.mig_int (cve_geo, cve_mun, serie, indice, mg_id)
SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.iim_a100, LEFT(gim_2010,1)::SMALLINT
FROM development.bd_migracion AS a
JOIN development.dd_migracion AS b ON b.nombre = 'iim_a100';

--Borrando información para correr las instrucciones sql
DELETE FROM development.mig_mun_cat;
--Ingresando información
INSERT INTO development.mig_mun_cat (cve_geo, cve_mun, serie, cm_id)
SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), c.cm_id
FROM development.bd_migracion AS a
JOIN development.dd_migracion AS b ON b.nombre = 'catm_10'
JOIN development.ct_mig_mun_cat AS c ON a.catm_10 = c.descripcion;

--Borrando información para correr las instrucciones sql
DELETE FROM development.mig_mun;
--Ingresando información
INSERT INTO development.mig_mun (cve_geo, cve_mun, serie, habitantes, gm_id)
SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.pob5_mas, gpo_mun::SMALLINT
FROM development.bd_migracion AS a
JOIN development.dd_migracion AS b ON b.nombre = 'pob5_mas';

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

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_caract_hab;
--Ingresando información
INSERT INTO development.socioec_caract_hab (cve_geo, cve_mun, serie, habitantes, sch_id)
SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.pob12_mas, 1 AS sch_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'pob12_mas'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.pob_ocup, 2 AS sch_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'pob_ocup'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.pob15_mas, 3 AS sch_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'pob15_mas'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.ocu_vpart, 4 AS sch_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'ocu_vpart';

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_caract_prc;
--Ingresando información
INSERT INTO development.socioec_caract_prc (cve_geo, cve_mun, serie, porcentaje, scp_id)
SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_hif_10, 1 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_hif_10'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_pea_t, 2 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_pea_t'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_pea_oc, 3 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_pea_oc'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_pea_de, 4 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_pea_de'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_pob_1s, 5 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_pob_1s'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_pob_a2s, 6 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_pob_a2s'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_pob_m2s, 7 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_pob_m2s'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_sec_pri, 8 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_sec_pri'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_sec_sec, 9 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_sec_sec'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_sec_ter, 10 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_sec_ter'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_alf, 11 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_alf'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_analf, 12 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_analf'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_sin_esc, 13 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_sin_esc'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_edu_bas, 14 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_edu_bas'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_edu_med, 15 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_edu_med'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_edu_sup, 16 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_edu_sup'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.p_pob_af, 17 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_pob_af'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), CAST(a.p_no_af AS NUMERIC(5,3)), 18 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'p_no_af'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.oag_ent_t, 19 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'oag_ent_t'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.oag_denv, 20 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'oag_denv'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.vag_ent_t, 21 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'vag_ent_t'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.viag_denv, 22 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'viag_denv'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.viag_fuev, 23 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'viag_fuev'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.viacarr_t, 24 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'viacarr_t'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.vidren_t, 25 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'vidren_t'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.vidre_red, 26 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'vidre_red'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.vidre_fos, 27 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'vidre_fos'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.vidre_bar, 28 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'vidre_bar'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.vidre_rio, 29 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'vidre_rio'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.visindre, 30 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'visindre'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.vi_elec, 31 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'vi_elec'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.vi_no_elec, 32 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'vi_no_elec'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.v_con_san, 33 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'v_con_san'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.vi_no_san, 34 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'vi_no_san'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.vi_res_sp, 35 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'vi_res_sp'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.vi_res_ba, 36 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'vi_res_ba'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.vi_res_qu, 37 AS scp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'vi_res_qu';

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_caract_h;
--Ingresando información
INSERT INTO development.socioec_caract_h (cve_geo, cve_mun, serie, habitantes, sch_id)
SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.pro_hv_10, 1 AS sch_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'pro_hv_10'
UNION SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.hvi_10, 2 AS sch_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'hvi_10';

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_caract_iev;
--Ingresando información
INSERT INTO development.socioec_caract_iev (cve_geo, cve_mun, serie, indice, iev_id)
SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.iesp_vid, 1 AS iev_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'iesp_vid';

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_caract_tmacp;
--Ingresando información
INSERT INTO development.socioec_caract_tmacp (cve_geo, cve_mun, periodo, tasa, tmacp_id)
SELECT a.cve_geo, a.cve_mun, TRIM(REPLACE(b.año, ', ', ' - ')) AS periodo, a.t_crecma, 1 AS tmacp_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 't_crecma';

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_caract_gpe;
--Ingresando información
INSERT INTO development.socioec_caract_gpe (cve_geo, cve_mun, serie, promedio, gpe_id)
SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.esc_prom, 1 AS gpe_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'esc_prom';

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_caract_viv;
--Ingresando información
INSERT INTO development.socioec_caract_viv (cve_geo, cve_mun, serie, viviendas, viv_id)
SELECT a.cve_geo, a.cve_mun, CAST(b.año AS SMALLINT), a.viv_p_hab, 1 AS viv_id
FROM development.bd_socioec_caract AS a
JOIN development.dd_socioec_caract AS b ON b.nombre = 'viv_p_hab';