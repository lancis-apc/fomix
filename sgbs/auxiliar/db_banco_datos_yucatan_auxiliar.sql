/*
    **************
    Crea el schema
    **************
*/

CREATE SCHEMA IF NOT EXISTS auxiliar;

/*
    ***************
    Crea las tablas
    ***************
*/

\i auxiliar/db_banco_datos_yucatan_sub_natural_aux.sql;
\i auxiliar/db_banco_datos_yucatan_sub_productivo_aux.sql;
\i auxiliar/db_banco_datos_yucatan_sub_socioeconomico_aux.sql;