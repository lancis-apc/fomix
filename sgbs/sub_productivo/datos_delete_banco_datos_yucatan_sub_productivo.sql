/*
  ##############################################
  Se borran las tablas del componente produvtivo
  ##############################################
*/

DELETE FROM sub_productivo.ramas_municipios;
DELETE FROM sub_productivo.coef_esp;
DELETE FROM sub_productivo.coef_tec;
DELETE FROM sub_productivo.conc_indust;
DELETE FROM sub_productivo.denue;
DELETE FROM sub_productivo.mat_tc_muni;
DELETE FROM sub_productivo.mat_tc_muni_rama;
DELETE FROM sub_productivo.mat_tc_muni_subsector;
DELETE FROM sub_productivo.mat_tc_rama;
DELETE FROM sub_productivo.mat_tc_subsector;
DELETE FROM sub_productivo.pib;
DELETE FROM sub_productivo.act_ec_valores;
DELETE FROM sub_productivo.act_ec_cantidades;

/*
  #################################################
  Se borran los catalogos del componente produvtivo
  #################################################
*/

DELETE FROM sub_productivo.ct_act_ec_cantidades;
DELETE FROM sub_productivo.ct_act_ec_valores;
DELETE FROM sub_productivo.ct_pib;
DELETE FROM sub_productivo.ct_mat_tc;
DELETE FROM sub_productivo.ct_denue;
DELETE FROM sub_productivo.ct_conc_indust;
DELETE FROM sub_productivo.ct_coef_tec;
DELETE FROM sub_productivo.ct_coef_esp;
DELETE FROM sub_productivo.ct_ramas;
DELETE FROM sub_productivo.ct_subsectores;
DELETE FROM sub_productivo.ct_sectores;