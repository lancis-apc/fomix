--Esta sección es para el componente natural

--Crea el schema
CREATE SCHEMA IF NOT EXISTS sub_natural;

/*
  ################################################
  Creamos los catálogos del componente sub_natural
  ################################################
*/

--Se crea la tabla coberturas para distinguir los tipos de cobertura c3
CREATE TABLE sub_natural.ct_coberturas_c3 (
    cob_c3_id SMALLINT PRIMARY KEY,
    cobertura_c3 VARCHAR(10) NOT NULL
);

--Se crea la tabla coberturas para distinguir los tipos de cobertura c4
CREATE TABLE sub_natural.ct_coberturas_c4 (
    cob_c4_id SMALLINT PRIMARY KEY,
    cobertura_c4 VARCHAR(20) NOT NULL,
    cob_c3_id SMALLINT REFERENCES sub_natural.ct_coberturas_c3(cob_c3_id)
);

--Se crea la tabla coberturas para distinguir los tipos de cobertura c2
CREATE TABLE sub_natural.ct_coberturas_c2 (
    cob_c2_id SMALLINT PRIMARY KEY,
    cobertura_c2 VARCHAR(40) NOT NULL,
    cob_c4_id SMALLINT REFERENCES sub_natural.ct_coberturas_c4(cob_c4_id)
);

/*
  #############################################
  Creamos las tablas del componente sub_natural
  #############################################
*/

--Se crea la tabla usv_municipios_coberturas para establecer las relaciones de las coberturas con los municipios
CREATE TABLE sub_natural.usv_municipios_coberturas (
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    cobertura NUMERIC(10,2) NOT NULL,
    cob_c2_id SMALLINT REFERENCES sub_natural.ct_coberturas_c2(cob_c2_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea la tabla anp_municipios_coberturas para establecer las relaciones de las coberturas con los municipios
CREATE TABLE sub_natural.anp_municipios_coberturas (
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    cobertura NUMERIC(10,2) NOT NULL,
    cob_c2_id SMALLINT REFERENCES sub_natural.ct_coberturas_c2(cob_c2_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);

--Se crea la tabla deg_municipios_coberturas para establecer las relaciones de las coberturas con los municipios
CREATE TABLE sub_natural.deg_municipios_coberturas (
    cve_ent CHAR(2) NOT NULL,
    cve_mun CHAR(3) NOT NULL,
    serie SMALLINT NOT NULL,
    cobertura NUMERIC(10,2) NOT NULL,
    cob_c2_id SMALLINT REFERENCES sub_natural.ct_coberturas_c2(cob_c2_id),
    FOREIGN KEY (cve_ent, cve_mun) REFERENCES general.ct_municipios
);