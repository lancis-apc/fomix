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

-- Se ingresan los valores para el catalogo del archivo bd_coef_esp.csv
INSERT INTO development.ct_coef_esp(ce_id, descripcion)
VALUES
    (1,'Coeficiente de especialidad de la actividad económica por municipio, considerando como unidad cálculo la producción bruta total.'),
    (2,'Coeficiente de especialidad de la actividad económica por municipio, considerando como unidad cálculo el personal ocupado total.');

-- Se ingresan los valores para el catalogo del archivo bd_coef_tec.csv
INSERT INTO development.ct_coef_tec(ct_id, descripcion)
VALUES
    (1, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Agricultura, cría y explotación de animales, aprovechamiento forestal, pesca y caza.'),
    (2, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector minería.'),
    (3, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector generación, transmisión y distribución de energía eléctrica, suministro de agua y de gas por ductos al consumidor final.'),
    (4, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector construcción.'),
    (5, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Industrias Manufactureras.'),
    (6, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Comercio.'),
    (7, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Transportes, correos y almacenamiento.'),
    (8, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Información en medios masivos.'),
    (9, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Servicios financieros y de seguros.'),
    (10, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Servicios inmobiliarios y de alquiler de bienes muebles e intangibles.'),
    (11, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Servicios profesionales, científicos y técnicos.'),
    (12, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Corporativos.'),
    (13, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Servicios de apoyo a los negocios y manejo de desechos y servicios de remediación.'),
    (14, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Servicios educativos.'),
    (15, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Servicios de salud y de asistencia social'),
    (16, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Servicios de esparcimiento culturales y deportivos, y otros servicios recreativos.'),
    (17, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Servicios de alojamiento temporal y de preparación de alimentos y bebidas.'),
    (18, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Otros servicios excepto actividades gubernamentales.'),
    (19, 'Valor en términos monetarios de los insumos de cada uno de los sectores necesarios para producir un dólar del sector Actividades legislativas, gubernamentales, de impartición de justicia y de organismos internacionales y extraterritoriales');

-- Se ingresan los valores para el catalogo del archivo bd_conc_indust.csv
INSERT INTO development.ct_conc_indust(ci_id, descripcion)
VALUES (1, 'Número de unidades económicas dedicadas al sector manufacturero.');

-- Se ingresan los valores para el catalogo del archivo bd_denue_yuc_rama_wide.csv
INSERT INTO development.ct_denue(denue_id, descripcion)
VALUES
(1, 'Cantidad de unidades económicas con entre 0 y 5 personas'),
(2, 'Cantidad de unidades económicas con entre 6 y 10 personas'),
(3, 'Cantidad de unidades económicas con entre 11 y 30 personas'),
(4, 'Cantidad de unidades económicas con entre 31 y 50 personas'),
(5, 'Cantidad de unidades económicas con entre 51 y 100 personas'),
(6, 'Cantidad de unidades económicas con entre 101 y 250 personas'),
(7, 'Cantidad de unidades económicas con entre 251 y más personas');

-- Se ingresan los valores para el catalogo del archivo bd_pib_yucatan.csv
INSERT INTO development.ct_pib(pib_id, descripcion)
VALUES
    (1,'Producto Interno Bruto del total de la actividad primaria del estado en millones de pesos a precios contantes.'),
    (2,'Producto Interno Bruto del total de la actividad secundaria del estado en millones de pesos a precios contantes.'),
    (3,'Producto Interno Bruto del total de la actividad terciaria del estado en millones de pesos a precios contantes.');

-- Se ingresan los valores para el catalogo de las dos primeras columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv
INSERT INTO development.ct_act_ec_valores(valor_id, descripcion)
VALUES
    (1,'Producción Bruta Total en millones de pesos'),
    (2,'Inversión Total en millones de pesos');

-- Se ingresan los valores para el catalogo de las dos últimas columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv
INSERT INTO development.ct_act_ec_cantidades(cantidad_id, descripcion)
VALUES
    (1,'Personal Ocupado Total'),
    (2,'Unidades Económicas');

/*
    ******************************************
    Sobre las tablas del componente productivo
    ******************************************
*/

-- Se ingresa la información sobre la rama principal de cada municipio
INSERT INTO development.ramas_municipios(serie, cve_mun, act_ec_cod)
SELECT serie, cve_mun, act_ec_cod FROM development.bd_activ_ec_principal;

-- Se ingresan la información del archivo bd_coef_esp.csv
INSERT INTO development.coef_esp(cve_mun, serie, act_ec_cod, coeficiente, ce_id)
SELECT cve_mun, serie, act_ec_cod, ce_pbt, 1 FROM development.bd_coef_esp UNION
SELECT cve_mun, serie, act_ec_cod, ce_per_ocup, 2 FROM development.bd_coef_esp;

-- Se ingresan la información del archivo bd_coef_tec.csv
INSERT INTO development.coef_tec(sector, coeficiente, ct_id)
SELECT sector, agr_pesca_coef, 1 FROM development.bd_coef_tec UNION
SELECT sector, mineria_coef, 2 FROM development.bd_coef_tec UNION
SELECT sector, en_elec_coef, 3 FROM development.bd_coef_tec UNION
SELECT sector, construc_coef, 4 FROM development.bd_coef_tec UNION
SELECT sector, manufac_coef, 5 FROM development.bd_coef_tec UNION
SELECT sector, comercio_coef, 6 FROM development.bd_coef_tec UNION
SELECT sector, trans_cor_coef, 7 FROM development.bd_coef_tec UNION
SELECT sector, med_masiv_coef, 8 FROM development.bd_coef_tec UNION
SELECT sector, s_finan_coef, 9 FROM development.bd_coef_tec UNION
SELECT sector, s_inmob_coef, 10 FROM development.bd_coef_tec UNION
SELECT sector, s_prof_coef, 11 FROM development.bd_coef_tec UNION
SELECT sector, corporat_coef, 12 FROM development.bd_coef_tec UNION
SELECT sector, s_ap_neg_coef, 13 FROM development.bd_coef_tec UNION
SELECT sector, s_educ_coef, 14 FROM development.bd_coef_tec UNION
SELECT sector, s_salud_coef, 15 FROM development.bd_coef_tec UNION
SELECT sector, s_espar_coef, 16 FROM development.bd_coef_tec UNION
SELECT sector, s_aloj_alm_coef, 17 FROM development.bd_coef_tec UNION
SELECT sector, ot_serv_coef, 18 FROM development.bd_coef_tec UNION
SELECT sector, act_gub_coef, 19 FROM development.bd_coef_tec;

-- Se ingresan la información del archivo bd_conc_indust.csv
INSERT INTO development.conc_indust(serie, cve_mun, cantidad, ci_id)
SELECT serie, cve_mun, concen_ind, 1 FROM development.bd_conc_indust;

-- Se ingresan la información del archivo bd_denue_yuc_rama_wide.csv
INSERT INTO development.denue(cve_mun, serie, act_ec_cod, ue, denue_id)
SELECT cve_mun, serie, act_ec_cod, de_0_a_5_personas, 1 FROM development.bd_denue_yuc_rama UNION
SELECT cve_mun, serie, act_ec_cod, de_6_a_10_personas, 2 FROM development.bd_denue_yuc_rama UNION
SELECT cve_mun, serie, act_ec_cod, de_11_a_30_personas, 3 FROM development.bd_denue_yuc_rama UNION
SELECT cve_mun, serie, act_ec_cod, de_31_a_50_personas, 4 FROM development.bd_denue_yuc_rama UNION
SELECT cve_mun, serie, act_ec_cod, de_51_a_100_personas, 5 FROM development.bd_denue_yuc_rama UNION
SELECT cve_mun, serie, act_ec_cod, de_101_a_250_personas, 6 FROM development.bd_denue_yuc_rama UNION
SELECT cve_mun, serie, act_ec_cod, de_250_y_mas_personas, 7 FROM development.bd_denue_yuc_rama;

-- Se ingresan la información del archivo bd_pib_yucatan.csv
INSERT INTO development.pib(serie, millones_pesos, pib_id)
SELECT serie, pib_prim, 1 FROM development.bd_pib_yucatan UNION
SELECT serie, pib_sec, 2 FROM development.bd_pib_yucatan UNION
SELECT serie, pib_ter, 3 FROM development.bd_pib_yucatan;

-- Se ingresa información de las dos primeras columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv
INSERT INTO development.act_ec_valores(cve_mun, serie, act_ec_cod, millones_pesos, valor_id)
SELECT cve_mun, serie, ct_rama_act_ec_cod, prod_brut_tot_valor, 1 FROM development.bd_yuc_porcentajes_act_ec_muni UNION
SELECT cve_mun, serie, ct_rama_act_ec_cod, inv_total_valor, 2 FROM development.bd_yuc_porcentajes_act_ec_muni;

-- Se ingresa información de las dos últimas columnas del archivo bd_yuc_porcentajes_act_ec_muni.csv
INSERT INTO development.act_ec_cantidades(cve_mun, serie, act_ec_cod, cantidad, cantidad_id)
SELECT cve_mun, serie, ct_rama_act_ec_cod, per_ocupado_valor, 1 FROM development.bd_yuc_porcentajes_act_ec_muni UNION
SELECT cve_mun, serie, ct_rama_act_ec_cod, ue_valor, 2 FROM development.bd_yuc_porcentajes_act_ec_muni;