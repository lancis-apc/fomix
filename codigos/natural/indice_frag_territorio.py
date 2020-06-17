import processing as pr 
import gdal_calc
import string 
from osgeo import gdal, osr

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

def norm_max(path_raster, path_raster_n):
    min,max,no_data = raster_min_max(path_raster)
    #ec_norm = '(A -'+str(min)+')/ ('+str(max)+'-' + str(min)+')' 
    ec_norm ='(A) / ('+str(max)+')' 
    gdal_calc.Calc(calc=ec_norm, 
                    A=path_raster,
                    outfile=path_raster_n,
                    type = 'Float32',
                    NoDataValue=-9999.0,
                    quiet=True)
                    
def norm_l_decreciente(path_raster, path_raster_n):
    min,max,no_data = raster_min_max(path_raster)
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



path_sig ="C:/Dropbox (LANCIS)/SIG/desarrollo/sig_fomix/procesamiento/indice_fragilidad_del_territorio/"

for no_serie in range(1,7):
    print ('procesando serie %d'%no_serie)

    ## Insumos 
    ## Producto del análisis de fragilidad. 
    ## area
    area = path_sig + 'insumos/serie'+str(no_serie)+'_area_frag.tif'
    ## dimension fractal
    dim_fractal = path_sig + 'insumos/serie'+str(no_serie)+'_frac_mn.tif'
    ## Tamaño de parches
    tamano_parches = path_sig + 'insumos/serie'+str(no_serie)+'_area_mn.tif'
    ## numero de parches 
    numero_parches = path_sig + 'insumos/serie'+str(no_serie)+'_np.tif'

    ## SECCION 2 - llevar a ideales las capas  ##
    ## area 
    fv_area = path_sig + 'procesamiento/fv_serie'+str(no_serie)+'_area.tif'
    norm_l_decreciente(area, fv_area)
    ## dimension fractal 
    fv_dimension_fractal = path_sig + 'procesamiento/fv_serie'+str(no_serie)+'_dimension_fractal.tif'
    norm_max(dim_fractal,fv_dimension_fractal)
    ## Tamaño de parches
    fv_tamano_parche = path_sig + 'procesamiento/fv_serie'+str(no_serie)+'_tamano_parche.tif'
    norm_l_decreciente(tamano_parches, fv_tamano_parche) 
    ## numero de parches
    fv_numero_de_parches = path_sig  + 'procesamiento/fv_serie'+str(no_serie)+'_numero_de_parches.tif'
    norm_max(numero_parches,fv_numero_de_parches)

    ## SECCION 3 Construir el indice de fragilidad del territorio
    inputs_indice_ft = [fv_area, fv_dimension_fractal, fv_tamano_parche, fv_numero_de_parches]
    fv_indice_ft = [0.10, 0.20, 0.35, 0.35]
    indice_fragilidad = path_sig + 'procesamiento/serie'+str(no_serie)+'_indice_fragilidad.tif'

    n_variables = len(fv_indice_ft) 
    ecuacion_ft = ecuacion_clp(n_variables, fv_indice_ft)
    crea_capa(ecuacion_ft,inputs_indice_ft,indice_fragilidad)
