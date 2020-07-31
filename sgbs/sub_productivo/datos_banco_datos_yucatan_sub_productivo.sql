/*
    ******************************************
    Sobre los catálogos
    ******************************************
*/

-- Importamos el csv al catálogo de sector de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)

DELETE FROM development.ct_subsector;
COPY development.ct_subsector(act_ec_sub_cod,subsector)
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_productivo/finales/csv/catalogos/ct_subsector.csv'
WITH CSV HEADER;

-- Importamos el csv al catálogo de subsector de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)

DELETE FROM development.ct_sector;
COPY development.ct_sector (sector,descripcion)
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_productivo/finales/csv/catalogos/ct_sector.csv'
WITH CSV HEADER;

-- Se ingresan los valores del catálogo de rama
INSERT INTO development.ct_rama(act_ec_cod, rama, subsector_id)
SELECT act_ec_cod, rama, LEFT(act_ec_cod,2) AS subsector_id FROM development.tb_rama;

/*
    ******************************************
    Sobre las tablas del componente produvtivo
    ******************************************
*/

-- Importamos el csv a la Tabla de principal rama de actividad económica del municipio

DELETE FROM development.ramas_municipios;
COPY development.ramas_municipios(serie, cve_mun, act_ec_cod)
FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_productivo/finales/csv/tablas/bd_activ_ec_principal.csv'
WITH CSV HEADER;