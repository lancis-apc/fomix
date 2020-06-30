# Vistas del Subsistema Natural

Las vistas son una herramienta que guarda en formato de tabla consultas que se consideran son o serán recurrentes, lo que facilita la consulta de información, así como la seguridad, ya que se pueden restringir a sólo un grupo de usaurios, manteniendo la información que no es de interés de dicho grupo oculta.componente del Subsistema Natural hace referencia las tablas que guardan la información de dicho subsistema. Las estructura de vistas del Subsistema Natrual está compuesta por las vistas siguiente:
1. `development.usv_municipios_clasifica_2`. Esta vista está compuesta por los campos siguientes:
    1. `cve_geo`. Este campo proviene de la tabla `development.usv_municipios_coberturas`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `municipio`. Este campo proviene de la tabla `development.municipios`.
    4. `region`. Este campo proviene de la tabla `development.regiones`.
    5. `serie`. Este campo proviene de la tabla `development.series`.
    6. `cobertura_c2`. Este campo proviene de la tabla `development.coberturas_c2`.
    7. `cobertura_c3`. Este campo proviene de la tabla `development.coberturas_c3`.
    8. `cobertura_c4`. Este campo proviene de la tabla `development.coberturas_c4`.
    9. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por municipio, de acuerdo a la agrupación dada por el campo `cobertura_c2`, la información proviene de la tabla `development.usv_municipios_coberturas`,.
2. `development.usv_municipios_clasifica_3`. Esta vista está compuesta por los campos siguientes:
    1. `cve_geo`. Este campo proviene de la tabla `development.usv_municipios_coberturas`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `municipio`. Este campo proviene de la tabla `development.municipios`.
    4. `region`. Este campo proviene de la tabla `development.regiones`.
    5. `serie`. Este campo proviene de la tabla `development.series`.
    6. `cobertura_c3`. Este campo proviene de la tabla `development.coberturas_c3`.
    7. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por municipio, de acuerdo a la agrupación dada por el campo `cobertura_c3`, la información proviene de la tabla `development.usv_municipios_coberturas`,.
3. `development.usv_municipios_clasifica_4`. Esta vista está compuesta por los campos siguientes:
    1. `cve_geo`. Este campo proviene de la tabla `development.usv_municipios_coberturas`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `municipio`. Este campo proviene de la tabla `development.municipios`.
    4. `region`. Este campo proviene de la tabla `development.regiones`.
    5. `serie`. Este campo proviene de la tabla `development.series`.
    6. `cobertura_c4`. Este campo proviene de la tabla `development.coberturas_c4`.
    7. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por municipio, de acuerdo a la agrupación dada por el campo `cobertura_c4`, la información proviene de la tabla `development.usv_municipios_coberturas`,.
4. `development.usv_regiones_clasifica_2`. Esta vista está compuesta por los campos siguientes:
    1. `id_region`. Este campo proviene de la tabla `development.regiones`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `region`. Este campo proviene de la tabla `development.regiones`.
    4. `serie`. Este campo proviene de la tabla `development.series`.
    5. `cobertura_c2`. Este campo proviene de la tabla `development.coberturas_c2`.
    6. `cobertura_c3`. Este campo proviene de la tabla `development.coberturas_c3`.
    7. `cobertura_c4`. Este campo proviene de la tabla `development.coberturas_c4`.
    8. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por región, de acuerdo a la agrupación dada por el campo `cobertura_c2`, la información proviene de la tabla `development.usv_municipios_coberturas`,.
5. `development.usv_regiones_clasifica_3`. Esta vista está compuesta por los campos siguientes:
    1. `id_region`. Este campo proviene de la tabla `development.regiones`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `region`. Este campo proviene de la tabla `development.regiones`.
    4. `serie`. Este campo proviene de la tabla `development.series`.
    5. `cobertura_c3`. Este campo proviene de la tabla `development.coberturas_c3`.
    6. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por región, de acuerdo a la agrupación dada por el campo `cobertura_c3`, la información proviene de la tabla `development.usv_municipios_coberturas`,.
6. `development.usv_regiones_clasifica_4`. Esta vista está compuesta por los campos siguientes:
    1. `id_region`. Este campo proviene de la tabla `development.regiones`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `region`. Este campo proviene de la tabla `development.regiones`.
    4. `serie`. Este campo proviene de la tabla `development.series`.
    5. `cobertura_c4`. Este campo proviene de la tabla `development.coberturas_c3`.
    6. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por región, de acuerdo a la agrupación dada por el campo `cobertura_c4`, la información proviene de la tabla `development.usv_municipios_coberturas`,.
7. `development.anp_municipios_clasifica_2`. Esta vista está compuesta por los campos siguientes:
    1. `cve_geo`. Este campo proviene de la tabla `development.anp_municipios_coberturas`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `municipio`. Este campo proviene de la tabla `development.municipios`.
    4. `region`. Este campo proviene de la tabla `development.regiones`.
    5. `serie`. Este campo proviene de la tabla `development.series`.
    6. `cobertura_c2`. Este campo proviene de la tabla `development.coberturas_c2`.
    7. `cobertura_c3`. Este campo proviene de la tabla `development.coberturas_c3`.
    8. `cobertura_c4`. Este campo proviene de la tabla `development.coberturas_c4`.
    9. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por municipio, de acuerdo a la agrupación dada por el campo `cobertura_c2`, la información proviene de la tabla `development.anp_municipios_coberturas`,.
8. `development.anp_municipios_clasifica_3`. Esta vista está compuesta por los campos siguientes:
    1. `cve_geo`. Este campo proviene de la tabla `development.anp_municipios_coberturas`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `municipio`. Este campo proviene de la tabla `development.municipios`.
    4. `region`. Este campo proviene de la tabla `development.regiones`.
    5. `serie`. Este campo proviene de la tabla `development.series`.
    6. `cobertura_c3`. Este campo proviene de la tabla `development.coberturas_c3`.
    7. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por municipio, de acuerdo a la agrupación dada por el campo `cobertura_c3`, la información proviene de la tabla `development.anp_municipios_coberturas`,.
9. `development.anp_municipios_clasifica_4`. Esta vista está compuesta por los campos siguientes:
    1. `cve_geo`. Este campo proviene de la tabla `development.anp_municipios_coberturas`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `municipio`. Este campo proviene de la tabla `development.municipios`.
    4. `region`. Este campo proviene de la tabla `development.regiones`.
    5. `serie`. Este campo proviene de la tabla `development.series`.
    6. `cobertura_c4`. Este campo proviene de la tabla `development.coberturas_c4`.
    7. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por municipio, de acuerdo a la agrupación dada por el campo `cobertura_c4`, la información proviene de la tabla `development.anp_municipios_coberturas`,.
10. `development.anp_regiones_clasifica_2`. Esta vista está compuesta por los campos siguientes:
    1. `id_region`. Este campo proviene de la tabla `development.regiones`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `region`. Este campo proviene de la tabla `development.regiones`.
    4. `serie`. Este campo proviene de la tabla `development.series`.
    5. `cobertura_c2`. Este campo proviene de la tabla `development.coberturas_c2`.
    6. `cobertura_c3`. Este campo proviene de la tabla `development.coberturas_c3`.
    7. `cobertura_c4`. Este campo proviene de la tabla `development.coberturas_c4`.
    8. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por región, de acuerdo a la agrupación dada por el campo `cobertura_c2`, la información proviene de la tabla `development.anp_municipios_coberturas`,.
11. `development.anp_regiones_clasifica_3`. Esta vista está compuesta por los campos siguientes:
    1. `id_region`. Este campo proviene de la tabla `development.regiones`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `region`. Este campo proviene de la tabla `development.regiones`.
    4. `serie`. Este campo proviene de la tabla `development.series`.
    5. `cobertura_c3`. Este campo proviene de la tabla `development.coberturas_c3`.
    6. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por región, de acuerdo a la agrupación dada por el campo `cobertura_c3`, la información proviene de la tabla `development.anp_municipios_coberturas`,.
12. `development.anp_regiones_clasifica_4`. Esta vista está compuesta por los campos siguientes:
    1. `id_region`. Este campo proviene de la tabla `development.regiones`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `region`. Este campo proviene de la tabla `development.regiones`.
    4. `serie`. Este campo proviene de la tabla `development.series`.
    5. `cobertura_c4`. Este campo proviene de la tabla `development.coberturas_c3`.
    6. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por región, de acuerdo a la agrupación dada por el campo `cobertura_c4`, la información proviene de la tabla `development.anp_municipios_coberturas`,.
13. `development.deg_municipios_clasifica_2`. Esta vista está compuesta por los campos siguientes:
    1. `cve_geo`. Este campo proviene de la tabla `development.deg_municipios_coberturas`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `municipio`. Este campo proviene de la tabla `development.municipios`.
    4. `region`. Este campo proviene de la tabla `development.regiones`.
    5. `serie`. Este campo proviene de la tabla `development.series`.
    6. `cobertura_c2`. Este campo proviene de la tabla `development.coberturas_c2`.
    7. `cobertura_c3`. Este campo proviene de la tabla `development.coberturas_c3`.
    8. `cobertura_c4`. Este campo proviene de la tabla `development.coberturas_c4`.
    9. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por municipio, de acuerdo a la agrupación dada por el campo `cobertura_c2`, la información proviene de la tabla `development.deg_municipios_coberturas`,.
14. `development.deg_municipios_clasifica_3`. Esta vista está compuesta por los campos siguientes:
    1. `cve_geo`. Este campo proviene de la tabla `development.deg_municipios_coberturas`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `municipio`. Este campo proviene de la tabla `development.municipios`.
    4. `region`. Este campo proviene de la tabla `development.regiones`.
    5. `serie`. Este campo proviene de la tabla `development.series`.
    6. `cobertura_c3`. Este campo proviene de la tabla `development.coberturas_c3`.
    7. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por municipio, de acuerdo a la agrupación dada por el campo `cobertura_c3`, la información proviene de la tabla `development.deg_municipios_coberturas`,.
15. `development.deg_municipios_clasifica_4`. Esta vista está compuesta por los campos siguientes:
    1. `cve_geo`. Este campo proviene de la tabla `development.deg_municipios_coberturas`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `municipio`. Este campo proviene de la tabla `development.municipios`.
    4. `region`. Este campo proviene de la tabla `development.regiones`.
    5. `serie`. Este campo proviene de la tabla `development.series`.
    6. `cobertura_c4`. Este campo proviene de la tabla `development.coberturas_c4`.
    7. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por municipio, de acuerdo a la agrupación dada por el campo `cobertura_c4`, la información proviene de la tabla `development.deg_municipios_coberturas`,.
16. `development.deg_regiones_clasifica_2`. Esta vista está compuesta por los campos siguientes:
    1. `id_region`. Este campo proviene de la tabla `development.regiones`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `region`. Este campo proviene de la tabla `development.regiones`.
    4. `serie`. Este campo proviene de la tabla `development.series`.
    5. `cobertura_c2`. Este campo proviene de la tabla `development.coberturas_c2`.
    6. `cobertura_c3`. Este campo proviene de la tabla `development.coberturas_c3`.
    7. `cobertura_c4`. Este campo proviene de la tabla `development.coberturas_c4`.
    8. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por región, de acuerdo a la agrupación dada por el campo `cobertura_c2`, la información proviene de la tabla `development.deg_municipios_coberturas`,.
17. `development.deg_regiones_clasifica_3`. Esta vista está compuesta por los campos siguientes:
    1. `id_region`. Este campo proviene de la tabla `development.regiones`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `region`. Este campo proviene de la tabla `development.regiones`.
    4. `serie`. Este campo proviene de la tabla `development.series`.
    5. `cobertura_c3`. Este campo proviene de la tabla `development.coberturas_c3`.
    6. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por región, de acuerdo a la agrupación dada por el campo `cobertura_c3`, la información proviene de la tabla `development.deg_municipios_coberturas`,.
18. `development.deg_regiones_clasifica_4`. Esta vista está compuesta por los campos siguientes:
    1. `id_region`. Este campo proviene de la tabla `development.regiones`.
    2. `entidad_federativa`. Este campo proviene de la tabla `development.estados`.
    3. `region`. Este campo proviene de la tabla `development.regiones`.
    4. `serie`. Este campo proviene de la tabla `development.series`.
    5. `cobertura_c4`. Este campo proviene de la tabla `development.coberturas_c3`.
    6. `ha`. Este campo es un campo calculado, que devuelve como resultado la suma del campo `cobertura` por región, de acuerdo a la agrupación dada por el campo `cobertura_c4`, la información proviene de la tabla `development.deg_municipios_coberturas`,.

Estas tablas son creadas ejecutando el código en sql que almacena el archivo [db_banco_datos_yucatan_sub_natural_views.sql](db_banco_datos_yucatan_sub_natural_views.sql).
