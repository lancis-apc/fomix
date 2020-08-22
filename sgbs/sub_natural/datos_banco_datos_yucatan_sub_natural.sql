--Se realiza la segunda forma normal para las columna serie_usv
--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM development.series;
--Ingresando información de la tabla development.series
INSERT INTO development.series(serie_usv, serie) VALUES
(1,1985),
(2,1993),
(3,2002),
(4,2007),
(5,2011),
(6,2014);

--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM development.coberturas_c3;
--Se ingresa la información de la tabla coberturas_c3
INSERT INTO development.coberturas_c3(cob_c3_id, cobertura_c3) VALUES 
(1,'Natural'),
(2,'No natural');

--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM development.coberturas_c4;
--Se ingresa la información de la tabla coberturas_c4
INSERT INTO development.coberturas_c4(cob_c4_id, cobertura_c4, cob_c3_id) VALUES 
(1,'Asentamiento humano', 2),
(2,'Agropecuario', 2),
(3,'Natural',1);

--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM development.coberturas_c2;
--Se ingresa la información de la tabla coberturas_c2
INSERT INTO development.coberturas_c2(cob_c2_id, cobertura_c2, cob_c4_id) VALUES 
(1,'Agricultura de riego', 2),
(2,'Agricultura de temporal', 2),
(3,'Cuerpo de agua', 3),
(4,'Manglar', 3),
(5,'Pastizal', 2),
(6,'Sin vegetación', 1),
(7,'Asentamiento humano', 1),
(8,'Vegetación de duna costera', 3),
(9,'Vegetación de petén', 3),
(10,'Vegetación secundaria de selva baja', 3),
(11,'Vegetación secundaria de selva mediana', 3),
(12,'Acuícola', 2),
(13,'Bosque cultivado/Palmar inducido', 2),
(14,'Tular', 3),
(15,'Vegetación halófila hidrófila', 3),
(16,'Sábana', 3);

--Se realiza la tercer forma normal para la tabla development.bd_usv_c2_mun y el resultado se guarda en development.usv_municipios_coberturas
--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM development.usv_municipios_coberturas;
--Se ingresa la información de la tabla development.bd_usv_c2_mun en development.usv_municipios_coberturas
INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_1, 1
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_2, 2
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_3, 3
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_4, 4
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_5, 5
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_6, 6
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_7, 7
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_8, 8
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_9, 9
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_10, 10
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_11, 11
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_12, 12
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_13, 13
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_14, 14
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_15, 15
FROM development.bd_usv_c2_mun;

INSERT INTO development.usv_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_16, 16
FROM development.bd_usv_c2_mun;

--Se realiza la tercer forma normal para la tabla development.bd_anp_c2_mun y el resultado se guarda en development.anp_municipios_coberturas
--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM development.anp_municipios_coberturas;
--Se ingresa la información de la tabla development.bd_usv_c2_mun en development.usv_municipios_coberturas
INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_1, 1
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_2, 2
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_3, 3
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_4, 4
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_5, 5
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_6, 6
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_7, 7
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_8, 8
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_9, 9
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_10, 10
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_11, 11
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_12, 12
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_13, 13
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_14, 14
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_15, 15
FROM development.bd_anp_c2_mun;

INSERT INTO development.anp_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_16, 16
FROM development.bd_anp_c2_mun;

--Se realiza la tercer forma normal para la tabla development.bd_deg_c2_mun y el resultado se guarda en development.deg_municipios_coberturas
--Borrando todos los datos de municipios para correr el archivo sql
DELETE FROM development.deg_municipios_coberturas;
--Se ingresa la información de la tabla development.bd_usv_c2_mun en development.usv_municipios_coberturas
INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_1, 1
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_2, 2
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_3, 3
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_4, 4
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_5, 5
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_6, 6
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_7, 7
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_8, 8
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_9, 9
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_10, 10
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_11, 11
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_12, 12
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_13, 13
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_14, 14
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_15, 15
FROM development.bd_deg_c2_mun;

INSERT INTO development.deg_municipios_coberturas(cve_mun, cve_geo, serie_usv,cobertura, cob_c2_id)
SELECT cve_mun, cve_geo, serie_usv, cob_16, 16
FROM development.bd_deg_c2_mun;