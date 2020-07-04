#/******************************************************************************************************************************************************************
 #* DESCRIPCIÓN:
 #* Genera el conteo de unidades económicas por rama y subsector de actividad económica de cada municipio que operan con 0 a 5 personas, 6 a 10 personas,
 #* 11 a 30 personas, 31 a 50 personas, 51 a 100 personas, 101 a 250 personas , 251 y más personas, para el año 2015.
 #*
 #* INSUMOS:
 #* DENUE_INEGI_11_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 11
 #* DENUE_INEGI_21_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 21
 #* DENUE_INEGI_22_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 22
 #* DENUE_INEGI_23_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 23
 #* DENUE_INEGI_31-33_.csv        ---> Directorio de unidades económicas a nivel nacional para los sectores 31-33
 #* DENUE_INEGI_43_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 43
 #* DENUE_INEGI_46111_.csv        ---> Directorio de unidades económicas a nivel nacional para la rama 46111
 #* DENUE_INEGI_46112-46311_.csv  ---> Directorio de unidades económicas a nivel nacional para las ramas 46112-46311
 #* DENUE_INEGI_46321-46531_.csv  ---> Directorio de unidades económicas a nivel nacional para las ramas 46321-46531
 #* DENUE_INEGI_46591-46911_.csv  ---> Directorio de unidades económicas a nivel nacional para las ramas 46591-46911
 #* DENUE_INEGI_48-49_.csv        ---> Directorio de unidades económicas a nivel nacional para los sectores 48 y 49
 #* DENUE_INEGI_51_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 51
 #* DENUE_INEGI_52_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 52
 #* DENUE_INEGI_53_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 53
 #* DENUE_INEGI_54_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 54
 #* DENUE_INEGI_55_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 55
 #* DENUE_INEGI_56_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 56
 #* DENUE_INEGI_61_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 61
 #* DENUE_INEGI_62_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 62
 #* DENUE_INEGI_71_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 71
 #* DENUE_INEGI_72_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 72
 #* DENUE_INEGI_81_.csv           ---> Directorio de unidades económicas a nivel nacional para el sector 81
 #* regiones_yuc.csv              ---> Diccionario de municipios y regiones del estado de Yucatán
 #*
 #*
 #* SALIDAS:
 #* bd_denue_yuc_subsector_wide.csv ---> Cantidad de unidades económicas que operan con distintas cantidades de trabajadores por rama de actividad económica por municipio
 #* bd_denue_yuc_rama_wide.csv      ---> Cantidad de unidades económicas que operan con distintas cantidades de trabajadores por subsector de actividad económica por municipio
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


### Cargamos las lista de csv por año

lista_files<-as.character(unlist(read.table("/CARPETAS_TRABAJO/hcortes/denue/data/2015/files.txt",col.names = "file"),use.names = FALSE))
lista_files<-paste("/CARPETAS_TRABAJO/hcortes/denue/data/2015/",lista_files,sep = "")

### Usamos rbind para concatenar los datos
denue<-data.frame()

for (i in lista_files) {
  datos<-read.csv(i)
  denue<-rbind.data.frame(denue,datos)
  print(i)
}

# Quitamos acentos y sustituimos los . por _ a los nombres de las columnas
colnames(denue)<-chartr(".", "_",toupper(stri_trans_general(colnames(denue),"Latin-ASCII")))

#/**************************************************************************************************************************************
#* Generación del archivo:
#* bd_denue_yuc_rama_wide.csv
#/**************************************************************************************************************************************

# Nos quedamos con los registros de Yucatán
denue_yuc<-subset(denue,denue$CLAVE_ENTIDAD==31)
denue_yuc_min<-denue_yuc[,c("CLAVE_MUNICIPIO","MUNICIPIO","CODIGO_DE_LA_CLASE_DE_ACTIVIDAD_SCIAN","DESCRIPCION_ESTRATO_PERSONAL_OCUPADO")]
denue_yuc_min$rama<-substring(denue_yuc_min$CODIGO_DE_LA_CLASE_DE_ACTIVIDAD_SCIAN,1,4)

consulta<-paste('SELECT CLAVE_MUNICIPIO,MUNICIPIO, DESCRIPCION_ESTRATO_PERSONAL_OCUPADO, rama, COUNT(rama)
  AS Total FROM denue_yuc_min
  GROUP BY CLAVE_MUNICIPIO,MUNICIPIO, DESCRIPCION_ESTRATO_PERSONAL_OCUPADO, rama')

denue_yuc_rama<-sqldf(consulta)

# Cambiamos el formato de CLAVE_MUNICIPIO, DESCRIPCION_ESTRATO_PERSONAL_OCUPADO y MUNICIPIO
denue_yuc_rama$cve_mun<-denue_yuc_rama$CLAVE_MUNICIPIO
denue_yuc_rama$DESCRIPCION_ESTRATO_PERSONAL_OCUPADO<-as.character(denue_yuc_rama$DESCRIPCION_ESTRATO_PERSONAL_OCUPADO)
denue_yuc_rama$nom_mun<-as.character(denue_yuc_rama$MUNICIPIO)
denue_yuc_rama$cve_ent<-"31"
denue_yuc_rama$cvegeo<-paste("31",sprintf("%.3i",denue_yuc_rama$CLAVE_MUNICIPIO),sep="")

# Agregamos el campo de region
yuc_regiones<-read.csv("/CARPETAS_TRABAJO/hcortes/fomix/data/regiones_yuc.csv",sep=",")

denue_yuc_rama<-merge(denue_yuc_rama,yuc_regiones,by="cve_mun",all.y=TRUE)

denue_yuc_rama<-denue_yuc_rama[,c("cvegeo","cve_ent","cve_mun","nom_mun.y","region","DESCRIPCION_ESTRATO_PERSONAL_OCUPADO","rama","Total")]

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

denue_yuc_rama$region<-as.character(denue_yuc_rama$region)
denue_yuc_rama$region<-region_func(denue_yuc_rama)
# Exportamos como csv
#write.csv(denue_yuc_rama,"/home/milo/Documentos/LANCIS/FOMIX/denue/output/denue_yuc_rama.csv",row.names = FALSE)

# Exportamos como csv en formato wide
library(tidyverse)

denue_yuc_rama_wide<-cast(denue_yuc_rama,cvegeo+cve_ent+cve_mun+nom_mun.y+rama+region~DESCRIPCION_ESTRATO_PERSONAL_OCUPADO,sum)
colnames(denue_yuc_rama_wide)<-chartr(" ", "_",stri_trans_general(colnames(denue_yuc_rama_wide),"Latin-ASCII"))

denue_yuc_rama_wide$año<-2015
denue_yuc_rama_wide<-denue_yuc_rama_wide[,c("cvegeo","cve_ent","cve_mun","nom_mun.y","region","año","rama", "0_a_5_personas","6_a_10_personas","11_a_30_personas","31_a_50_personas", "51_a_100_personas","101_a_250_personas","251_y_mas_personas")]

colnames(denue_yuc_rama_wide)<-c("cvegeo","cve_ent","cve_mun","nom_mun","region","año","act_ec_cod", "0_a_5_personas","6_a_10_personas","11_a_30_personas","31_a_50_personas", "51_a_100_personas","101_a_250_personas","251_y_mas_personas")
write.csv(denue_yuc_rama_wide,"/CARPETAS_TRABAJO/hcortes/denue/output/bd_denue_yuc_rama_wide.csv",fileEncoding = "UTF-8",row.names = FALSE)

#/**************************************************************************************************************************************
#* Generación del archivo:
#* bd_denue_yuc_subsector_wide.csv
#/**************************************************************************************************************************************

### Agrupamos por subsector
denue_yuc_subsector_wide<-denue_yuc_rama_wide
denue_yuc_subsector_wide$act_ec_cod<-substring(denue_yuc_subsector_wide$act_ec_cod,1,2)

library(dplyr)

denue_yuc_subsector_wide<-denue_yuc_subsector_wide %>%
  group_by(cvegeo,cve_ent,cve_mun,nom_mun,region,año,act_ec_cod) %>%
  summarise_all(funs(sum))

colnames(denue_yuc_subsector_wide)<-c("cvegeo","cve_ent","cve_mun","nom_mun","region","año","act_ec_cod_subsector", "0_a_5_personas","6_a_10_personas","11_a_30_personas","31_a_50_personas", "51_a_100_personas","101_a_250_personas","251_y_mas_personas")
write.csv(denue_yuc_subsector_wide,"/CARPETAS_TRABAJO/hcortes/denue/output/bd_denue_yuc_subsector_wide.csv",fileEncoding = "UTF-8",row.names = FALSE)
