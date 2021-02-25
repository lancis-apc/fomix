# Pecuario bovino-En proceso de actualización

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

* Aumentar la capacidad de producción bovina a largo plazo, minimizando el crecimiento de la superficie destinada a esta actividad y haciendo más eficiente el uso del área actual.
* Incrementar sustentablemente la eficiencia y resiliencia de la actividad, a través de la restauración de paisajes y la protección de la biodiversidad, así como la implementación de innovaciones en el sistema de producción.
* Mantener y restaurar la fertilidad de suelo para obtener suficiente cantidad de biomasa que permita hacer más eficiente la actividad para que la producción por superficie sea rentable en el largo plazo, así como la diversificación de la actividad a sistemas agroforestales u otras actividades.

[Lista de participantes]()

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
Fuente | Adaptado de: Precipitación acumulada anual. Atlas de Peligros por Fenómenos Naturales del Estado de Yucatán. Servicio Geológico Mexicano
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
12 | Sábana | Baja | 0.25
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
Fuente | [1] Infraestructura del sector Agroalimentario centros de sacrificio y TIF; [2] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [3] Datos de indicador. Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI
Año | [1] Sin dato; [2] [3] 2020
Escala | Localidad
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/pec_bovino/fi_fv_bov_infra_d_rastros_bov.png)

**Función de valor de rastros**

![](/recursos/pec_bovino/mapa_fv_bov_infra_d_rastros_bov.png)

### 1.3 Mapa de aptitud

#### 1.3.1 Zona de exclusión

#### 1.3.2 Mapa de aptitud del sector pecuario bovino

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
