# Componente referente al Subsistema Natural

La componente del Subsistema Natural hace referencia las tablas que guardan la información de dicho subsistema. Esta componente está compuesta por las tablas siguiente:
1. `development.series`. Esta tabla está compuesta por los campos siguientes:
    1. `serie_usv`. Este campo es una _Primary Key_ de tipo _SMALLINT_. Corresponde al número que se asigna a cada año (serie) del que se dispone información, los valores se encuentran en el rango del $1$ al $6$.
    2. `serie`. Este campo es de tipo _SMALLINT_. Corresponde al año (serie) del que se dispone información y están ordenados de manera ascendente.
2. `development.coberturas_c3`. Esta tabla está compuesta por los campos siguientes:
    1. `cob_c3_id`. Este campo es una _Primary Key_ de tipo _SMALLINT_. Corresponde al número que se asigna a cada una de las coberturas del tipo 3 (_Natural_ y _No natural_), los valores se encuentran en el rango del $1$ al $2$.
    2. `cobertura_c3`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 10 caracteres. Corresponde al nombre de cada una de las coberturas, almacenados en orden alfabético.
3. `development.coberturas_c4`. Esta tabla está compuesta por los campos siguientes:
    1. `cob_c4_id`. Este campo es una _Primary Key_ de tipo _SMALLINT_. Corresponde al número que se asigna a cada una de las coberturas del tipo 4 (_Asentamiento humano_, _Agropecuario_ y _Natural_), los valores se encuentran en el rango del $1$ al $3$.
    2. `cobertura_c4`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 20 caracteres. Corresponde al nombre de cada una de las coberturas, almacenados en orden alfabético.
    3. `cob_c3_id`. Este campo es una _Foreign Key_ de tipo _SMALLINT_. Está asociada con la _Primary Key_ de la tabla `development.coberturas_c3`.
4. `development.coberturas_c2`. Esta tabla está compuesta por los campos siguientes:
    1. `cob_c2_id`. Este campo es una _Primary Key_ de tipo _SMALLINT_. Corresponde al número que se asigna a cada una de las coberturas del tipo 2 (Son 16 categorías), los valores se encuentran en el rango del $1$ al $16$.
    2. `cobertura_c2`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 40 caracteres. Corresponde al nombre de cada una de las coberturas, almacenados en orden de acuerdo con LANCIS.
    3. `cob_c4_id`. Este campo es una _Foreign Key_ de tipo _SMALLINT_. Está asociada con la _Primary Key_ de la tabla `development.coberturas_c4`.
5. `development.usv_municipios_coberturas`. Esta tabla está compuesta por los campos siguientes:
    1. `cve_ent`. Este campo es una _Foreign Key_ de tipo _CHAR_. Está asociada con la _Primary Key_ de la tabla `development.estados`.
    2. `cve_mun`. Este campo es una _Foreign Key_ de tipo _CHAR_. Está asociada con la _Primary Key_ de la tabla `development.municipios`.
    3. `cve_geo`. Este campo es de tipo _CHAR_ con una longitud de 5 caracteres. Corresponde a la concatenación del campo `cve_ent` con `cve_mun`, almacenados en el orden que el INEGI utiliza.
    4. `serie_usv`. Este campo es una _Foreign Key_ de tipo _SMALLINT_. Está asociada con la _Primary Key_ de la tabla `development.series`.
    5. `cobertura`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, y 2 reservados para los decimales. Corresponde a la superficie en hectáreas de la cobertura correspondiente al tipo de uso de suelo y vegetación.
    6. `cob_c2_id`. Este campo es una _Foreign Key_ de tipo _SMALLINT_. Está asociada con la _Primary Key_ de la tabla `development.coberturas_c2`.
6. `development.anp_municipios_coberturas`. Esta tabla está compuesta por los campos siguientes:
    1. `cve_ent`. Este campo es una _Foreign Key_ de tipo _CHAR_. Está asociada con la _Primary Key_ de la tabla `development.estados`.
    2. `cve_mun`. Este campo es una _Foreign Key_ de tipo _CHAR_. Está asociada con la _Primary Key_ de la tabla `development.municipios`.
    3. `cve_geo`. Este campo es de tipo _CHAR_ con una longitud de 5 caracteres. Corresponde a la concatenación del campo `cve_ent` con `cve_mun`, almacenados en el orden que el INEGI utiliza.
    4. `serie_usv`. Este campo es una _Foreign Key_ de tipo _SMALLINT_. Está asociada con la _Primary Key_ de la tabla `development.series`.
    5. `cobertura`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, y 2 reservados para los decimales. Corresponde a la superficie en hectáreas de la cobertura correspondiente a las áreas naturales protegidas.
    6. `cob_c2_id`. Este campo es una _Foreign Key_ de tipo _SMALLINT_. Está asociada con la _Primary Key_ de la tabla `development.coberturas_c2`.
7. `development.deg_municipios_coberturas`. Esta tabla está compuesta por los campos siguientes:
    1. `cve_ent`. Este campo es una _Foreign Key_ de tipo _CHAR_. Está asociada con la _Primary Key_ de la tabla `development.estados`.
    2. `cve_mun`. Este campo es una _Foreign Key_ de tipo _CHAR_. Está asociada con la _Primary Key_ de la tabla `development.municipios`.
    3. `cve_geo`. Este campo es de tipo _CHAR_ con una longitud de 5 caracteres. Corresponde a la concatenación del campo `cve_ent` con `cve_mun`, almacenados en el orden que el INEGI utiliza.
    4. `serie_usv`. Este campo es una _Foreign Key_ de tipo _SMALLINT_. Está asociada con la _Primary Key_ de la tabla `development.series`.
    5. `cobertura`. Este campo es de tipo _NUMERIC_ con una longitud máxima de 10 dígitos, y 2 reservados para los decimales. Corresponde a la superficie en hectáreas de la cobertura correspondiente las áreas de degradación.
    6. `cob_c2_id`. Este campo es una _Foreign Key_ de tipo _SMALLINT_. Está asociada con la _Primary Key_ de la tabla `development.coberturas_c2`.

Estas tablas son creadas ejecutando el código en sql que almacena el archivo [db_banco_datos_yucatan_sub_natural.sql](db_banco_datos_yucatan_sub_natural.sql). La información que almacenan estas tablas se obtiene ejecutando el código en sql que almacena el archivo [datos_banco_datos_yucatan_sub_natural.sql](datos_banco_datos_yucatan_sub_natural.sql).
