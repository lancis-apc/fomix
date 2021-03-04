# Agricultura tecnificada-Final

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

* Fomentar la producción incorporando tecnologías, insumos, equipos y maquinaria avanzada, optimizando al máximo los procesos de manera eficiente y amigable con el medio ambiente y permitiendo un mayor rendimiento por unidad de superficie.
* Aumentar en las zonas sur y oriente la producción tecnificada de pasto, maíz amarillo, sorgo y soya para cubrir la demanda del sector ganadero y reducir importaciones.
* Incrementar rendimientos, a través de la recuperación de áreas agrícolas degradadas o abandonadas, mediante la agricultura de conservación (rotación de cultivos, manejo de rastrojo y cero labranza) y la restauración de suelos (uso de coberturas vegetales).
* Diversificar tecnologías apropiadas para las condiciones del suelo y productos para promover la competitividad, la integración de pequeños productores y mujeres y la coexistencia con otros sistemas de producción como la milpa maya.
* Reducir el impacto sobre los ecosistemas naturales.

[Lista de participantes](https://www.dropbox.com/s/khqmidybelt295o/lista_asistencia_agricultura.pdf?dl=0)

## 1. Agricultura tecnificada de riego

 Agricultura comercial que se desarrolla en grandes extensiones, utiliza infraestructura para el riego de los cultivos e incorpora diversas tecnologías y soluciones (maquinaria, aplicación de agroquímicos, semillas mejoradas, entre otros) para mejorar la eficiencia y aumentar la producción.

### 1.1 Modelo de decisión

![](/recursos/agricultura/a_riego.png)

### 1.2 Criterios

#### 1.2.1 Infraestructura

Criterio | Definición
-- | --
Hidroagrícola | Distrito de riego y unidades de riego.
Energía | Distancia a red de transmisión eléctrica.
Vías de comunicación | Distancia a caminos y carreteras para el transporte de insumos y productos.

##### 1.2.1.1 Hidroagrícola

Distrito de riego y unidades de riego.

**Insumos**

Capa | Unidades y distritos de riego
-- | --
Fuente | [1] Datos vectoriales de los distritos de riego a nivel nacional CONAGUA   2018-2019 y [2] Unidades de riego agrupadas por Región   Hidrológico-Administrativa CONAGUA 2017-2018
Año | 2020
Escala | [1] 1:250,000; [2] Sin dato
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Distrito de riego | Muy alta | 1.00
2 | Unidad de riego | Muy alta | 1.00
3 | NA | Nula | 0.00

**Función de valor de hidroagrícola**

![](/recursos/agricultura/mapa_fv_agrie_infra_hidro_unidades_distritos_riego.png)

##### 1.2.1.2 Energía

Distancia a red de transmisión eléctrica.

**Insumos**

Capa | Distancia líneas de transmisión de energía eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/agricultura/fi_fv_agrie_infra_ene_d_lineas_electricas.png)

**Función de valor de energía**

![](/recursos/agricultura/mapa_fv_agrie_infra_ene_d_lineas_electricas.png)

##### 1.2.1.3 Vías de comunicación

Distancia a caminos, brechas y carreteras para el transporte de insumos y productos.

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/agricultura/fi_fv_agrie_infra_com_d_carreteras_caminos.png)

**Función de valor de vías de comunicación**

![](/recursos/agricultura/mapa_fv_agrie_infra_com_d_carreteras_caminos.png)

#### 1.2.2 Biofísicos

Criterio | Definición
-- | --
Disponibilidad de agua | Posibilidad de extraer agua subterránea, considerando el nivel piezométrico.
Pendiente | Elevación del terreno.
Tipo de suelo | Edafología.
Tipo de cobertura | Tipos de vegetación y usos de suelo.

##### 1.2.2.1 Disponibilidad de agua

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

![](/recursos/agricultura/fi_fv_agrie_bio_agua_d_manto_freatico.png)

**Función de valor de disponibilidad de agua**

![](/recursos/agricultura/mapa_fv_agrie_bio_agua_d_manto_freatico.png)

##### 1.2.2.2 Pendiente

**Insumos**

Capa | Pendiente
-- | --
Fuente | Adaptado de: Continuo de Elevaciones Mexicano (CEM) INEGI
Año | 2013
Resolución | 15 m x 15 m
Unidades | Grados

**Parámetros de la función de valor**

![](/recursos/agricultura/fi_fv_agrie_bio_pend_pendiente_grados.png)

**Función de valor de pendiente**

![](/recursos/agricultura/mapa_fv_agrie_bio_pend_pendiente_grados.png)

##### 1.2.2.2 Tipo de suelo

Edafología.

**Insumos**

Capa | Edafología
-- | --
Fuente | Conjunto de datos vectoriales edafológico. Serie II (Continuo Nacional)   INEGI
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
4 | Gleysol | Moderada | 0.50
9 | Phaeozem | Moderada | 0.50
12 | Vertisol | Moderada | 0.50
1 | Arenosol | Baja | 0.25
6 | Leptosol | Baja | 0.25
10 | Regosol | Baja | 0.25
11 | Solonchak | Nula | 0.00
13 | No aplica | Nula | 0.00

**Función de valor de tipo de suelo**

![](/recursos/agricultura/mapa_fv_agrie_bio_suelo_tipo_suelo.png)

##### 1.2.2.1 Tipo de cobertura

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
3 | Agricultura de temporal | Alta | 0.75
8 | Pastizal | Moderada | 0.50
9 | Selva baja | Moderada | 0.50
10 | Selva mediana | Baja | 0.25
11 | Sin vegetación | Baja | 0.25
12 | Sabana | Baja | 0.25
1 | Acuícola | Nula | 0.00
4 | Asentamiento humano | Nula | 0.00
5 | Bosque cultivado/Palmar inducido | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
7 | Manglar | Nula | 0.00
13 | Tular | Nula | 0.00
14 | Vegetación de duna costera | Nula | 0.00
15 | Vegetación de petén | Nula | 0.00
16 | Vegetación halófila hidrófila | Nula | 0.00
17 | ND | Nula | 0.00

**Función de valor de tipo de cobertura**

![](/recursos/agricultura/mapa_fv_agrie_bio_cober_cobertura_usv_svi_16cats.png)

#### 1.2.3 Socioeconómicos

Criterio | Definición
-- | --
Mercados | Distancia a las principales localidades en las que se venden los productos agrícolas.
Mano de obra | Municipios con mayor porcentaje de población económicamente activa ocupada en el sector primario.
Tenencia | Tenencia de la tierra.

##### 1.2.3.1 Mercados

Distancia a las principales localidades en las que se venden los productos agrícolas.

**Insumos**

Capa | Distancia a localidades con centrales de   abasto y almacenes agrícolas
-- | --
Fuente | Adaptado de: [1] Polígonos de localidades. Marco Geoestadístico. Censo de   Población y Vivienda INEGI y [2] Infraestructura del Sector Agroalimentario   almacenes y centrales de abasto SIAP
Año | [1] 2020; [2] Sin dato
Escala | Localidad
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/agricultura/fi_fv_agrie_socio_merca_almacen_central_abasto_agricola.png)

**Función de valor de mercados**

![](/recursos/agricultura/mapa_fv_agrie_socio_merca_almacen_central_abasto_agricola.png)

##### 1.2.3.2 Mano de obra

Municipios con mayor porcentaje de población económicamente activa ocupada en el sector primario.

**Insumos**

Capa | Población económicamente activa en el sector primario
-- | --
Fuente | Adaptado de: [1] Encuesta Intercensal INEGI y [2] División política municipal INEGI
Año | [1] 2015; [2] 2018
Campo | [1] Sector de actividad económica primario
Escala | [2] 1:250,000
Unidades | Porcentaje

**Parámetros de la función de valor**

![](/recursos/agricultura/fi_fv_agrie_socio_pea_pea_sector_primario.png)

**Función de valor de mano de obra**

![](/recursos/agricultura/mapa_fv_agrie_socio_pea_pea_sector_primario.png)

##### 1.2.3.3 Tenencia

Tenencia de la tierra.

**Insumos**

Capa | Tenencia de la tierra
-- | --
Fuente | [1] Zonas de Tierras Parceladas RAN y [2] Tierra de uso común RAN
Año | 2020
Escala | Sin dato
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Tierra de uso común | Baja | 0.25
2 | Zona de tierras parceladas | Alta | 0.75
3 | No ejidal | Muy alta | 1.00

**Función de valor de tenencia**

![](/recursos/agricultura/mapa_fv_agrie_socio_tene_tenencia_tierra.png)

### 1.3 Mapa de aptitud

#### 1.3.1 Zonas de exclusión

**Insumos**

Capa | Uso del suelo y vegetación y localidades
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y   vegetación. Serie VI. Conjunto Nacional INEGI y [2] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI
Año | [1] 2017; [2] 2020
Campo | [1] descripcio
Escala | [1] 1:250,000; [2] Sin dato
Unidades | Adimensional

**Tabla de exclusión del subsector agricultura tecnificada de riego**

ID | Categoría
-- | --
1 | Acuícola
4 | Asentamiento humano
5 | Bosque cultivado/Palmar inducido
6 | Cuerpo de agua
7 | Manglar
13 | Tular
14 | Vegetación de duna costera
15 | Vegetación de petén
16 | Vegetación halófila hidrófila

![](/recursos/agricultura/mapa_agrie_exclusion.png)

#### 1.3.2 Mapa de aptitud de agricultura tecnificada de riego

![](/recursos/agricultura/mapa_agrie_aptitud.png)

**Pesos globales de los atributos ambientales de agricultura tecnificada de riego**

Criterio | Peso
-- | --
Hidroagrícola | 0.270
Energía | 0.252
Disponibilidad de agua | 0.171
Vías de comunicación | 0.078
Pendiente | 0.066
Mano de obra | 0.043
Mercados | 0.043
Tipo de suelo | 0.042
Tipo de cobertura | 0.021
Tenencia | 0.014

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del estado
-- | --: | --:
Muy alta | 502.5 | 1
Alta | 19395.3 | 49
Moderada | 14850.5 | 38
Baja | 1785.1 | 5
Muy baja | 297.2 | 1
Nula | 2594.7 | 7

#### 1.3.3 Sensibilidad de atributos de agricultura tecnificada de riego

![](/recursos/agricultura/fi_analisis_sensibilidad_agricultura_riego.png)

## 2. Agricultura tecnificada de temporal

Agricultura comercial que se desarrolla en grandes extensiones, depende de la precipitación pluvial e incorpora diversas tecnologías y soluciones (maquinaria, aplicación de agroquímicos, semillas mejoradas, entre otros) para mejorar la eficiencia y aumentar la producción.

### 2.1 Modelo de decisión

![](/recursos/agricultura/a_temporal.png)

### 2.2 Criterios

#### 2.2.1 Biofísicos

Criterio | Definición
-- | --
Precipitación | Lluvia acumulada anual.
Tipo de suelo | Edafología.
Pendiente | Elevación del terreno.
Tipo de cobertura | Tipos de vegetación y usos de suelo. 

##### 2.2.1.1 Precipitación

Lluvia acumulada anual.

**Insumos**

Capa | Precipitación
-- | --
Fuente | Adaptado de: Precipitación acumulada anual periodo 1960-2000. Atlas de Peligros por Fenómenos Naturales del Estado de Yucatán. Servicio Geológico Mexicano.
Año | 1960-2000
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

![](/recursos/agricultura/mapa_fv_agtem_bio_prec_precipitacion.png)

##### 2.2.1.2 Tipo de suelo

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
4 | Gleysol | Moderada | 0.50
9 | Phaeozem | Moderada | 0.50
12 | Vertisol | Moderada | 0.50
1 | Arenosol | Baja | 0.25
6 | Leptosol | Baja | 0.25
10 | Regosol | Baja | 0.25
11 | Solonchak | Nula | 0.00
13 | No aplica | Nula | 0.00

**Función de valor de tipo de suelo**

![](/recursos/agricultura/mapa_fv_agtem_bio_suelo_tipo_suelo.png)

##### 2.2.1.3 Pendiente

Elevación del terreno.

**Insumos**

Capa | Pendiente
-- | --
Fuente | Adaptado de: Continuo de Elevaciones Mexicano (CEM) INEGI
Año | 2013
Resolución | 15 m x 15 m
Unidades | Grados

**Parámetros de la función de valor**

![](/recursos/agricultura/fi_fv_agtem_bio_pend_pendiente_grados.png)

**Función de valor de pendiente**

![](/recursos/agricultura/mapa_fv_agtem_bio_pend_pendiente_grados.png)

##### 2.2.1.4 Tipo de cobertura

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
3 | Agricultura de temporal | Muy alta | 1.00
2 | Agricultura de riego | Alta | 0.75
8 | Pastizal | Moderada | 0.50
9 | Selva baja | Moderada | 0.50
10 | Selva mediana | Moderada | 0.50
11 | Sin vegetación | Baja | 0.25
12 | Sabana | Baja | 0.25
1 | Acuícola | Nula | 0.00
4 | Asentamiento humano | Nula | 0.00
5 | Bosque cultivado/Palmar inducido | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
7 | Manglar | Nula | 0.00
13 | Tular | Nula | 0.00
14 | Vegetación de duna costera | Nula | 0.00
15 | Vegetación de petén | Nula | 0.00
16 | Vegetación halófila hidrófila | Nula | 0.00
17 | ND | Nula | 0.00

**Función de valor de tipo de cobertura**

![](/recursos/agricultura/mapa_fv_agtem_bio_cober_cobertura_usv_svi_16cats.png)

#### 2.2.2 Socioeconómicos

Criterio | Definición
-- | --
Mercados | Distancia a las principales localidades en las que se venden los productos agrícolas.
Mano de obra | Municipios con mayor porcentaje de población económicamente activa ocupada en el sector primario.
Tenencia | Tenencia de la tierra.

##### 2.2.2.1 Mercados

Distancia a las principales localidades en las que se venden los productos agrícolas.

**Insumos**

Capa | Distancia a localidades con centrales de abasto y almacenes agrícolas
-- | --
Fuente | Adaptado de: [1] Polígonos de localidades. Marco Geoestadístico. Censo de   Población y Vivienda INEGI y [2] Infraestructura del Sector Agroalimentario   almacenes y centrales de abasto SIAP
Año | [1] 2020; [2] Sin dato
Escala | Localidad
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/agricultura/fi_fv_agtem_socio_merca_almacen_central_abasto_agricola.png)

**Función de valor de mercados**

![](/recursos/agricultura/mapa_fv_agtem_socio_merca_almacen_central_abasto_agricola.png)

##### 2.2.2.2 Mano de obra

Municipios con mayor porcentaje de población económicamente activa ocupada en el sector primario.

**Insumos**

Capa | Población económicamente activa en el sector primario
-- | --
Fuente | Adaptado de: [1] Encuesta Intercensal INEGI y [2] División política municipal INEGI
Año | [1] 2015; [2] 2018
Campo | [1] Sector de actividad económica primario
Escala | [2] 1:250,000
Unidades | Porcentaje

**Parámetros de la función de valor**

![](/recursos/agricultura/fi_fv_agtem_socio_pea_pea_sector_primario.png)

**Función de valor de mano de obra**

![](/recursos/agricultura/mapa_fv_agtem_socio_pea_pea_sector_primario.png)

##### 2.2.2.3 Tenencia

Tenencia de la tierra.

**Insumos**

Capa | Tenencia de la tierra
-- | --
Fuente | [1] Zonas de Tierras Parceladas RAN y [2] Tierra de uso común RAN
Año | 2020
Escala | Sin dato
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
3 | No ejidal | Muy alta | 1.00
2 | Zona de tierras parceladas | Alta | 0.75
1 | Tierra de uso común | Baja | 0.25

#### 2.2.3 Infraestructura

Criterio | Definición
-- | --
Vías de comunicación | Distancia a caminos y carreteras para el transporte de insumos y productos.
Combustible | Distancia a centros de abastecimiento de gasolina y diesel al por menor.

##### 2.2.3.1 Vías de comunicación

Distancia a caminos y carreteras para el transporte de insumos y productos.

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/agricultura/fi_fv_agtem_infra_com_d_carreteras_caminos.png)

**Función de valor de vías de comunicación**

![](/recursos/agricultura/mapa_fv_agtem_infra_com_d_carreteras_caminos.png)

##### 2.2.3.2 Combustible

Distancia a centros de abastecimiento de gasolina y diesel al por menor.

**Insumos**

Capa | Distancia a centros de abastecimiento de gasolina y diesel
-- | --
Fuente | [1]Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI y [2] Datos de indicador. Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI
Año | 2020
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/agricultura/fi_fv_agtem_infra_ene_gasolina.png)

**Función de valor de combustible**

![](/recursos/agricultura/mapa_fv_agtem_infra_ene_gasolina.png)

### 2.3 Mapa de aptitud

#### 2.3.1 Zonas de exclusión

**Insumos**

Capa | Uso del suelo y vegetación y localidades
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y   vegetación. Serie VI. Conjunto Nacional INEGI y [2] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI
Año | [1] 2017; [2] 2020
Campo | [1] descripcio
Escala | [1] 1:250,000; [2] Sin dato
Unidades | Adimensional

**Tabla de exclusión del subsector agricultura tecnificada de temporal**

ID | Categoría
-- | --
1 | Acuícola
4 | Asentamiento humano
5 | Bosque cultivado/Palmar inducido
6 | Cuerpo de agua
7 | Manglar
13 | Tular
14 | Vegetación de duna costera
15 | Vegetación de petén
16 | Vegetación halófila hidrófila

![](/recursos/agricultura/mapa_agtem_exclusion.png)

#### 2.3.2 Mapa de aptitud de agricultura tecnificada de temporal

![](/recursos/agricultura/mapa_agtem_aptitud.png)

**Pesos globales de los atributos ambientales de agricultura tecnificada de temporal**

Criterio | Peso
-- | --
Precipitación | 0.314
Tipo de suelo | 0.207
Pendiente | 0.150
Vías de comunicación | 0.108
Mano de obra | 0.061
Mercados | 0.061
Tipo de cobertura | 0.043
Combustible | 0.036
Tenencia | 0.020

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del   estado
-- | --: | --:
Muy alta | 6373.8 | 16
Alta | 17818.7 | 45
Moderada | 12031.5 | 31
Baja | 605.7 | 2
Muy baja | 0.9 | 0
Nula | 2594.7 | 7

#### 2.3.3 Sensibilidad de atributos de agricultura tecnificada de temporal

![](/recursos/agricultura/fi_analisis_sensibilidad_agricultura_temporal.png)
