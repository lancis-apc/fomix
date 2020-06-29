######## Script Censos Econ?micos 2009-2013 Yucat?n  ######
### Limpiamos el ?rea de trabajo
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

### Haremos una funci?n para obtener los porcentajes de participaci?n de cada
#   Actividad Econ?mica en el total municipal de alguna de las variables censales.

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
#########################
### Haremos una funci?n para calcular la participaci?n de cada municipio en el total del estado

porc_tot_edo<-function(datos, variable){
  sub_data<-datos[,c("ANO_CENSAL", "ENTIDAD", "MUNICIPIO",variable)]

  consulta<-paste('SELECT ANO_CENSAL, SUM(',variable,')
  AS Total FROM datos
  GROUP BY ANO_CENSAL')

  total_edo_anio<-sqldf(consulta)

  consulta<-paste('SELECT ANO_CENSAL, ENTIDAD, MUNICIPIO, SUM(',variable,')
  AS ',variable,' FROM datos
  GROUP BY ANO_CENSAL,ENTIDAD,MUNICIPIO')

  total_muni_anio<-sqldf(consulta)

  por_muni_var<-merge(total_muni_anio,total_edo_anio,by="ANO_CENSAL")
  por_muni_var$porcentaje<-por_muni_var[,4]/por_muni_var[,5]
  return(por_muni_var)
}


### Hacemos un for para obtener el porcentaje de todas las variables

yuc_porcentajes_muni<-data.frame()

lista_var<-colnames(yuc)[! colnames(yuc) %in% c("ANO_CENSAL","ENTIDAD","MUNICIPIO","ACTIVIDAD_ECONOMICA")]

for (i in lista_var) {
  df_funct<-porc_tot_edo(yuc,i)
  df_melt<-melt(df_funct, id=c("ANO_CENSAL","ENTIDAD","MUNICIPIO","porcentaje"))
  yuc_porcentajes_muni<-rbind.data.frame(yuc_porcentajes_muni,df_melt)
  print(i)
}

#### Generamos un identificador cvgeo
yuc_porcentajes_muni$cvegeo<-paste(yuc_porcentajes_muni$ENTIDAD,sprintf("%.3i",yuc_porcentajes_muni$MUNICIPIO),sep = "")
#### Agregamos la región a la que pertenece el municipio
yuc_porcentajes_muni$cve_mun<-yuc_porcentajes_muni$MUNICIPIO
yuc_porcentajes_muni<-merge(yuc_porcentajes_muni,yuc_regiones,by="cve_mun",all.y=TRUE)
### Ordenamos las columnas del dataframe
yuc_porcentajes_muni$cve_ent<-yuc_porcentajes_muni$ENTIDAD
yuc_porcentajes_muni<-subset(yuc_porcentajes_muni,yuc_porcentajes_muni$variable!="Total")
yuc_porcentajes_muni<-yuc_porcentajes_muni[,c("cvegeo","cve_ent","cve_mun","nom_mun","region","ANO_CENSAL","variable","value","porcentaje")]
yuc_porcentajes_muni$porcentaje<-100*(yuc_porcentajes_muni$porcentaje)
## Guardamos los datos en formato long
colnames(yuc_porcentajes_act_ec_muni)<-c("cvegeo","cve_ent","cve_mun","nom_mun","region","año","act_ec_cod","variable_censal","valor","porcentaje" )
##write.csv(yuc_porcentajes_act_ec_muni,"/home/milo/Documentos/LANCIS/FOMIX/fomix/output/yuc_porcentajes_act_ec_muni.csv",fileEncoding = "UTF-8",row.names = FALSE)

colnames(yuc_porcentajes_muni)<-c("cvegeo","cve_ent","cve_mun","nom_mun","region","año","variable_censal","valor","porcentaje")
##write.csv(yuc_porcentajes_muni,"/home/milo/Documentos/LANCIS/FOMIX/fomix/output/yuc_porcentajes_muni.csv",fileEncoding = "UTF-8",row.names = FALSE)


#### Generación de Matriz de ritmo de crecimiento de la inversión, personal ocupado, produccion fija bruta y unidades económicas por , municipio, por rama y por rama dentro de cada municipio
library(tidyverse)

#### Damos formato wide a los datos
# Guardamos los datos en formato wide
yuc_porcentajes_muni_wide<-cast(yuc_porcentajes_muni[,! colnames(yuc_porcentajes_muni) %in% c("porcentaje")],cvegeo+cve_ent+cve_mun+nom_mun+region+año~variable_censal,sum)
yuc_porcentajes_muni_wide<-yuc_porcentajes_muni_wide[,! colnames(yuc_porcentajes_muni_wide) %in% c("Total")]

yuc_porcentajes_act_ec_muni_wide<-cast(yuc_porcentajes_act_ec_muni[,! colnames(yuc_porcentajes_act_ec_muni) %in% c("porcentaje")],cvegeo+cve_ent+cve_mun+nom_mun+region+año+act_ec_cod~variable_censal,sum)
yuc_porcentajes_act_ec_muni_wide<-yuc_porcentajes_act_ec_muni_wide[,! colnames(yuc_porcentajes_act_ec_muni_wide) %in% c("Total")]

### Obtenemos la tasa de crecimiento de las variables para su total municipal

## Generamos una función para obtener las tasas de crecimiento
tasa_crecimiento<-function(datos,variable){
  varname=paste0("tc_",variable,sep = "")

  datos %>%
    arrange(cvegeo, año) %>%  # Ordenamos por municipio y por año
    group_by(cvegeo) %>%  # Asignamos que dplyr dentro de cada municipio
    mutate(sg.diff = !!as.name(variable)  - lag(!!as.name(variable)),
           !!varname := (100*(sg.diff/lag(!!as.name(variable))))
    )
}

## Generamos una función para obtener las tasas de crecimiento media
tasa_crecimiento_media<-function(datos,variable){
  varname=paste0("tc_media_",variable,sep = "")

  datos %>%
    arrange(cvegeo, año) %>%  # Ordenamos por municipio y por año
    group_by(cvegeo) %>%  # Asignamos que dplyr dentro de cada municipio
    mutate(sg.diff = (!!as.name(variable)/lag(!!as.name(variable)))^(1/5),
           !!varname := (100*(sg.diff-1))
    )
}

## Iteramos sobre la lista de variables

for (i in lista_var) {
  yuc_porcentajes_muni_wide<-tasa_crecimiento(yuc_porcentajes_muni_wide,i)
  print(i)
}

for (i in lista_var) {
  yuc_porcentajes_muni_wide<-tasa_crecimiento_media(yuc_porcentajes_muni_wide,i)
  print(i)
}

## Nos quedamos sólo con las tasas de crecimiento
yuc_porcentajes_muni_wide<-yuc_porcentajes_muni_wide[! colnames(yuc_porcentajes_muni_wide) %in% c(lista_var,"sg.diff")]
## Cambiamos NA's por ceros
yuc_porcentajes_muni_wide[is.na(yuc_porcentajes_muni_wide)]<-0

## Nos quedamos sólo con el campo de inversión, personal ocupado, producción fija bruta y unidades económicas
# inversion="tc_A211A_INVERSION_TOTAL__MILLONES_DE_PESOS_"
# personal ocupado="tc_H001A_PERSONAL_OCUPADO_TOTAL"
# produccion fija bruta="tc_A111A_PRODUCCION_BRUTA_TOTAL__MILLONES_DE_PESOS_"
# unidades económicas="tc_UE_UNIDADES_ECONOMICAS"

yuc_porcentajes_muni_wide<-yuc_porcentajes_muni_wide[,c("cvegeo","cve_ent","cve_mun","nom_mun","region","año","tc_media_A211A_INVERSION_TOTAL__MILLONES_DE_PESOS_","tc_media_H001A_PERSONAL_OCUPADO_TOTAL","tc_media_A111A_PRODUCCION_BRUTA_TOTAL__MILLONES_DE_PESOS_","tc_media_UE_UNIDADES_ECONOMICAS")]

# Renombramos algunas columnas
colnames(yuc_porcentajes_muni_wide)<-c("cvegeo","cve_ent","cve_mun","nom_mun","region","año","tc_inv_total_mun","tc_per_ocupado_mun","tc_prod_brut_tot_mun","tc_ue_mun")
# Hacemos un subset para no contar con los registros de 2004
yuc_porcentajes_muni_wide<-subset(yuc_porcentajes_muni_wide,yuc_porcentajes_muni_wide$año!=2004)


## Guardamos el dataframe en formato csv
colnames(yuc_porcentajes_muni_wide)<-c("cvegeo","cve_ent","cve_mun","nom_mun","region", "año","tc_inv_total_mun","tc_per_ocupado_mun","tc_prod_brut_tot_mun","tc_ue_mun")
write.csv(yuc_porcentajes_muni_wide,"/CARPETAS_TRABAJO/hcortes/fomix/output/bd_mat_tc_muni.csv",fileEncoding = "UTF-8",row.names = FALSE)


####### Obtenemos la tasa de crecimiento de cada rama dentro del municipio

## Generamos una función para obtener las tasas de crecimiento
tasa_crecimiento<-function(datos,variable){
  varname=paste0("tc_",variable,sep = "")

  datos %>%
    arrange(cvegeo, año,act_ec_cod) %>%  # Ordenamos por municipio, año y rama
    group_by(act_ec_cod) %>%  # Asignamos que dplyr dentro de cada municipio
    mutate(sg.diff = !!as.name(variable)  - lag(!!as.name(variable)),
           !!varname := (100*(sg.diff/lag(!!as.name(variable))))
    )
}

## Generamos una función para obtener las tasas de crecimiento media
tasa_crecimiento_media<-function(datos,variable){
  varname=paste0("tc_media_",variable,sep = "")

  datos %>%
    arrange(cvegeo, año,act_ec_cod) %>%  # Ordenamos por municipio y por año
    group_by(act_ec_cod) %>%  # Asignamos que dplyr dentro de cada municipio
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

yuc_porcentajes_act_ec_muni_wide<-yuc_porcentajes_act_ec_muni_wide[,c("cvegeo","cve_ent","cve_mun","nom_mun","region","año","act_ec_cod","tc_media_A211A_INVERSION_TOTAL__MILLONES_DE_PESOS_","tc_media_H001A_PERSONAL_OCUPADO_TOTAL","tc_media_A111A_PRODUCCION_BRUTA_TOTAL__MILLONES_DE_PESOS_","tc_media_UE_UNIDADES_ECONOMICAS")]

# Renombramos algunas columnas
colnames(yuc_porcentajes_act_ec_muni_wide)<-c("cvegeo","cve_ent","cve_mun","nom_mun","region","año","act_ec_cod","tc_inv_total_mun","tc_per_ocupado_mun","tc_prod_brut_tot_mun","tc_ue_mun")
# Hacemos un subset para no contar con los registros de 2004
yuc_porcentajes_act_ec_muni_wide<-subset(yuc_porcentajes_act_ec_muni_wide,yuc_porcentajes_act_ec_muni_wide$año!=2004)

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

yuc_porcentajes_act_ec_muni_wide$region<-as.character(yuc_porcentajes_act_ec_muni_wide$region)
yuc_porcentajes_act_ec_muni_wide$region<-region_func(yuc_porcentajes_act_ec_muni_wide)

## Guardamos el dataframe en formato csv
colnames(yuc_porcentajes_act_ec_muni_wide)<-c("cvegeo","cve_ent","cve_mun","nom_mun","region", "año","act_ec_cod","tc_inv_total_mun","tc_per_ocupado_mun","tc_prod_brut_tot_mun","tc_ue_mun")
write.csv(yuc_porcentajes_act_ec_muni_wide,"/CARPETAS_TRABAJO/hcortes/fomix/output/bd_mat_tc_muni_rama.csv",fileEncoding = "UTF-8",row.names = FALSE)


#### Obtenemos la tasa de crecimiento por rama

yuc_porcentajes_act_ec_muni_rama<-yuc_porcentajes_act_ec_muni[,c("act_ec_cod","año","variable_censal","valor")]

consulta<-"SELECT act_ec_cod, año, variable_censal,SUM(valor) AS valor
            FROM yuc_porcentajes_act_ec_muni_rama
            GROUP BY act_ec_cod, año, variable_censal"

yuc_porcentajes_act_ec_muni_rama<-sqldf(consulta)

panel_yuc_porcentajes_act_ec_muni_rama<-cast(yuc_porcentajes_act_ec_muni_rama,act_ec_cod+año~variable_censal)
panel_yuc_porcentajes_act_ec_muni_rama<-panel_yuc_porcentajes_act_ec_muni_rama[,!colnames(panel_yuc_porcentajes_act_ec_muni_rama) %in% c("Total")]

## Generamos una función para obtener las tasas de crecimiento
tasa_crecimiento_rama<-function(datos,variable){
  varname=paste0("tc_",variable,sep = "")

  datos %>%
    arrange(act_ec_cod, año) %>%  # Ordenamos por municipio y por año
    group_by(act_ec_cod) %>%  # Asignamos que dplyr dentro de cada municipio
    mutate(sg.diff = !!as.name(variable)  - lag(!!as.name(variable)),
           !!varname := (100*(sg.diff/lag(!!as.name(variable))))
    )
}

## Generamos una función para obtener las tasas de crecimiento media
tasa_crecimiento_media_rama<-function(datos,variable){
  varname=paste0("tc_media_",variable,sep = "")

  datos %>%
    arrange(act_ec_cod, año) %>%  # Ordenamos por municipio y por año
    group_by(act_ec_cod) %>%  # Asignamos que dplyr dentro de cada municipio
    mutate(sg.diff = (!!as.name(variable)/lag(!!as.name(variable)))^(1/5),
           !!varname := (100*(sg.diff-1))
    )
}

## Iteramos sobre la lista de variables
for (i in lista_var) {
  panel_yuc_porcentajes_act_ec_muni_rama<-tasa_crecimiento_rama(panel_yuc_porcentajes_act_ec_muni_rama,i)
  print(i)
}

for (i in lista_var) {
  panel_yuc_porcentajes_act_ec_muni_rama<-tasa_crecimiento_media_rama(panel_yuc_porcentajes_act_ec_muni_rama,i)
  print(i)
}

## Nos quedamos sólo con las tasas de crecimiento
panel_yuc_porcentajes_act_ec_muni_rama<-panel_yuc_porcentajes_act_ec_muni_rama[! colnames(panel_yuc_porcentajes_act_ec_muni_rama) %in% c(lista_var,"sg.diff")]
## Cambiamos NA's por ceros
panel_yuc_porcentajes_act_ec_muni_rama[is.na(panel_yuc_porcentajes_act_ec_muni_rama)]<-0

## Nos quedamos sólo con el campo de inversión, personal ocupado, producción fija bruta y unidades económicas
# inversion="tc_A211A_INVERSION_TOTAL__MILLONES_DE_PESOS_"
# personal ocupado="tc_H001A_PERSONAL_OCUPADO_TOTAL"
# produccion fija bruta="tc_A111A_PRODUCCION_BRUTA_TOTAL__MILLONES_DE_PESOS_"
# unidades económicas="tc_UE_UNIDADES_ECONOMICAS"

panel_yuc_porcentajes_act_ec_muni_rama<-panel_yuc_porcentajes_act_ec_muni_rama[,c("act_ec_cod","año","tc_media_A211A_INVERSION_TOTAL__MILLONES_DE_PESOS_","tc_media_H001A_PERSONAL_OCUPADO_TOTAL","tc_media_A111A_PRODUCCION_BRUTA_TOTAL__MILLONES_DE_PESOS_","tc_media_UE_UNIDADES_ECONOMICAS")]

# Renombramos algunas columnas
colnames(panel_yuc_porcentajes_act_ec_muni_rama)<-c("act_ec_cod","anio","tc_inv_total_mun","tc_per_ocupado_mun","tc_prod_brut_tot_mun","tc_ue_mun")

# Hacemos un subset para no contar con los registros de 2004
panel_yuc_porcentajes_act_ec_muni_rama<-subset(panel_yuc_porcentajes_act_ec_muni_rama,panel_yuc_porcentajes_act_ec_muni_rama$anio!=2004)

## Guardamos el dataframe en formato csv
colnames(panel_yuc_porcentajes_act_ec_muni_rama)<-c("act_ec_cod","año","tc_inv_total_rama","tc_per_ocupado_rama","tc_prod_brut_tot_mun","tc_ue_rama")
write.csv(panel_yuc_porcentajes_act_ec_muni_rama,"/CARPETAS_TRABAJO/hcortes/fomix/output/bd_mat_tc_rama.csv",fileEncoding = "UTF-8",row.names = FALSE)
