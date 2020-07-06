# -*- coding: utf-8 -*-

from PyQt4.QtCore import *
import math
import datetime 

'''
Proyecto: FOMIX YUCATÁN
Objetivo:   Categorizar las localidades, proceso auxiliar en el cálculo de grado de dispersión poblacional
Autor: LANCIS APC
Desarrollado en: Qgis 2.18, python 2.7 
Contacto: victor.hernandez@iecologia.unam.mx
'''



#########
#Categorias:
#a) cercanas a ciudades, 
#b) cercanas a centros de población mixtos o de transición
#c) Cercanas a carreteras,
#d) aisladas,

print datetime.datetime.now().time()

path_sig ="C:/Dropbox (LANCIS)/SIG/desarrollo/sig_fomix/procesamiento/clasificacion_poblaciones/"

path ="C:/Dropbox (LANCIS)/SIG/desarrollo/sig_fomix/procesamiento/clasificacion_poblaciones/insumos/yucatan_loc_urb_rur_utm_v2.shp"
path_carreteras = "C:/Dropbox (LANCIS)/SIG/desarrollo/sig_fomix/procesamiento/clasificacion_poblaciones/insumos/red_carretera_final.shp"
caminos = QgsVectorLayer(path_carreteras,"","ogr")

layer = QgsVectorLayer(path,"yucatan_loc_urb_rur_utm_v2","ogr")

query = '"Urb_Rur" = ' " 'Urbana'"
query_rural= '"Urb_Rur" = ' " 'Rural'"

crs = layer.crs()

distance = QgsDistanceArea()
distance.setSourceCrs(crs)
distance.setEllipsoidalMode(True)
distance.setEllipsoid('WGS84')



lista_a = []
lista_b = []
lista_c = []
lista_urbanas =[]

## esta lista es especifica para carreteras

lista_localidades= []


for urbana in layer.getFeatures(QgsFeatureRequest().setFilterExpression(query)):
    lista_urbanas.append(urbana['id'])


#se filtran las localidades rurales

for rural in layer.getFeatures(QgsFeatureRequest().setFilterExpression(query_rural)):
    lista_localidades.append(rural['id'])

for rural in layer.getFeatures(QgsFeatureRequest().setFilterExpression(query_rural)):
    
    punto_rural = rural.geometry().centroid().asPoint()
   
    for urbana in layer.getFeatures(QgsFeatureRequest().setFilterExpression(query)):
        punto_urbana = urbana.geometry().centroid().asPoint()
        poblacion_urb =  urbana['POBTOT']
        if poblacion_urb > 15000:
             m1 = distance.measureLine(punto_rural, punto_urbana)
             if m1 < 5000:
                 if not  rural['id'] in lista_a:
                    lista_a.append(rural['id'])
        if poblacion_urb > 2499 and poblacion_urb < 14999:
            m2 = distance.measureLine(punto_rural, punto_urbana)
            
            if m2 < 2500:
               
                if not rural['id'] in lista_a:
                    if not rural['id'] in lista_b:
                        lista_b.append(rural['id'])
    
    

for clase_a in lista_a:
    #print "clase_a",clase_a
    lista_localidades.remove(clase_a)
  
for clase_b in lista_b:
    #print "clase_b",clase_b
    lista_localidades.remove(clase_b)

print "procesando clase c"
#for rural in layer.getFeatures(QgsFeatureRequest().setFilterExpression(query_rural)):
#    if rural['id'] in lista_localidades:
#        
#        lista_carreteras = []
#        query = "distance($geometry, geometry(get_feature('yucatan_loc_urb_rur_utm_v2','id',"+"'"+str(rural['id'])+"'"+"))) < 3000"
#        for linea  in caminos.getFeatures(QgsFeatureRequest().setFilterExpression(query)):
#            lista_carreteras.append(linea['ID'])
#        if len(lista_carreteras) > 0:
#            if not rural['id'] in lista_c:
#                lista_c.append(rural['id'])
#            
            
            
            



for localidades in lista_localidades:
    
    query_clase_c  = '"id" = ' +str(localidades)
    for rural in layer.getFeatures(QgsFeatureRequest().setFilterExpression( query_clase_c)):
        lista_carreteras = []
        query = "distance($geometry, geometry(get_feature('yucatan_loc_urb_rur_utm_v2','id',"+"'"+str(rural['id'])+"'"+"))) < 3000"
        request = QgsFeatureRequest().setFilterExpression(query)
        request.setFlags(QgsFeatureRequest.NoGeometry)
        for linea  in caminos.getFeatures(request):
            #print linea['ID']
            lista_carreteras.append(linea['ID'])
            if len(lista_carreteras) > 0:
                if not rural['id'] in lista_c:
                    lista_c.append(rural['id'])
                
        #print "************"
for clase_c in lista_c:
    lista_localidades.remove(clase_c)
    

print "total de localidades ",len(lista_localidades)
print "clase a ",len(lista_a)
print "clase a ",len(lista_urbanas)
print "clase b ",len(lista_b)
print "clase c ",len(lista_c)
print "clase d ",len(lista_localidades)

ruta_clases = path_sig + "clases_v5.csv"
clases = open(path_sig + "clases_v5.csv","a")

clases.write("id , clase_loc\n")
clases.close()

def escribe_clases (lista,ruta_csv,tipo_clase):
    texto = open(ruta_csv,"a")

    for i in lista:
        texto.write(str(i) + "," + tipo_clase + "\n")
    texto.close()


escribe_clases(lista_a, ruta_clases, "a")
escribe_clases(lista_urbanas, ruta_clases, "a")
escribe_clases(lista_b, ruta_clases, "b")
escribe_clases(lista_c, ruta_clases, "c")
escribe_clases(lista_localidades, ruta_clases, "d")


print datetime.datetime.now().time()
