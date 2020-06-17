# -*- coding: utf-8 -*-

import numpy, gdal_calc
import os, sys, subprocess, processing 
from qgis.core import QgsRasterLayer, QgsRasterBandStats
from PyQt4.QtCore import QFileInfo
from qgis.analysis import QgsRasterCalculator, QgsRasterCalculatorEntry
from qgis.analysis import *
import string 


#____________funciones_______________________________
def raster_min_max(path_raster):
    '''

    Ejemplo de uso: 
    min, max = raster_min_max('/../raster.tif')
    '''
    rlayer = QgsRasterLayer(path_raster,"raster")

    extent = rlayer.extent()
    provider = rlayer.dataProvider()

    stats = provider.bandStatistics(1,
                                    QgsRasterBandStats.All,
                                    extent,
                                    0)

    min = stats.minimumValue
    max = stats.maximumValue
    return min,max

def norm_estandar(path_raster, path_raster_n):
    min,max = raster_min_max(path_raster)

    clp_norm ='(A - ' + str(min) + ') / (' + str(max) + ' - ' +str(min) +')' 
    gdal_calc.Calc(calc=clp_norm, 
            A=path_raster,
            outfile=path_raster_n)



def ecuacion_clp(n_variables,pesos):
    
    abc = list(string.ascii_uppercase)
    ecuacion = ''
    for a,b in zip(range(n_variables),pesos):
        
        if a < n_variables-1:
            ecuacion+= (str(b)+str(' * ')+str(abc[a])+' + ' )
        else:
            ecuacion+= (str(b)+str(' * ')+str(abc[a]))
    return ecuacion 



def crea_capa(ecuacion,rasters_input,salida): 
    path_A=''
    path_B=''
    path_C=''
    path_D=''
    path_E=''
    path_F=''
    path_G=''
    path_H=''
    total_raster = len(rasters_input)
    
    for a,b in zip(range(total_raster), rasters_input):
        if a == 0:
            path_A=b
        elif a == 1:
            path_B=b
        elif a == 2:
            path_C=b
        elif a == 3:
            path_D=b
        elif a == 4:
            path_E=b
        elif a == 5:
            path_F=b
        elif a == 6:
            path_G=b
        elif a == 7:
            path_H=b


    if total_raster == 1:
            gdal_calc.Calc(calc=ecuacion, 
                            A=path_A, 
                            outfile=salida)
                            
    if total_raster == 2:
        gdal_calc.Calc(calc=ecuacion, 
                        A=path_A, 
                        B=path_B,
                        outfile=salida)

    if total_raster == 3:
            gdal_calc.Calc(calc=ecuacion, 
                            A=path_A, 
                            B=path_B,
                            C=path_C, 
                            outfile=salida)
                            
    if total_raster == 4:
        gdal_calc.Calc(calc=ecuacion, 
                        A=path_A, 
                        B=path_B,
                        C=path_C, 
                        D=path_D,
                        outfile=salida)

    if total_raster == 5:
            gdal_calc.Calc(calc=ecuacion, 
                            A=path_A, 
                            B=path_B,
                            C=path_C, 
                            D=path_D,
                            E=path_E, 
                            outfile=salida )
                            
    if total_raster == 6:
        gdal_calc.Calc(calc=ecuacion, 
                        A=path_A, 
                        B=path_B,
                        C=path_C, 
                        D=path_D,
                        E=path_E, 
                        F=path_F,
                        outfile=salida)

    if total_raster == 7:
            gdal_calc.Calc(calc=ecuacion, 
                            A=path_A, 
                            B=path_B,
                            C=path_C, 
                            D=path_D,
                            E=path_E, 
                            F=path_F,
                            G=path_G, 
                            outfile=salida)
                            
    if total_raster == 8:
        gdal_calc.Calc(calc=ecuacion, 
                        A=path_A, 
                        B=path_B,
                        C=path_C, 
                        D=path_D,
                        E=path_E, 
                        F=path_F,
                        G=path_G, 
                        H=path_H,
                        outfile=salida )







path_sig ="C:/Dropbox (LANCIS)/SIG/desarrollo/sig_fomix/"

### Insumos####
ciclones = path_sig + 'procesamiento/indice_riesgo/insumos/riesgo_ciclontro_yuc/fv_riesgo_ciclontro_yuc.tif'
granizo = path_sig + 'procesamiento/indice_riesgo/insumos/riesgo_granizo/fv_riesgo_granizo_utm16.tif'
sequia = path_sig +'procesamiento/indice_riesgo/insumos/riesgo_sequia_yuc/fv_riesgo_sequia_yuc.tif'
inundacion = path_sig + 'procesamiento/indice_riesgo/insumos/riesgo_inundaciones_yuc/fv_indice_peligro_inundacion_cenapred_2016.tif'


## Creacion del indice de riesgos a eventos naturales ##
fv_indice_riesgos = [0.38,0.22,0.10,0.30]
lista_inputs_indice_riesgos = [ciclones, sequia, granizo, inundacion]
indice_recursos = path_sig + 'procesamiento/indice_riesgo/procesamiento/indice_calidad_riesgo_eventos_nat.tif'
n_variables = len(fv_indice_riesgos)
ecuacion  = ecuacion_clp(n_variables,fv_indice_riesgos)
crea_capa(ecuacion,lista_inputs_indice_riesgos,indice_recursos)
print ("proceso finalizado...")