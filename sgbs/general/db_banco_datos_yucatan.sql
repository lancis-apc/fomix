--Crea el schema
CREATE SCHEMA IF NOT EXISTS general;

--Esta es la sección "general"

--Se crea la tabla para los estados
CREATE TABLE general.estados (
    cve_ent CHAR(2) PRIMARY KEY,
    entidad_federativa VARCHAR(32) NOT NULL
);

--Se crea la tabla para región
CREATE TABLE general.regiones (
    id_region SMALLINT PRIMARY KEY,
    region VARCHAR(20) NOT NULL
);

--Se crea la tabla para los municipios
CREATE TABLE general.municipios (
    cve_mun CHAR(3) PRIMARY KEY,
    municipio VARCHAR(80) NOT NULL,
    id_region SMALLINT REFERENCES general.regiones(id_region),
    cve_ent CHAR(2) NOT NULL REFERENCES general.estados(cve_ent)
);

--Se crea la tabla para las agebs
CREATE TABLE general.agebs (
    fol_ageb VARCHAR(14) PRIMARY KEY,
    cve_ageb VARCHAR(4) NOT NULL,
    nom_loc VARCHAR(17) NOT NULL,
    cve_mun CHAR(3) REFERENCES general.municipios(cve_mun)
);