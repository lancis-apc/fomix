--Esta sección es para el componente socioeconómico

---------------------------------------------------------------------
--En esta subsección se llenan las fuentes de información

--Se crea una secuencia auxiliar para los id's de las fuentes
CREATE SEQUENCE id;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_fuentes_informacion;
--Ingresando información
INSERT INTO development.ct_fuentes_informacion(id, subsistema, fuente, año, web, metadatos)
WITH a AS(
    SELECT fuente, año, web, metadatos
    FROM development.dd_indigena OFFSET 8
)
SELECT 'S'||RIGHT(LPAD(NEXTVAL('id')::TEXT,4,'0'),4), 'socio-económico', * FROM (SELECT DISTINCT fuente, año, web, metadatos FROM a) AS b;

 ---------------------------------------------------------------------
--En esta subsección se llena la información de los catalogos

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_subtipo;
--Ingresando información
INSERT INTO development.ct_subtipo VALUES
(1, 'Municipio indígena'),
(2, 'Municipio con presencia indígena'),
(3, 'Municipio con población indígena dispersa');

--Borrando información para correr las instrucciones sql
DELETE FROM development.nom_tipo;
--Ingresando información
INSERT INTO development.nom_tipo VALUES
('A', 'Población indígena > 70% de la población municipal', 1),
('B', 'Población indígena 40.0 - 69.9%', 1),
('C', 'Población indígena >= 5,000 habitantes', 2),
('D', 'Población indígena < 5,000 habla lengua indígena',NULL),
('E', 'Población indígena dispersa', 3),
('F', 'Sin población indígena',NULL);

--Borrando información para correr las instrucciones sql (Esta tabla ya integra las fuentes)
DELETE FROM development.ct_pob_indigena;
--Ingresando información
INSERT INTO development.ct_pob_indigena (campo, descripcion, fi_id)
SELECT a.nombre, a.descripcion, b.id
FROM development.dd_indigena AS a
JOIN development.ct_fuentes_informacion AS b ON (a.año,a.fuente) = (b.año,b.fuente)
WHERE a.descripcion LIKE 'Pob%' AND a.descripcion != 'Población total';








--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_pob;
--Ingresando información
INSERT INTO development.ct_pob VALUES
(1,'Menos de 15,000 habitantes'),
(2,'De 15,000 a 49,999 habitantes'),
(3,'De 50,000 a 99,000 habitantes'),
(4,'Más de 100,000 habitantes');

---------------------------------------------------------------------
--Esta sección es para el componente socioeconómico

--Borrando información para correr las instrucciones sql
DELETE FROM development.pob_indigena;
--Ingresando información
INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, pob_ind_t, 'pob_ind_t' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.pob_ind_t, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip_m2sm, 'ip_m2sm' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip_m2sm, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip_1a2sm, 'ip_1a2sm' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip_1a2sm, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip_1sm, 'ip_1sm' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip_1sm, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip_noing, 'ip_noing' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip_noing, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip_inac, 'ip_inac' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip_inac, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip_des, 'ip_des' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip_des, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip_ocu, 'ip_ocu' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip_ocu, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip_act, 'ip_act' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip_act, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, il_otent, 'il_otent' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.il_otent, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, il_ent, 'il_ent' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.il_ent, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip_noder, 'ip_noder' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip_noder, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip_der, 'ip_der' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip_der, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip15_msys, 'ip15_msys' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip15_msys, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip15_sec, 'ip15_sec' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip15_sec, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip15_sein, 'ip15_sein' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip15_sein, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip15_pric, 'ip15_pric' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip15_pric, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip15_prin, 'ip15_prin' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip15_prin, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip15_ana, 'ip15_ana' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip15_ana, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip15_alf, 'ip15_alf' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip15_alf, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip5_mon, 'ip5_mon' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip5_mon, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, ip5_bili, 'ip5_bili' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.ip5_bili, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;

INSERT INTO development.pob_indigena (cve_geo, cve_mun, subtipo, habitantes, cpi_id)
WITH a AS (
    SELECT cve_geo,cve_mun, subtipo, iphli5, 'iphli5' AS campo 
    FROM development.bd_indigena)
SELECT a.cve_geo, a.cve_mun, a.subtipo, a.iphli5, b.id
FROM a
JOIN development.ct_pob_indigena AS b ON a.campo = b.campo;









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