/*
    ******************************************
    Sobre los catálogos
    ******************************************
*/

-- Se ingresan los valores al catalogo de sectores
INSERT INTO development.ct_sectores(sector, descripcion)
SELECT sector, descripcion FROM development.tb_sector;

-- Se ingresan los valores al catalogo de subsectores
INSERT INTO development.ct_subsectores(act_ec_sub_cod, subsector)
SELECT act_ec_sub_cod, subsector FROM development.tb_subsector;

-- Se ingresan los valores del catálogo de rama
INSERT INTO development.ct_ramas(act_ec_cod, rama, act_ec_sub_cod)
SELECT act_ec_cod, rama, LEFT(act_ec_cod,2) AS act_ec_sub_cod FROM development.tb_rama;

-- Se ingresan los valores para el catalogo del archivo bd_yuc_porcentajes_act_ec_muni.csv
INSERT INTO development.ct_act_ec_valores(valor_id, descripcion)
VALUES
    (1,'Producción Bruta Total en millones de pesos'),
    (2,'Inversión Total en millones de pesos');

-- Se ingresan los valores para el catalogo del archivo bd_yuc_porcentajes_act_ec_muni.csv
INSERT INTO development.ct_act_ec_cantidades(cantidad_id, descripcion)
VALUES
    (1,'Personal Ocupado Total'),
    (2,'Unidades Económicas');

/*
    ******************************************
    Sobre las tablas del componente produvtivo
    ******************************************
*/

-- Se ingresa la información sobre la rama principal de cada municipio
INSERT INTO development.ramas_municipios(serie, cve_mun, act_ec_cod)
SELECT serie, cve_mun, act_ec_cod FROM development.bd_activ_ec_principal;

-- Se ingresa información de las dos primeras columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv
INSERT INTO development.act_ec_valores(cve_mun, serie, act_ec_cod, millones_pesos, valor_id)
SELECT cve_mun, serie, ct_rama_act_ec_cod, prod_brut_tot_valor, 1 FROM development.bd_yuc_porcentajes_act_ec_muni UNION
SELECT cve_mun, serie, ct_rama_act_ec_cod, inv_total_valor, 2 FROM development.bd_yuc_porcentajes_act_ec_muni;

-- Se ingresa información de las dos últimas columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv
INSERT INTO development.act_ec_cantidades(cve_mun, serie, act_ec_cod, cantidad, cantidad_id)
SELECT cve_mun, serie, ct_rama_act_ec_cod, per_ocupado_valor, 1 FROM development.bd_yuc_porcentajes_act_ec_muni UNION
SELECT cve_mun, serie, ct_rama_act_ec_cod, ue_valor, 2 FROM development.bd_yuc_porcentajes_act_ec_muni;