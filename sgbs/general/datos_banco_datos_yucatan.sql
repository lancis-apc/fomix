--Esta sección es la información que se usa de manera general

--Ingresando información de las entidades
INSERT INTO general.ct_entidades(cve_ent, entidad)
SELECT DISTINCT cve_ent, nom_ent
FROM auxiliar.municipios_csv
ORDER BY cve_ent;

--Se realiza la segunda forma normal para las columnas id_region y region
INSERT INTO general.ct_regiones(cve_reg, region)
SELECT DISTINCT id_region, region
FROM auxiliar.bd_usv_c2_mun
ORDER BY id_region;

--Ingresando información de los municipios
INSERT INTO general.ct_municipios(cve_ent, cve_mun, municipio, cve_reg)
SELECT DISTINCT a.cve_ent, a.cve_mun, a.nom_mun, id_region
FROM auxiliar.municipios_csv AS a
LEFT JOIN auxiliar.bd_usv_c2_mun AS b USING(cve_geo)
ORDER BY cve_ent, cve_mun;
--Ingresando información adicional
INSERT INTO general.ct_municipios(cve_ent, cve_mun, municipio)
VALUES ('31', '000','Resto de los municipios');