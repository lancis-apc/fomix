/*
  #############################################
  Creamos las tablas del componente productivo
  #############################################
*/

-- Tabla de Producción Bruta, Inversión, Unidades Económicas y Personal Ocupado por municipios

CREATE TABLE IF NOT EXISTS  development.tb_activ_ec_muni (
  serie INTEGER  NOT NULL,
  cve_mun VARCHAR(3) NOT NULL,
  prod_brut DOUBLE PRECISION NULL,
  inv DOUBLE PRECISION NULL,
  ue INTEGER  NULL,
  per_ocup INTEGER  NULL,
  FOREIGN KEY(cve_mun)
    REFERENCES development.ct_municipio(cve_mun)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(serie)
    REFERENCES development.series(serie)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);

-- Tabla de principal rama de actividad económica del municipio

CREATE TABLE IF NOT EXISTS  development.tb_activ_ec_principal (
  serie INTEGER  NOT NULL,
  cve_mun VARCHAR(3) NOT NULL,
  act_ec_cod CHAR(4) NOT NULL,
  FOREIGN KEY(act_ec_cod)
    REFERENCES development.ct_rama(act_ec_cod)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(cve_mun)
    REFERENCES development.ct_municipio(cve_mun)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(serie)
    REFERENCES development.series(serie)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);

-- Tabla de Coeficientes de especialización

CREATE TABLE IF NOT EXISTS  development.tb_coef_esp (
  serie INTEGER  NOT NULL,
  cve_mun VARCHAR(3) NOT NULL,
  act_ec_cod CHAR(4) NOT NULL,
  ce_pbt DOUBLE PRECISION NULL,
  ce_per_ocup DOUBLE PRECISION NULL,
  FOREIGN KEY(act_ec_cod)
    REFERENCES development.ct_rama(act_ec_cod)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(cve_mun)
    REFERENCES development.ct_municipio(cve_mun)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(serie)
    REFERENCES development.series(serie)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);

-- Tabla de  Coeficientes técnicos

CREATE TABLE IF NOT EXISTS  development.tb_coef_tec (
  sector VARCHAR(30)  NOT NULL,
  agr_pesca_coef DOUBLE PRECISION NULL,
  mineria_coef DOUBLE PRECISION NULL,
  en_elec_coef DOUBLE PRECISION NULL,
  construc_coef DOUBLE PRECISION NULL,
  manufac_coef DOUBLE PRECISION NOT NULL,
  comercio_coef DOUBLE PRECISION NULL,
  trans_cor_coef DOUBLE PRECISION NULL,
  med_masiv_coef DOUBLE PRECISION NULL,
  s_finan_coef DOUBLE PRECISION NULL,
  s_inmob_coef DOUBLE PRECISION NULL,
  s_prof_coef DOUBLE PRECISION NULL,
  corporat_coef DOUBLE PRECISION NULL,
  s_ap_neg_coef DOUBLE PRECISION NULL,
  s_educ_coef DOUBLE PRECISION NULL,
  s_salud_coef DOUBLE PRECISION NULL,
  s_espar_coef DOUBLE PRECISION NULL,
  s_aloj_alm_coef DOUBLE PRECISION NULL,
  ot_serv_coef DOUBLE PRECISION NULL,
  act_gub_coef DOUBLE PRECISION NULL,
  FOREIGN KEY(sector)
    REFERENCES development.ct_sector(sector)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);

-- Tabla de Concentración Industrial

CREATE TABLE IF NOT EXISTS   development.tb_conc_indust (
  serie INTEGER  NOT NULL,
  cve_mun VARCHAR(3) NOT NULL,
  concen_ind DOUBLE PRECISION NULL,
  FOREIGN KEY(cve_mun)
    REFERENCES development.ct_municipio(cve_mun)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(serie)
    REFERENCES development.series(serie)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);

-- Tabla de Cantidad de unidades económicas que operan con distintas cantidades de trabajadores por rama de actividad económica por municipio

CREATE TABLE IF NOT EXISTS  development.tb_denue_yuc_rama (
  cve_mun VARCHAR(3) NOT NULL,
  serie INTEGER  NOT NULL,
  act_ec_cod CHAR(4) NOT NULL,
  de_0_a_5_personas INTEGER  NULL,
  de_6_a_10_personas INTEGER  NULL,
  de_11_a_30_personas INTEGER  NULL,
  de_31_a_50_personas INTEGER  NULL,
  de_51_a_100_personas INTEGER  NULL,
  de_101_a_250_personas INTEGER  NULL,
  de_250_y_mas_personas INTEGER  NULL,
  FOREIGN KEY(act_ec_cod)
    REFERENCES development.ct_rama(act_ec_cod)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(serie)
    REFERENCES development.series(serie)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(cve_mun)
    REFERENCES development.ct_municipio(cve_mun)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);

-- Tabla de Cantidad de unidades económicas que operan con distintas cantidades de trabajadores por subsector de actividad económica por municipio

CREATE TABLE IF NOT EXISTS  development.tb_denue_yuc_subsector (
  cve_mun VARCHAR(3) NOT NULL,
  serie INTEGER  NOT NULL,
  act_ec_sub_cod VARCHAR(2) NOT NULL,
  de_0_a_5_personas INTEGER  NULL,
  de_6_a_10_personas INTEGER  NULL,
  de_11_a_30_personas INTEGER  NULL,
  de_31_a_50_personas INTEGER  NULL,
  de_51_a_100_personas INTEGER  NULL,
  de_101_a_250_personas INTEGER  NULL,
  de_250_y_mas_personas INTEGER  NULL,
  FOREIGN KEY(act_ec_sub_cod)
    REFERENCES development.ct_subsector(act_ec_sub_cod)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(serie)
    REFERENCES development.series(serie)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(cve_mun)
    REFERENCES development.ct_municipio(cve_mun)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);

-- Tabla de Tasa de crecimiento de la inversión, personal ocupado,producción fija bruta y unidades económicas del municipio para 2009 y 2014.

CREATE TABLE IF NOT EXISTS  development.tb_mat_tc_muni (
  cve_mun VARCHAR(3) NOT NULL,
  serie INTEGER  NOT NULL,
  tc_inv_total_mun DOUBLE PRECISION NULL,
  tc_per_ocupado_mun DOUBLE PRECISION NULL,
  tc_prod_brut_tot_mun DOUBLE PRECISION NULL,
  tc_ue_mun DOUBLE PRECISION NULL,
  FOREIGN KEY(serie)
    REFERENCES development.series(serie)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(cve_mun)
    REFERENCES development.ct_municipio(cve_mun)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);

-- Tabla de Tasa de crecimiento de inversión, personal ocupado,producción fija bruta y unidades económicas de cada rama de actividad económica dentro del total municipal para 2009 y 2014.

CREATE TABLE IF NOT EXISTS  development.tb_mat_tc_muni_rama (
  cve_mun VARCHAR(3) NOT NULL,
  serie INTEGER  NOT NULL,
  act_ec_cod CHAR(4) NOT NULL,
  tc_inv_total DOUBLE PRECISION NULL,
  tc_per_ocupado DOUBLE PRECISION NULL,
  tc_prod_brut_tot DOUBLE PRECISION NULL,
  tc_ue DOUBLE PRECISION NULL,
  FOREIGN KEY(act_ec_cod)
    REFERENCES development.ct_rama(act_ec_cod)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(serie)
    REFERENCES development.series(serie)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(cve_mun)
    REFERENCES development.ct_municipio(cve_mun)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);

-- Tabla de Tasa de crecimiento de inversión, personal ocupado,producción fija bruta y unidades económicas de cada subsector de actividad económica dentro del total municipal para 2009 y 2014.

CREATE TABLE IF NOT EXISTS  development.tb_mat_tc_muni_subsector (
  cve_mun VARCHAR(3) NOT NULL,
  serie INTEGER  NOT NULL,
  act_ec_sub_cod VARCHAR(2) NOT NULL,
  tc_inv_total_mun_subsector DOUBLE PRECISION NULL,
  tc_per_ocupado_mun_subsector DOUBLE PRECISION NULL,
  tc_prod_brut_tot_mun_subsector DOUBLE PRECISION NULL,
  tc_ue_mun_subsector DOUBLE PRECISION NULL,
  FOREIGN KEY(act_ec_sub_cod)
    REFERENCES development.ct_subsector(act_ec_sub_cod)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(serie)
    REFERENCES development.series(serie)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(cve_mun)
    REFERENCES development.ct_municipio(cve_mun)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);

-- Tabla de Tasa de crecimiento de inversión, personal ocupado,producción fija bruta y unidades económicas por rama de actividad económica para 2009 y 2014.

CREATE TABLE IF NOT EXISTS  development.tb_mat_tc_rama (
  act_ec_cod CHAR(4) NOT NULL,
  serie INTEGER  NOT NULL,
  tc_inv_total_rama DOUBLE PRECISION NULL,
  tc_per_ocupado_rama DOUBLE PRECISION NULL,
  tc_prod_brut_tot_rama DOUBLE PRECISION NULL,
  tc_ue_rama DOUBLE PRECISION NULL,
  FOREIGN KEY(serie)
    REFERENCES development.series(serie)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(act_ec_cod)
    REFERENCES development.ct_rama(act_ec_cod)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);

-- Tabla de Tasa de crecimiento de inversión, personal ocupado,producción fija bruta y unidades económicas por subsector de actividad económica para 2009 y 2014.

CREATE TABLE IF NOT EXISTS  development.tb_mat_tc_subsector (
  act_ec_sub_cod VARCHAR(2) NOT NULL,
  serie INTEGER  NOT NULL,
  tc_inv_total_subsector DOUBLE PRECISION NULL,
  tc_per_ocupado_subsector DOUBLE PRECISION NULL,
  tc_prod_brut_tot_subsector DOUBLE PRECISION NULL,
  tc_ue_subsector DOUBLE PRECISION NULL,
  FOREIGN KEY(serie)
    REFERENCES development.series(serie)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(act_ec_sub_cod)
    REFERENCES development.ct_subsector(act_ec_sub_cod)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);

-- Tabla de Producto Interno Bruto anual total y por sectores del estado de Yucatán

CREATE TABLE IF NOT EXISTS  development.tb_pib_yucatan (
  serie INTEGER  NOT NULL,
  pib_total DOUBLE PRECISION  NULL,
  pib_prim DOUBLE PRECISION  NULL,
  pib_sec DOUBLE PRECISION  NULL,
  pib_ter DOUBLE PRECISION  NULL,
  tc_anual DOUBLE PRECISION NULL,
  FOREIGN KEY(serie)
    REFERENCES development.series(serie)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);

-- Tabla de Participación de cada rama de actividad económica en el total municipal de la inversión, personal ocupado,producción fija bruta y unidades económicas para 2004, 2009 y 2014.

CREATE TABLE IF NOT EXISTS  development.tb_yuc_porcentajes_act_ec_muni (
  cve_mun VARCHAR(3) NOT NULL,
  serie INTEGER  NOT NULL,
  ct_rama_act_ec_cod CHAR(4) NOT NULL,
  prod_brut_tot_valor DOUBLE PRECISION NULL,
  inv_total_valor DOUBLE PRECISION NULL,
  per_ocupado_valor DOUBLE PRECISION NULL,
  ue_valor DOUBLE PRECISION NULL,
  prod_brut_tot_porcen DOUBLE PRECISION NULL,
  inv_total_porcen DOUBLE PRECISION NULL,
  per_ocupado_porcen DOUBLE PRECISION NULL,
  ue_porcen DOUBLE PRECISION NULL,
  FOREIGN KEY(ct_rama_act_ec_cod)
    REFERENCES development.ct_rama(act_ec_cod)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(serie)
    REFERENCES development.series(serie)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(cve_mun)
    REFERENCES development.ct_municipio(cve_mun)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);

-- Tabla de Participación de cada subsector de actividad económica en el total municipal de la inversión, personal ocupado,producción fija bruta y unidades económicas para 2004, 2009 y 2014.

CREATE TABLE IF NOT EXISTS  development.tb_yuc_porcentajes_act_ec_subsector_muni (
  cve_mun VARCHAR(3) NOT NULL,
  serie INTEGER  NOT NULL,
  act_ec_sub_cod VARCHAR(2) NOT NULL,
  prod_brut_tot_valor DOUBLE PRECISION NULL,
  inv_total_valor DOUBLE PRECISION NULL,
  per_ocupado_valor DOUBLE PRECISION NULL,
  ue_valor DOUBLE PRECISION NULL,
  prod_brut_tot_porcen DOUBLE PRECISION NULL,
  inv_total_porcen DOUBLE PRECISION NULL,
  per_ocupado_porcen DOUBLE PRECISION NULL,
  ue_porcen DOUBLE PRECISION NULL,
  FOREIGN KEY(act_ec_sub_cod)
    REFERENCES development.ct_subsector(act_ec_sub_cod)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(serie)
    REFERENCES development.series(serie)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(cve_mun)
    REFERENCES development.ct_municipio(cve_mun)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);

-- Tabla de Participación de cada municipio en el total estatal de la inversión, personal ocupado,producción fija bruta y unidades económicas para 2004, 2009 y 2014.

CREATE TABLE IF NOT EXISTS  development.tb_yuc_porcentajes_muni (
  cve_mun VARCHAR(3) NOT NULL,
  serie INTEGER  NOT NULL,
  prod_brut_tot_valor DOUBLE PRECISION NULL,
  inv_total_valor DOUBLE PRECISION NULL,
  per_ocupado_valor DOUBLE PRECISION NULL,
  ue_valor DOUBLE PRECISION NULL,
  prod_brut_tot_porcen DOUBLE PRECISION NULL,
  inv_total_porcen DOUBLE PRECISION NULL,
  per_ocupado_porcen DOUBLE PRECISION NULL,
  ue_porcen DOUBLE PRECISION NULL,
  FOREIGN KEY(serie)
    REFERENCES development.series(serie)
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
  FOREIGN KEY(cve_mun)
    REFERENCES development.ct_municipio(cve_mun)
      ON DELETE RESTRICT
      ON UPDATE CASCADE
);
