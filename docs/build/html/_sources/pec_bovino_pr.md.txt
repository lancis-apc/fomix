# Pecuario bovino-Final

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

* Aumentar la capacidad de producción bovina a largo plazo, minimizando el crecimiento de la superficie destinada a esta actividad y haciendo más eficiente el uso del área actual.
* Incrementar sustentablemente la eficiencia y resiliencia de la actividad, a través de la restauración de paisajes y la protección de la biodiversidad, así como la implementación de innovaciones en el sistema de producción.
* Mantener y restaurar la fertilidad de suelo para obtener suficiente cantidad de biomasa que permita hacer más eficiente la actividad para que la producción por superficie sea rentable en el largo plazo, así como la diversificación de la actividad a sistemas agroforestales u otras actividades.

## 1. Pecuario bovino

Sistema de producción de ganado bovino extensivo o estabulado, en el que la alimentación se basa principalmente en pastizales de monocultivo de gramíneas forrajeras y el uso de granos (raciones balanceadas).

[Lista de participantes](https://www.dropbox.com/s/2kwmvzi01kj8s4h/lista_asistencia_bovino.pdf?dl=0)

### 1.1 Modelo de decisión

![](/recursos/pec_bovino/fi_bovino.png)

### 1.2 Criterios

#### 1.2.1 Biofísicos

Criterio | Definición
-- | --
Disponibilidad de agua | Posibilidad de extraer agua subterránea, considerando el nivel piezométrico.
Precipitación | Lluvia anual promedio.
Tipo de suelo | Edafología.
Tipo de cobertura | Tipos de vegetación y usos de suelo.

##### 1.2.1.1 Disponibilidad de agua

Posibilidad de extraer agua subterránea, considerando el nivel piezométrico.

**Insumos**

Capa | Nivel freático
-- | --
Fuente | Nivel freático POETY
Año | Sin dato
Campo | n_freat_m
Escala | Estatal
Unidades | Metros

**Parámetros de la función de valor**

![](/recursos/pec_bovino/fi_fv_bov_bio_d_manto_freatico.png)

**Función de valor de disponibilidad de agua**

![](/recursos/pec_bovino/mapa_fv_bov_bio_d_manto_freatico.png)

##### 1.2.1.2 Precipitación

Lluvia anual promedio.

**Insumos**

Capa | Precipitación
-- | --
Fuente | Adaptado de: Precipitación acumulada anual periodo 1960-2000. Atlas de Peligros por Fenómenos Naturales del Estado de Yucatán. Servicio Geológico Mexicano.
Año | 2013
Escala | Sin dato
Unidades | mm

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
5 | e) 1081-1233 mm | Muy alta | 1.00
4 | d) 930-1081 mm | Alta | 0.75
3 | c) 778-930 mm | Moderada | 0.50
1 | a) 551-626 mm | Baja | 0.25
2 | b) 626-778 mm | Baja | 0.25

**Función de valor de precipitación**

![](/recursos/pec_bovino/mapa_fv_bov_bio_precipitacion.png)

##### 1.2.1.3 Tipo de suelo

Edafología.

**Insumos**

Capa | Edafología
-- | --
Fuente | Conjunto de datos vectoriales edafológico. Serie II (Continuo Nacional) INEGI
Año | 2014
Campo | tipo_suelo
Escala | 1:250,000
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
7 | Luvisol | Muy alta | 1.00
8 | Nitosol | Muy alta | 1.00
2 | Cambisol | Alta | 0.75
3 | Chernozem | Alta | 0.75
5 | Histosol | Alta | 0.75
12 | Vertisol | Alta | 0.75
4 | Gleysol | Moderada | 0.50
6 | Leptosol | Moderada | 0.50
9 | Phaeozem | Moderada | 0.50
10 | Regosol | Baja | 0.25
1 | Arenosol | Nula | 0.00
11 | Solonchak | Nula | 0.00
13 | No aplica | Nula | 0.00

**Función de valor de tipo de suelo**

![](/recursos/pec_bovino/mapa_fv_bov_bio_tipo_suelo.png)

##### 1.2.1.4 Tipo de cobertura

Tipos de vegetación y usos de suelo.

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
2 | Agricultura de riego | Muy alta | 1.00
8 | Pastizal | Muy alta | 1.00
3 | Agricultura de temporal | Alta | 0.75
9 | Selva baja | Alta | 0.75
10 | Selva mediana | Moderada | 0.50
5 | Bosque cultivado/Palmar inducido | Baja | 0.25
11 | Sin vegetación | Baja | 0.25
12 | Sabana | Baja | 0.25
1 | Acuícola | Nula | 0.00
4 | Asentamiento humano | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
7 | Manglar | Nula | 0.00
13 | Tular | Nula | 0.00
14 | Vegetación de duna costera | Nula | 0.00
15 | Vegetación de petén | Nula | 0.00
16 | Vegetación halófila hidrófila | Nula | 0.00
17 | ND | Nula | 0.00

**Función de valor de tipo de cobertura**

![](/recursos/pec_bovino/mapa_fv_bov_bio_cobertura_usv_svi_16cats.png)

#### 1.2.2 Infraestructura

Criterio | Definición
-- | --
Energía | Distancia a red de transmisión eléctrica.
Vías de comunicación | Distancia a caminos, brechas y carreteras para el transporte de insumos y productos.
Centros de acopio | Distancia a localidades con centros de acopio y de comercialización de ganado (subastas).
Rastros | Distancia a localidades con rastros o centros de sacrificio.

##### 1.2.2.1 Energía

Distancia a red de transmisión eléctrica.

**Insumos**

Capa | Distancia líneas de transmisión de energía eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/pec_bovino/fi_fv_bov_infra_d_lineas_electricas.png)

**Función de valor de energía**

![](/recursos/pec_bovino/mapa_fv_bov_infra_d_lineas_electricas.png)

##### 1.2.2.2 Vías de comunicación

Distancia a caminos, brechas y carreteras para el transporte de insumos y productos.

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/pec_bovino/fi_fv_bov_infra_d_carreteras_caminos.png)

**Función de valor de vías de comunicación**

![](/recursos/pec_bovino/mapa_fv_bov_infra_d_carreteras_caminos.png)

##### 1.2.2.3 Centros de acopio

Distancia a localidades con centros de acopio y de comercialización de ganado (subastas).

**Insumos**

Capa | Distancia a centros de acopio y subasta ganadera
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI
Año | 2020
Escala | Localidad
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/pec_bovino/fi_fv_bov_infra_d_centros_acopio_bov.png)

**Función de valor de centros de acopio**

![](/recursos/pec_bovino/mapa_fv_bov_infra_d_centros_acopio_bov.png)

##### 1.2.2.4 Rastros

Distancia a localidades con rastros o centros de sacrificio.

**Insumos**

Capa | Distancia a rastros, sitios de empacado y procesamiento de ganado
-- | --
Fuente | [1] Infraestructura del sector Agroalimentario centros de sacrificio y TIF SAGARPA SIAP; [2] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [3] Datos de indicador. Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI
Año | [1] Sin dato; [2] [3] 2020
Escala | Localidad
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/pec_bovino/fi_fv_bov_infra_d_rastros_bov.png)

**Función de valor de rastros**

![](/recursos/pec_bovino/mapa_fv_bov_infra_d_rastros_bov.png)

### 1.3 Mapa de aptitud

#### 1.3.1 Zona de exclusión

**Insumos**

Capa | Uso del suelo y vegetación y localidades
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI y [2] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI
Año | [1] 2017; [2] 2020
Campo | [1] descripcio
Escala | [1] 1:250,000; [2] Sin dato
Unidades | Adimensional

**Tabla de exclusión del sector pecuario bovino**

ID | Categoría
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
7 | Manglar
13 | Tular
14 | Vegetación de duna costera
15 | Vegetación de petén
16 | Vegetación halófila hidrófila

![](/recursos/pec_bovino/mapa_bov_exclusion.png)

#### 1.3.2 Mapa de aptitud del sector pecuario bovino

![](/recursos/pec_bovino/mapa_bov_aptitud.png)

**Pesos globales de los atributos ambientales del sector pecuario bovino**

Criterio | Peso
-- | --
Disponibilidad de agua | 0.405
Precipitación | 0.210
Energía | 0.158
Tipo de suelo | 0.083
Tipo de cobertura | 0.053
Vías de comunicación | 0.040
Centros de acopio | 0.040
Rastros | 0.010

**Área por categoria de aptitud**

Categoría | Km² | Porcentaje del estado
-- | --: | --:
Muy alta | 3679.0 | 9
Alta | 21901.9 | 55
Moderada | 10084.4 | 26
Baja | 258.8 | 1
Muy baja | 804.5 | 2
Nula | 2808.0 | 7

#### 1.3.3 Sensibilidad de criterios ambientales

![](/recursos/pec_bovino/fi_analisis_sensibilidad_bovino.png)

## 2. Pecuario silvopastoril

<!-- Ruta de la documentación:
CARPETAS_TRABAJO\vhernandez\aptitud_fomix_docs -->

Sistema de producción bovina integrada a especies arbóreas, arbustivas con gramíneas forrajeras.

[Lista de participantes](https://www.dropbox.com/s/uqmvq4qrembvk9e/lista_asistencia_silvopastoril.pdf?dl=0)

### 2.1 Modelo de decisión

![](/recursos/silvopastoril/silvopastoril.png)

### 2.2 Criterios

#### 2.2.1 Biofísicos

Criterio | Definición
-- | --
Cobertura | Tipo de uso de suelo y vegetación que determina la carga animal y la   biodiversidad vegetal.
Temperatura | Temperatura ambiente máxima (promedio) que afecta el desempeño productivo   de los animales en pastoreo, aunque aumenta la productividad de pastoreo.
Precipitación | Precipitación promedio, cantidad y distribución del agua de lluvia para   mantener la producción de pasto o sustento para la nutrición de los animales
Tipo de suelo | Características físicas (profundidad, pedregosidad) y químicas (MO,   Nitrógeno) del suelo para soportar la producción de pasto o sustento para la   nutrición de los animales.
Disponibilidad de agua | Acceso a la posibilidad de extraer agua del acuífero para el consumo del   ganado (nivel piezométrico)
<!-- .. csv-table::
   :file: recursos/tabla_c_biofisicos_silvopastoril.csv
   :header-rows: 1
   :align: center -->

##### 2.2.1.1 Cobertura

Tipo de uso de suelo y vegetación que determina la carga animal y la biodiversidad vegetal.

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2014
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

<!-- .. csv-table::
   :file: recursos/tabla_insumos_fv_gbe_sil_bio_usv_inegi.csv
   :align: left -->

**Parámetros de la función de valor**

ID | Categoría | Expresión verbal | FV
-- | -- | -- | --
1 | Acuícola | Nula | 0.00
2 | Agricultura De Riego Anual | Baja | 0.56
3 | Agricultura De Riego Anual Y Permanente | Baja | 0.56
4 | Agricultura De Riego Permanente | Baja | 0.56
5 | Agricultura De Riego Semipermanente | Baja | 0.56
6 | Agricultura De Riego Semipermanente Y Permanente | Baja | 0.56
7 | Agricultura De Temporal Anual | Baja | 0.56
8 | Agricultura De Temporal Anual Y Permanente | Baja | 0.56
9 | Agricultura De Temporal Permanente | Baja | 0.56
10 | Agricultura De Temporal Semipermanente | Baja | 0.56
11 | Cuerpo de agua | Nula | 0.00
12 | Bosque Cultivado | Baja | 0.56
13 | Manglar | Nula | 0.00
14 | Palmar Inducido | Baja | 0.56
15 | Pastizal Cultivado | Extremadamente alta | 1.00
16 | Pastizal Halófilo | Muy baja | 0.33
17 | Pastizal Inducido | Extremadamente alta | 1.00
18 | Sabana | Muy baja | 0.33
19 | Selva Baja Espinosa Subperennifolia | Moderada | 0.70
20 | Selva Mediana Subcaducifolia | Muy alta | 0.87
21 | Selva Mediana Subperennifolia | Muy alta | 0.87
22 | Sin Vegetación Aparente | Nula | 0.00
23 | Tular | Nula | 0.00
24 | Urbano Construido | Nula | 0.00
25 | Vegetación De Dunas Costeras | Nula | 0.00
26 | Vegetación De Petén | Nula | 0.00
27 | Vegetación Halófila Hidrófila | Nula | 0.00
28 | Vegetación Secundaria Arbustiva De Manglar | Muy baja | 0.33
29 | Vegetación Secundaria Arbustiva De Selva Baja Caducifolia | Alta | 0.80
30 | Vegetación Secundaria Arbustiva De Selva Baja Espinosa Caducifolia | Alta | 0.80
31 | Vegetación Secundaria Arbustiva De Selva Baja Espinosa Subperennifolia | Alta | 0.80
32 | Vegetación Secundaria Arbustiva De Selva Baja Subcaducifolia | Moderada | 0.70
33 | Vegetación Secundaria Arbustiva De Selva Mediana Caducifolia | Alta | 0.80
34 | Vegetación Secundaria Arbustiva De Selva Mediana Subcaducifolia | Alta | 0.80
35 | Vegetación Secundaria Arbustiva De Selva Mediana Subperennifolia | Muy alta | 0.87
36 | Vegetación Secundaria Arbórea De Manglar | Nula | 0.00
37 | Vegetación Secundaria Arbórea De Selva Baja Caducifolia | Alta | 0.80
38 | Vegetación Secundaria Arbórea De Selva Baja Espinosa Caducifolia | Moderada | 0.70
39 | Vegetación Secundaria Arbórea De Selva Baja Espinosa Subperennifolia | Alta | 0.80
40 | Vegetación Secundaria Arbórea De Selva Baja Subcaducifolia | Alta | 0.80
41 | Vegetación Secundaria Arbórea De Selva Mediana Caducifolia | Alta | 0.80
42 | Vegetación Secundaria Arbórea De Selva Mediana Subcaducifolia | Muy alta | 0.87
43 | Vegetación Secundaria Arbórea De Selva Mediana Subperennifolia | Muy alta | 0.87
44 | Vegetación Secundaria Herbácea De Selva Baja Caducifolia | Alta | 0.80
45 | Vegetación Secundaria Herbácea De Selva Mediana Caducifolia | Alta | 0.80
46 | Vegetación Secundaria Herbácea De Selva Mediana Subcaducifolia | Alta | 0.80
47 | Área Desprovista De Vegetación | Nula | 0.00

<!-- .. csv-table:: Cobertura
   :file: recursos/tabla_fv_gbe_sil_bio_usv_inegi.csv
   :header-rows: 1
   :align: center -->

**Función de valor de cobertura**

![](/recursos/silvopastoril/mapa_fv_gbe_sil_bio_usv_inegi.PNG)

##### 2.2.1.2 Temperatura

Temperatura ambiente máxima (promedio) que afecta el desempeño productivo de los animales en pastoreo, aunque aumenta la productividad de pastoreo.

**Insumos**

Capa | Temperatura máxima promedio
-- | --
Fuente | Adaptado de: Temperatura máxima promedio García, E. - CONABIO
Año | 1998
Campo | temp_mean
Escala | 1:1,000,000
Unidades | °C

<!-- .. csv-table::
   :file: recursos/tabla_insumos_fv_gbe_sil_bio_temp_max.csv
   :align: left -->

**Parámetros de la función de valor**

![](/recursos/silvopastoril/fi_fv_gbe_sil_bio_temp_max.png)

**Función de valor de temperatura**

![](/recursos/silvopastoril/mapa_fv_gbe_sil_bio_temp_max.png)

##### 2.2.1.3 Precipitación

Precipitación promedio, cantidad y distribución del agua de lluvia para mantener la producción de pasto o sustento para la nutrición de los animales.

**Insumos**

Capa | Precipitación total anual
-- | --
Fuente | Adaptado de: Precipitación total anual García, E. - CONABIO
Año | 1998
Campo | prec_mean
Escala | 1:1,000,000
Unidades | Milímetros

<!--
.. csv-table::
   :file: recursos/tabla_insumos_fv_gbe_sil_bio_precipitacion.csv
   :align: left -->

**Parámetros de la función de valor**

![](/recursos/silvopastoril/fi_fv_gbe_sil_bio_precipitacion.png)  

**Función de valor de precipitación**

![](/recursos/silvopastoril/mapa_fv_gbe_sil_bio_precipitacion.png)

##### 2.2.1.4 Tipo de suelo

Características físicas (profundidad, pedregosidad) y químicas (MO, Nitrógeno) del suelo para soportar la producción de pasto o sustento para la nutrición de los animales.

**Insumos**

Capa | Edafología
-- | --
Fuente | Conjunto de datos vectoriales edafológico. Serie II (Continuo Nacional)   INEGI
Año | 2014
Campo | tipo_suelo
Escala | 1:250,000
Unidades | Adimensional

<!-- .. csv-table::
   :file: recursos/tabla_insumos_fv_gbe_sil_bio_t_suelo.csv
   :align: left -->

**Parámetros de la función de valor**

ID | Categoría | Expresión verbal | FV
-- | -- | -- | --
1 | Arenosol | Baja | 0.56
2 | Cambisol | Moderada | 0.70
3 | Chernozem | Moderada | 0.70
4 | Gleysol | Moderada | 0.70
5 | Histosol | Nula | 0.00
6 | Leptosol | Alta | 0.80
7 | Luvisol | Alta | 0.80
8 | Nitosol | Extremadamente alta | 1.00
9 | Phaeozem | Baja | 0.56
10 | Regosol | Moderada | 0.70
11 | Solonchak | Nula | 0.00
12 | Vertisol | Moderada | 0.70

<!-- .. csv-table:: Tipo de suelo
   :file: recursos/tabla_fv_cat_suelo_silvopastoril.csv
   :header-rows: 1
   :align: center -->

**Función de valor de tipo de suelo**

![](/recursos/silvopastoril/mapa_fv_gbe_sil_bio_t_suelo.png)    

##### 2.2.1.5 Disponibilidad de agua

Acceso a la posibilidad de extraer agua del acuífero para el consumo del ganado (nivel piezométrico).

**Insumos**

Capa | Nivel freático
-- | --
Fuente | Nivel freático POETY
Año | Sin dato
Campo | n_freat_m
Escala | Estatal
Unidades | Metros

<!-- .. csv-table::
   :file: recursos/tabla_insumos_fv_gbe_sil_bio_d_acuifero.csv
   :align: left -->

**Parámetros de la función de valor**

![](/recursos/silvopastoril/fi_fv_gbe_sil_bio_d_acuifero.png)

**Función de valor de disponibilidad de agua**

![](/recursos/silvopastoril/mapa_fv_gbe_sil_bio_d_acuifero.png)   

#### 2.2.2 Socioeconómicos

Criterio | Definición
-- | --
Accesibilidad a mercados locales | Distancia a puntos de venta local de becerros (Tizimín, Valladolid, Mérida y Tzucacab)
Accesibilidad a mercados foráneos | Distancia a puntos de venta de carne (Campeche, Cancún, Playa del Carmen).
Disponibilidad de mano de obra | Población económicamente activa ocupada en el sector primario (%)

<!-- .. csv-table::
   :file: recursos/tabla_c_socioeconomico_silvopastoril.csv
   :header-rows: 1
   :align: center -->

##### 2.2.2.1 Accesibilidad a mercados

Criterio | Definición | FV
-- | -- | --
Accesibilidad a mercados locales | Distancia a puntos de venta local de becerros (Tizimín, Valladolid, Mérida y Tzucacab) | 0.87
Accesibilidad a mercados foráneos | Distancia a puntos de venta de carne (Campeche, Cancún, Playa del Carmen). | 0.13

<!-- .. csv-table::
   :file: recursos/tabla_c_socioeconomico_mercados.csv
   :header-rows: 1
   :align: center -->

###### 2.2.2.1.1 Accesibilidad a mercados locales**

Distancia a puntos de venta local de becerros (Tizimín, Valladolid, Mérida y Tzucacab).

**Insumos**

Capa | Distancia a localidades intraestatales
-- | --
Fuente | Adaptado de: [1] Conjunto de datos vectoriales de información topográfica   por Entidad Federativa Serie VI. (Zonas urbanas) INEGI y [2] Red nacional de   caminos INEGI
Año | 2019
Escala | [1] 1:250,000; [2] Sin dato
Unidades | Adimensional

<!-- .. csv-table::
   :file: recursos/tabla_insumos_fv_gbe_sil_socio_d_mercados_loc.csv
   :align: left -->

**Parámetros de la función de valor**

![](/recursos/silvopastoril/fi_fv_gbe_sil_socio_d_mercados_loc.png)

**Función de valor de accesibilidad a mercados locales**

![](/recursos/silvopastoril/mapa_fv_gbe_sil_socio_d_mercados_loc.png)

###### 2.2.2.1.2 Accesibilidad a mercados foráneos**

Distancia a puntos de venta de carne (Campeche, Cancún, Playa del Carmen).  

**Insumos**

Capa | Distancia a localidades intraestatales
-- | --
Fuente | Adaptado de: [1] Conjunto de datos vectoriales de información topográfica   por Entidad Federativa Serie VI. (Zonas urbanas) INEGI y [2] Red nacional de   caminos INEGI
Año | 2019
Escala | [1] 1:250,000; [2]Sin dato
Unidades | Adimensional

<!-- .. csv-table::
   :file: recursos/tabla_insumos_fv_gbe_sil_socio_d_mercados_for.csv
   :align: left -->

**Parámetros de la función de valor**

![](/recursos/silvopastoril/fi_fv_gbe_sil_socio_d_mercados_for.png)

**Función de valor de accesibilidad a mercados foráneos**

![](/recursos/silvopastoril/mapa_fv_gbe_sil_socio_d_mercados_for.png)  

##### 2.2.2.2 Disponibilidad de mano de obra

Población económicamente activa ocupada en el sector primario (%).

**Insumos**

Capa | Población económicamente activa en el sector primario
-- | --
Fuente | Adaptado de: [1] Encuesta Intercensal INEGI y [2] División política municipal INEGI
Año | [1] 2015; [2] 2018
Campo | [1] Sector de actividad económica primario
Escala | [2] 1:250,000
Unidades | Porcentaje

<!-- .. csv-table::
   :file: recursos/tabla_insumos_fv_gbe_sil_socio_sec_primario.csv
   :align: left   -->

**Parámetros de la función de valor**

![](/recursos/silvopastoril/fi_fv_gbe_sil_socio_sec_primario.png)  

**Función de valor de disponibilidad de mano de obra**

![](/recursos/silvopastoril/mapa_fv_gbe_sil_socio_sec_primario.png)  

### 2.3 Mapa de aptitud

#### 2.3.1 Capa de exclusión

Coberturas no aptas de la capa de uso del suelo y vegetación serie VI INEGI usadas como zonas de exclusión (Aptitud nula)

ID | Categoría
:--| --
01 | Acuícola
11 | Cuerpo de agua
13 | Manglar
14 | Palmar inducido
16 | Paztizal halófilo
22 | Sin Vegetación Aparente
23 | Tular
24 | Urbano Construido
25 | Vegetación De Dunas Costeras
26 | Vegetación De Petén
27 | Vegetación Halófila Hidrófila
28 | Vegetación Secundaria Arbustiva De Manglar
36 | Vegetación Secundaria Arbórea De Manglar
47 | Área Desprovista De Vegetación

<!-- .. csv-table::
   :file: recursos/tabla_categorias_exclusion.csv
   :header-rows: 1
   :align: center -->

![](/recursos/silvopastoril/mapa_gbe_silvopastoril_exclusion.png)  

#### 2.3.2 Mapa de aptitud silvopastoril

![](/recursos/silvopastoril/mapa_apt_gbe_silvopastoril.png)

**Pesos globales del modelo de aptitud silvopastoril**

Criterio | Peso
-- | --
Disponibilidad de agua | 0.38
Cobertura | 0.2
Disponibilidad de mano de obra | 0.15
Accesibilidad a mercados locales | 0.09
Precipitación | 0.08
Tipo de suelo | 0.08
temperatura | 0.02
Accesibilidad a mercados foráneos | 0.01

<!-- .. csv-table::
   :file: recursos/tabla_pesos_globales.csv
   :header-rows: 1
   :align: center -->

**Área por categoría de aptitud**

Categoria | km² | Porcentaje del estado
:-- | --: | --:
Nula | 2538.1 |  6
Muy baja | 702.2 |  2
Baja | 397.2 |  1
Moderada | 4300.0 | 11
Alta | 11956.0 | 30
Muy alta | 19486.6 | 49

#### 2.3.3 Sensibilidad de atributos

![](/recursos/silvopastoril/fi_analisis_sensibilidad_silvopastoril.png)
