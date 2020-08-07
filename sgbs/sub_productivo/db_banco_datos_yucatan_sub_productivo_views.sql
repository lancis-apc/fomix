/*
  ############################################
  Creamos las vistas del componente productivo
  ############################################
*/

-- Vista de principal rama de actividad económica del municipio
CREATE VIEW development.view_rama_principal_municipios AS
SELECT
    a.cve_mun,
    b.municipio,
    d.region,
    a.serie,
    c.rama
FROM development.ramas_municipios AS a
JOIN development.municipios AS b ON a.cve_mun = b.clave_municipio
JOIN development.regiones AS d USING(id_region)
JOIN development.ct_ramas AS c USING(act_ec_cod);

-- Vista del archivo bd_coef_esp.csv
CREATE VIEW development.view_coef_esp AS
SELECT
    a.cve_mun,
    d.municipio,
    e.region,
    a.serie,
    a.coeficiente,
    b.rama,
    c.descripcion
FROM development.coef_esp AS a
JOIN development.ct_ramas AS b USING(act_ec_cod)
JOIN development.ct_coef_esp c USING(ce_id)
JOIN development.municipios AS d ON a.cve_mun = d.clave_municipio
JOIN development.regiones AS e USING(id_region);

-- Vista del archivo bd_coef_tec.csv
CREATE VIEW development.view_coef_tec AS
SELECT
    b.descripcion AS sector,
    a.coeficiente,
    c.descripcion
FROM development.coef_tec AS a
JOIN development.ct_sectores AS b USING(sector)
JOIN development.ct_coef_tec AS c USING(ct_id);

-- Vista del archivo bd_conc_indust.csv
CREATE VIEW development.view_conc_indust AS
SELECT
    a.cve_mun,
    b.municipio,
    c.region,
    a.serie,
    a.cantidad,
    d.descripcion
FROM development.conc_indust AS a
JOIN development.municipios AS b ON a.cve_mun = b.clave_municipio
JOIN development.regiones AS c USING(id_region)
JOIN development.ct_conc_indust AS d USING(ci_id);

-- Vista del archivo bd_denue_yuc_rama_wide.csv
CREATE VIEW development.view_denue_ramas AS
SELECT
    a.cve_mun,
    b.municipio,
    e.region,
    a.serie,
    a.ue,
    c.descripcion,
    d.rama
FROM development.denue AS a
JOIN development.municipios AS b ON a.cve_mun = b.clave_municipio
JOIN development.regiones AS e USING(id_region)
JOIN development.ct_denue AS c USING(denue_id)
JOIN development.ct_ramas AS d USING(act_ec_cod);

-- Vista del archivo bd_denue_yuc_subsector_wide.csv
CREATE VIEW development.view_denue_subsectores AS
WITH tot_sub AS (
    SELECT orig.cve_mun, orig.serie, SUM(orig.ue) AS ue, sub.act_ec_sub_cod, orig.denue_id
    FROM development.denue AS orig
    JOIN development.ct_ramas USING(act_ec_cod)
    JOIN development.ct_subsectores  AS sub USING(act_ec_sub_cod)
    GROUP BY orig.cve_mun, orig.serie, sub.act_ec_sub_cod, orig.denue_id)
SELECT
    a.cve_mun,
    b.municipio,
    e.region,
    a.serie,
    a.ue,
    c.descripcion,
    d.subsector
FROM tot_sub AS a
JOIN development.municipios AS b ON a.cve_mun = b.clave_municipio
JOIN development.regiones AS e USING(id_region)
JOIN development.ct_denue AS c USING(denue_id)
JOIN development.ct_subsectores AS d USING(act_ec_sub_cod);

-- Vista del archivo bd_mat_tc_muni.csv
CREATE VIEW development.view_mat_tc_muni AS
SELECT
    a.cve_mun,
    b.municipio,
    c.region,
    a.serie,
    a.tasa,
    d.descripcion
FROM development.mat_tc_muni AS a
JOIN development.municipios AS b ON a.cve_mun = b.clave_municipio
JOIN development.regiones AS c USING(id_region)
JOIN development.ct_mat_tc AS d USING(mt_id);

-- Vista del archivo bd_mat_tc_muni_rama.csv
CREATE VIEW development.view_mat_tc_muni_rama AS
SELECT
    a.cve_mun,
    b.municipio,
    c.region,
    a.serie,
    a.tasa,
    d.descripcion,
    e.rama
FROM development.mat_tc_muni_rama AS a
JOIN development.municipios AS b ON a.cve_mun = b.clave_municipio
JOIN development.regiones AS c USING(id_region)
JOIN development.ct_mat_tc AS d USING(mt_id)
JOIN development.ct_ramas AS e USING(act_ec_cod);

-- Vista del archivo bd_mat_tc_muni_subsector.csv
CREATE VIEW development.view_mat_tc_muni_subsector AS
SELECT
    a.cve_mun,
    b.municipio,
    c.region,
    a.serie,
    a.tasa,
    d.descripcion,
    e.subsector
FROM development.mat_tc_muni_subsector AS a
JOIN development.municipios AS b ON a.cve_mun = b.clave_municipio
JOIN development.regiones AS c USING(id_region)
JOIN development.ct_mat_tc AS d USING(mt_id)
JOIN development.ct_subsectores AS e USING(act_ec_sub_cod);

-- Vista del archivo bd_mat_tc_rama.csv
CREATE VIEW development.view_mat_tc_rama AS
SELECT
    a.act_ec_cod,
    c.rama,
    a.serie,
    a.tasa,
    b.descripcion
FROM development.mat_tc_rama AS a
JOIN development.ct_mat_tc AS b USING(mt_id)
JOIN development.ct_ramas AS c USING(act_ec_cod);

-- Vista del archivo bd_mat_tc_subsector.csv
CREATE VIEW development.view_mat_tc_subsector AS
SELECT
    a.act_ec_sub_cod,
    b.subsector,
    a.serie,
    a.tasa,
    c.descripcion
FROM development.mat_tc_subsector AS a
JOIN development.ct_subsectores AS b USING(act_ec_sub_cod)
JOIN development.ct_mat_tc AS c USING(mt_id);

-- Vista del archivo bd_pib_yucatan.csv
CREATE VIEW development.view_pib AS
SELECT
    a.serie,
    a.millones_pesos,
    b.descripcion
FROM development.pib AS a
JOIN development.ct_pib AS b USING(pib_id) UNION
SELECT
    serie,
    SUM(millones_pesos) AS millones_pesos,
    'Producto Interno Bruto total del estado en millones de pesos a precios contantes.' AS descripcion
FROM development.pib
GROUP BY serie;

-- Vista del archivo bd_pib_yucatan.csv con tasas
CREATE VIEW development.view_pib_tasas AS
WITH pib_total AS (
    SELECT serie, SUM(millones_pesos) AS pib_total
    FROM development.pib
    GROUP BY serie)
SELECT
    a.serie,
    round(((a.pib_total/b.pib_total)-1)*100,3) AS tasa,
    'Tasa de crecimiento anual del Producto Interno Bruto total del estado.' AS descripcion
FROM pib_total AS a
JOIN pib_total AS b ON (a.serie = b.serie+1);

-- Vista de las dos primeras columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv
CREATE VIEW development.view_act_ec_rama_municipios_valores AS
WITH totales AS (
    SELECT cve_mun, valor_id, serie, SUM(millones_pesos) AS tot_mun
    FROM development.act_ec_valores
    GROUP BY cve_mun, valor_id, serie)
SELECT
    a.cve_mun,
    c.municipio,
    f.region,
    a.serie,
    a.millones_pesos,
    ROUND((a.millones_pesos/b.tot_mun)*100, 4) AS porcentaje,
    e.descripcion,
    d.rama
FROM development.act_ec_valores AS a
JOIN totales AS b USING(cve_mun, valor_id, serie)
JOIN development.municipios AS c ON a.cve_mun = c.clave_municipio
JOIN development.regiones AS f USING(id_region)
JOIN development.ct_ramas AS d USING(act_ec_cod)
JOIN development.ct_act_ec_valores AS e USING(valor_id);

-- Vista de las dos primeras columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv sólo por municipios
CREATE VIEW development.view_act_ec_municipios_valores AS
WITH totales AS (
    SELECT valor_id, serie, SUM(millones_pesos) AS total
    FROM development.act_ec_valores
    GROUP BY valor_id, serie)
SELECT
    a.cve_mun,
    c.municipio,
    e.region,
    a.serie,
    a.millones_pesos,
    ROUND((a.millones_pesos/b.total)*100, 4) AS porcentaje,
    d.descripcion
FROM (
    SELECT cve_mun, serie, SUM(millones_pesos) AS millones_pesos, valor_id
    FROM development.act_ec_valores
    GROUP BY cve_mun, serie, valor_id) AS a
JOIN totales AS b USING(valor_id, serie)
JOIN development.municipios AS c ON a.cve_mun = c.clave_municipio
JOIN development.regiones AS e USING(id_region)
JOIN development.ct_act_ec_valores AS d USING(valor_id);

-- Vista de las dos primeras columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv sólo por subsectores
CREATE VIEW development.view_act_ec_subsectores_valores AS
WITH totales AS (
    SELECT cve_mun, valor_id, serie, SUM(millones_pesos) AS tot_mun
    FROM development.act_ec_valores
    GROUP BY cve_mun, valor_id, serie)
SELECT
    a.cve_mun,
    c.municipio,
    f.region,
    a.serie,
    a.millones_pesos,
    ROUND((a.millones_pesos/b.tot_mun)*100, 4) AS porcentaje,
    d.subsector,
    e.descripcion
FROM (
    SELECT orig.cve_mun, orig.valor_id, orig.serie, sub.act_ec_sub_cod, SUM(orig.millones_pesos) AS millones_pesos
    FROM development.act_ec_valores AS orig
    JOIN development.ct_ramas AS sub USING(act_ec_cod)
    GROUP BY orig.cve_mun, orig.valor_id, orig.serie, sub.act_ec_sub_cod) AS a
JOIN totales AS b USING(cve_mun, valor_id, serie)
JOIN development.municipios AS c ON a.cve_mun = c.clave_municipio
JOIN development.regiones AS f USING(id_region)
JOIN development.ct_subsectores AS d USING(act_ec_sub_cod)
JOIN development.ct_act_ec_valores AS e USING(valor_id);

-- Vista de las dos últimas columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv
CREATE VIEW development.view_act_ec_rama_municipios_cantidades AS
WITH totales AS (
    SELECT cve_mun, cantidad_id, serie, SUM(cantidad) AS tot_mun
    FROM development.act_ec_cantidades
    GROUP BY cve_mun, cantidad_id, serie)
SELECT
    a.cve_mun,
    c.municipio,
    f.region,
    a.serie,
    a.cantidad,
    ROUND((CAST(a.cantidad AS NUMERIC)/b.tot_mun)*100, 4) AS porcentaje,
    e.descripcion,
    d.rama
FROM development.act_ec_cantidades AS a
JOIN totales AS b USING(cve_mun, cantidad_id, serie)
JOIN development.municipios AS c ON a.cve_mun = c.clave_municipio
JOIN development.regiones AS f USING(id_region)
JOIN development.ct_ramas AS d USING(act_ec_cod)
JOIN development.ct_act_ec_cantidades AS e USING(cantidad_id);

-- Vista de las dos últimas columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv sólo por municipios
CREATE VIEW development.view_act_ec_municipios_cantidades AS
WITH totales AS (
    SELECT cantidad_id, serie, SUM(cantidad) AS total
    FROM development.act_ec_cantidades
    GROUP BY cantidad_id, serie)
SELECT
    a.cve_mun,
    c.municipio,
    e.region,
    a.serie,
    a.cantidad,
    ROUND((a.cantidad/b.total)*100, 4) AS porcentaje,
    d.descripcion
FROM (
    SELECT cve_mun, serie, SUM(CAST(cantidad AS NUMERIC)) AS cantidad, cantidad_id
    FROM development.act_ec_cantidades
    GROUP BY cve_mun, serie, cantidad_id) AS a
JOIN totales AS b USING(cantidad_id, serie)
JOIN development.municipios AS c ON a.cve_mun = c.clave_municipio
JOIN development.regiones AS e USING(id_region)
JOIN development.ct_act_ec_cantidades AS d USING(cantidad_id);

-- Vista de las dos últimas columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv sólo por subsectores
CREATE VIEW development.view_act_ec_subsectores_cantidades AS
WITH totales AS (
    SELECT cve_mun, cantidad_id, serie, SUM(cantidad) AS tot_mun
    FROM development.act_ec_cantidades
    GROUP BY cve_mun, cantidad_id, serie)
SELECT
    a.cve_mun,
    c.municipio,
    f.region,
    a.serie,
    a.cantidad,
    ROUND((a.cantidad/b.tot_mun)*100, 4) AS porcentaje,
    d.subsector,
    e.descripcion
FROM (
    SELECT orig.cve_mun, orig.cantidad_id, orig.serie, sub.act_ec_sub_cod, SUM(CAST(orig.cantidad AS NUMERIC)) AS cantidad
    FROM development.act_ec_cantidades AS orig
    JOIN development.ct_ramas AS sub USING(act_ec_cod)
    GROUP BY orig.cve_mun, orig.cantidad_id, orig.serie, sub.act_ec_sub_cod) AS a
JOIN totales AS b USING(cve_mun, cantidad_id, serie)
JOIN development.municipios AS c ON a.cve_mun = c.clave_municipio
JOIN development.regiones AS f USING(id_region)
JOIN development.ct_subsectores AS d USING(act_ec_sub_cod)
JOIN development.ct_act_ec_cantidades AS e USING(cantidad_id);