--Esta sección es para los auxiliares del componente socioeconómico
--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\bd_ageb_caract.csv
CREATE TABLE IF NOT EXISTS development.bd_ageb_caract(
    cve_ent CHAR(2) NOT NULL,
    nom_ent VARCHAR(32) NOT NULL,
    id_region SMALLINT NOT NULL,
    region VARCHAR(20) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    nom_mun VARCHAR(80) NOT NULL,
    mun_ori VARCHAR(80) NOT NULL,
    cve_loc VARCHAR(3) NOT NULL,
    nom_loc VARCHAR(17) NOT NULL,
    cve_ageb VARCHAR(4) NOT NULL,
    fol_ageb VARCHAR(14) NOT NULL,
    pobt_10 INTEGER,
    pobm_10 INTEGER,
    pobf_10 INTEGER,
    ap_0a2 INTEGER,
    ap_a2_m INTEGER,
    ap_a2_f INTEGER,
    ap_3mas INTEGER,
    ap_3mm INTEGER,
    ap_3mf INTEGER,
    ap_5mas INTEGER,
    ap_5mm INTEGER,
    ap_5mf INTEGER,
    ap_12mas INTEGER,
    ap_12mm INTEGER,
    ap_12mf INTEGER,
    ap_15m INTEGER,
    ap_15mm INTEGER,
    ap_15mf INTEGER,
    ap_18m INTEGER,
    ap_18mm INTEGER,
    ap_18mf INTEGER,
    ap_3a5 INTEGER,
    ap_3a5m INTEGER,
    ap_3a5f INTEGER,
    ap_6a11 INTEGER,
    ap_6a11m INTEGER,
    ap_6a11f INTEGER,
    ap_8a14 INTEGER,
    ap_8a14m INTEGER,
    ap_8a14f INTEGER,
    ap_12a14 INTEGER,
    ap_1214m INTEGER,
    ap_1214f INTEGER,
    ap_15a17 INTEGER,
    ap_1517m INTEGER,
    ap_1517f INTEGER,
    ap_18a24 INTEGER,
    ap_1824m INTEGER,
    ap_1824f INTEGER,
    ap_1549_f INTEGER,
    ap_60m INTEGER,
    ap_60mm INTEGER,
    ap_60mf INTEGER,
    arel_h_m NUMERIC(8,2),
    ap_0_14 INTEGER,
    ap_15_64 INTEGER,
    ap_65mas INTEGER,
    pro_hv_10 NUMERIC(8,2),
    apnacent INTEGER,
    apnacoe INTEGER,
    ap_res05 INTEGER,
    ap_reoe05 INTEGER,
    ap_5hli INTEGER,
    ap_5l_ne INTEGER,
    ap_5li_e INTEGER,
    ap_hgind INTEGER,
    ap_814an INTEGER,
    ap_15_an INTEGER,
    ap15m_se INTEGER,
    ap_15pin INTEGER,
    ap_15pco INTEGER,
    ap_15sin INTEGER,
    ap_15sco INTEGER,
    ap_18pb INTEGER,
    a_g_esc NUMERIC(8,2),
    apea INTEGER,
    apea_in INTEGER,
    apob_ocup INTEGER,
    apob_des INTEGER,
    ap_no_af INTEGER,
    ap_pob_af INTEGER,
    a_thog INTEGER,
    ap_hog INTEGER,
    avivtot INTEGER,
    aviv_hab INTEGER,
    aviv_par INTEGER,
    aviv_p_h INTEGER,
    aviv_p_d INTEGER,
    aviv_pte INTEGER,
    aoc_vp INTEGER,
    a_pro_oc NUMERIC(8,2),
    avp_pnot INTEGER,
    avp_pti INTEGER,
    avp_ele INTEGER,
    avp_noele INTEGER,
    avp_agdv INTEGER,
    avp_agfv INTEGER,
    avp_sanit INTEGER,
    avp_dren INTEGER,
    av_nodren INTEGER,
    av_cserv INTEGER,
    av_snbien INTEGER,
    av_pc INTEGER,
    av_telef INTEGER,
    av_cel INTEGER,
    av_inter INTEGER
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\bd_ageb_diag_pobr.csv
CREATE TABLE IF NOT EXISTS development.bd_ageb_diag_pobr(
    cve_ent CHAR(2) NOT NULL,
    nom_ent VARCHAR(32) NOT NULL,
    id_region SMALLINT NOT NULL,
    region VARCHAR(20) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    nom_mun VARCHAR(80) NOT NULL,
    mun_ori VARCHAR(80) NOT NULL,
    fol_ageb VARCHAR(14) NOT NULL,
    r_pobr VARCHAR(9) NOT NULL,
    r_pobr_e VARCHAR(9) NOT NULL,
    c_pobr VARCHAR(8) NOT NULL,
    c_pobr_e VARCHAR(9) NOT NULL
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\bd_ageb_diag_rezago.csv
CREATE TABLE IF NOT EXISTS development.bd_ageb_diag_rezago(
    cve_ent CHAR(2) NOT NULL,
    nom_ent VARCHAR(32) NOT NULL,
    id_region SMALLINT NOT NULL,
    region VARCHAR(20) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    nom_mun VARCHAR(80) NOT NULL,
    mun_ori VARCHAR(80) NOT NULL,
    cve_loc VARCHAR(3) NOT NULL,
    nom_loc VARCHAR(28) NOT NULL,
    cve_ageb VARCHAR(4) NOT NULL,
    fol_ageb VARCHAR(14) NOT NULL,
    pobt_10 INTEGER,
    aviv_p_h INTEGER,
    ag_rezs VARCHAR(5) NOT NULL
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\bd_idp.csv
CREATE TABLE IF NOT EXISTS development.bd_idp(
    cve_ent CHAR(2) NOT NULL,
    nom_ent VARCHAR(32) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    nom_mun VARCHAR(80) NOT NULL,
    mun_ori VARCHAR(80) NOT NULL,
    id_region SMALLINT NOT NULL,
    region VARCHAR(20) NOT NULL,
    cve_geo CHAR(5) NOT NULL,
    pobtot INTEGER,
    vgr NUMERIC(5,4),
    vga NUMERIC(5,4),
    vgf NUMERIC(5,4),
    rtp NUMERIC(5,4),
    idp NUMERIC(5,4),
    idp_cat VARCHAR(9) NOT NULL
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\bd_indigena.csv
CREATE TABLE IF NOT EXISTS development.bd_indigena(
    cve_geo CHAR(5) NOT NULL,
    cve_ent CHAR(2) NOT NULL,
    nom_ent VARCHAR(32) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    mun_ori VARCHAR(80) NOT NULL,
    nom_mun VARCHAR(80) NOT NULL,
    id_region SMALLINT NOT NULL,
    region VARCHAR(20) NOT NULL,
    subtipo CHAR(1) NOT NULL,
    nom_tipo VARCHAR(41) NOT NULL,
    pobt_15 INTEGER,
    pob_ind_t INTEGER,
    ipob_rel NUMERIC(6,3),
    iphli5 INTEGER,
    ip5_bili INTEGER,
    ip5_mon INTEGER,
    ip15_alf INTEGER,
    ip15_ana INTEGER,
    ip15_prin INTEGER,
    ip15_pric INTEGER,
    ip15_sein INTEGER,
    ip15_sec INTEGER,
    ip15_msys INTEGER,
    ip_der INTEGER,
    ip_noder INTEGER,
    il_ent INTEGER,
    il_otent INTEGER,
    ip_act INTEGER,
    ip_ocu INTEGER,
    ip_des INTEGER,
    ip_inac INTEGER,
    ip_noing INTEGER,
    ip_1sm INTEGER,
    ip_1a2sm INTEGER,
    ip_m2sm INTEGER,
    ivivph INTEGER,
    iv_agent INTEGER,
    iv_noag INTEGER,
    iv_dren INTEGER,
    iv_nodren INTEGER,
    iv_elec INTEGER,
    iv_noelec INTEGER,
    iv_tier INTEGER,
    iv_leña INTEGER
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\bd_migracion.csv
CREATE TABLE IF NOT EXISTS development.bd_migracion(
    cve_ent CHAR(2) NOT NULL,
    nom_ent VARCHAR(32) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    cve_geo CHAR(5) NOT NULL,
    nom_mun VARCHAR(80) NOT NULL,    
    mun_ori VARCHAR(80) NOT NULL,
    id_region SMALLINT NOT NULL,
    region VARCHAR(20) NOT NULL,
    gpo_mun CHAR(1) NOT NULL,
    pob5_mas INTEGER,
    pob_ment NUMERIC(5,2),
    pob_mmcp NUMERIC(5,2),
    pob_otrm NUMERIC(5,2),
    pob_enne NUMERIC(5,2),
    pob_oten NUMERIC(5,2),
    pob_lune NUMERIC(5,2),
    tot_viv INTEGER,
    viv_rem NUMERIC(5,2),
    viv_emig NUMERIC(5,2),
    viv_circ NUMERIC(5,2),
    viv_ret NUMERIC(5,2),
    iim_2010 NUMERIC(5,4),
    iim_a100 NUMERIC(5,4),
    gim_2010 VARCHAR(10) NOT NULL,
    lug_edo SMALLINT,
    lug_nal SMALLINT,
    catm_10 VARCHAR(20)
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\bd_pob_afrodesc.csv
CREATE TABLE IF NOT EXISTS development.bd_pob_afrodesc(
    cve_ent CHAR(2) NOT NULL,
    nom_ent VARCHAR(32) NOT NULL,
    cve_mun VARCHAR(23) NOT NULL,
    nom_mun VARCHAR(80) NOT NULL,
    mun_ori VARCHAR(80) NOT NULL,
    id_region SMALLINT,
    region VARCHAR(20),
    pobt_15 INTEGER,
    afr_si NUMERIC(5,2),
    afr_parc NUMERIC(5,2),
    afr_no NUMERIC(5,2),
    afr_ns NUMERIC(5,2),
    afr_ne NUMERIC(5,2)
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\bd_pob_gpo_edad_quinq.csv
CREATE TABLE IF NOT EXISTS development.bd_pob_gpo_edad_quinq(
    cve_ent CHAR(2) NOT NULL,
    nom_ent VARCHAR(32) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    nom_mun VARCHAR(80) NOT NULL,
    mun_ori VARCHAR(80) NOT NULL,
    gpo_quin VARCHAR(15) NOT NULL,
    pobq_15 INTEGER,
    pobqm_15 INTEGER,
    pobqf_15 INTEGER,
    p_pobq NUMERIC(5,2),
    p_pobqm NUMERIC(5,2),
    p_pobqf NUMERIC(5,2)
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\bd_socioec_caract.csv
CREATE TABLE IF NOT EXISTS development.bd_socioec_caract(
    cve_ent CHAR(2) NOT NULL,
    nom_ent VARCHAR(32) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    cve_geo CHAR(5) NOT NULL,
    nom_mun VARCHAR(80) NOT NULL,
    mun_ori VARCHAR(80) NOT NULL,
    id_region SMALLINT,
    region VARCHAR(20),
    gpo_mun CHAR(1) NOT NULL,
    pobt_15 INTEGER,
    pobm_15 INTEGER,
    pobf_15 INTEGER,
    pro_hv_10 NUMERIC(3,2),
    hvi_10 INTEGER,
    p_hif_10 NUMERIC(5,2),
    iesp_vid NUMERIC(5,4),
    pobt_10 INTEGER,
    t_crecma NUMERIC(5,3),
    pob12_mas INTEGER,
    p_pea_t NUMERIC(5,2),
    p_pea_oc NUMERIC(5,2),
    p_pea_de NUMERIC(5,2),
    pob_ocup INTEGER,
    p_pob_1s NUMERIC(5,2),
    p_pob_a2s NUMERIC(5,2),
    p_pob_m2s NUMERIC(5,2),
    p_ing_ne NUMERIC(5,2),
    p_sec_pri NUMERIC(5,2),
    p_sec_sec NUMERIC(5,2),
    p_sec_ter NUMERIC(5,2),
    p_sec_ne NUMERIC(5,2),
    pob15_mas INTEGER,
    p_alf NUMERIC(5,2),
    p_analf NUMERIC(5,2),
    p_alf_ne NUMERIC(5,2),
    p_sin_esc NUMERIC(5,2),
    p_edu_bas NUMERIC(5,2),
    p_edu_med NUMERIC(5,2),
    p_edu_sup NUMERIC(5,2),
    p_edu_ne NUMERIC(5,2),
    esc_prom NUMERIC(4,2),
    p_pob_af NUMERIC(5,2),
    p_no_af NUMERIC(5,2),
    p_af_ne NUMERIC(5,2),
    viv_p_hab INTEGER,
    ocu_vpart INTEGER,
    oag_ent_t NUMERIC(5,2),
    oag_denv NUMERIC(5,2),
    oag_fuev NUMERIC(5,2),
    oacarre_t NUMERIC(5,2),
    oc_viv_ag INTEGER,
    o_ag_sp NUMERIC(5,2),
    o_pozc NUMERIC(5,2),
    o_pozp NUMERIC(5,2),
    o_pip NUMERIC(5,2),
    o_otrv NUMERIC(5,2),
    o_otrl NUMERIC(5,2),
    o_ne NUMERIC(5,2),
    odren_t NUMERIC(5,2),
    odren_red NUMERIC(5,2),
    odren_fos NUMERIC(5,2),
    odren_bar NUMERIC(5,2),
    odren_rio NUMERIC(5,2),
    osindren NUMERIC(5,2),
    odren_ne NUMERIC(5,2),
    vag_ent_t NUMERIC(5,2),
    viag_denv NUMERIC(5,2),
    viag_fuev NUMERIC(5,2),
    viacarr_t NUMERIC(5,2),
    vidren_t NUMERIC(5,2),
    vidre_red NUMERIC(5,2),
    vidre_fos NUMERIC(5,2),
    vidre_bar NUMERIC(5,2),
    vidre_rio NUMERIC(5,2),
    visindre NUMERIC(5,2),
    vidre_ne NUMERIC(5,2),
    vi_elec NUMERIC(5,2),
    vi_no_elec NUMERIC(5,2),
    vi_ele_ne NUMERIC(5,2),
    v_con_san NUMERIC(5,2),
    vi_taza NUMERIC(5,2),
    vi_letri NUMERIC(5,2),
    vi_no_san NUMERIC(5,2),
    vi_san_ne NUMERIC(5,2),
    vi_res_sp NUMERIC(5,2),
    vi_res_ba NUMERIC(5,2),
    vi_res_qu NUMERIC(5,2),
    vi_res_ti NUMERIC(5,2),
    vi_res_ne NUMERIC(5,2)
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\bd_socioec_diagn.csv
CREATE TABLE IF NOT EXISTS development.bd_socioec_diagn(
    nom_camp SMALLINT,
    cve_ent CHAR(2) NOT NULL,
    nom_ent VARCHAR(32) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    cve_geo CHAR(5) NOT NULL,
    nom_mun VARCHAR(80) NOT NULL,
    mun_ori VARCHAR(80) NOT NULL,
    id_region SMALLINT,
    region VARCHAR(20),
    gpo_mun CHAR(1) NOT NULL,
    irz_s_00 NUMERIC(4,3),
    irz_s_05 NUMERIC(4,3),
    irz_s_10 NUMERIC(4,3),
    irz_s_15 NUMERIC(4,3),
    grz_s_00 VARCHAR(8),
    grz_s_05 VARCHAR(8),
    grz_s_10 VARCHAR(8),
    grz_s_15 VARCHAR(8),
    lrz_s_00 SMALLINT,
    lrz_s_05 SMALLINT,
    lrz_s_10 SMALLINT,
    lrz_s_15 SMALLINT,
    marg_i_15 NUMERIC(3,2),
    marg_g_15 VARCHAR(8),
    marg_l_15 SMALLINT,
    p_pbr_10 NUMERIC(5,2),
    p_pbr_15 NUMERIC(5,2),
    h_pb_10 INTEGER,
    h_pb_15 INTEGER,
    p_pm_10 NUMERIC(5,2),
    p_pm_15 NUMERIC(5,2),
    h_pm_10 INTEGER,
    h_pm_15 INTEGER,
    p_pex_10 NUMERIC(5,2),
    p_pex_15 NUMERIC(5,2),
    h_pex_10 INTEGER,
    h_pex_15 INTEGER,
    p_vu_10 NUMERIC(5,2),
    p_vu_15 NUMERIC(5,2),
    h_vu_10 INTEGER,
    h_vu_15 INTEGER,
    p_nvu_10 NUMERIC(5,2),
    p_nvu_15 NUMERIC(5,2),
    h_nvu_10 INTEGER,
    h_nvu_15 INTEGER,
    p_red_10 NUMERIC(5,2),
    p_red_15 NUMERIC(5,2),
    ha_red_10 INTEGER,
    ha_red_15 INTEGER,
    p_ib_10 NUMERIC(5,2),
    p_ib_15 NUMERIC(5,2),
    h_ib_10 INTEGER,
    h_ib_15 INTEGER,
    p_ibm_10 NUMERIC(5,2),
    p_ibm_15 NUMERIC(5,2),
    h_ibm_10 INTEGER,
    h_ibm_15 INTEGER
);

-------------------------------------------------------------------
--Esta sección es para los catalogos de las tablas auxiliares del componente socioeconómico

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\dd_ageb_caract.csv
CREATE TABLE IF NOT EXISTS development.dd_ageb_caract(
    id SMALLINT,
    nombre VARCHAR(10),
    tipo VARCHAR(10),
    unidad VARCHAR(20),
    descripcion TEXT,
    fuente VARCHAR(40),
    año SMALLINT,
    web TEXT,
    metadatos TEXT
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\dd_ageb_diag_pobr.csv
CREATE TABLE IF NOT EXISTS development.dd_ageb_diag_pobr(
    id SMALLINT,
    nombre VARCHAR(10),
    tipo VARCHAR(10),
    unidad VARCHAR(20),
    descripcion VARCHAR(120),
    fuente VARCHAR(40),
    año SMALLINT,
    web TEXT,
    metadatos TEXT
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\dd_ageb_diag_rezago.csv
CREATE TABLE IF NOT EXISTS development.dd_ageb_diag_rezago(
    id SMALLINT,
    nombre VARCHAR(10),
    tipo VARCHAR(10),
    unidad VARCHAR(20),
    descripcion VARCHAR(120),
    fuente VARCHAR(40),
    año SMALLINT,
    web TEXT,
    metadatos TEXT
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\dd_idp.csv
CREATE TABLE IF NOT EXISTS development.dd_idp(
    nombre VARCHAR(10),
    unidad VARCHAR(20),
    descripcion VARCHAR(120),
    fuente VARCHAR(40),
    año SMALLINT,
    web TEXT,
    metadatos TEXT
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\dd_indigena.csv
CREATE TABLE IF NOT EXISTS development.dd_indigena(
    id SMALLINT,
    nombre VARCHAR(10),
    tipo VARCHAR(10),
    unidad VARCHAR(20),
    descripcion TEXT,
    fuente VARCHAR(40),
    año SMALLINT,
    web TEXT,
    metadatos TEXT
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\dd_migracion.csv
CREATE TABLE IF NOT EXISTS development.dd_migracion(
    id SMALLINT,
    nombre VARCHAR(10),
    tipo VARCHAR(10),
    unidad TEXT,
    descripcion TEXT,
    fuente TEXT,
    año SMALLINT,
    web TEXT,
    metadatos TEXT
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\dd_pob_afrodesc.csv
CREATE TABLE IF NOT EXISTS development.dd_pob_afrodesc(
    id SMALLINT,
    nombre VARCHAR(10),
    tipo VARCHAR(10),
    unidad VARCHAR(20),
    descripcion VARCHAR(120),
    fuente VARCHAR(40),
    año SMALLINT,
    web TEXT
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\dd_pob_gpo_edad_quinq.csv
CREATE TABLE IF NOT EXISTS development.dd_pob_gpo_edad_quinq(
    id SMALLINT,
    nombre VARCHAR(10),
    tipo VARCHAR(10),
    unidad VARCHAR(20),
    descripcion VARCHAR(120),
    fuente VARCHAR(40),
    año SMALLINT,
    web TEXT,
    metadatos TEXT
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\dd_socioec_caract.csv
CREATE TABLE IF NOT EXISTS development.dd_socioec_caract(
    id SMALLINT,
    nombre VARCHAR(10),
    tipo VARCHAR(10),
    unidad TEXT,
    descripcion TEXT,
    fuente TEXT,
    año SMALLINT,
    web TEXT,
    metadatos TEXT
);

--Se crea una tabla para cargar la información de la tabla \sub_socioeconomico\dd_socioec_diagn.csv
CREATE TABLE IF NOT EXISTS development.dd_socioec_diagn(
    id SMALLINT,
    nombre VARCHAR(10),
    tipo VARCHAR(10),
    unidad TEXT,
    descripcion TEXT,
    fuente TEXT,
    año SMALLINT,
    web TEXT,
    metadatos TEXT
);