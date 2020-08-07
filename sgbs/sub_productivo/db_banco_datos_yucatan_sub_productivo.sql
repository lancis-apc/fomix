/*
  ################################################
  Creamos los catálogos del componente productivo
  ################################################
*/

-- Catálogo de sector de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)

CREATE TABLE IF NOT EXISTS development.ct_sectores(
    sector VARCHAR(10) PRIMARY KEY,
    descripcion VARCHAR(40) NOT NULL
);

-- Catálogo de subsector de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)

CREATE TABLE IF NOT EXISTS development.ct_subsectores(
    act_ec_sub_cod CHAR(2) PRIMARY KEY,
    subsector VARCHAR(160) NOT NULL
);

-- Catálogo de rama de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)
CREATE TABLE IF NOT EXISTS development.ct_ramas(
    act_ec_cod CHAR(4) PRIMARY KEY,
    rama VARCHAR(130) NOT NULL,
    act_ec_sub_cod CHAR(2) NOT NULL REFERENCES development.ct_subsectores(act_ec_sub_cod)
);

-- Catalogo necesario para el archivo bd_coef_esp.csv
CREATE TABLE IF NOT EXISTS development.ct_coef_esp(
    ce_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(130) NOT NULL
);

-- Catalogo necesario para el archivo bd_coef_tec.csv
CREATE TABLE IF NOT EXISTS development.ct_coef_tec(
    ct_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(240) NOT NULL
);

-- Catalogo necesario para el archivo bd_conc_indust.csv
CREATE TABLE IF NOT EXISTS development.ct_conc_indust(
    ci_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(100) NOT NULL
);

-- Catalogo necesario para el archivo bd_denue_yuc_rama_wide.csv
CREATE TABLE IF NOT EXISTS development.ct_denue(
    denue_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(60) NOT NULL
);

-- Catalogo necesario para los archivos bd_mat_tc_*.csv
CREATE TABLE IF NOT EXISTS development.ct_mat_tc(
    mt_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(70) NOT NULL
);

-- Catalogo necesario para el archivo bd_pib_yucatan.xlsx.csv
CREATE TABLE IF NOT EXISTS development.ct_pib(
    pib_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(120) NOT NULL
);

-- Catalogo necesario para el archivo bd_yuc_porcentajes_act_ec_muni.csv
CREATE TABLE IF NOT EXISTS development.ct_act_ec_valores(
    valor_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

-- Catalogo necesario para el archivo bd_yuc_porcentajes_act_ec_muni.csv
CREATE TABLE IF NOT EXISTS development.ct_act_ec_cantidades(
    cantidad_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(30) NOT NULL
);

/*
  ############################################
  Creamos las tablas del componente productivo
  ############################################
*/

-- Tabla de principal rama de actividad económica del municipio

CREATE TABLE IF NOT EXISTS development.ramas_municipios(
    serie SMALLINT NOT NULL,
    cve_mun CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    act_ec_cod CHAR(4) NOT NULL REFERENCES development.ct_ramas(act_ec_cod)
);

-- Tabla que guarda información del archivo bd_coef_esp.csv
CREATE TABLE IF NOT EXISTS development.coef_esp(
    cve_mun CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT NOT NULL,
    act_ec_cod CHAR(4) NOT NULL REFERENCES development.ct_ramas(act_ec_cod),
    coeficiente NUMERIC(10,6) NOT NULL,
    ce_id SMALLINT NOT NULL REFERENCES development.ct_coef_esp(ce_id)
);

-- Tabla que guarda información del archivo bd_coef_tec.csv
CREATE TABLE IF NOT EXISTS development.coef_tec(
    sector VARCHAR(10) NOT NULL REFERENCES development.ct_sectores(sector),
    coeficiente NUMERIC(5,4) NOT NULL,
    ct_id SMALLINT NOT NULL REFERENCES development.ct_coef_tec(ct_id)
);

-- Tabla que guarda información del bd_conc_indust.csv
CREATE TABLE IF NOT EXISTS development.conc_indust(
    serie SMALLINT NOT NULL,
    cve_mun CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    cantidad NUMERIC(9,6) NOT NULL,
    ci_id SMALLINT REFERENCES development.ct_conc_indust(ci_id)
);

-- Tabla que guarda información del archivo bd_denue_yuc_rama_wide.csv
CREATE TABLE IF NOT EXISTS development.denue(
    cve_mun  CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT NOT NULL,
    act_ec_cod CHAR(4) NOT NULL REFERENCES development.ct_ramas(act_ec_cod),
    ue INTEGER NOT NULL,
    denue_id SMALLINT NOT NULL REFERENCES development.ct_denue(denue_id)
);

-- Tabla que guarda información del archivo bd_mat_tc_muni.csv
CREATE TABLE IF NOT EXISTS development.mat_tc_muni(
    cve_mun  CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT NOT NULL,
    tasa NUMERIC(10,6) NOT NULL,
    mt_id SMALLINT NOT NULL REFERENCES development.ct_mat_tc(mt_id)
);

-- Tabla que guarda información del archivo bd_mat_tc_muni_rama.csv
CREATE TABLE IF NOT EXISTS development.mat_tc_muni_rama(
    cve_mun  CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT NOT NULL,
    act_ec_cod CHAR(4) NOT NULL REFERENCES development.ct_ramas(act_ec_cod),
    tasa NUMERIC(10,6) NOT NULL,
    mt_id SMALLINT NOT NULL REFERENCES development.ct_mat_tc(mt_id)
);

-- Tabla que guarda información del archivo bd_mat_tc_muni_subsector.csv
CREATE TABLE IF NOT EXISTS development.mat_tc_muni_subsector(
    cve_mun  CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT NOT NULL,
    act_ec_sub_cod CHAR(2) NOT NULL REFERENCES development.ct_subsectores(act_ec_sub_cod),
    tasa NUMERIC(10,6) NOT NULL,
    mt_id SMALLINT NOT NULL REFERENCES development.ct_mat_tc(mt_id)
);

-- Tabla que guarda información del archivo bd_mat_tc_rama.csv
CREATE TABLE IF NOT EXISTS development.mat_tc_rama(
    act_ec_cod CHAR(4) NOT NULL REFERENCES development.ct_ramas(act_ec_cod),
    serie SMALLINT NOT NULL,
    tasa NUMERIC(10,6) NOT NULL,
    mt_id SMALLINT NOT NULL REFERENCES development.ct_mat_tc(mt_id)
);

-- Tabla que guarda información del archivo bd_mat_tc_subsector.csv
CREATE TABLE IF NOT EXISTS development.mat_tc_subsector(
    act_ec_sub_cod CHAR(2) NOT NULL REFERENCES development.ct_subsectores(act_ec_sub_cod),
    serie SMALLINT NOT NULL,
    tasa NUMERIC(10,6) NOT NULL,
    mt_id SMALLINT NOT NULL REFERENCES development.ct_mat_tc(mt_id)
);

-- Tabla que guarda información del archivo bd_pib_yucatan.csv
CREATE TABLE IF NOT EXISTS development.pib(
    serie SMALLINT NOT NULL,
    millones_pesos NUMERIC(9,3) NOT NULL,
    pib_id SMALLINT NOT NULL REFERENCES development.ct_pib(pib_id)
);

-- Tablas que guardan información de las dos primeras columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv
CREATE TABLE IF NOT EXISTS development.act_ec_valores(
    cve_mun CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT NOT NULL,
    act_ec_cod CHAR(4) NOT NULL REFERENCES development.ct_ramas(act_ec_cod),
    millones_pesos NUMERIC(8,3) NOT NULL,
    valor_id SMALLINT NOT NULL REFERENCES development.ct_act_ec_valores(valor_id)
);

-- Tablas que guardan información de las dos últimas columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv
CREATE TABLE IF NOT EXISTS development.act_ec_cantidades(
    cve_mun CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT NOT NULL,
    act_ec_cod CHAR(4) NOT NULL REFERENCES development.ct_ramas(act_ec_cod),
    cantidad INTEGER NOT NULL,
    cantidad_id SMALLINT NOT NULL REFERENCES development.ct_act_ec_cantidades(cantidad_id)
);