# Urbano

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->


## Meta

Generar las condiciones, en todas sus vertientes, para el desarrollo urbano en Yucatán, de manera que se fomente la descentralización, se aprovechen las zonas con infraestructura y se contenga la expansión urbana en la zona metropolitana de Mérida.

**Modelo AHP del sector urbano**

![](/recursos/urbano/urbano.png)

## Atributos

### Funcionales urbanos

Atributos funcionales urbanos que determinan el crecimiento de asentamientos humanos.

Atributos | Definición
-- | --
Fuente de empleo | Distancia a las fuentes de empleo.
Infraestructura | Cobertura de las redes de agua potable y energía eléctrica.
Equipamiento | Elementos que pueden dar servicios a la población: centros de salud, escuelas, edificios administrativos, transportes, correos y almacenamiento.
Conectividad | Vinculación de asentamientos a través de la infraestructura vial.

<!-- .. csv-table::
   :file: recursos/tabla_c_biofisicos_silvopastoril.csv
   :header-rows: 1
   :align: center -->

##### Fuente de empleo

Distancia a las fuentes de empleo.

**Insumos**

Capa | Unidades económicas totales
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI (localidad250_a) INEGI y [2] Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI
Año | [1]2019; [2] 2020
Escala | Localidad
Unidades | Número

Capa | Población ocupada
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI (localidad250_a) INEGI y [2] Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | [1] 2019; [2] 2010
Campo | [2] POBTOT y POCUPADA
Escala | Localidad
Unidades | Porcentaje


**Parámetros de la función de valor**

![](/recursos/urbano/fi_fv_urb_urb_empleo_fuentes_empleo.png)  

**Función de valor de fuente de empleo**

![](/recursos/urbano/mapa_fv_urb_urb_empleo_fuentes_empleo.png)


##### Infraestructura

Cobertura de las redes de agua potable y energía eléctrica.

**Insumos**

Capa | Viviendas totales con agua entubada, drenaje y energía eléctrica
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI (localidad250_a) INEGI y [2] Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | [1] 2019; [2] 2010
Campo | [2] VIVTOT y VPH_C_SERV
Escala | Localidad
Unidades | Porcentaje


**Parámetros de la función de valor**

![](/recursos/urbano/fi_fv_urb_urb_infra_infraestructura.png)  

**Función de valor de infraestructura**

![](/recursos/urbano/mapa_fv_urb_urb_infra_infraestructura.png)


##### Equipamiento

Elementos que pueden dar servicios a la población: centros de salud, escuelas, edificios administrativos, transportes, correos y almacenamiento.

Atributo | Definición
-- | --
Escuelas | Número total de instituciones educativas de nivel medio técnico, medio superior y superior.
Centros de salud | Número total de centros de salud.
Edificios administrativos | Unidades totales, incluye actividades legislativas gubernamentales.

###### Escuelas

Número total de instituciones educativas de nivel medio técnico, medio superior y superior.

**Insumos**

Capa | Número de unidades económicas de escuelas totales
-- | --
Fuente | Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI
Año | 2020
Escala | Localidad
Unidades | Porcentaje


**Parámetros de la función de valor**

![](/recursos/urbano/fi_fv_urb_urb_equi_equipamiento_escuelas.png)  

**Función de valor de escuelas**

![](/recursos/urbano/mapa_fv_urb_urb_equi_equipamiento_escuelas.png)


###### Centros de salud

Número total de centros de salud.

**Insumos**

Capa | Población derechohabiente a servicios de salud
-- | --
Fuente | Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | 2010
Campo | [1] POBTOT; [2] PDER_SS
Escala | Localidad
Unidades | Porcentaje

Capa | Unidades económicas de centros de salud
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI (localidad250_a) INEGI y [2] Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI
Año | [1]2019; [2] 2020
Escala | Localidad
Unidades | Número


**Parámetros de la función de valor**

![](/recursos/urbano/fi_fv_urb_urb_equi_equipamiento_salud.png)  

**Función de valor de centros de salud**

![](/recursos/urbano/mapa_fv_urb_urb_equi_equipamiento_salud.png)


###### Edificios administrativos

Unidades totales, incluye actividades legislativas gubernamentales.


**Parámetros de la función de valor**

![](/recursos/urbano/fi_fv_urb_urb_equi_equipamiento_admin.png)  

**Función de valor de edificios administrativos**

![](/recursos/urbano/mapa_fv_urb_urb_equi_equipamiento_admin.png)


##### Conectividad

Vinculación de asentamientos a través de la infraestructura vial.

**Insumos**

Capa | Inverso del índice de dispersión poblacional municipal trasladado a localidades
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI (localidad250_a y carretera_l) INEGI y [2] Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | [1] 2019; [2] 2010
Campo | [2] POBTOT
Adimensional | Porcentaje


**Método para obtener los parámetros de la función de valor**



**Función de valor de conectividad**

![](/recursos/urbano/mapa_fv_urb_urb_conec_conectividad.png)


### Demográficos

Atributos | Definición
-- | --
Tasa crecimiento | Tasa de crecimiento poblacional 10 años (2000-2010).
Población | Número de habitantes.
Densidad | Número de habitantes por hectárea.
Inmigración | Porcentaje de la población total nacida fuera de la entidad o país.
Población indígena | Porcentaje de la población índígena en el asentamiento.


##### Tasa de crecimiento

Tasa de crecimiento poblacional 10 años (2000-2010).

**Insumos**

Capa | Tasa de crecimiento
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI (localidad250_a) INEGI y [2] Censos de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | [1] 2019; [2] 2000 y 2010
Campo | [2] POBTOT
Escala | Localidad
Unidades | Porcentaje


**Parámetros de la función de valor**

![](/recursos/urbano/fi_fv_urb_dem_tasa_tasa_crecimiento_anual.png)  

**Función de valor de tasa de crecimiento**

![](/recursos/urbano/mapa_fv_urb_dem_tasa_tasa_crecimiento_anual.png)


##### Población

Número de habitantes.

**Insumos**

Capa | Tamaño poblacional
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI (localidad250_a) INEGI y [2] Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | [1] 2019; [2] 2010
Campo | [2] POBTOT
Escala | Localidad
Unidades | Número de habitantes


**Parámetros de la función de valor**

![](/recursos/urbano/fi_fv_urb_dem_pob_tam_poblacional.png)  

**Función de valor de población**

![](/recursos/urbano/mapa_fv_urb_dem_pob_tam_poblacional.png)


##### Densidad

Número de habitantes por hectárea.

**Insumos**

Capa | Densidad de población
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI (localidad250_a) INEGI y [2] Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | [1] 2019; [2] 2010
Campo | [2] POBTOT
Escala | Localidad
Unidades | Número de habitantes/hectárea


**Parámetros de la función de valor**

![](/recursos/urbano/fi_fv_urb_dem_den_densidad_ha.png)  

**Función de valor de densidad**

![](/recursos/urbano/mapa_fv_urb_dem_den_densidad_ha.png)


##### Inmigración

Porcentaje de la población total nacida fuera de la entidad o país.

**Insumos**

Capa | Inmigración
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI (localidad250_a) INEGI y [2] Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | [1] 2019; [2] 2010
Campo | [2] POBTOT y PNACOE
Escala | Localidad
Unidades | Porcentaje


**Parámetros de la función de valor**

![](/recursos/urbano/fi_fv_urb_dem_inmi_inmigracion.png)  

**Función de valor de inmigración**

![](/recursos/urbano/mapa_fv_urb_dem_inmi_inmigracion.png)


##### Población indígena

Porcentaje de la población índígena en el asentamiento.

**Insumos**

Capa | Población indígena
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI (localidad250_a) INEGI y [2] Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | [1] 2019; [2] 2010
Campo | [2] POBTOT y P3YM_HLI
Escala | Localidad
Unidades | Porcentaje


**Parámetros de la función de valor**

![](/recursos/urbano/fi_fv_urb_dem_indi_por_pob_indigena.png)  

**Función de valor de población indígena**

![](/recursos/urbano/mapa_fv_urb_dem_indi_por_pob_indigena.png)


## Pesos globales del modelo de aptitud urbano


<!-- .. csv-table::
   :file: recursos/tabla_insumos_fv_gbe_sil_bio_usv_inegi.csv
   :align: left -->
