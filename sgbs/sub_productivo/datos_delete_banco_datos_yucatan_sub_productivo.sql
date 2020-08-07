/*
  ##############################################
  Se borran las tablas del componente produvtivo
  ##############################################
*/

DELETE FROM development.ramas_municipios;
DELETE FROM development.coef_esp;
DELETE FROM development.coef_tec;
DELETE FROM development.conc_indust;
DELETE FROM development.denue;
DELETE FROM development.mat_tc_muni;
DELETE FROM development.mat_tc_muni_rama;
DELETE FROM development.mat_tc_muni_subsector;
DELETE FROM development.mat_tc_rama;
DELETE FROM development.mat_tc_subsector;
DELETE FROM development.pib;
DELETE FROM development.act_ec_valores;
DELETE FROM development.act_ec_cantidades;

/*
  #################################################
  Se borran los catalogos del componente produvtivo
  #################################################
*/

DELETE FROM development.ct_act_ec_cantidades;
DELETE FROM development.ct_act_ec_valores;
DELETE FROM development.ct_pib;
DELETE FROM development.ct_mat_tc;
DELETE FROM development.ct_denue;
DELETE FROM development.ct_conc_indust;
DELETE FROM development.ct_coef_tec;
DELETE FROM development.ct_coef_esp;
DELETE FROM development.ct_ramas;
DELETE FROM development.ct_subsectores;
DELETE FROM development.ct_sectore;s