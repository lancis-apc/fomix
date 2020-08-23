--Se borran las tablas generales si ya existen
--Corresponde al archivo db_banco_datos_yucatan.sql
DROP TABLE IF EXISTS general.municipios, general.agebs CASCADE;
DROP TABLE IF EXISTS general.regiones, general.estados CASCADE;
