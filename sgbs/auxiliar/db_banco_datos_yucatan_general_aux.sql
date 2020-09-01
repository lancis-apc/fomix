/*
    ******************************************************
    Se introduce la información para el componente general
    ******************************************************
*/

--Esta sección es para el componente general
CREATE TABLE IF NOT EXISTS auxiliar.municipios_csv(
    cve_ent CHAR(2),
    cve_mun CHAR(3),
    cve_geo CHAR(5),
    nom_ent VARCHAR(40),
    area NUMERIC(12,2),
    perimeter NUMERIC(12,2),
    nom_mun VARCHAR(80),
    cov_ SMALLINT,
    cov_id SMALLINT
);