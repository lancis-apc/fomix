--Esta es para el componente socioeconómico de las tablas db_banco_datos_yucatan_sub_socioeconomico_aux.sql
--Se borran las tablas si ya existen
DROP TABLE IF EXISTS
    auxiliar.bd_ageb_caract,
    auxiliar.bd_ageb_diag_pobr,
    auxiliar.bd_ageb_diag_rezago,
    auxiliar.bd_idp,
    auxiliar.bd_indigena,
    auxiliar.bd_migracion,
    auxiliar.bd_pob_afrodesc,
    auxiliar.bd_pob_gpo_edad_quinq,
    auxiliar.bd_socioec_caract,
    auxiliar.bd_socioec_diagn,
    auxiliar.dd_ageb_caract,
    auxiliar.dd_ageb_diag_pobr,
    auxiliar.dd_ageb_diag_rezago,
    auxiliar.dd_idp,
    auxiliar.dd_indigena,
    auxiliar.dd_migracion,
    auxiliar.dd_pob_afrodesc,
    auxiliar.dd_pob_gpo_edad_quinq,
    auxiliar.dd_socioec_caract,
    auxiliar.dd_socioec_diagn
    CASCADE;