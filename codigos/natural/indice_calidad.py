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
### VEGETACION ##
carbono_almacenado = path_sig + 'procesamiento/indice_calidad/insumos/vegetacion/fv_snigf_carbono_almacenado.tif'
composicion_total = path_sig + 'procesamiento/indice_calidad/insumos/vegetacion/fv_snigf_composicion_total.tif'
densidad_arbolado  = path_sig + 'procesamiento/indice_calidad/insumos/vegetacion/fv_snigf_densidad_arbolado.tif'
 
## crea capa de vegetacion##
fv_vegetacion = [0.33,0.33,0.33]
lista_inputs_vegetacion = [densidad_arbolado,carbono_almacenado,composicion_total]
vegetacion = path_sig + 'procesamiento/indice_calidad/insumos/vegetacion/fv_vegetacion.tif'
n_variables = len(fv_vegetacion)
ecuacion  = ecuacion_clp(n_variables,fv_vegetacion)
crea_capa(ecuacion,lista_inputs_vegetacion,vegetacion)

## AGUA ##
vulnerabilidad_intrinseca_agua =path_sig + 'procesamiento/indice_calidad/insumos/agua/fv_vulnerabilidad_intrinseca_batllori_yuc.tif'
## Suelo ## 
degradacion_suelo =path_sig + 'procesamiento/indice_calidad/insumos/suelo/fv_degradacion_suelo_yuc.tif'
  
## Creacion del indice de calidad de recursos ##
fv_indice_calidad_recursos = [0.33,0.33,0.33]
lista_inputs_indice = [degradacion_suelo,vegetacion,vulnerabilidad_intrinseca_agua]
indice_recursos = path_sig + 'procesamiento/indice_calidad/procesamiento/indice_calidad_recursos.tif'
n_variables = len(fv_indice_calidad_recursos)
ecuacion  = ecuacion_clp(n_variables,fv_indice_calidad_recursos)
crea_capa(ecuacion,lista_inputs_indice,indice_recursos)
print ("proceso finalizado...")