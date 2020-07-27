--En caso que existan los catálogos y tablas del componente productivo, se eliminan

DROP TABLE IF EXISTS development.ct_rama,
    development.ct_sector,
    development.ct_subsector,
    development.tb_activ_ec_muni,
    development.tb_activ_ec_principal,
    development.tb_coef_esp,
    development.tb_coef_tec,
    development.tb_conc_indust,
    development.tb_denue_yuc_rama,
    development.tb_denue_yuc_subsector,
    development.tb_mat_tc_muni,
    development.tb_mat_tc_muni_rama,
    development.tb_mat_tc_muni_subsector,
    development.tb_mat_tc_rama,
    development.tb_mat_tc_subsector,
    development.tb_pib_yucatan,
    development.tb_yuc_porcentajes_act_ec_muni,
    development.tb_yuc_porcentajes_act_ec_subsector_muni,
    development.tb_yuc_porcentajes_muni
    CASCADE;
