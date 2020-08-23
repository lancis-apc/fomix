--En caso que existan los catálogos y tablas del componente productivo, se eliminan

DROP TABLE IF EXISTS 
    auxiliar.tb_rama,
    auxiliar.tb_sector,
    auxiliar.tb_subsector,
    auxiliar.bd_activ_ec_principal,
    auxiliar.bd_coef_esp,
    auxiliar.bd_coef_tec,
    auxiliar.bd_conc_indust,
    auxiliar.bd_denue_yuc_rama,
    auxiliar.bd_mat_tc_muni,
    auxiliar.bd_mat_tc_muni_rama,
    auxiliar.bd_mat_tc_muni_subsector,
    auxiliar.bd_mat_tc_rama,
    auxiliar.bd_mat_tc_subsector,
    auxiliar.bd_pib_yucatan,
    auxiliar.bd_yuc_porcentajes_act_ec_muni
    CASCADE;
