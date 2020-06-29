# Componente General

La componente general hace referencia las tablas que guardan la información general, o no asociada a cualquiera de las otras componentes (_Natural_, _Productivo_, _Socioeconómico_). Esta componente está compuesta por las tablas siguiente:
1. `development.estados`. Esta tabla está compuesta por los campos siguientes:
    1. `clave_entidad`. Este campo es una _Primary Key_ de tipo _CHAR_ con una longitud de 2 caracteres. Corresponde a las claves utilizadas por el INEGI para cada estado de la república, los valores se encuentran en el rango que va del `01` al `32`.
    2. `entidad_federativa`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 32 caracteres. Corresponde al nombre de cada una de las entidades federativas, alamcenados en el orden que el INEGI utiliza.
2. `development.regiones`. Esta tabla está compuesta por los campos siguientes:
    1. `id_region`. Este campo es una _Primary Key_ de tipo _SMALLINT_. Corresponde al número que se asigna a cada una de las regiones en la que se dividide el estado, los valores se encuentran en el rango del $1$ al $7$.
    2. `region`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 20 caracteres. Corresponde al nombre de cada una de las regiones, alamcenados en orden alfabético.
3. `development.municipios`. Esta tabla está compuesta por los campos siguientes:
    1. `clave_municipio`. Este campo es una _Primary Key_ de tipo _CHAR_ con una longitud de 3 caracteres. Corresponde a las claves utilizadas por el INEGI para cada uno de los municipios del estado, y los valores se encuentran en el rango que va del `001` al `106`. 
    2. `municipio`. Este campo es de tipo _VARCHAR_ con una longitud máxima de 80 caracteres. Corresponde al nombre de cada uno de los municipios, alamcenados en el orden que el INEGI utiliza.
    3. `id_region`. Este campo es una _Foreign Key_ de tipo _SMALLINT_. Está asociada con la _Primary Key_ de la tabla `development.regiones`.
    4. `cve_ent`. Este campo es una _Foreign Key_ de tipo _CHAR_. Está asociada con la _Primary Key_ de la tabla `development.estados`.
4. `development.agebs`. Esta tabla está compuesta por los campos siguientes:
    1. `clave_ageb`. Este campo es una _Primary Key_ de tipo _CHAR_ con una longitud de 4 caracteres. Corresponde a las claves utilizadas por el INEGI para cada AGEB, los valores son claves alfanuméricas.
    2. `fol_ageb`. Este campo es de tipo _CHAR_ con una longitud de 13 caracteres. Corresponde al Folio que el INEGI asigna a cada AGEB, los valores son claves alfanuméricas.
    3. `cve_mun`. Este campo es una _Foreign Key_ de tipo _CHAR_. Está asociada con la _Primary Key_ de la tabla `development.municipios`.

Estas tablas son creadas ejecutando el código en sql que almacena el archivo [db_banco_datos_yucatan.sql](db_banco_datos_yucatan.sql). La información que almacenan estas tablas se obtiene ejecuntando el código en sql que almacena el archivo [datos_banco_datos_yucatan.sql](datos_banco_datos_yucatan.sql).
