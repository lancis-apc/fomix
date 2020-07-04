#/******************************************************************************************************************************************************************
 #* DESCRIPCIÓN:
 #* Genera las tasas de participación y crecimiento de la inversión, personal ocupado,
 #* producción fija bruta y unidades económicas por subsector de actividad económica y por municipio.
 #*
 #* INSUMOS:
 #* yucatan_ce_09-14.csv  ---> Censos económicos de 2004, 2009 y 2014
 #* regiones_yuc.csv      ---> Diccionario de municipios y regiones del estado de Yucatán
 #*
 #* SALIDAS:
 #* bd_yuc_porcentajes_act_ec_subsector_muni_wide.csv ---> Participación de cada subsector de actividad económica en el total municipal de la inversión, personal ocupado,producción fija bruta y unidades económicas para 2004, 2009 y 2014.
 #* bd_mat_tc_subsector.csv ---> Tasa de crecimiento de inversión, personal ocupado,producción fija bruta y unidades económicas por subsector de actividad económica para 2009 y 2014.
 #* bd_mat_tc_muni_subsector.csv ---> Tasa de crecimiento de inversión, personal ocupado,producción fija bruta y unidades económicas de cada subsector de actividad económica dentro del total municipal para 2009 y 2014.
 #*
 #*
 #* Subsistema: Productivo
 #* Autor: LANCIS
 #* Fecha: 3 de julio de 2020
 #*
#*/********************************************************************************************************************************************************************

### Limpiamos el área de trabajo
rm(list=ls())

### Cargamos las bibliotecas
library(sqldf)
library(stringi)
library(reshape)

### Cargamos los datos

yuc<-read.csv("/CARPETAS_TRABAJO/hcortes/fomix/data/yucatan_ce_09-14.csv")
yuc_regiones<-read.csv("/CARPETAS_TRABAJO/hcortes/fomix/data/regiones_yuc.csv",sep=",")

# Quitamos acentos y sustituimos los . por _ a los nombres de las columnas

colnames(yuc)<-chartr(".", "_",toupper(stri_trans_general(colnames(yuc),"Latin-ASCII")))

#/**************************************************************************************************************************************
#* Generación del archivo:
#* bd_yuc_porcentajes_act_ec_subsector_muni_wide.csv
#/**************************************************************************************************************************************

# Agrupamos a nivel subsector

yuc$ACTIVIDAD_ECONOMICA<-substring(yuc$ACTIVIDAD_ECONOMICA,1,2)

library(dplyr)

yuc<-yuc %>%
  group_by(ANO_CENSAL,ENTIDAD,MUNICIPIO,ACTIVIDAD_ECONOMICA) %>%
  summarise_all(funs(sum))

### Haremos una función para obtener los porcentajes de participación de cada
#   Actividad Económica en el total municipal de alguna de las variables censales.

porc_tot_mun<-function(datos, variable){
  sub_data<-datos[,c("ANO_CENSAL", "ENTIDAD", "MUNICIPIO", "ACTIVIDAD_ECONOMICA",variable)]
  sub_data$id<- paste(sub_data$ANO_CENSAL,sub_data$ENTIDAD,sub_data$MUNICIPIO,sep="-")

  consulta<-paste('SELECT ANO_CENSAL || "-"|| ENTIDAD ||"-"|| MUNICIPIO as id , SUM(',variable,')
  AS Total FROM datos
  GROUP BY ANO_CENSAL, ENTIDAD, MUNICIPIO')

  sub_data_group<-sqldf(consulta)
  sub_data_merge<-merge(sub_data,sub_data_group,by="id")

  sub_data_merge$porcentaje<-sub_data_merge[,6]/sub_data_merge$Total

  return(sub_data_merge)
}

### Hacemos un for para obtener el porcentaje de todas las variables

yuc_porcentajes_act_ec_muni<-data.frame()

lista_var<-colnames(yuc)[! colnames(yuc) %in% c("ANO_CENSAL","ENTIDAD","MUNICIPIO","ACTIVIDAD_ECONOMICA","Total")]

for (i in lista_var) {
  df_funct<-porc_tot_mun(yuc,i)
  df_melt<-melt(df_funct, id=c("id", "ANO_CENSAL","ENTIDAD","MUNICIPIO","ACTIVIDAD_ECONOMICA","porcentaje"))
  yuc_porcentajes_act_ec_muni<-rbind.data.frame(yuc_porcentajes_act_ec_muni,df_melt)
  print(i)
}

#### Generamos un identificador cvgeo
yuc_porcentajes_act_ec_muni$cvegeo<-paste(yuc_porcentajes_act_ec_muni$ENTIDAD,sprintf("%.3i",yuc_porcentajes_act_ec_muni$MUNICIPIO),sep = "")
#### Agregamos la región a la que pertenece el municipio
yuc_porcentajes_act_ec_muni$cve_mun<-yuc_porcentajes_act_ec_muni$MUNICIPIO
yuc_porcentajes_act_ec_muni<-merge(yuc_porcentajes_act_ec_muni,yuc_regiones,by="cve_mun",all.y=TRUE)
### Ordenamos las columnas del dataframe
yuc_porcentajes_act_ec_muni$cve_ent<-yuc_porcentajes_act_ec_muni$ENTIDAD
yuc_porcentajes_act_ec_muni<-subset(yuc_porcentajes_act_ec_muni,yuc_porcentajes_act_ec_muni$variable!="Total")

yuc_porcentajes_act_ec_muni<-yuc_porcentajes_act_ec_muni[,c("cvegeo","cve_ent","cve_mun","nom_mun","region","ANO_CENSAL","ACTIVIDAD_ECONOMICA","variable","value","porcentaje")]
yuc_porcentajes_act_ec_muni$porcentaje<-100*yuc_porcentajes_act_ec_muni$porcentaje

## Guardamos los datos en formato long
colnames(yuc_porcentajes_act_ec_muni)<-c("cvegeo","cve_ent","cve_mun","nom_mun","region","año","act_ec_cod_subsector","variable_censal","valor","porcentaje" )
##write.csv(yuc_porcentajes_act_ec_muni,"/home/milo/Documentos/LANCIS/FOMIX/fomix/output/yuc_porcentajes_act_ec_subsector_muni.csv",fileEncoding = "UTF-8",row.names = FALSE)
## Guardamos en formato wide sólo las variables:
# inversion="tc_A211A_INVERSION_TOTAL__MILLONES_DE_PESOS_"
# personal ocupado="tc_H001A_PERSONAL_OCUPADO_TOTAL"
# produccion fija bruta="tc_A111A_PRODUCCION_BRUTA_TOTAL__MILLONES_DE_PESOS_"
# unidades económicas="tc_UE_UNIDADES_ECONOMICAS"

yuc_porcentajes_act_ec_muni$variable_censal<-as.character(yuc_porcentajes_act_ec_muni$variable_censal)
yuc_porcentajes_act_ec_muni_wide_write<-subset(yuc_porcentajes_act_ec_muni, yuc_porcentajes_act_ec_muni$variable_censal=="A211A_INVERSION_TOTAL__MILLONES_DE_PESOS_" | yuc_porcentajes_act_ec_muni$variable_censal=="H001A_PERSONAL_OCUPADO_TOTAL" | yuc_porcentajes_act_ec_muni$variable_censal=="A111A_PRODUCCION_BRUTA_TOTAL__MILLONES_DE_PESOS_" | yuc_porcentajes_act_ec_muni$variable_censal=="UE_UNIDADES_ECONOMICAS")
yuc_porcentajes_act_ec_muni_wide_write_valor<-cast(yuc_porcentajes_act_ec_muni_wide_write[, ! colnames(yuc_porcentajes_act_ec_muni_wide_write) %in% c("porcentaje")],cvegeo+cve_ent+cve_mun+nom_mun+region+año+act_ec_cod_subsector~variable_censal,sum)
yuc_porcentajes_act_ec_muni_wide_write_porcentaje<-cast(yuc_porcentajes_act_ec_muni_wide_write[, ! colnames(yuc_porcentajes_act_ec_muni_wide_write) %in% c("valor")],cvegeo+cve_ent+cve_mun+nom_mun+region+año+act_ec_cod_subsector~variable_censal,sum)

yuc_porcentajes_act_ec_muni_wide_write_total<-cbind.data.frame(yuc_porcentajes_act_ec_muni_wide_write_valor,yuc_porcentajes_act_ec_muni_wide_write_porcentaje[,c(8,9,10,11)])

colnames(yuc_porcentajes_act_ec_muni_wide_write_total)<-c("cvegeo","cve_ent","cve_mun","nom_mun","region","año","act_ec_cod_subsector","prod_brut_tot_valor","inv_total_valor","per_ocupado_valor","ue_valor","prod_brut_tot_porcen","inv_total_porcen","per_ocupado_porcen","ue_porcen")

# Cambiamos las regiones
region_func<-function(datos){
  datos$region[datos$region=="IPoniente"]<-"I Poniente"
  datos$region[datos$region=="IINoroeste"]<-"II Noroeste"
  datos$region[datos$region=="IIICentro"]<-"III Centro"
  datos$region[datos$region=="IVLitoral centro"]<-"IV Litoral centro"
  datos$region[datos$region=="VNoreste"]<-"V Noreste"
  datos$region[datos$region=="VIOriente"]<-"VI Oriente"
  datos$region[datos$region=="VIISur"]<-"VII Sur"

  return(datos$region)
}

yuc_porcentajes_act_ec_muni_wide_write_total$region<-as.character(yuc_porcentajes_act_ec_muni_wide_write_total$region)
yuc_porcentajes_act_ec_muni_wide_write_total$region<-region_func(yuc_porcentajes_act_ec_muni_wide_write_total)

write.csv(yuc_porcentajes_act_ec_muni_wide_write_total,"/CARPETAS_TRABAJO/hcortes/fomix/output/bd_yuc_porcentajes_act_ec_subsector_muni_wide.csv",fileEncoding = "UTF-8",row.names = FALSE)



#/**************************************************************************************************************************************
#* Generación de Matriz de ritmo de crecimiento de la inversión, personal ocupado, produccion fija bruta y unidades económicas por , municipio, por subsector y por subsector dentro de cada municipio
#/**************************************************************************************************************************************

#/**************************************************************************************************************************************
#* Archivo de salida: bd_mat_tc_subsector.csv
#/**************************************************************************************************************************************


library(tidyverse)

#### Obtenemos la tasa de crecimiento por subsector

yuc_porcentajes_act_ec_muni_subsector<-yuc_porcentajes_act_ec_muni[,c("act_ec_cod_subsector","año","variable_censal","valor")]

consulta<-"SELECT act_ec_cod_subsector, año, variable_censal,SUM(valor) AS value
            FROM yuc_porcentajes_act_ec_muni_subsector
            GROUP BY act_ec_cod_subsector, año, variable_censal"

yuc_porcentajes_act_ec_muni_subsector<-sqldf(consulta)

panel_yuc_porcentajes_act_ec_muni_subsector<-cast(yuc_porcentajes_act_ec_muni_subsector,act_ec_cod_subsector+año~variable_censal)
panel_yuc_porcentajes_act_ec_muni_subsector<-panel_yuc_porcentajes_act_ec_muni_subsector[,!colnames(panel_yuc_porcentajes_act_ec_muni_subsector) %in% c("Total")]

## Generamos una función para obtener las tasas de crecimiento
tasa_crecimiento_rama<-function(datos,variable_censal){
  varname=paste0("tc_",variable_censal,sep = "")

  datos %>%
    arrange(act_ec_cod_subsector, año) %>%  # Ordenamos por municipio y por año
    group_by(act_ec_cod_subsector) %>%  # Asignamos que dplyr dentro de cada municipio
    mutate(sg.diff = !!as.name(variable_censal)  - lag(!!as.name(variable_censal)),
           !!varname := (100*(sg.diff/lag(!!as.name(variable_censal))))
    )
}

## Generamos una función para obtener las tasas de crecimiento media
tasa_crecimiento_media_rama<-function(datos,variable_censal){
  varname=paste0("tc_media_",variable_censal,sep = "")

  datos %>%
    arrange(act_ec_cod_subsector, año) %>%  # Ordenamos por municipio y por año
    group_by(act_ec_cod_subsector) %>%  # Asignamos que dplyr dentro de cada municipio
    mutate(sg.diff = (!!as.name(variable_censal)/lag(!!as.name(variable_censal)))^(1/5),
           !!varname := (100*(sg.diff-1))
    )
}

## Iteramos sobre la lista de variable_censals
for (i in lista_var) {
  panel_yuc_porcentajes_act_ec_muni_subsector<-tasa_crecimiento_rama(panel_yuc_porcentajes_act_ec_muni_subsector,i)
  print(i)
}

for (i in lista_var) {
  panel_yuc_porcentajes_act_ec_muni_subsector<-tasa_crecimiento_media_rama(panel_yuc_porcentajes_act_ec_muni_subsector,i)
  print(i)
}

## Nos quedamos sólo con las tasas de crecimiento medias
panel_yuc_porcentajes_act_ec_muni_subsector<-panel_yuc_porcentajes_act_ec_muni_subsector[! colnames(panel_yuc_porcentajes_act_ec_muni_subsector) %in% c(lista_var,"sg.diff")]
## Cambiamos NA's por ceros
panel_yuc_porcentajes_act_ec_muni_subsector[is.na(panel_yuc_porcentajes_act_ec_muni_subsector)]<-0

## Nos quedamos sólo con el campo de inversión, personal ocupado, producción fija bruta y unidades económicas
# inversion="tc_A211A_INVERSION_TOTAL__MILLONES_DE_PESOS_"
# personal ocupado="tc_H001A_PERSONAL_OCUPADO_TOTAL"
# produccion fija bruta="tc_A111A_PRODUCCION_BRUTA_TOTAL__MILLONES_DE_PESOS_"
# unidades económicas="tc_UE_UNIDADES_ECONOMICAS"

panel_yuc_porcentajes_act_ec_muni_subsector<-panel_yuc_porcentajes_act_ec_muni_subsector[,c("act_ec_cod_subsector","año","tc_media_A211A_INVERSION_TOTAL__MILLONES_DE_PESOS_","tc_media_H001A_PERSONAL_OCUPADO_TOTAL","tc_media_A111A_PRODUCCION_BRUTA_TOTAL__MILLONES_DE_PESOS_","tc_media_UE_UNIDADES_ECONOMICAS")]

# Renombramos algunas columnas
colnames(panel_yuc_porcentajes_act_ec_muni_subsector)<-c("act_ec_cod_subsector","año","tc_inv_total_mun","tc_per_ocupado_mun","tc_prod_brut_tot_mun","tc_ue_mun")

# Hacemos un subset para no contar con los registros de 2004
panel_yuc_porcentajes_act_ec_muni_subsector<-subset(panel_yuc_porcentajes_act_ec_muni_subsector,panel_yuc_porcentajes_act_ec_muni_subsector$año!=2004)

## Guardamos el dataframe en formato csv
colnames(panel_yuc_porcentajes_act_ec_muni_subsector)<-c("act_ec_cod_subsector","año","tc_inv_total_subsector","tc_per_ocupado_subsector","tc_prod_brut_tot_subsector","tc_ue_subsector")
write.csv(panel_yuc_porcentajes_act_ec_muni_subsector,"/CARPETAS_TRABAJO/hcortes/fomix/output/bd_mat_tc_subsector.csv",fileEncoding = "UTF-8",row.names = FALSE)


#/**************************************************************************************************************************************
#* Generación de Matriz de ritmo de crecimiento de la inversión, personal ocupado, produccion fija bruta y unidades económicas por subsector dentro de cada municipio
#/**************************************************************************************************************************************

#/**************************************************************************************************************************************
#* Archivo de salida: bd_mat_tc_muni_subsector.csv
#/**************************************************************************************************************************************

yuc_porcentajes_act_ec_muni_wide<-cast(yuc_porcentajes_act_ec_muni[,! colnames(yuc_porcentajes_act_ec_muni) %in% c("porcentaje")],cvegeo+cve_ent+cve_mun+nom_mun+region+año+act_ec_cod_subsector~variable_censal,sum)
yuc_porcentajes_act_ec_muni_wide<-yuc_porcentajes_act_ec_muni_wide[,! colnames(yuc_porcentajes_act_ec_muni_wide) %in% c("Total")]

## Generamos una función para obtener las tasas de crecimiento
tasa_crecimiento<-function(datos,variable){
  varname=paste0("tc_",variable,sep = "")

  datos %>%
    arrange(cvegeo, año,act_ec_cod_subsector) %>%  # Ordenamos por municipio, año y rama
    group_by(act_ec_cod_subsector) %>%  # Asignamos que dplyr dentro de cada municipio
    mutate(sg.diff = !!as.name(variable)  - lag(!!as.name(variable)),
           !!varname := (100*(sg.diff/lag(!!as.name(variable))))
    )
}

## Generamos una función para obtener las tasas de crecimiento media
tasa_crecimiento_media<-function(datos,variable){
  varname=paste0("tc_media_",variable,sep = "")

  datos %>%
    arrange(cvegeo, año,act_ec_cod_subsector) %>%  # Ordenamos por municipio y por año
    group_by(act_ec_cod_subsector) %>%  # Asignamos que dplyr dentro de cada municipio
    mutate(anterior = (ifelse(lag(!!as.name(variable))==0, !!as.name(variable)*0.1,lag(!!as.name(variable) ))),
           actual=(ifelse(!!as.name(variable)==0, lag(!!as.name(variable))*0.1, !!as.name(variable))),
           sg.diff=(actual/anterior)^(1/5),
           !!varname := (100*(sg.diff-1))
    )
}

## Iteramos sobre la lista de variables

for (i in lista_var) {
  yuc_porcentajes_act_ec_muni_wide<-tasa_crecimiento(yuc_porcentajes_act_ec_muni_wide,i)
  print(i)
}

for (i in lista_var) {
  yuc_porcentajes_act_ec_muni_wide<-tasa_crecimiento_media(yuc_porcentajes_act_ec_muni_wide,i)
  print(i)
}

## Nos quedamos sólo con las tasas de crecimiento
yuc_porcentajes_act_ec_muni_wide<-yuc_porcentajes_act_ec_muni_wide[! colnames(yuc_porcentajes_act_ec_muni_wide) %in% c(lista_var,"sg.diff")]
## Cambiamos NA's por ceros
yuc_porcentajes_act_ec_muni_wide[is.na(yuc_porcentajes_act_ec_muni_wide)]<-0

## Nos quedamos sólo con el campo de inversión, personal ocupado, producción fija bruta y unidades económicas
# inversion="tc_A211A_INVERSION_TOTAL__MILLONES_DE_PESOS_"
# personal ocupado="tc_H001A_PERSONAL_OCUPADO_TOTAL"
# produccion fija bruta="tc_A111A_PRODUCCION_BRUTA_TOTAL__MILLONES_DE_PESOS_"
# unidades económicas="tc_UE_UNIDADES_ECONOMICAS"

yuc_porcentajes_act_ec_muni_wide<-yuc_porcentajes_act_ec_muni_wide[,c("cvegeo","cve_ent","cve_mun","nom_mun","region","año","act_ec_cod_subsector","tc_media_A211A_INVERSION_TOTAL__MILLONES_DE_PESOS_","tc_media_H001A_PERSONAL_OCUPADO_TOTAL","tc_media_A111A_PRODUCCION_BRUTA_TOTAL__MILLONES_DE_PESOS_","tc_media_UE_UNIDADES_ECONOMICAS")]

# Renombramos algunas columnas
colnames(yuc_porcentajes_act_ec_muni_wide)<-c("cvegeo","cve_ent","cve_mun","nom_mun","region","año","act_ec_cod_subsector","tc_inv_total_mun","tc_per_ocupado_mun","tc_prod_brut_tot_mun","tc_ue_mun")
# Hacemos un subset para no contar con los registros de 2004
yuc_porcentajes_act_ec_muni_wide<-subset(yuc_porcentajes_act_ec_muni_wide,yuc_porcentajes_act_ec_muni_wide$año!=2004)

yuc_porcentajes_act_ec_muni_wide$region<-as.character(yuc_porcentajes_act_ec_muni_wide$region)
yuc_porcentajes_act_ec_muni_wide$region<-region_func(yuc_porcentajes_act_ec_muni_wide)

## Guardamos el dataframe en formato csv
colnames(yuc_porcentajes_act_ec_muni_wide)<-c("cvegeo","cve_ent","cve_mun","nom_mun","region", "año","act_ec_cod_subsector","tc_inv_total_mun","tc_per_ocupado_mun","tc_prod_brut_tot_mun","tc_ue_mun")
write.csv(yuc_porcentajes_act_ec_muni_wide,"/CARPETAS_TRABAJO/hcortes/fomix/output/bd_mat_tc_muni_subsector.csv",fileEncoding = "UTF-8",row.names = FALSE)
