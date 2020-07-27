/*
******************************************
Importamos los catálogos de nuestros csv
******************************************
*/

-- Importamos el csv al catálogo de rama de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)

DELETE FROM development.ct_rama;
\copy development.ct_rama (act_ec_cod,rama) FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_productivo/finales/csv/catalogos/ct_rama.csv' WITH CSV HEADER;

-- Importamos el csv al catálogo de sector de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)

DELETE FROM development.ct_subsector;
\copy development.ct_subsector(act_ec_sub_cod,subsector) FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_productivo/finales/csv/catalogos/ct_subsector.csv' WITH CSV HEADER;

-- Importamos el csv al catálogo de subsector de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)

DELETE FROM development.ct_sector;
\copy development.ct_sector (sector,descripcion) FROM '/mnt/c/Dropbox (LANCIS)/FOMIX/fmx_insumos/fmx_estadisticas/banco_datos/procesamiento/sub_productivo/finales/csv/catalogos/ct_sector.csv' WITH CSV HEADER;
