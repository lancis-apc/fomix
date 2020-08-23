/*
    ***********************
    Creación de Componentes
    ***********************
*/
-- Se crea el componente general
\i general/db_banco_datos_yucatan.sql;

-- Se crea el componente natural
\i sub_natural/db_banco_datos_yucatan_sub_natural.sql;

-- Se crea el componente productivo
\i sub_productivo/db_banco_datos_yucatan_sub_productivo.sql;

-- Se crea el componente socioeconómico
\i sub_socioeconomico/db_banco_datos_yucatan_sub_socioeconomico.sql;

/*
    ******************
    Componente auxilar
    ******************
*/

-- Se crea el componente auxilar
\i auxiliar/db_banco_datos_yucatan_auxiliar.sql;

--Se llenan las tablas del componente auxiliar
\i auxiliar/datos_banco_datos_yucatan_auxiliar.sql;

/*
    **************************
    Información de componentes
    **************************
*/

-- Se llenan las tablas del componente general
\i general/datos_banco_datos_yucatan.sql;

-- Se llenan las tablas del componente natural
\i sub_natural/datos_banco_datos_yucatan_sub_natural.sql;

-- Se llenan las tablas del componente productivo
\i sub_productivo/datos_banco_datos_yucatan_sub_productivo.sql;

-- Se llenan las tablas del componente socioeconómico
\i sub_socioeconomico/datos_banco_datos_yucatan_sub_socioeconomico.sql;

/*
    **********************************
    Eliminación del componente auxiliar
    **********************************
*/

DROP SCHEMA IF EXISTS auxiliar CASCADE;

/*
    *******************
    Creación de visatas
    *******************
*/

-- Creación de visatas del componente natural
\i sub_natural/db_banco_datos_yucatan_sub_natural_views.sql;

-- Creación de visatas del componente productivo
\i sub_productivo/db_banco_datos_yucatan_sub_productivo_views.sql;

-- Creación de visatas del componente socioeconómico
\i sub_socioeconomico/db_banco_datos_yucatan_sub_socioeconomico_views.sql;