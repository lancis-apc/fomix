/*
  ################################################
  Creamos los catálogos del componente productivo
  ################################################
*/

-- Catálogo de sector de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)

CREATE TABLE IF NOT EXISTS development.ct_sector(
  sector VARCHAR(10) PRIMARY KEY NOT NULL,
  descripcion VARCHAR(40) NULL
);

-- Catálogo de subsector de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)

CREATE TABLE IF NOT EXISTS development.ct_subsector(
  act_ec_sub_cod CHAR(2) PRIMARY KEY NOT NULL,
  subsector VARCHAR(160) NOT NULL
);

-- Catálogo de rama de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)
CREATE TABLE IF NOT EXISTS development.ct_rama(
  act_ec_cod CHAR(4) NOT NULL,
  rama VARCHAR(130) NOT NULL,
  subsector_id CHAR(2) REFERENCES development.ct_subsector(act_ec_sub_cod)
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
    act_ec_cod CHAR(4) NOT NULL REFERENCES development.ct_rama(act_ec_cod)
);