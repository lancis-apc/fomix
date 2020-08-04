/*
  ####################################################################
  Se crean las tablas que alojan los archivos de componente productivo
  ####################################################################
*/

-- Catálogo de rama de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)

CREATE TABLE IF NOT EXISTS development.tb_rama (
  act_ec_cod CHAR(4) NOT NULL,
  rama VARCHAR(130) NOT NULL
);

-- Catálogo de sector de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)

CREATE TABLE IF NOT EXISTS development.tb_sector(
    sector VARCHAR(10) NOT NULL,
    descripcion VARCHAR(40) NOT NULL
);

-- Catálogo de subsector de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)

CREATE TABLE IF NOT EXISTS development.tb_subsector(
    act_ec_sub_cod CHAR(2) NOT NULL,
    subsector VARCHAR(160) NOT NULL
);

-- Tabla de principal rama de actividad económica del municipio

CREATE TABLE IF NOT EXISTS development.bd_activ_ec_principal(
    serie SMALLINT NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    act_ec_cod CHAR(4) NOT NULL
);

-- Tabla de Coeficientes de especialización

CREATE TABLE IF NOT EXISTS development.bd_coef_esp (
    serie SMALLINT NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    act_ec_cod CHAR(4) NOT NULL,
    ce_pbt NUMERIC(10,6) NOT NULL,
    ce_per_ocup NUMERIC(10,6) NOT NULL
);

-- Tabla de  Coeficientes técnicos

CREATE TABLE IF NOT EXISTS development.bd_coef_tec (
    sector VARCHAR(10) NOT NULL,
    agr_pesca_coef NUMERIC(5,4) NOT NULL,
    mineria_coef NUMERIC(5,4) NOT NULL,
    en_elec_coef NUMERIC(5,4) NOT NULL,
    construc_coef NUMERIC(5,4) NOT NULL,
    manufac_coef NUMERIC(5,4) NOT NULL,
    comercio_coef NUMERIC(5,4) NOT NULL,
    trans_cor_coef NUMERIC(5,4) NOT NULL,
    med_masiv_coef NUMERIC(5,4) NOT NULL,
    s_finan_coef NUMERIC(5,4) NOT NULL,
    s_inmob_coef NUMERIC(5,4) NOT NULL,
    s_prof_coef NUMERIC(5,4) NOT NULL,
    corporat_coef NUMERIC(5,4) NOT NULL,
    s_ap_neg_coef NUMERIC(5,4) NOT NULL,
    s_educ_coef NUMERIC(5,4) NOT NULL,
    s_salud_coef NUMERIC(5,4) NOT NULL,
    s_espar_coef NUMERIC(5,4) NOT NULL,
    s_aloj_alm_coef NUMERIC(5,4) NOT NULL,
    ot_serv_coef NUMERIC(5,4) NOT NULL,
    act_gub_coef NUMERIC(5,4) NOT NULL
);

-- Tabla de Concentración Industrial

CREATE TABLE IF NOT EXISTS development.bd_conc_indust (
    serie SMALLINT NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    concen_ind NUMERIC(9,6) NOT NULL
);

-- Tabla de Cantidad de unidades económicas que operan con distintas cantidades de trabajadores por rama de actividad económica por municipio

CREATE TABLE IF NOT EXISTS development.bd_denue_yuc_rama (
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    act_ec_cod CHAR(4) NOT NULL,
    de_0_a_5_personas INTEGER NOT NULL,
    de_6_a_10_personas INTEGER NOT NULL,
    de_11_a_30_personas INTEGER NOT NULL,
    de_31_a_50_personas INTEGER NOT NULL,
    de_51_a_100_personas INTEGER NOT NULL,
    de_101_a_250_personas INTEGER NOT NULL,
    de_250_y_mas_personas INTEGER NOT NULL
);

-- Tabla de Tasa de crecimiento de la inversión, personal ocupado,producción fija bruta y unidades económicas del municipio para 2009 y 2014.

CREATE TABLE IF NOT EXISTS  development.bd_mat_tc_muni (
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    tc_inv_total_mun NUMERIC(10,6) NOT NULL,
    tc_per_ocupado_mun NUMERIC(10,6) NOT NULL,
    tc_prod_brut_tot_mun NUMERIC(10,6) NOT NULL,
    tc_ue_mun NUMERIC(10,6) NOT NULL
);

-- Tabla de Tasa de crecimiento de inversión, personal ocupado,producción fija bruta y unidades económicas de cada rama de actividad económica dentro del total municipal para 2009 y 2014.

CREATE TABLE IF NOT EXISTS development.bd_mat_tc_muni_rama (
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    act_ec_cod CHAR(4) NOT NULL,
    tc_inv_total NUMERIC(10,6) NOT NULL,
    tc_per_ocupado NUMERIC(10,6) NOT NULL,
    tc_prod_brut_tot NUMERIC(10,6) NOT NULL,
    tc_ue NUMERIC(10,6) NOT NULL
);

-- Tabla de Tasa de crecimiento de inversión, personal ocupado,producción fija bruta y unidades económicas de cada subsector de actividad económica dentro del total municipal para 2009 y 2014.

CREATE TABLE IF NOT EXISTS development.bd_mat_tc_muni_subsector (
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    act_ec_sub_cod CHAR(2) NOT NULL,
    tc_inv_total_mun_subsector NUMERIC(10,6) NOT NULL,
    tc_per_ocupado_mun_subsector NUMERIC(10,6) NOT NULL,
    tc_prod_brut_tot_mun_subsector NUMERIC(10,6) NOT NULL,
    tc_ue_mun_subsector NUMERIC(10,6) NOT NULL
);

-- Tabla de Tasa de crecimiento de inversión, personal ocupado,producción fija bruta y unidades económicas por rama de actividad económica para 2009 y 2014.

CREATE TABLE IF NOT EXISTS development.bd_mat_tc_rama (
    act_ec_cod CHAR(4) NOT NULL,
    serie SMALLINT NOT NULL,
    tc_inv_total_rama NUMERIC(10,6) NOT NULL,
    tc_per_ocupado_rama NUMERIC(10,6) NOT NULL,
    tc_prod_brut_tot_rama NUMERIC(10,6) NOT NULL,
    tc_ue_rama NUMERIC(10,6) NOT NULL
);

-- Tabla de Tasa de crecimiento de inversión, personal ocupado,producción fija bruta y unidades económicas por subsector de actividad económica para 2009 y 2014.

CREATE TABLE IF NOT EXISTS development.bd_mat_tc_subsector (
    act_ec_sub_cod CHAR(2) NOT NULL,
    serie SMALLINT NOT NULL,
    tc_inv_total_subsector NUMERIC(10,6) NOT NULL,
    tc_per_ocupado_subsector NUMERIC(10,6) NOT NULL,
    tc_prod_brut_tot_subsector NUMERIC(10,6) NOT NULL,
    tc_ue_subsector NUMERIC(10,6) NOT NULL
);

-- Tabla de Producto Interno Bruto anual total y por sectores del estado de Yucatán

CREATE TABLE IF NOT EXISTS development.bd_pib_yucatan (
    serie SMALLINT NOT NULL,
    pib_total NUMERIC(9,3) NOT NULL,
    pib_prim NUMERIC(9,3) NOT NULL,
    pib_sec NUMERIC(9,3) NOT NULL,
    pib_ter NUMERIC(9,3) NOT NULL,
    tc_anual NUMERIC(4,3) NOT NULL
);

-- Tabla de Participación de cada rama de actividad económica en el total municipal de la inversión, personal ocupado,producción fija bruta y unidades económicas para 2004, 2009 y 2014.

CREATE TABLE IF NOT EXISTS development.bd_yuc_porcentajes_act_ec_muni (
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    ct_rama_act_ec_cod CHAR(4) NOT NULL,
    prod_brut_tot_valor NUMERIC(8,3) NOT NULL,
    inv_total_valor NUMERIC(7,3) NOT NULL,
    per_ocupado_valor INTEGER NOT NULL,
    ue_valor INTEGER NOT NULL,
    prod_brut_tot_porcen NUMERIC(10,6) NOT NULL,
    inv_total_porcen NUMERIC(10,6) NOT NULL,
    per_ocupado_porcen NUMERIC(10,6) NOT NULL,
    ue_porcen NUMERIC(10,6) NOT NULL
);