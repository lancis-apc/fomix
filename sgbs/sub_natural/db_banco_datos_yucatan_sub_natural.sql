--Esta sección es para el componente natural

--Crea el schema
CREATE SCHEMA IF NOT EXISTS sub_natural;

--Se crea la tabla series para el año de los datos
CREATE TABLE sub_natural.series (
    serie_usv SMALLINT PRIMARY KEY,
    serie SMALLINT NOT NULL
);

--Se crea la tabla coberturas para distinguir los tipos de cobertura c3
CREATE TABLE sub_natural.coberturas_c3 (
    cob_c3_id SMALLINT PRIMARY KEY,
    cobertura_c3 VARCHAR(10)
);

--Se crea la tabla coberturas para distinguir los tipos de cobertura c4
CREATE TABLE sub_natural.coberturas_c4 (
    cob_c4_id SMALLINT PRIMARY KEY,
    cobertura_c4 VARCHAR(20),
    cob_c3_id SMALLINT REFERENCES sub_natural.coberturas_c3(cob_c3_id)
);

--Se crea la tabla coberturas para distinguir los tipos de cobertura c2
CREATE TABLE sub_natural.coberturas_c2 (
    cob_c2_id SMALLINT PRIMARY KEY,
    cobertura_c2 VARCHAR(40),
    cob_c4_id SMALLINT REFERENCES sub_natural.coberturas_c4(cob_c4_id)
);

--Se crea la tabla usv_municipios_coberturas para establecer las relaciones de las coberturas con los municipios
CREATE TABLE sub_natural.usv_municipios_coberturas (
    cve_mun CHAR(3) REFERENCES general.municipios(clave_municipio),
    cve_geo CHAR(5) NOT NULL,
    serie_usv SMALLINT REFERENCES sub_natural.series(serie_usv),
    cobertura NUMERIC(10,2) NOT NULL,
    cob_c2_id SMALLINT REFERENCES sub_natural.coberturas_c2(cob_c2_id)
);

--Se crea la tabla anp_municipios_coberturas para establecer las relaciones de las coberturas con los municipios
CREATE TABLE sub_natural.anp_municipios_coberturas (
    cve_mun CHAR(3) REFERENCES general.municipios(clave_municipio),
    cve_geo CHAR(5) NOT NULL,
    serie_usv SMALLINT REFERENCES sub_natural.series(serie_usv),
    cobertura NUMERIC(10,2) NOT NULL,
    cob_c2_id SMALLINT REFERENCES sub_natural.coberturas_c2(cob_c2_id)
);

--Se crea la tabla deg_municipios_coberturas para establecer las relaciones de las coberturas con los municipios
CREATE TABLE sub_natural.deg_municipios_coberturas (
    cve_mun CHAR(3) REFERENCES general.municipios(clave_municipio),
    cve_geo CHAR(5) NOT NULL,
    serie_usv SMALLINT REFERENCES sub_natural.series(serie_usv),
    cobertura NUMERIC(10,2) NOT NULL,
    cob_c2_id SMALLINT REFERENCES sub_natural.coberturas_c2(cob_c2_id)
);