/*
    *****************************************************************
    Se crean la tablas del para la información del componente general
    *****************************************************************
*/

-- Tabla de CONABIO con los municipios
COPY auxiliar.municipios_csv
FROM '/mnt/c/Dropbox (LANCIS)/CARPETAS_TRABAJO/atorrijos/banco_datos/procesamiento/municipios.csv'
WITH CSV HEADER;