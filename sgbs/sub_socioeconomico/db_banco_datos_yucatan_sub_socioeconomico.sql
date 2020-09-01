/*
  ##############
  Crea el schema
  ##############
*/

CREATE SCHEMA IF NOT EXISTS sub_socioeconomico;

/*
    ***********************************************************************
    En esta subsección se crean los catalogos del componente socioeconómico
    ***********************************************************************
*/

CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_grados(
    ctg_id SERIAL PRIMARY KEY,
    grado VARCHAR(10) NOT NULL
);

--Se crea catalogo para registros de grados del archivo bd_ageb_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_ageb_caract_pob(
    acp_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(250) NOT NULL
);

--Se crea catalogo para registros de grados del archivo bd_ageb_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_ageb_caract_viv(
    acv_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(250) NOT NULL
);

--Se crea catalogo para registros de grados del archivo bd_ageb_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_ageb_caract_prom_hij(
    acph_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(40) NOT NULL
);

--Se crea catalogo para registros de grados del archivo bd_ageb_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_ageb_caract_prom_esc(
    acpe_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(30) NOT NULL
);

--Se crea catalogo para registros de grados del archivo bd_ageb_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_ageb_caract_nom_loc(
    acnl_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(20) NOT NULL
);

--Se crea catalogo para registros de grados del archivo bd_ageb_diag_pobr_16jul20.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_ageb_diag_pobr_r(
    adpr_id SERIAL PRIMARY KEY,
    rango VARCHAR(10) NOT NULL
);

--Se crea catalogo para registros de grados del archivo bd_ageb_diag_pobr_16jul20.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_ageb_diag_pobr_c(
    adpc_id SERIAL PRIMARY KEY,
    categoria VARCHAR(10) NOT NULL
);

--Se crea catalogo para registros de grados del archivo bd_ageb_diag_pobr_16jul20.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_ageb_diag_pobr(
    adp_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(70) NOT NULL
);

--Se crea catalogo para registros de grados del archivo bd_ageb_diag_pobr_16jul20.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_ageb_diag_rezago(
    adr_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(40) NOT NULL
);

--Se crea catalogo para registros de grados del archivo bd_idp.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_idp_grados(
    gidp_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(40) NOT NULL
);

--Se crea catalogo para registros de categoria del archivo bd_idp.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_idp_categorias(
    cidp_id SERIAL PRIMARY KEY,
    categoria VARCHAR(10) NOT NULL
);

--Se crea catalogo para registros categoria del archivo bd_idp.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_idp(
    idp_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(30) NOT NULL
);

--Se crea catalogo para registros rtp del archivo bd_idp.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_idp_rtp(
    rtp_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

--Se crea catalogo para registros pob del archivo dd_indigena.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_pob_ind(
    pi_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(90) NOT NULL
);

--Se crea catalogo para registros pob del archivo dd_indigena.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_viv_ind(
    vi_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(200) NOT NULL
);

--Se crea catalogo para registros pob del archivo dd_indigena.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_prop_pob_ind_tip(
    ppit_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

--Se crea catalogo para registros pob del archivo dd_indigena.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_prop_pob_ind_sub(
    ppis_id CHAR(1) PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL,
    ppit_id SMALLINT REFERENCES sub_socioeconomico.ct_prop_pob_ind_tip(ppit_id)
);

--Se crea catalogo para registros pob del archivo dd_indigena.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_prop_pob(
    pp_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(60) NOT NULL
);

--Se crea catalogo para registros pob del archivo dd_migracion.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_mig_prop(
    mp_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(120) NOT NULL
);

--Se crea catalogo para registros pob del archivo dd_migracion.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_mig_grad(
    mg_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(10) NOT NULL
);

--Se crea catalogo para registros pob del archivo dd_migracion.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_mig_mun_cat(
    cm_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(20) NOT NULL
);

--Se crea catalogo para registros pob del archivo dd_migracion.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_gpo_mun(
    gm_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(30) NOT NULL
);

--Se crea catalogo para registros pob del archivo bd_pob_afrodesc.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_pob_afrodesc(
    pa_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(70) NOT NULL
);

--Se crea catalogo para el archivo bd_pob_gpo_edad_quinq.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_gpo_edad_quinq(
    geq_id SERIAL PRIMARY KEY,
    gpo_quin VARCHAR(15) NOT NULL
);

--Se crea catalogo para el archivo bd_pob_gpo_edad_quinq.csv para separar según población
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_pob_geq(
    pgeq_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

--Se crea catalogo para el archivo bd_socioec_caract.csv para separar según población
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_socioec_caract_hab(
    sch_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(70) NOT NULL
);

--Se crea catalogo para el archivo bd_socioec_caract.csv para separar según pocentajes
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_socioec_caract_prc(
    scp_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(120) NOT NULL
);

--Se crea catalogo para el archivo bd_socioec_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_socioec_caract_h(
    sch_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(120) NOT NULL
);

--Se crea catalogo para el archivo bd_socioec_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_socioec_caract_iev(
    iev_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(40) NOT NULL
);

--Se crea catalogo para el archivo bd_socioec_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_socioec_caract_tmacp(
    tmacp_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

--Se crea catalogo para el archivo bd_socioec_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_socioec_caract_gpe(
    gpe_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(40) NOT NULL
);

--Se crea catalogo para el archivo bd_socioec_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_socioec_caract_viv(
    viv_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(60) NOT NULL
);

--Se crea catalogo para el archivo bd_socioec_diagn.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_socioec_diagn_rz(
    sdrz_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(20) NOT NULL
);

--Se crea catalogo para el archivo bd_socioec_diagn.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_socioec_diagn_pb(
    pb_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

--Se crea catalogo para el archivo bd_socioec_diagn.csv para separar según pocentajes
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ct_socioec_diagn_prc(
    sdp_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(90) NOT NULL
);

/*
    **************************************************************************************
    En esta subsección se crean las tablas de la información del componente socioeconómico
    **************************************************************************************
*/

--Se crea tabla para registros de grados del archivo dd_ageb_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ageb_caract_pob(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    cve_ageb VARCHAR(4) NOT NULL,
    fol_ageb VARCHAR(14) NOT NULL,
    acnl_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_ageb_caract_nom_loc(acnl_id),
    serie SMALLINT,
    habitantes INTEGER,
    acp_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_ageb_caract_pob(acp_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros de grados del archivo dd_ageb_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ageb_caract_viv(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    cve_ageb VARCHAR(4) NOT NULL,
    fol_ageb VARCHAR(14) NOT NULL,
    acnl_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_ageb_caract_nom_loc(acnl_id),
    serie SMALLINT,
    viviendas INTEGER,
    acv_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_ageb_caract_viv(acv_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros de grados del archivo dd_ageb_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ageb_caract_prom_hij(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    cve_ageb VARCHAR(4) NOT NULL,
    fol_ageb VARCHAR(14) NOT NULL,
    acnl_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_ageb_caract_nom_loc(acnl_id),
    serie SMALLINT,
    promedio NUMERIC(4,2),
    acph_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_ageb_caract_prom_hij(acph_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros de grados del archivo dd_ageb_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ageb_caract_prom_esc(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    cve_ageb VARCHAR(4) NOT NULL,
    fol_ageb VARCHAR(14) NOT NULL,
    acnl_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_ageb_caract_nom_loc(acnl_id),
    serie SMALLINT,
    promedio NUMERIC(4,2),
    acpe_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_ageb_caract_prom_esc(acpe_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros de grados del archivo bd_ageb_diag_pobr_16jul20.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ageb_diag_pobr(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    fol_ageb VARCHAR(14) NOT NULL,
    serie SMALLINT,
    adpr_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_ageb_diag_pobr_r(adpr_id),
    adpc_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_ageb_diag_pobr_c(adpc_id),
    adp_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_ageb_diag_pobr(adp_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros de grados del archivo bd_ageb_diag_rezago_16jul20.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.ageb_diag_rezago(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    cve_ageb VARCHAR(4) NOT NULL,
    fol_ageb VARCHAR(14) NOT NULL,
    serie SMALLINT,
    habitantes INTEGER,
    viviendas INTEGER,
    adpc_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_ageb_diag_pobr_c(adpc_id),
    adr_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_ageb_diag_rezago(adr_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros de grados del archivo bd_idp.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.idp_grados(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    grado NUMERIC(5,4) NOT NULL,
    gidp_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_idp_grados(gidp_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros de dispersión del archivo bd_idp.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.idp(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    indice NUMERIC(5,4) NOT NULL,
    cidp_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_idp_categorias(cidp_id),
    idp_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_idp(idp_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros de dispersión del archivo bd_idp.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.idp_rtp(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    rtp NUMERIC(5,4) NOT NULL,
    rtp_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_idp_rtp(rtp_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros de población usando archivos: bd_idp.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.habitantes(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    habitantes INTEGER NOT NULL,
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros pob del archivo bd_indigena.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.pob_ind(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT,
    habitantes INTEGER,
    pi_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_pob_ind(pi_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros pob del archivo bd_indigena.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.viv_ind(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT,
    viviendas INTEGER,
    vi_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_viv_ind(vi_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros pob del archivo bd_indigena.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.prop_pob_ind(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT,
    porcentaje NUMERIC(6,3),
    ppis_id CHAR(1) NOT NULL REFERENCES sub_socioeconomico.ct_prop_pob_ind_sub(ppis_id),
    pp_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_prop_pob(pp_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros pob del archivo bd_migracion.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.mig_prop(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT,
    porcentaje NUMERIC(5,2),
    mp_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_mig_prop(mp_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros pob del archivo bd_migracion.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.mig_int(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT,
    indice NUMERIC(6,3),
    mg_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_mig_grad(mg_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros pob del archivo bd_migracion.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.mig_mun(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT,
    habitantes INTEGER,
    gm_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_gpo_mun(gm_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros pob del archivo bd_migracion.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.mig_mun_cat(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT,
    cm_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_mig_mun_cat(cm_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros del archivo bd_pob_afrodesc.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.pob_afrodesc(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    porcentaje NUMERIC(5,2) NOT NULL,
    pa_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_pob_afrodesc(pa_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros del archivo bd_pob_gpo_edad_quinq.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.pob_gpo_edad_quinq(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    geq_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_gpo_edad_quinq(geq_id),
    cantidad INTEGER NOT NULL,
    pgeq_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_pob_geq(pgeq_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros del archivo bd_socioec_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.socioec_caract_hab(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    habitantes INTEGER NOT NULL,
    sch_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_socioec_caract_hab(sch_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros del archivo bd_socioec_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.socioec_caract_prc(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    porcentaje NUMERIC(5,2),
    scp_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_socioec_caract_prc(scp_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros del archivo bd_socioec_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.socioec_caract_h(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    habitantes NUMERIC(10,2),
    sch_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_socioec_caract_h(sch_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros del archivo bd_socioec_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.socioec_caract_iev(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    indice NUMERIC(5,4),
    iev_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_socioec_caract_iev(iev_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros del archivo bd_socioec_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.socioec_caract_tmacp(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    periodo CHAR(11) NOT NULL,
    tasa NUMERIC(4,3),
    tmacp_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_socioec_caract_tmacp(tmacp_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros del archivo bd_socioec_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.socioec_caract_gpe(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    promedio NUMERIC(4,2),
    gpe_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_socioec_caract_gpe(gpe_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros del archivo bd_socioec_caract.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.socioec_caract_viv(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    viviendas INTEGER,
    viv_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_socioec_caract_viv(viv_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros del archivo bd_socioec_diagn.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.socioec_diagn_rz(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    indice NUMERIC(4,3),
    ctg_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_grados(ctg_id),
    sdrz_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_socioec_diagn_rz(sdrz_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros del archivo bd_socioec_diagn.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.socioec_diagn_pb(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    porcentaje NUMERIC(4,1),
    habitantes INTEGER,
    pb_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_socioec_diagn_pb(pb_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea tabla para registros del archivo bd_socioec_diagn.csv
CREATE TABLE IF NOT EXISTS sub_socioeconomico.socioec_diagn_prc(
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    porcentaje NUMERIC(4,1),
    sdp_id SMALLINT NOT NULL REFERENCES sub_socioeconomico.ct_socioec_diagn_prc(sdp_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);