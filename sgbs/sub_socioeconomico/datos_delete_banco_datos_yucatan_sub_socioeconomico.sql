--Esta sección es para el componente socioeconómico

/*
    ****************************************************************
    Esta sección es para los catalogos del componente socioeconómico
    ****************************************************************
*/

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_grados;
TRUNCATE TABLE development.ct_grados RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_caract_pob;
TRUNCATE TABLE development.ct_ageb_caract_pob RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_caract_viv;
TRUNCATE TABLE development.ct_ageb_caract_viv RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_caract_prom_hij;
TRUNCATE TABLE development.ct_ageb_caract_prom_hij RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_caract_prom_esc;
TRUNCATE TABLE development.ct_ageb_caract_prom_esc RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_caract_nom_loc;
TRUNCATE TABLE development.ct_ageb_caract_nom_loc RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_diag_pobr_c;
TRUNCATE TABLE development.ct_ageb_diag_pobr_c RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_diag_pobr_r;
TRUNCATE TABLE development.ct_ageb_diag_pobr_r RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_diag_pobr;
TRUNCATE TABLE development.ct_ageb_diag_pobr RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_ageb_diag_rezago;
TRUNCATE TABLE development.ct_ageb_diag_rezago RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_idp_grados;
TRUNCATE TABLE development.ct_idp_grados RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_idp;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_idp_categorias;
TRUNCATE TABLE development.ct_idp_categorias RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_idp_rtp;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_pob_ind;
TRUNCATE TABLE development.ct_pob_ind RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_viv_ind;
TRUNCATE TABLE development.ct_viv_ind RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_prop_pob_ind_tip;
TRUNCATE TABLE development.ct_prop_pob_ind_tip RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_prop_pob_ind_sub;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_prop_pob;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_mig_prop;
TRUNCATE TABLE development.ct_mig_prop RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_mig_grad;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_mig_grad;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_mig_mun_cat;
TRUNCATE TABLE development.ct_mig_mun_cat RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_gpo_mun;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_pob_afrodesc;
TRUNCATE TABLE development.ct_pob_afrodesc RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_gpo_edad_quinq;
TRUNCATE TABLE development.ct_gpo_edad_quinq RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_pob_geq;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_caract_hab;
TRUNCATE TABLE development.ct_socioec_caract_hab RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_caract_prc;
TRUNCATE TABLE development.ct_socioec_caract_prc RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_caract_h;
TRUNCATE TABLE development.ct_socioec_caract_h RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_caract_iev;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_caract_tmacp;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_caract_gpe;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_caract_viv;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_diagn_rz;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_diagn_pb;
TRUNCATE TABLE development.ct_socioec_diagn_pb RESTART IDENTITY CASCADE;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ct_socioec_diagn_prc;
TRUNCATE TABLE development.ct_socioec_diagn_prc RESTART IDENTITY CASCADE;

/*
    *************************************************************
    Esta sección es para las tablas del componente socioeconómico
    *************************************************************
*/

--Borrando información para correr las instrucciones sql
DELETE FROM development.ageb_caract_pob;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ageb_caract_viv;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ageb_caract_prom_hij;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ageb_caract_prom_esc;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ageb_diag_pobr;

--Borrando información para correr las instrucciones sql
DELETE FROM development.ageb_diag_rezago;

--Borrando información para correr las instrucciones sql
DELETE FROM development.idp_grados;

--Borrando información para correr las instrucciones sql
DELETE FROM development.idp;

--Borrando información para correr las instrucciones sql
DELETE FROM development.idp_rtp;

--Borrando información para correr las instrucciones sql
DELETE FROM development.habitantes;

--Borrando información para correr las instrucciones sql
DELETE FROM development.pob_ind;

--Borrando información para correr las instrucciones sql
DELETE FROM development.viv_ind;

--Borrando información para correr las instrucciones sql
DELETE FROM development.prop_pob_ind;

--Borrando información para correr las instrucciones sql
DELETE FROM development.mig_prop;

--Borrando información para correr las instrucciones sql
DELETE FROM development.mig_int;

--Borrando información para correr las instrucciones sql
DELETE FROM development.mig_mun_cat;

--Borrando información para correr las instrucciones sql
DELETE FROM development.mig_mun;

--Borrando información para correr las instrucciones sql
DELETE FROM development.pob_afrodesc;

--Borrando información para correr las instrucciones sql
DELETE FROM development.pob_gpo_edad_quinq;

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_caract_hab;

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_caract_prc;

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_caract_h;

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_caract_iev;

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_caract_tmacp;

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_caract_gpe;

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_caract_viv;

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_diagn_rz;

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_diagn_pb;

--Borrando información para correr las instrucciones sql
DELETE FROM development.socioec_diagn_prc;