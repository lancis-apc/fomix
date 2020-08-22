--Se borran las tablas generales si ya existen
--Corresponde al archivo db_banco_datos_yucatan.sql
DROP TABLE IF EXISTS development.municipios, development.agebs CASCADE;
DROP TABLE IF EXISTS development.regiones, development.estados CASCADE;
