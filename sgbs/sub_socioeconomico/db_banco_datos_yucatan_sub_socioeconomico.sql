--Esta sección es para el componente socioeconómico

--------------------------------------------------------------------------
--En esta subsección se crean los catalogos

--Se crea catalogo para registro 9 (subtipo) del archivo dd_indigena.csv
CREATE TABLE IF NOT EXISTS development.ct_subtipo(
    id SMALLINT PRIMARY KEY,
    nom_tipo VARCHAR(50)
);

--Se crea catalogo para registro 10 (nom_tipo) del archivo dd_indigena.csv
CREATE TABLE IF NOT EXISTS development.nom_tipo(
    id CHAR(1) PRIMARY KEY,
    sub_tipo VARCHAR(50),
    cve_tipo SMALLINT REFERENCES development.ct_subtipo(id)
);

--Se crea catalogo para registros pob del archivo dd_indigena.csv
CREATE TABLE IF NOT EXISTS development.ct_pob_indigena(
    id SERIAL PRIMARY KEY,
    campo VARCHAR(10),
    descripcion VARCHAR(90),
    fi_id CHAR(5) REFERENCES development.ct_fuentes_informacion(id)
);










--Se crea una tabla para el grupo de municipios al que pertenece el municipio según su tamaño de población
CREATE TABLE IF NOT EXISTS development.ct_pob(
    cve_pob SMALLINT PRIMARY KEY,
    grupo VARCHAR(30)
);

--------------------------------------------------------------------------
--En esta subsección se crean las tablas de la información

--Se crea tabla para registros pob del archivo dd_indigena.csv
CREATE TABLE IF NOT EXISTS development.pob_indigena(
    cve_geo CHAR(5) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    subtipo CHAR(1) NOT NULL,
    habitantes INTEGER,
    cpi_id SMALLINT
);







--Sección en aún prueba
-----------------------------------------------------------------------------------------------------------------
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
