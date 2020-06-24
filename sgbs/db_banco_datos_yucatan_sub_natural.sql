--Esta sección es para el componente natural

--Se crea la tabla series para el año de los datos
CREATE TABLE development.series (
    serie_usv SMALLINT PRIMARY KEY,
    serie SMALLINT NOT NULL
);

--Se crea la tabla coberturas para distinguir los tipos de cobertura c3
CREATE TABLE development.coberturas_c3 (
    cob_c3_id SMALLINT PRIMARY KEY,
    cobertura_c3 VARCHAR(10)
);

--Se crea la tabla coberturas para distinguir los tipos de cobertura c4
CREATE TABLE development.coberturas_c4 (
    cob_c4_id SMALLINT PRIMARY KEY,
    cobertura_c4 VARCHAR(20),
    cob_c3_id SMALLINT REFERENCES development.coberturas_c3(cob_c3_id)
);

--Se crea la tabla coberturas para distinguir los tipos de cobertura c2
CREATE TABLE development.coberturas_c2 (
    cob_c2_id SMALLINT PRIMARY KEY,
    cobertura_c2 VARCHAR(40),
    cob_c4_id SMALLINT REFERENCES development.coberturas_c4(cob_c4_id)
);

--Se crea la tabla usv_municipios_coberturas para establecer las relaciones de las coberturas con los municipios
CREATE TABLE development.usv_municipios_coberturas (
    cve_ent CHAR(2) REFERENCES development.estados(clave_entidad),
    cve_mun CHAR(3) REFERENCES development.municipios(clave_municipio),
    cve_geo CHAR(5) NOT NULL,
    serie_usv SMALLINT REFERENCES development.series(serie_usv),
    cobertura NUMERIC(10,2) NOT NULL,
    cob_c2_id SMALLINT REFERENCES development.coberturas_c2(cob_c2_id)
);

--Se crea la tabla anp_municipios_coberturas para establecer las relaciones de las coberturas con los municipios
CREATE TABLE development.anp_municipios_coberturas (
    cve_ent CHAR(2) REFERENCES development.estados(clave_entidad),
    cve_mun CHAR(3) REFERENCES development.municipios(clave_municipio),
    cve_geo CHAR(5) NOT NULL,
    serie_usv SMALLINT REFERENCES development.series(serie_usv),
    cobertura NUMERIC(10,2) NOT NULL,
    cob_c2_id SMALLINT REFERENCES development.coberturas_c2(cob_c2_id)
);

--Se crea la tabla deg_municipios_coberturas para establecer las relaciones de las coberturas con los municipios
CREATE TABLE development.deg_municipios_coberturas (
    cve_ent CHAR(2) REFERENCES development.estados(clave_entidad),
    cve_mun CHAR(3) REFERENCES development.municipios(clave_municipio),
    cve_geo CHAR(5) NOT NULL,
    serie_usv SMALLINT REFERENCES development.series(serie_usv),
    cobertura NUMERIC(10,2) NOT NULL,
    cob_c2_id SMALLINT REFERENCES development.coberturas_c2(cob_c2_id)
);