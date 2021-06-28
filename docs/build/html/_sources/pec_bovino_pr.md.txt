# Pecuario bovino

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

* Aumentar la capacidad de producción bovina a largo plazo, minimizando el crecimiento de la superficie destinada a esta actividad y haciendo más eficiente el uso del área actual.
* Incrementar sustentablemente la eficiencia y resiliencia de la actividad, a través de la restauración de paisajes y la protección de la biodiversidad, así como la implementación de innovaciones en el sistema de producción.
* Mantener y restaurar la fertilidad de suelo para obtener suficiente cantidad de biomasa que permita hacer más eficiente la actividad para que la producción por superficie sea rentable en el largo plazo, así como la diversificación de la actividad a sistemas agroforestales u otras actividades.

## 1. Bovino extensivo o estabulado

Sistema de producción en el que la alimentación se basa principalmente en pastizales de monocultivo de gramíneas forrajeras y el uso de granos (raciones balanceadas).

[Lista de participantes](https://www.dropbox.com/s/2kwmvzi01kj8s4h/lista_asistencia_bovino.pdf?dl=0)

### 1.1 Modelo de decisión

![](./recursos/pec_bovino/fi_bovino.png)

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
Año | 2007
Campo | n_freat_m
Escala | Estatal
Unidades | Metros

**Parámetros de la función de valor**

![](./recursos/pec_bovino/fi_fv_bov_bio_d_manto_freatico.png)

<div style="page-break-after: always;"></div>

**Función de valor de disponibilidad de agua**

![](./recursos/pec_bovino/mapa_fv_bov_bio_d_manto_freatico.png)

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

ID | Categoría (mm) | Importancia | FV
-- | -- | -- | --
5 | 1081-1233 | Muy alta | 1.00
4 | 930-1081 | Alta | 0.75
3 | 778-930 | Moderada | 0.50
2 | 626-778 | Baja | 0.25
1 | 551-626 | Baja | 0.25

**Función de valor de precipitación**

![](./recursos/pec_bovino/mapa_fv_bov_bio_precipitacion.png)

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

<div style="page-break-after: always;"></div>

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

<div style="page-break-after: always;"></div>

**Función de valor de tipo de suelo**

![](./recursos/pec_bovino/mapa_fv_bov_bio_tipo_suelo.png)

##### 1.2.1.4 Tipo de cobertura

Tipos de vegetación y usos de suelo.

**Insumos**

Campo | Uso del suelo y vegetación
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI y [2] Mapa de uso del suelo y   vegetación de la zona costera asociada a los manglares, Región Península de Yucatán CONABIO
Año | [1] 2017; [2] 2021
Campo | [1] descripcio; [2] Descrip
Escala | [1] 1:250,000; [2] 1:50,000
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

<div style="page-break-after: always;"></div>

**Función de valor de tipo de cobertura**

![](./recursos/pec_bovino/mapa_fv_bov_bio_cobertura_usv_svi_16cats.png)

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

![](./recursos/pec_bovino/fi_fv_bov_infra_d_lineas_electricas.png)

**Función de valor de energía**

![](./recursos/pec_bovino/mapa_fv_bov_infra_d_lineas_electricas.png)

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

![](./recursos/pec_bovino/fi_fv_bov_infra_d_carreteras_caminos.png)

**Función de valor de vías de comunicación**

![](./recursos/pec_bovino/mapa_fv_bov_infra_d_carreteras_caminos.png)

<div style="page-break-after: always;"></div>

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

![](./recursos/pec_bovino/fi_fv_bov_infra_d_centros_acopio_bov.png)

<div style="page-break-after: always;"></div>

**Función de valor de centros de acopio**

![](./recursos/pec_bovino/mapa_fv_bov_infra_d_centros_acopio_bov.png)

##### 1.2.2.4 Rastros

Distancia a localidades con rastros o centros de sacrificio.

**Insumos**

Capa | Distancia a rastros, sitios de empacado y procesamiento de ganado
-- | --
Fuente | [1] Infraestructura del sector Agroalimentario centros de sacrificio y TIF SAGARPA SIAP; [2] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [3] Datos de indicador. Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI
Año | [1] Sin dato; [2] [3] 2020
Escala | Localidad
Unidades | Kilómetros

<div style="page-break-after: always;"></div>

**Parámetros de la función de valor**

![](./recursos/pec_bovino/fi_fv_bov_infra_d_rastros_bov.png)

**Función de valor de rastros**

![](./recursos/pec_bovino/mapa_fv_bov_infra_d_rastros_bov.png)

### 1.3 Mapa de aptitud

#### 1.3.1 Zona de exclusión del subsector pecuario bovino

**Insumos**

Capa | Uso del suelo y vegetación y localidades
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI, [2] Mapa de uso del suelo y vegetación de la zona costera asociada a los manglares, Región Península de Yucatán CONABIO y [3] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI
Año | [1] 2017; [2] 2021; [3] 2020
Campo | [1] descripcio; [2] Descrip
Escala | [1] 1:250,000;[2] 1:50,000; [3] Sin dato
Unidades | Adimensional

**Tabla de exclusión del subsector pecuario bovino**

[1]

ID | Categoría
-- | --
1 | Acuícola
6 | Cuerpo de agua
7 | Manglar
13 | Tular
14 | Vegetación de duna costera
15 | Vegetación de petén
16 | Vegetación halófila hidrófila
17 | ND

[2] Se utilizaron todas las localidades (urbanas y rurales).

![](./recursos/pec_bovino/mapa_bov_exclusion.png)

<div style="page-break-after: always;"></div>

#### 1.3.2 Mapa de aptitud del subsector pecuario bovino

![](./recursos/pec_bovino/mapa_bov_aptitud.png)

**Pesos globales de los atributos ambientales del subsector pecuario bovino**

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
Muy alta | 3716.2 | 9
Alta | 21852.6 | 55
Moderada | 9926.7 | 25
Baja | 189.0 | 0
Muy baja | 804.3 | 2
Nula | 3047.8 | 8

#### 1.3.3 Sensibilidad de criterios ambientales del subsector pecuario bovino

![](./recursos/pec_bovino/fi_analisis_sensibilidad_bovino.png)

## 2.Bovino silvopastoril

<!-- Ruta de la documentación:
CARPETAS_TRABAJO\vhernandez\aptitud_fomix_docs -->

Sistema de producción bovina en el que la alimentación está integrada a especies arbóreas, arbustivas con gramíneas forrajeras.

[Lista de participantes](https://www.dropbox.com/s/uqmvq4qrembvk9e/lista_asistencia_silvopastoril.pdf?dl=0)

<div style="page-break-after: always;"></div>

### 2.1 Modelo de decisión

![](./recursos/silvopastoril/silvopastoril.png)

### 2.2 Criterios

#### 2.2.1 Biofísicos

Criterio | Definición
-- | --
Disponibilidad de agua | Acceso a la posibilidad de extraer agua del acuífero para el consumo del ganado (nivel piezométrico)
Cobertura | Tipo de uso de suelo y vegetación que determina la carga animal y la   biodiversidad vegetal.
Tipo de suelo | Características físicas (profundidad, pedregosidad) y químicas (MO,   Nitrógeno) del suelo para soportar la producción de pasto o sustento para la nutrición de los animales.
Precipitación | Precipitación promedio, cantidad y distribución del agua de lluvia para   mantener la producción de pasto o sustento para la nutrición de los animales.
Temperatura | Temperatura ambiente máxima (promedio) que afecta el desempeño productivo   de los animales en pastoreo, aunque aumenta la productividad de pastoreo.

<!-- .. csv-table::
   :file: recursos/tabla_c_biofisicos_silvopastoril.csv
   :header-rows: 1
   :align: center -->

##### 2.2.1.1 Disponibilidad de agua

Acceso a la posibilidad de extraer agua del acuífero para el consumo del ganado (nivel piezométrico).

**Insumos**

Capa | Nivel freático
-- | --
Fuente | Nivel freático POETY
Año | 2007
Campo | n_freat_m
Escala | Estatal
Unidades | Metros

   <!-- .. csv-table::
      :file: recursos/tabla_insumos_fv_gbe_sil_bio_d_acuifero.csv
      :align: left -->

**Parámetros de la función de valor**

![](./recursos/silvopastoril/fi_fv_gbe_sil_bio_d_acuifero.png)

**Función de valor de disponibilidad de agua**

![](./recursos/silvopastoril/mapa_fv_gbe_sil_bio_d_acuifero.png)   

##### 2.2.1.2 Cobertura

Tipo de uso de suelo y vegetación que determina la carga animal y la biodiversidad vegetal.

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
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

<div style="page-break-after: always;"></div>

**Función de valor de cobertura**

![](./recursos/silvopastoril/mapa_fv_gbe_sil_bio_usv_inegi.PNG)

##### 2.2.1.3 Tipo de suelo

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
8 | Nitosol | Extremadamente alta | 1.00
6 | Leptosol | Alta | 0.80
7 | Luvisol | Alta | 0.80
2 | Cambisol | Moderada | 0.70
3 | Chernozem | Moderada | 0.70
4 | Gleysol | Moderada | 0.70
10 | Regosol | Moderada | 0.70
12 | Vertisol | Moderada | 0.70
1 | Arenosol | Baja | 0.56
9 | Phaeozem | Baja | 0.56
5 | Histosol | Nula | 0.00
11 | Solonchak | Nula | 0.00

<!-- .. csv-table:: Tipo de suelo
   :file: recursos/tabla_fv_cat_suelo_silvopastoril.csv
   :header-rows: 1
   :align: center -->

**Función de valor de tipo de suelo**

![](./recursos/silvopastoril/mapa_fv_gbe_sil_bio_t_suelo.png)    

##### 2.2.1.4 Precipitación

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

![](./recursos/silvopastoril/fi_fv_gbe_sil_bio_precipitacion.png)  

**Función de valor de precipitación**

![](./recursos/silvopastoril/mapa_fv_gbe_sil_bio_precipitacion.png)

##### 2.2.1.5 Temperatura

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

![](./recursos/silvopastoril/fi_fv_gbe_sil_bio_temp_max.png)

<div style="page-break-after: always;"></div>

**Función de valor de temperatura**

![](./recursos/silvopastoril/mapa_fv_gbe_sil_bio_temp_max.png)

#### 2.2.2 Socioeconómicos

Criterio | Definición
-- | --
Disponibilidad de mano de obra | Población económicamente activa ocupada en el sector primario (%)
Accesibilidad a mercados locales | Distancia a puntos de venta local de becerros (Tizimín, Valladolid, Mérida y Tzucacab)
Accesibilidad a mercados foráneos | Distancia a puntos de venta de carne (Campeche, Cancún, Playa del Carmen).

<!-- .. csv-table::
   :file: recursos/tabla_c_socioeconomico_silvopastoril.csv
   :header-rows: 1
   :align: center -->

##### 2.2.2.1 Disponibilidad de mano de obra

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

![](./recursos/silvopastoril/fi_fv_gbe_sil_socio_sec_primario.png)  

**Función de valor de disponibilidad de mano de obra**

![](./recursos/silvopastoril/mapa_fv_gbe_sil_socio_sec_primario.png)  

##### 2.2.2.2 Accesibilidad a mercados

Criterio | Definición | FV
-- | -- | --
Accesibilidad a mercados locales | Distancia a puntos de venta local de becerros (Tizimín, Valladolid, Mérida y Tzucacab) | 0.87
Accesibilidad a mercados foráneos | Distancia a puntos de venta de carne (Campeche, Cancún, Playa del Carmen). | 0.13

<!-- .. csv-table::
   :file: recursos/tabla_c_socioeconomico_mercados.csv
   :header-rows: 1
   :align: center -->

###### 2.2.2.2.1 Accesibilidad a mercados locales

Distancia a puntos de venta local de becerros (Tizimín, Valladolid, Mérida y Tzucacab).

**Insumos**

Capa | Distancia a localidades intraestatales
-- | --
Fuente | Adaptado de: [1] Conjunto de datos vectoriales de información topográfica   por Entidad Federativa Serie VI. (Zonas urbanas) INEGI y [2] Red nacional de   caminos INEGI
Año | 2019
Escala | [1] 1:250,000; [2] Sin dato
Unidades | Kilómetros

<!-- .. csv-table::
   :file: recursos/tabla_insumos_fv_gbe_sil_socio_d_mercados_loc.csv
   :align: left -->

**Parámetros de la función de valor**

![](./recursos/silvopastoril/fi_fv_gbe_sil_socio_d_mercados_loc.png)

<div style="page-break-after: always;"></div>

**Función de valor de accesibilidad a mercados locales**

![](./recursos/silvopastoril/mapa_fv_gbe_sil_socio_d_mercados_loc.png)

###### 2.2.2.2.2 Accesibilidad a mercados foráneos

Distancia a puntos de venta de carne (Campeche, Cancún, Playa del Carmen).  

**Insumos**

Capa | Distancia a localidades intraestatales
-- | --
Fuente | Adaptado de: [1] Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI. (Zonas urbanas) INEGI y [2] Red nacional de caminos INEGI
Año | 2019
Escala | [1] 1:250,000; [2]Sin dato
Unidades | Kilómetros

<!-- .. csv-table::
   :file: recursos/tabla_insumos_fv_gbe_sil_socio_d_mercados_for.csv
   :align: left -->

<div style="page-break-after: always;"></div>

**Parámetros de la función de valor**

![](./recursos/silvopastoril/fi_fv_gbe_sil_socio_d_mercados_for.png)

**Función de valor de accesibilidad a mercados foráneos**

![](./recursos/silvopastoril/mapa_fv_gbe_sil_socio_d_mercados_for.png)  

### 2.3 Mapa de aptitud

#### 2.3.1 Capa de exclusión del subsector pecuario silvopastoril

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del subsector pecuario silvopastoril**

Coberturas no aptas de la capa de uso del suelo y vegetación serie VI INEGI usadas como zonas de exclusión (Aptitud nula)

ID | Categoría
:--| --
01 | Acuícola
11 | Cuerpo de agua
13 | Manglar
14 | Palmar inducido
16 | Pastizal halófilo
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

![](./recursos/silvopastoril/mapa_gbe_silvopastoril_exclusion.png)  

<div style="page-break-after: always;"></div>

#### 2.3.2 Mapa de aptitud del subsector pecuario silvopastoril

![](./recursos/silvopastoril/mapa_apt_gbe_silvopastoril.png)

**Pesos globales del mapa de aptitud del subsector pecuario silvopastoril**

Criterio | Peso
-- | --
Disponibilidad de agua | 0.375
Cobertura | 0.195
Disponibilidad de mano de obra | 0.150
Accesibilidad a mercados locales | 0.087
Tipo de suelo | 0.083
Precipitación | 0.075
temperatura | 0.023
Accesibilidad a mercados foráneos | 0.013

<!-- .. csv-table::
   :file: recursos/tabla_pesos_globales.csv
   :header-rows: 1
   :align: center -->

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del estado
-- | --: | --:
Muy alta | 19591.3 | 50
Alta | 11540.4 | 29
Moderada | 4255.9 | 11
Baja | 414.0 | 1
Muy baja | 714.0 | 2
Nula | 3021.0 | 8

#### 2.3.3 Sensibilidad de criterios ambientales del subsector pecuario silvopastoril

![](./recursos/silvopastoril/fi_analisis_sensibilidad_silvopastoril.png)

## 3. Mapa de aptitud integrado del sector pecuario bovino

_El mapa de aptitud se integró considerando que los subsectores son igualmente importantes y, por lo tanto, tienen el mismo peso._

<div style="page-break-after: always;"></div>

### 3.1 Modelo de decisión del mapa de aptitud integrado

![](./recursos/pec_bovino/fi_bov_integrado.png)  

#### 3.1.1 Zonas de exclusión

**Insumos**

Capa | Uso del suelo y vegetación y localidades
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI, [2] Mapa de uso del suelo y vegetación de la zona costera asociada a los manglares, Región Península de Yucatán CONABIO y [3] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI
Año | [1] 2017; [2] 2021; [3] 2020
Campo | [1] descripcio; [2] Descrip
Escala | [1] 1:250,000;[2] 1:50,000; [3] Sin dato
Unidades | Adimensional

**Tabla de exclusión**

ID | Categoría
-- | --
1 | Acuícola
6 | Cuerpo de agua
7 | Manglar
13 | Tular
14 | Vegetación de duna costera
15 | Vegetación de petén
16 | Vegetación halófila hidrófila

![](./recursos/pec_bovino/mapa_bov_integrado_exclusion.png)  

<div style="page-break-after: always;"></div>

#### 3.1.2 Mapa de aptitud integrado del sector pecuario bovino

![](./recursos/pec_bovino/mapa_bov_integrado_aptitud.png)

**Pesos globales del mapa de aptitud integrado del sector pecuario bovino**

Criterio | Peso
-- | --
Disponibilidad de agua - Bovino | 0.203
Disponibilidad de agua - Silvopastoril | 0.190
Precipitación - Bovino | 0.105
Cobertura - Silvopastoril | 0.100
Energía - Bovino | 0.079
Disponibilidad de mano de obra -   Silvopastoril | 0.075
Accesibilidad a mercados locales -   Silvopastoril | 0.045
Tipo de suelo - Bovino | 0.041
Precipitación - Silvopastoril | 0.040
Tipo de suelo - Silvopastoril | 0.040
Tipo de cobertura - Bovino | 0.026
Vías de comunicación - Bovino | 0.020
Centros de acopio - Bovino | 0.020
Temperatura - Silvopastoril | 0.010
Rastros - Bovino | 0.005
Accesibilidad a mercados foráneos -   Silvopastoril | 0.005


<!-- .. csv-table::
   :file: recursos/tabla_pesos_globales.csv
   :header-rows: 1
   :align: center -->

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del estado
-- | --: | --:
Muy alta | 8378.1 | 21
Alta | 22575.8 | 57
Moderada | 4686.9 | 12
Baja | 147.6 | 0
Muy baja | 820.9 | 2
Nula | 2927.2 | 7

#### 3.1.3 Sensibilidad del mapa de aptitud integrado del sector pecuario bovino

![](./recursos/pec_bovino/fi_analisis_sensibilidad_bovino_integrado.png)
