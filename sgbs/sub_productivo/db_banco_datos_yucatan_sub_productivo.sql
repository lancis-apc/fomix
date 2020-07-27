/*
  ################################################
  Creamos los catálogos del componente productivo
  ################################################
*/

-- Catálogo de rama de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)

CREATE TABLE IF NOT EXISTS development.ct_rama (
  act_ec_cod CHAR(4) NOT NULL,
  rama VARCHAR(500) NOT NULL,
  PRIMARY KEY(act_ec_cod)
);

-- Catálogo de sector de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)

CREATE TABLE IF NOT EXISTS  development.ct_sector (
  sector VARCHAR(30)  NOT NULL ,
  descripcion VARCHAR(500) NULL,
  PRIMARY KEY(sector)
);

-- Catálogo de subsector de actividad económica del SCIAN (Sistema de Clasificación Industrial para América del Norte)

CREATE TABLE IF NOT EXISTS  development.ct_subsector (
  act_ec_sub_cod VARCHAR(2) NOT NULL,
  subsector VARCHAR(500) NOT NULL,
  PRIMARY KEY(act_ec_sub_cod)
);
