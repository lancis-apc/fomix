--Esta es para el componente socioeconómico de las tablas db_banco_datos_yucatan_sub_socioeconomico_aux.sql
--Se borran las tablas si ya existen
DROP TABLE IF EXISTS development.bd_ageb_caract,
    development.bd_ageb_diag_pobr,
    development.bd_ageb_diag_rezago,
    development.bd_idp,
    development.bd_indigena,
    development.bd_migracion,
    development.bd_pob_afrodesc,
    development.bd_pob_gpo_edad_quinq,
    development.bd_socioec_caract,
    development.bd_socioec_diagn,
    development.dd_ageb_caract,
    development.dd_ageb_diag_pobr,
    development.dd_ageb_diag_rezago,
    development.dd_idp,
    development.dd_indigena,
    development.dd_migracion,
    development.dd_pob_afrodesc,
    development.dd_pob_gpo_edad_quinq,
    development.dd_socioec_caract,
    development.dd_socioec_diagn
    CASCADE;