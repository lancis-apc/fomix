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

/*
  ############################################
  Creamos las vistas del componente productivo
  ############################################
*/

-- Vista de las dos primeras columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv
CREATE VIEW development.act_ec_rama_municipios_valores AS
WITH totales AS (
    SELECT cve_mun, valor_id, serie, SUM(millones_pesos) AS tot_mun
    FROM development.act_ec_valores
    GROUP BY cve_mun, valor_id, serie)
SELECT
    a.cve_mun,
    c.municipio,
    a.serie,
    a.millones_pesos,
    ROUND((a.millones_pesos/b.tot_mun)*100, 4) AS porcentaje,
    e.descripcion,
    d.rama
FROM development.act_ec_valores AS a
JOIN totales AS b USING(cve_mun, valor_id, serie)
JOIN development.municipios AS c ON a.cve_mun = c.clave_municipio
JOIN development.ct_ramas AS d USING(act_ec_cod)
JOIN development.ct_act_ec_valores AS e USING(valor_id);

-- Vista de las dos primeras columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv sólo por municipios
CREATE VIEW development.act_ec_municipios_valores AS
WITH totales AS (
    SELECT valor_id, serie, SUM(millones_pesos) AS total
    FROM development.act_ec_valores
    GROUP BY valor_id, serie)
SELECT
    a.cve_mun,
    c.municipio,
    a.serie,
    a.millones_pesos,
    ROUND((a.millones_pesos/b.total)*100, 4) AS porcentaje,
    d.descripcion
FROM(SELECT cve_mun, serie, SUM(millones_pesos) AS millones_pesos, valor_id
    FROM development.act_ec_valores
    GROUP BY cve_mun, serie, valor_id) AS a
JOIN totales AS b USING(valor_id, serie)
JOIN development.municipios AS c ON a.cve_mun = c.clave_municipio
JOIN development.ct_act_ec_valores AS d USING(valor_id);

-- Vista de las dos últimas columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv
CREATE VIEW development.act_ec_rama_municipios_cantidades AS
WITH totales AS (
    SELECT cve_mun, cantidad_id, serie, SUM(cantidad) AS tot_mun
    FROM development.act_ec_cantidades
    GROUP BY cve_mun, cantidad_id, serie)
SELECT
    a.cve_mun,
    c.municipio,
    a.serie,
    a.cantidad,
    ROUND((CAST(a.cantidad AS NUMERIC)/b.tot_mun)*100, 4) AS porcentaje,
    e.descripcion,
    d.rama
FROM development.act_ec_cantidades AS a
JOIN totales AS b USING(cve_mun, cantidad_id, serie)
JOIN development.municipios AS c ON a.cve_mun = c.clave_municipio
JOIN development.ct_ramas AS d USING(act_ec_cod)
JOIN development.ct_act_ec_cantidades AS e USING(cantidad_id);

-- Vista de las dos últimas columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv sólo por municipios
CREATE VIEW development.act_ec_municipios_cantidades AS
WITH totales AS (
    SELECT cantidad_id, serie, SUM(cantidad) AS total
    FROM development.act_ec_cantidades
    GROUP BY cantidad_id, serie)
SELECT
    a.cve_mun,
    c.municipio,
    a.serie,
    a.cantidad,
    ROUND((a.cantidad/b.total)*100, 4) AS porcentaje,
    d.descripcion
FROM(SELECT cve_mun, serie, SUM(CAST(cantidad AS NUMERIC)) AS cantidad, cantidad_id
    FROM development.act_ec_cantidades
    GROUP BY cve_mun, serie, cantidad_id) AS a
JOIN totales AS b USING(cantidad_id, serie)
JOIN development.municipios AS c ON a.cve_mun = c.clave_municipio
JOIN development.ct_act_ec_cantidades AS d USING(cantidad_id);