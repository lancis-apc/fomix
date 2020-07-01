####### DENUE ###########
### Limpiamos el área de trabajo ###
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

### Agrupamos por subsector
##denue_yuc_rama_wide<-read.csv("/home/milo/Documentos/LANCIS/FOMIX/denue/output/denue_yuc_rama_wide.csv")
denue_yuc_subsector_wide<-denue_yuc_rama_wide
denue_yuc_subsector_wide$act_ec_cod<-substring(denue_yuc_subsector_wide$act_ec_cod,1,2)

library(dplyr)

denue_yuc_subsector_wide<-denue_yuc_subsector_wide %>%
  group_by(cvegeo,cve_ent,cve_mun,nom_mun,region,año,act_ec_cod) %>%
  summarise_all(funs(sum))

colnames(denue_yuc_subsector_wide)<-c("cvegeo","cve_ent","cve_mun","nom_mun","region","año","act_ec_cod_subsector", "0_a_5_personas","6_a_10_personas","11_a_30_personas","31_a_50_personas", "51_a_100_personas","101_a_250_personas","251_y_mas_personas")
write.csv(denue_yuc_subsector_wide,"/CARPETAS_TRABAJO/hcortes/denue/output/bd_denue_yuc_subsector_wide.csv",fileEncoding = "UTF-8",row.names = FALSE)
