--Crea el schema
CREATE SCHEMA IF NOT EXISTS general;

--Esta es la sección "general"

--Se crea la tabla para las entidades
CREATE TABLE general.ct_entidades(
    cve_ent CHAR(2) PRIMARY KEY,
    entidad VARCHAR(40) NOT NULL
);

--Se crea la tabla para región
CREATE TABLE general.ct_regiones(
    cve_reg SMALLINT PRIMARY KEY,
    region VARCHAR(20) NOT NULL
);

--Se crea la tabla para los municipios
CREATE TABLE general.ct_municipios(
    cve_ent CHAR(2) NOT NULL REFERENCES general.ct_entidades(cve_ent),
    cve_mun CHAR(3) NOT NULL,
    municipio VARCHAR(80) NOT NULL,
    cve_reg SMALLINT REFERENCES general.ct_regiones(cve_reg),
    PRIMARY KEY (cve_ent, cve_mun)
);

--Se crea la tabla para las agebs
CREATE TABLE general.ct_agebs(
    cve_ent CHAR(2),
    cve_mun CHAR(3),
    fol_ageb VARCHAR(14) PRIMARY KEY,
    cve_ageb VARCHAR(4) NOT NULL,
    nom_loc VARCHAR(17) NOT NULL,
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);