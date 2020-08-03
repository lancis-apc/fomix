--En caso que existan los catálogos y tablas del componente productivo, se eliminan

DROP TABLE IF EXISTS
    development.ct_act_ec_cantidades,
    development.ct_act_ec_valores,
    development.ct_ramas,
    development.ct_subsectores,
    development.ct_sectores
    CASCADE;