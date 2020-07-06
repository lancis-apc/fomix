'''
Proyecto: FOMIX YUCATÁN
Objetivo:   Calcular y exportar a csv el grado de aislamiento de las localidades aísladas, proceso auxiliar en el cálculo de grado de dispersión poblacional
Autor: LANCIS APC
Desarrollado en: Qgis 2.18, python 2.7 
Contacto: victor.hernandez@iecologia.unam.mx
'''


path_sig ="C:/Dropbox (LANCIS)/SIG/desarrollo/sig_fomix/procesamiento/clasificacion_poblaciones/"

path =path_sig + "salida/yucatan_loc_clasificacion_v2.shp"

localidades = QgsVectorLayer(path,"","ogr")
archivo = open(path_sig +"salida/mun_vga.csv","w")
archivo.write("CVE_MUN,pop_total,pop_d,VGA\n")
## obtener los municipios
lista_mun = []

for municipio in localidades.getFeatures():
    lista_mun.append(str(municipio['CVE_MUN']))

municipios = list(set(lista_mun))

for municipio in municipios:
    poblacion_mun = 0
    pob_d = 0
    query = '"CVE_MUN" = ' + municipio
    for localidad in localidades.getFeatures():
        
        if localidad["CVE_MUN"]== municipio:
            poblacion_mun += localidad['POBTOT']
            if localidad['clase_loc']=='d':
                
                pob_d += localidad['POBTOT']
    vga = round(pob_d /poblacion_mun,3)
    print municipio, "---", poblacion_mun,"---",pob_d
    archivo.write(str(municipio)+","+str(poblacion_mun)+","+str(pob_d)+","+str(vga)+"\n")
    
archivo.close()

