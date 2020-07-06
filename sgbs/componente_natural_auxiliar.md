# Tablas auxiliares del Subsistema Natural.

Estas tablas sirven para obtener la información de archivos en formato CSV, la información almacenada en estas tablas es utilizada para el Subsistema Natural, y apoyan en el vaciado de información a las tablas de este sistema.
Las tablas auxiliares son las siguiente:
1. `development.bd_usv_c2_mun`. Esta tabla almacena la información del área, en hectáreas, de uso de suelo y vegetación, está compuesta por los campos siguientes:
    1. `cve_ent`. Este campo es de tipo _CHAR_ con una longitud de 2 caracteres. Corresponde a la clave de la entidad, los valores se encuentran en el rango de `01` al `32`. Almacenados en el orden que el INEGI utiliza.
    2. `nom_ent`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 32 caracteres. Corresponde al nombre de la entidad. Almacenados en el orden que el INEGI utiliza.
    3. `cve_mun`. Este campo es de tipo _CHAR_ con una longitud de 3 caracteres. Corresponde a la clave del municipio, los valores se encuentran en el rango de `001` al `106`. Almacenados en el orden que el INEGI utiliza.
    4. `nom_mun`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 80 caracteres. Corresponde al nombre de municipio sin acentos. Almacenados en el orden que el INEGI utiliza.
    5. `mun_ori`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 80 caracteres. Corresponde al nombre original del municipio. Almacenados en el orden que el INEGI utiliza.
    6. `id_region`. Este campo es de tipo _SMALLINT_. Corresponde a la clave de la región, los valores se encuentran en el rango de 1 al 7. Almacenados en orden alfabético.
    7. `region`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 20 caracteres. Corresponde al nombre de la región. Almacenados en orden alfabético.
    8. `cve_geo`. Este campo es de tipo _CHAR_ con una longitud de 5 caracteres. Corresponde a una clave geoestadística concatenada entre los campos `cve_ent` y `cve_mun`. Almacenados en el orden que el INEGI utiliza.
    9. `clasifica`. Este campo es de tipo _SMALLINT_. Corresponde al número identificador de la reclasificación hecha a las series de uso de suelo y vegetación originales de INEGI.
    10. `serie_usv`. Este campo es de tipo _SMALLINT_. Corresponde al número identificador de la serie (año) de uso de suelo y vegetación.
    11. `cob_1`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: agricultura de riego.
    12. `cob_2`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: agricultura de temporal.
    13. `cob_3`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: cuerpo de agua.
    14. `cob_4`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: manglar.
    15. `cob_5`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: pastizal.
    16. `cob_6`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: sin vegetación.
    17. `cob_7`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: asentamiento humano.
    18. `cob_8`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: vegetación de duna costera.
    19. `cob_9`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: vegetación de petén.
    20. `cob_10`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: vegetación secundaria de selva baja.
    21. `cob_11`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: vegetación secundaria de selva mediana.
    22. `cob_12`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: acuícola.
    23. `cob_13`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: bosque cultivado/palmar inducido.
    24. `cob_14`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: tular.
    25. `cob_15`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: vegetación halófila hidrófila.
    26. `cob_16`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: sábana.
2. `development.bd_anp_c2_mun`. Esta tabla almacena la información de áreas naturales protegidas, en hectáreas, está compuesta por los campos siguientes:
    1. `cve_ent`. Este campo es de tipo _CHAR_ con una longitud de 2 caracteres. Corresponde a la clave de la entidad, los valores se encuentran en el rango de `01` al `32`. Almacenados en el orden que el INEGI utiliza.
    2. `nom_ent`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 32 caracteres. Corresponde al nombre de la entidad. Almacenados en el orden que el INEGI utiliza.
    3. `cve_mun`. Este campo es de tipo _CHAR_ con una longitud de 3 caracteres. Corresponde a la clave del municipio, los valores se encuentran en el rango de `001` al `106`. Almacenados en el orden que el INEGI utiliza.
    4. `nom_mun`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 80 caracteres. Corresponde al nombre de municipio sin acentos. Almacenados en el orden que el INEGI utiliza.
    5. `mun_ori`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 80 caracteres. Corresponde al nombre original del municipio. Almacenados en el orden que el INEGI utiliza.
    6. `id_region`. Este campo es de tipo _SMALLINT_. Corresponde a la clave de la región, los valores se encuentran en el rango de 1 al 7. Almacenados en orden alfabético.
    7. `region`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 20 caracteres. Corresponde al nombre de la región. Almacenados en orden alfabético.
    8. `cve_geo`. Este campo es de tipo _CHAR_ con una longitud de 5 caracteres. Corresponde a una clave geoestadística concatenada entre los campos `cve_ent` y `cve_mun`. Almacenados en el orden que el INEGI utiliza.
    9. `clasifica`. Este campo es de tipo _SMALLINT_. Corresponde al número identificador de la reclasificación hecha a las series de uso de suelo y vegetación originales de INEGI.
    10. `serie_usv`. Este campo es de tipo _SMALLINT_. Corresponde al número identificador de la serie (año) de uso de suelo y vegetación.
    11. `cob_1`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: agricultura de riego.
    12. `cob_2`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: agricultura de temporal.
    13. `cob_3`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: cuerpo de agua.
    14. `cob_4`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: manglar.
    15. `cob_5`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: pastizal.
    16. `cob_6`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: sin vegetación.
    17. `cob_7`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: asentamiento humano.
    18. `cob_8`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: vegetación de duna costera.
    19. `cob_9`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: vegetación de petén.
    20. `cob_10`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: vegetación secundaria de selva baja.
    21. `cob_11`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: vegetación secundaria de selva mediana.
    22. `cob_12`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: acuícola.
    23. `cob_13`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: bosque cultivado/palmar inducido.
    24. `cob_14`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: tular.
    25. `cob_15`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: vegetación halófila hidrófila.
    26. `cob_16`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: sábana.
3. `development.bd_deg_c2_mun`. Esta tabla almacena la información del área, en hectáreas, de la degradación del suelo y vegetación, está compuesta por los campos siguientes:
    1. `cve_ent`. Este campo es de tipo _CHAR_ con una longitud de 2 caracteres. Corresponde a la clave de la entidad, los valores se encuentran en el rango de `01` al `32`. Almacenados en el orden que el INEGI utiliza.
    2. `nom_ent`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 32 caracteres. Corresponde al nombre de la entidad. Almacenados en el orden que el INEGI utiliza.
    3. `cve_mun`. Este campo es de tipo _CHAR_ con una longitud de 3 caracteres. Corresponde a la clave del municipio, los valores se encuentran en el rango de `001` al `106`. Almacenados en el orden que el INEGI utiliza.
    4. `nom_mun`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 80 caracteres. Corresponde al nombre de municipio sin acentos. Almacenados en el orden que el INEGI utiliza.
    5. `mun_ori`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 80 caracteres. Corresponde al nombre original del municipio. Almacenados en el orden que el INEGI utiliza.
    6. `id_region`. Este campo es de tipo _SMALLINT_. Corresponde a la clave de la región, los valores se encuentran en el rango de 1 al 7. Almacenados en orden alfabético.
    7. `region`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 20 caracteres. Corresponde al nombre de la región. Almacenados en orden alfabético.
    8. `cve_geo`. Este campo es de tipo _CHAR_ con una longitud de 5 caracteres. Corresponde a una clave geoestadística concatenada entre los campos `cve_ent` y `cve_mun`. Almacenados en el orden que el INEGI utiliza.
    9. `clasifica`. Este campo es de tipo _SMALLINT_. Corresponde al número identificador de la reclasificación hecha a las series de uso de suelo y vegetación originales de INEGI.
    10. `serie_usv`. Este campo es de tipo _SMALLINT_. Corresponde al número identificador de la serie (año) de uso de suelo y vegetación.
    11. `cob_1`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: agricultura de riego.
    12. `cob_2`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: agricultura de temporal.
    13. `cob_3`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: cuerpo de agua.
    14. `cob_4`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: manglar.
    15. `cob_5`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: pastizal.
    16. `cob_6`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: sin vegetación.
    17. `cob_7`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: asentamiento humano.
    18. `cob_8`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: vegetación de duna costera.
    19. `cob_9`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: vegetación de petén.
    20. `cob_10`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: vegetación secundaria de selva baja.
    21. `cob_11`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: vegetación secundaria de selva mediana.
    22. `cob_12`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: acuícola.
    23. `cob_13`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: bosque cultivado/palmar inducido.
    24. `cob_14`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: tular.
    25. `cob_15`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: vegetación halófila hidrófila.
    26. `cob_16`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, 2 reservados para los decimales. Corresponde al área del municipio con el tipo de cobertura o vegetación: sábana.

Estas tablas son creadas ejecutando el código en sql que almacena el archivo [db_banco_datos_yucatan_sub_natural_aux.sql](db_banco_datos_yucatan_sub_natural_aux.sql). La información que almacenan estas tablas se obtiene ejecutando el código en sql que almacena el archivo [datos_banco_datos_yucatan_sub_natural_aux.sql](datos_banco_datos_yucatan_sub_natural_aux.sql).
