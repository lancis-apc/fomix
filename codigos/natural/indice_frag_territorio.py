import processing as pr 
import gdal_calc
import string 
from osgeo import gdal, osr
import os
import numpy as np 

'''
Proyecto: FOMIX YUCATÁN
Objetivo:   Generar mapas de fragilidad del territorio
Autor: LANCIS APC
Desarrollado en: Qgis 3.10 
Contacto: victor.hernandez@iecologia.unam.mx

'''

#------ FUNCIONES PARA CLASIFICACIÓN DE DATOS RASTER NORMALIZADOS ------#

def raster_nodata(path_raster):
    '''
    esta funciÃ³n regresa el valor mÃ­nimo y mÃ¡ximo de un
    raster

    Ejemplo de uso: 
    min, max = raster_min_max('/../raster.tif')
    '''
    rlayer = QgsRasterLayer(path_raster,"raster")
    extent = rlayer.extent()
    provider = rlayer.dataProvider()
    rows = rlayer.rasterUnitsPerPixelY()
    cols = rlayer.rasterUnitsPerPixelX()
    block = provider.block(1, extent,  rows, cols)
    no_data = block.noDataValue()

    return no_data

def wf(fp=2,min=0,max=1,categorias=5):
    
    if fp==1:
        lista_val = [0,0.2,0.4,0.6,0.8,1.0]
    else:
        dicc_e = {}
        lista_val = [0,]
        pm = max - min 
        cats = np.power(fp, categorias)
        e0 = pm/cats
        for i in range(1 , categorias + 1):
            dicc_e['e'+str(i)]= round((max - (np.power(fp,i) * e0)),3)
            

        dicc_cortes ={}
        for i in range(1 , categorias + 1):
            dicc_cortes['corte'+str(i)]= round(1 - dicc_e['e'+str(i)],3)
            lista_val.append(round(1 - dicc_e['e'+str(i)],3))

    return lista_val


def progresiva(fp=2,minimo=0,maximo=1):


    ConjDifusos = ['MB', 'B', 'M', 'A', 'E']

    # # Cortes de categorias siguiendo Ley de Weber

    # print '\n\t\t////Cortes de categorias siguiendo Ley de Weber-Feshner////\n'

    numcats = len(ConjDifusos)
    numeroDeCortes = numcats - 1
    laSuma = 0

    for i in range(numcats) :
        laSuma += ((fp) ** i)

    cachito = 1 / laSuma

    FuzzyCut = []

    for i in range(numeroDeCortes) :
        anterior = 0
        if i > 0:
            anterior = FuzzyCut[i - 1]

        corte = anterior + fp ** i * cachito
        FuzzyCut.append(corte)

    FuzzyCut.insert(0,0)
    FuzzyCut.append(1)
    
    return FuzzyCut

def tipo_clasificador(clasificador,path_r,fp=2,min=0,max=1):

    if clasificador.lower() == "progresiva":
        nombre =clasificador.lower()+"_"+str(fp).replace('.','_')
        return progresiva(fp,min,max),nombre
        
    elif clasificador.lower() == "wf" or clasificador.lower() == "weber-fechner":
        nombre =clasificador.lower()+"_"+str(fp).replace('.','_')
        return wf(fp,min,max),nombre
    elif clasificador.lower()=='cuartiles':
        nombre = clasificador
        return cuantiles(path_r,4),nombre
    elif clasificador.lower()=='quintiles':
        nombre = clasificador
        return cuantiles(path_r,5),nombre
    elif clasificador.lower()== 'deciles':
        nombre = clasificador
        return cuantiles(path_r,10),nombre
    else:
        print ("error en el nombre de clasificacion")
        
def cuantiles(path_r,quantil):
    raster = gdal.Open(path_r)
    band1 =raster.GetRasterBand(1).ReadAsArray()
    dimesion = band1.shape
    nodata_r=raster.GetRasterBand(1).GetNoDataValue()
    band2= band1[band1 != nodata_r]
    band2 = band2.flatten()
    lista_val = [0,]
    
    for i in range(1,quantil+1):
        #print (i,i/quantil)
        valor= i/quantil
        cuantil_c = np.quantile(band2,valor)
        lista_val.append(cuantil_c)

    return lista_val

def clasifica_raster(path_capa,clasificador,fp=2,min=0,max=1):

    cortes,nombre = tipo_clasificador(clasificador,path_capa,fp,min,max)
    no_d = raster_nodata(path_capa)
    ecuacion = ecuacion_class(cortes)
    path_salida = path_capa.split(".")[0]+"_"+nombre+".tif"
    dicc ={        
        'INPUT_A':path_capa,
        'BAND_A':1,
        'FORMULA':ecuacion,
        'NO_DATA': -9999,
        'RTYPE':1,
        'OUTPUT':path_salida}
    pr.run("gdal:rastercalculator",dicc)
    print ("capa clasificada... ruta ->",path_salida)
    cargar_raster(path_salida)

    
def nombre_capa(path_shape):
    nombre_capa=(path_shape.split("/")[-1:])[0]
    return nombre_capa

def ecuacion_class(cortes):
    n_cortes = len(cortes)
    ecuacion =''
    for i in range(n_cortes):
        if i < n_cortes-2: 
            ecuacion+='logical_and(A>='+str(cortes[i])+',A<'+str(cortes[i+1])+')*'+str(i+1)+' + '
        elif i== n_cortes-2 :
            ecuacion+='logical_and(A>='+str(cortes[i])+', A<='+str(round(float(cortes[i+1]),1))+')*'+str(i+1)
    print (ecuacion)
    return ecuacion

def cargar_raster(path_raster):
    
    nombre = nombre_capa(path_raster).split(".")[0]
    rlayer = QgsRasterLayer(path_raster, nombre)
    QgsProject.instance().addMapLayer(rlayer)
    if 'cuartiles' in nombre:
        estilo = "C:/Users/Victor/Downloads/sigclassifier/rampa_cuartiles.qml"
    elif 'quintiles' in nombre:
        estilo = "C:/Users/Victor/Downloads/sigclassifier/rampa_quinitles.qml"
    elif 'deciles' in nombre:
        estilo = "C:/Users/Victor/Downloads/sigclassifier/rampa_deciles.qml"
    else:
        estilo = "C:/Users/Victor/Downloads/sigclassifier/rampa_5cats.qml"
    rlayer.loadNamedStyle(estilo)
    rlayer.triggerRepaint()


#------FIN DE FUNCIONES PARA CLASIFICACIÓN DE DATOS RASTER NORMALIZADOS ------#

#---- FUNCIONES PARA LA INTEGRACIÓN DE CAPAS ------##

def norm_min_max(path_raster, path_raster_n,min,max):
    #min,max,no_data = raster_min_max(path_raster)
    ec_norm = '(A -'+str(min)+')/ ('+str(max)+'-' + str(min)+')' 
    #ec_norm ='(A) / ('+str(max)+')' 
    gdal_calc.Calc(calc=ec_norm, 
                    A=path_raster,
                    outfile=path_raster_n,
                    type = 'Float32',
                    NoDataValue=-9999.0,
                    quiet=True)


def raster_min_max(path_raster):
    '''


    Ejemplo de uso: 
    min, max = raster_min_max('/../raster.tif')
    '''
    rlayer = QgsRasterLayer(path_raster,"raster")

    extent = rlayer.extent()
    

    provider = rlayer.dataProvider()
    rows = rlayer.rasterUnitsPerPixelY()
    cols = rlayer.rasterUnitsPerPixelX()
    block = provider.block(1, extent,  rows, cols)
    
    stats = provider.bandStatistics(1,
                                    QgsRasterBandStats.All,
                                    extent,
                                    0)

    min = stats.minimumValue
    max = stats.maximumValue
    promedio = stats.mean
    no_data = block.noDataValue()
    #dimension = rlayer.height(),rlayer.width()
    #pixel = rlayer.rasterUnitsPerPixelX(), rlayer.rasterUnitsPerPixelY()
    
    return str(min),str(max),no_data

def norm_max(path_raster, path_raster_n,max):
    #min,max,no_data = raster_min_max(path_raster)
    #ec_norm = '(A -'+str(min)+')/ ('+str(max)+'-' + str(min)+')' 
    ec_norm ='(A) / ('+str(max)+')' 
    gdal_calc.Calc(calc=ec_norm, 
                    A=path_raster,
                    outfile=path_raster_n,
                    type = 'Float32',
                    NoDataValue=-9999.0,
                    quiet=True)
                    
def norm_l_decreciente(path_raster, path_raster_n,min,max):
    #min,max,no_data = raster_min_max(path_raster)
    #ec_norm = '(A -'+str(min)+')/ ('+str(max)+'-' + str(min)+')' 
    ec ='((-A * (('+max+' - '+min+') /'+max+')) /( '+max+' - '+min+')) + (('+max+'+'+min+')/'+max+')'

    print (ec)
    
    gdal_calc.Calc(calc=ec, 
                    A=path_raster,
                    outfile=path_raster_n,
                    type = 'Float32',
                    NoDataValue=-9999.0,
                    quiet=True)

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
                            quiet=True,
                            NoDataValue=-9999.0,
                            outfile=salida)
                            
    if total_raster == 2:
        gdal_calc.Calc(calc=ecuacion, 
                        A=path_A, 
                        B=path_B,
                        quiet=True,
                        NoDataValue=-9999.0,
                        outfile=salida)

    if total_raster == 3:
            gdal_calc.Calc(calc=ecuacion, 
                            A=path_A, 
                            B=path_B,
                            C=path_C, 
                            quiet=True,
                            NoDataValue=-9999.0,
                            outfile=salida)
                            
    if total_raster == 4:
        gdal_calc.Calc(calc=ecuacion, 
                        A=path_A, 
                        B=path_B,
                        C=path_C, 
                        D=path_D,
                        quiet=True,
                        NoDataValue=-9999.0,
                        outfile=salida)

    if total_raster == 5:
            gdal_calc.Calc(calc=ecuacion, 
                            A=path_A, 
                            B=path_B,
                            C=path_C, 
                            D=path_D,
                            E=path_E, 
                            quiet=True,
                            NoDataValue=-9999.0,
                            outfile=salida )
                            
    if total_raster == 6:
        gdal_calc.Calc(calc=ecuacion, 
                        A=path_A, 
                        B=path_B,
                        C=path_C, 
                        D=path_D,
                        E=path_E, 
                        F=path_F,
                        quiet=True,
                        NoDataValue=-9999.0,
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
                            quiet=True,
                            NoDataValue=-9999.0,
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
                        quiet=True,
                        NoDataValue=-9999.0,
                        outfile=salida )

### FIN DE FUNCIONES PARA LA INTEGRACIÓN DE CAPAS ------##

path_sig ="C:/Dropbox (LANCIS)/SIG/desarrollo/sig_fomix/procesamiento/indice_fragilidad_del_territorio/"


## MÍNIMOS Y MAXIMOS DE LOS INSUMOS PARA APLICAR LA FUNCIÓN DE VALOR ## 


max_frac_mn = '1.159'
max_np = '125'
min_area_mn, max_area_mn = '2.154', '65957.867'
min_area_frag, max_area_frag = '26.473', '989356.938'


for no_serie in range(1,7): # Iteración par aplicar a las 6 series de USV
    print ('procesando serie %d'%no_serie)
    
    ## Insumos 
    ## Producto del análisis de fragilidad. 
    ## area
    tp_area = path_sig + 'insumos/serie'+str(no_serie)+'_area_frag.tif'
    ## dimension fractal
    tp_dim_fractal = path_sig + 'insumos/serie'+str(no_serie)+'_frac_mn.tif'
    ## Tamaño de parches
    tp_tamano_parches = path_sig + 'insumos/serie'+str(no_serie)+'_area_mn.tif'
    ## numero de parches 
    tp_numero_parches = path_sig + 'insumos/serie'+str(no_serie)+'_np.tif'
    
    ## aplicar mascara a los insumos 
    mascara = path_sig + 'insumos/mascaras/serie'+str(no_serie)+'_mascara_nutural.tif'
    
    area = path_sig + 'procesamiento/serie'+str(no_serie)+'_area_frag_nat.tif'
    inputs_mask =[mascara,tp_area]
    ecuacion_m = 'A*B'
    crea_capa(ecuacion_m,inputs_mask,area)
    ## dimension fractal
    dim_fractal = path_sig + 'procesamiento/serie'+str(no_serie)+'_frac_mn_nat.tif'
    inputs_mask =[mascara,tp_dim_fractal]
    ecuacion_m = 'A*B'
    crea_capa(ecuacion_m,inputs_mask,dim_fractal)
    ## Tamaño de parches
    tamano_parches = path_sig + 'procesamiento/serie'+str(no_serie)+'_area_mn_nat.tif'
    inputs_mask =[mascara,tp_tamano_parches]
    ecuacion_m = 'A*B'
    crea_capa(ecuacion_m,inputs_mask,tamano_parches)
    ## numero de parches 
    numero_parches = path_sig + 'procesamiento/serie'+str(no_serie)+'_np_nat.tif'
    inputs_mask =[mascara,tp_numero_parches]
    ecuacion_m = 'A*B'
    crea_capa(ecuacion_m,inputs_mask,numero_parches)



    


    ## SECCION 2 - llevar a ideales las capas  ##
    ## area 
    fv_area = path_sig + 'procesamiento/fv_serie'+str(no_serie)+'_area.tif'
    norm_l_decreciente(area, fv_area,min_area_frag, max_area_frag)
    ## dimension fractal 
    fv_dimension_fractal = path_sig + 'procesamiento/fv_serie'+str(no_serie)+'_dimension_fractal.tif'
    norm_max(dim_fractal,fv_dimension_fractal,max_frac_mn)
    ## Tamaño de parches
    fv_tamano_parche = path_sig + 'procesamiento/fv_serie'+str(no_serie)+'_tamano_parche.tif'
    norm_l_decreciente(tamano_parches, fv_tamano_parche,min_area_mn, max_area_mn) 
    ## numero de parches
    fv_numero_de_parches = path_sig  + 'procesamiento/fv_serie'+str(no_serie)+'_numero_de_parches.tif'
    norm_max(numero_parches,fv_numero_de_parches,max_np)

    ## SECCION 3 Construir el indice de fragilidad del territorio
    inputs_indice_ft = [fv_area, fv_dimension_fractal, fv_tamano_parche, fv_numero_de_parches]
    fv_indice_ft = [0.10, 0.20, 0.35, 0.35]
    indice_fragilidad = path_sig + 'procesamiento/serie'+str(no_serie)+'_indice_fragilidad.tif'

    n_variables = len(fv_indice_ft) 
    ecuacion_ft = ecuacion_clp(n_variables, fv_indice_ft)
    crea_capa(ecuacion_ft,inputs_indice_ft,indice_fragilidad)



## Generar los productos 
'''
Las capas integradas para la serie 3 y 6, se tienen que normalizar, 
considerando:
- el máximo de los máximos (serie6)
- el mínimo de los mínimos (serie3)

posteriormente se clasifican utilizando weber fechner con factor de progresión
fp = 1.4

las capas resultantes son los productos finales de este proceso.


'''

indice_fragilidad_s3 = path_sig + 'procesamiento/serie'+str(3)+'_indice_fragilidad.tif'
indice_fragilidad_n_s3 = path_sig + 'procesamiento/serie'+str(3)+'_indice_fragilidad_n.tif'

indice_fragilidad_s6 = path_sig + 'procesamiento/serie'+str(6)+'_indice_fragilidad.tif'
indice_fragilidad_n_s6 = path_sig + 'procesamiento/serie'+str(6)+'_indice_fragilidad_n.tif'

min3,max3,nd = raster_min_max(indice_fragilidad_s3)
min6,max6,nd = raster_min_max(indice_fragilidad_s6)

norm_min_max(indice_fragilidad_s3, indice_fragilidad_n_s3,min3,max6)
norm_min_max(indice_fragilidad_s6, indice_fragilidad_n_s6,min3,max6)


# PRODUCTOS
clasifica_raster(indice_fragilidad_n_s3,"wf",1.4) 
clasifica_raster(indice_fragilidad_n_s6,"wf",1.4) 