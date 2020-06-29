--Crea el schema
CREATE SCHEMA IF NOT EXISTS development;

--Esta es la sección "general"

--Se crea la tabla para los estados
CREATE TABLE development.estados (
    clave_entidad CHAR(2) PRIMARY KEY,
    entidad_federativa VARCHAR(32) NOT NULL
);

--Se crea la tabla para región
CREATE TABLE development.regiones (
    id_region SMALLINT PRIMARY KEY,
    region VARCHAR(20) NOT NULL
);

--Se crea la tabla para los municipios
CREATE TABLE development.municipios (
    clave_municipio CHAR(3) PRIMARY KEY,
    municipio VARCHAR(80) NOT NULL,
    id_region SMALLINT REFERENCES development.regiones(id_region),
    cve_ent CHAR(2) REFERENCES development.estados(clave_entidad)
);

--Se crea la tabla para las agebs
CREATE TABLE development.agebs (
    clave_ageb CHAR(4) PRIMARY KEY,
    fol_ageb CHAR(13) NOT NULL,
    cve_mun CHAR REFERENCES development.municipios(clave_municipio)
);