--En caso que existan los catálogos y tablas del componente productivo, se eliminan

DROP TABLE IF EXISTS 
    development.tb_rama,
    development.tb_sector,
    development.tb_subsector,
    development.bd_activ_ec_muni,
    development.bd_activ_ec_principal,
    development.bd_coef_esp,
    development.bd_coef_tec,
    development.bd_conc_indust,
    development.bd_denue_yuc_rama,
    development.bd_denue_yuc_subsector,
    development.bd_mat_tc_muni,
    development.bd_mat_tc_muni_rama,
    development.bd_mat_tc_muni_subsector,
    development.bd_mat_tc_rama,
    development.bd_mat_tc_subsector,
    development.bd_pib_yucatan,
    development.bd_yuc_porcentajes_act_ec_muni,
    development.bd_yuc_porcentajes_act_ec_subsector_muni,
    development.bd_yuc_porcentajes_muni
    CASCADE;
