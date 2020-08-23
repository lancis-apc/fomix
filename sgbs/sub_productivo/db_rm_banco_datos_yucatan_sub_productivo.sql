--En caso que existan los catálogos y tablas del componente productivo, se eliminan

DROP TABLE IF EXISTS
    sub_productivo.ct_act_ec_cantidades,
    sub_productivo.ct_act_ec_valores,
    sub_productivo.ct_ramas,
    sub_productivo.ct_subsectores,
    sub_productivo.ct_sectores
    CASCADE;