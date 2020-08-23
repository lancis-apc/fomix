--Esta sección es para el componente socioeconómico

/*
    ****************************************************************
    Esta sección es para los catalogos del componente socioeconómico
    ****************************************************************
*/

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_grados;
TRUNCATE TABLE sub_socioeconomico.ct_grados RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_ageb_caract_pob;
TRUNCATE TABLE sub_socioeconomico.ct_ageb_caract_pob RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_ageb_caract_viv;
TRUNCATE TABLE sub_socioeconomico.ct_ageb_caract_viv RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_ageb_caract_prom_hij;
TRUNCATE TABLE sub_socioeconomico.ct_ageb_caract_prom_hij RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_ageb_caract_prom_esc;
TRUNCATE TABLE sub_socioeconomico.ct_ageb_caract_prom_esc RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_ageb_caract_nom_loc;
TRUNCATE TABLE sub_socioeconomico.ct_ageb_caract_nom_loc RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_ageb_diag_pobr_c;
TRUNCATE TABLE sub_socioeconomico.ct_ageb_diag_pobr_c RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_ageb_diag_pobr_r;
TRUNCATE TABLE sub_socioeconomico.ct_ageb_diag_pobr_r RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_ageb_diag_pobr;
TRUNCATE TABLE sub_socioeconomico.ct_ageb_diag_pobr RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_ageb_diag_rezago;
TRUNCATE TABLE sub_socioeconomico.ct_ageb_diag_rezago RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_idp_grados;
TRUNCATE TABLE sub_socioeconomico.ct_idp_grados RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_idp;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_idp_categorias;
TRUNCATE TABLE sub_socioeconomico.ct_idp_categorias RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_idp_rtp;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_pob_ind;
TRUNCATE TABLE sub_socioeconomico.ct_pob_ind RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_viv_ind;
TRUNCATE TABLE sub_socioeconomico.ct_viv_ind RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_prop_pob_ind_tip;
TRUNCATE TABLE sub_socioeconomico.ct_prop_pob_ind_tip RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_prop_pob_ind_sub;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_prop_pob;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_mig_prop;
TRUNCATE TABLE sub_socioeconomico.ct_mig_prop RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_mig_grad;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_mig_grad;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_mig_mun_cat;
TRUNCATE TABLE sub_socioeconomico.ct_mig_mun_cat RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_gpo_mun;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_pob_afrodesc;
TRUNCATE TABLE sub_socioeconomico.ct_pob_afrodesc RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_gpo_edad_quinq;
TRUNCATE TABLE sub_socioeconomico.ct_gpo_edad_quinq RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_pob_geq;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_socioec_caract_hab;
TRUNCATE TABLE sub_socioeconomico.ct_socioec_caract_hab RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_socioec_caract_prc;
TRUNCATE TABLE sub_socioeconomico.ct_socioec_caract_prc RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_socioec_caract_h;
TRUNCATE TABLE sub_socioeconomico.ct_socioec_caract_h RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_socioec_caract_iev;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_socioec_caract_tmacp;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_socioec_caract_gpe;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_socioec_caract_viv;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_socioec_diagn_rz;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_socioec_diagn_pb;
TRUNCATE TABLE sub_socioeconomico.ct_socioec_diagn_pb RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ct_socioec_diagn_prc;
TRUNCATE TABLE sub_socioeconomico.ct_socioec_diagn_prc RESTART IDENTITY CASCADE;

/*
    *************************************************************
    Esta sección es para las tablas del componente socioeconómico
    *************************************************************
*/

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ageb_caract_pob;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ageb_caract_viv;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ageb_caract_prom_hij;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ageb_caract_prom_esc;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ageb_diag_pobr;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.ageb_diag_rezago;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.idp_grados;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.idp;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.idp_rtp;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.habitantes;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.pob_ind;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.viv_ind;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.prop_pob_ind;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.mig_prop;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.mig_int;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.mig_mun_cat;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.mig_mun;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.pob_afrodesc;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.pob_gpo_edad_quinq;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.socioec_caract_hab;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.socioec_caract_prc;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.socioec_caract_h;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.socioec_caract_iev;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.socioec_caract_tmacp;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.socioec_caract_gpe;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.socioec_caract_viv;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.socioec_diagn_rz;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.socioec_diagn_pb;

--Borrando información para correr las instrucciones sql
DELETE FROM sub_socioeconomico.socioec_diagn_prc;