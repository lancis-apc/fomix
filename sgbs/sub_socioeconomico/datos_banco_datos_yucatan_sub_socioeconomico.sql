--Esta sección es para el componente socioeconómico

--Borrando inrformación de pobreza para correr las instrucciones sql
DELETE FROM development.ctg_pobreza;
--Ingresando información de development.bd_ageb_diag_pobr
INSERT INTO development.ctg_pobreza(r_pobr, c_pobr)
SELECT DISTINCT r_pobr, c_pobr FROM development.bd_ageb_diag_pobr WHERE c_pobr = 'Muy bajo';
INSERT INTO development.ctg_pobreza(r_pobr, c_pobr)
SELECT DISTINCT r_pobr, c_pobr FROM development.bd_ageb_diag_pobr WHERE c_pobr != 'Muy bajo' ORDER BY r_pobr;

--Borrando inrformación de pobreza para correr las instrucciones sql
DELETE FROM development.ctg_pobreza_extrema;
--Ingresando información de development.bd_ageb_diag_pobr
INSERT INTO development.ctg_pobreza_extrema(r_pobr_e, c_pobr_e)
SELECT DISTINCT r_pobr_e, c_pobr_e FROM development.bd_ageb_diag_pobr WHERE c_pobr_e = 'Bajo';
INSERT INTO development.ctg_pobreza_extrema(r_pobr_e, c_pobr_e)
SELECT DISTINCT r_pobr_e, c_pobr_e FROM development.bd_ageb_diag_pobr WHERE c_pobr_e != 'Bajo' ORDER BY r_pobr_e;

--Borrando inrformación de pobreza para correr las instrucciones sql
DELETE FROM development.diag_pobreza_ageb;
--Ingresando información de development.bd_ageb_diag_pobr
INSERT INTO development.diag_pobreza_ageb(cve_mun, fol_ageb, ctg_p_id)
SELECT bd_ageb_diag_pobr.cve_mun,
    bd_ageb_diag_pobr.fol_ageb,
    ctg_pobreza.id
FROM development.bd_ageb_diag_pobr
JOIN development.ctg_pobreza
USING (c_pobr);

--Borrando inrformación de pobreza extrema para correr las instrucciones sql
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
--Borrando inrformación de pobreza extrema para correr las instrucciones sql
DELETE FROM development.fuentes_informacion;
--Ingresando información de development.bd_ageb_diag_pobr
INSERT INTO development.fuentes_informacion(fuente, año, web)
SELECT DISTINCT fuente, CAST(año AS SMALLINT), web FROM development.dd_pob_afrodesc WHERE id > 8;