--En caso que existan los catálogos y tablas del componente productivo, se eliminan

DROP TABLE IF EXISTS
    development.ct_rama,
    development.ct_sector,
    development.ct_subsector
    CASCADE;