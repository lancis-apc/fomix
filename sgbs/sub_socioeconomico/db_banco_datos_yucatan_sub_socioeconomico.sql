--Esta sección es para el componente socioeconómico

--Se crea una tabla para las categorias de pobreza
CREATE TABLE IF NOT EXISTS development.ctg_pobreza(
    id SERIAL PRIMARY KEY,
    r_pobr VARCHAR(9) NOT NULL,
    c_pobr VARCHAR(8) NOT NULL
);

--Se crea una tabla para las categorias de pobreza extrema
CREATE TABLE IF NOT EXISTS development.ctg_pobreza_extrema(
    id SERIAL PRIMARY KEY,
    r_pobr_e VARCHAR(9) NOT NULL,
    c_pobr_e VARCHAR(9) NOT NULL
);

--Se crea una tabla de pobreza
CREATE TABLE IF NOT EXISTS development.diag_pobreza_ageb(
    cve_mun CHAR(3) REFERENCES development.municipios(clave_municipio),
    fol_ageb VARCHAR(14) REFERENCES development.agebs(fol_ageb),
    ctg_p_id SMALLINT REFERENCES development.ctg_pobreza(id)
);

--Se crea una tabla de pobreza extrema
CREATE TABLE IF NOT EXISTS development.diag_pobreza_extrema_ageb(
    cve_mun CHAR(3) REFERENCES development.municipios(clave_municipio),
    fol_ageb VARCHAR(14) REFERENCES development.agebs(fol_ageb),
    ctg_pe_id SMALLINT REFERENCES development.ctg_pobreza_extrema(id)
);

------------------------------------------------------------
--Se crea una tabla para las fuentes
CREATE TABLE IF NOT EXISTS development.fuentes_informacion(
    id SERIAL PRIMARY KEY,
    fuente TEXT,
    año SMALLINT,
    web TEXT,
    metadatos TEXT
);
-------------------------------------------------------------

--Se crea un catalogo para la propor poblacion 
CREATE TABLE IF NOT EXISTS development.pob_afrodesc_prop(
    cve_mun
    proporcion

);

--Se crea una tabla para las poblacion 
CREATE TABLE IF NOT EXISTS development.pob_afrodesc_prop(
    cve_mun
    proporcion

);