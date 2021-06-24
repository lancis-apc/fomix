# Acuacultura-Final

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

* Promover el crecimiento de la producción acuícola de agua marina en la zona costera y de agua dulce al interior del estado, a partir de la capacitación del personal técnico, la construcción de granjas y la integración de la infraestructura ya existente a un estándar de sustentabilidad.
* Implementar en la granjas acuícolas infraestructura y tecnología para la mejora de los procesos de producción, como el uso de sistemas de recirculación del agua, sistemas acuapónicos y de generación de energía solar.
* Establecer y habilitar centros de acopio, laboratorios de producción de semilla, unidades de bioseguridad y centros de capacitación para la producción acuícola (proyecto de parque acuícola).

[Lista de participantes](https://www.dropbox.com/s/e44gv4no0lrbcjb/lista_asistencia_pesca.pdf?dl=0)

## 1. Acuacultura salobre

Acuacultura de especies de agua salobre y marina.

### 1.1 Modelo de decisión

![](./recursos/pesca/fi_acuacultura.png)

### 1.2 Criterios

#### 1.2.1 Biofísicos

Criterio|Definición
--|--
Acceso a agua| Posibilidad de extraer agua subterránea, considerando la profundidad en metros, a partir de la superficie del terreno, a la cual se encuentra el espejo de agua (acuífero).
Salinidad| Profundidad a partir de la cual se puede encontrar agua salobre o salada, considerando el ancho en metros de la columna de agua dulce.
Vegetación| Tipos de vegetación y usos de suelo.

##### 1.2.1.1 Acceso a agua

Posibilidad de extraer agua subterránea, considerando la profundidad en metros, a partir de la superficie del terreno, a la cual se encuentra el espejo de agua (acuífero).

**Insumos**

Capa | Nivel estático
-- | --
Fuente | Profundidad del nivel estático FAO-SEDER con datos de SARH (1988)
Año | 2016
Escala | Sin dato
Unidades | Metros

**Parámetros de la función de valor**

![](./recursos/pesca/fi_fv_acuasal_bio_nivel_estatico.png)

<div style="page-break-after: always;"></div>

**Función de valor de acceso de agua**

![](./recursos/pesca/mapa_fv_acuasal_bio_nivel_estatico.png)

##### 1.2.1.2 Salinidad

Profundidad a partir de la cual se puede encontrar agua salobre o salada, considerando el ancho en metros de la columna de agua dulce.

**Insumos**

Capa | Curvas de espesor de agua dulce
-- | --
Fuente | Mapa con las curvas de espesor de agua dulce FAO-SEDER con datos de SARH (1988)
Año | 2016
Escala | Sin dato
Unidades | Metros

<div style="page-break-after: always;"></div>

**Parámetros de la función de valor**

![](./recursos/pesca/fi_fv_acuasal_bio_espesor_agua_salada.png)

**Función de valor de salinidad**

![](./recursos/pesca/mapa_fv_acuasal_bio_espesor_agua_salada.png)

##### 1.2.1.3 Vegetación

Tipos de vegetación y usos de suelo.

<div style="page-break-after: always;"></div>

**Insumos**

Campo | Uso del suelo y vegetación
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI y [2] Mapa de uso del suelo y vegetación de la zona costera asociada a los manglares, Región Península de Yucatán CONABIO
Año | [1] 2017; [2] 2021
Campo | [1] descripcio; [2] Descrip
Escala | [1] 1:250,000; [2] 1:50,000
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Acuícola | Muy alta | 1.00
11 | Sin vegetación | Muy alta | 1.00
3 | Agricultura de temporal | Alta | 0.75
8 | Pastizal | Alta | 0.75
2 | Agricultura de riego | Moderada | 0.50
5 | Bosque cultivado/Palmar inducido | Moderada | 0.50
9 | Selva baja | Moderada | 0.50
12 | Sabana | Moderada | 0.50
7 | Manglar | Baja | 0.25
10 | Selva mediana | Baja | 0.25
13 | Tular | Baja | 0.25
4 | Asentamiento humano | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
14 | Vegetación de duna costera | Nula | 0.00
15 | Vegetación de petén | Nula | 0.00
16 | Vegetación halófila hidrófila | Nula | 0.00
17 | ND | Nula | 0.00

<div style="page-break-after: always;"></div>

**Función de valor de vegetación**

![](./recursos/pesca/mapa_fv_acuasal_bio_cobertura_usv_svi_16cats.png)

#### 1.2.2 Infraestructura

Criterio|Definición
--|--
Electricidad| Distancia a red de transmisión eléctrica.
Vías de comunicación| Distancia a caminos y carreteras para el transporte de insumos y productos.

##### 1.2.2.1 Electricidad

Distancia a red de transmisión eléctrica.

**Insumos**

Capa | Distancia líneas de transmisión de energía   eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros

<div style="page-break-after: always;"></div>

**Parámetros de la función de valor**

![](./recursos/pesca/fi_fv_acuasal_infra_d_lineas_electricas.png)

**Función de valor de electricidad**

![](./recursos/pesca/mapa_fv_acuasal_infra_d_lineas_electricas.png)

##### 1.2.2.2 Vías de comunicación

Distancia a caminos y carreteras para el transporte de insumos y productos.

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](./recursos/pesca/fi_fv_acuasal_infra_d_carreteras_caminos.png)

**Función de valor de vías de comunicación**

![](./recursos/pesca/mapa_fv_acuasal_infra_d_carreteras_caminos.png)

<div style="page-break-after: always;"></div>

#### 1.2.3 Socioeconómicos

Criterio|Definición
--|--
Tenencia| Tenencia de la tierra.

##### 1.2.3.1 Tenencia

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

<div style="page-break-after: always;"></div>

**Función de valor de tenencia**

![](./recursos/pesca/mapa_fv_acuasal_socio_tenencia_tierra.png)

### 1.3 Mapa de aptitud

#### 1.3.1 Zonas de exclusión

**Insumos**

Campo | Uso del suelo y vegetación
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI y [2] Mapa de uso del suelo y vegetación de la zona costera asociada a los manglares, Región Península de Yucatán CONABIO
Año | [1] 2017; [2] 2021
Campo | [1] descripcio; [2] Descrip
Escala | [1] 1:250,000; [2] 1:50,000
Unidades | Adimensional

**Tabla de exclusión del subsector de acuacultura salobre**

ID | Categoría
-- | --
4 | Asentamiento humano
6 | Cuerpo de agua
14 | Vegetación de duna costera
15 | Vegetación de petén
16 | Vegetación halófila hidrófila
17 | ND

![](./recursos/pesca/mapa_ex_acuasal.png)

<div style="page-break-after: always;"></div>

#### 1.3.2 Mapa de aptitud de acuacultura salobre

![](./recursos/pesca/mapa_aptitud_acuasal.png)

**Pesos globales de los atributos ambientales de acuacultura salobre**

Criterio | Peso
-- | --
Electricidad | 0.394
Acceso a agua | 0.320
Salinidad | 0.104
Tenencia | 0.100
Vías de comunicación | 0.056
Vegetación | 0.027

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del estado
-- | --: | --:
Muy alta | 13512.9 | 34
Alta | 18708.4 | 47
Moderada | 4361.9 | 11
Baja | 979.2 | 2
Muy baja | 351.7 | 1
Nula | 1622.4 | 4

#### 1.3.3 Sensibilidad de atributos ambientales del sector acuacultura salobre

![](./recursos/pesca/fi_analisis_sensibilidad_acuacultura_salobre.png)

## 2. Acuacultura dulce

Acuacultura de especies de agua dulce.

<div style="page-break-after: always;"></div>

### 2.1 Modelo de decisión

![](./recursos/pesca/fi_acuacultura_dulce.png)

### 2.2 Criterios

#### 2.2.1 Biofísicos

Criterio|Definición
--|--
Acceso a agua| Posibilidad de extraer agua subterránea, considerando la profundidad en metros, a partir de la superficie del terreno, a la cual se encuentra el espejo de agua (acuífero).
Salinidad| Profundidad a partir de la cual se puede encontrar agua salobre o salada, considerando el ancho en metros de la columna de agua dulce.
Vegetación| Tipos de vegetación y usos de suelo.

##### 2.2.1.1 Acceso a agua

Posibilidad de extraer agua subterránea, considerando la profundidad en metros, a partir de la superficie del terreno, a la cual se encuentra el espejo de agua (acuífero).

**Insumos**

Capa | Nivel estático
-- | --
Fuente | Profundidad del nivel estático FAO-SEDER con datos de SARH (1988)
Año | 2016
Escala | Sin dato
Unidades | Metros

<div style="page-break-after: always;"></div>

**Parámetros de la función de valor**

![](./recursos/pesca/fi_fv_acuadul_bio_nivel_estatico.png)

**Función de valor de acceso a agua**

![](./recursos/pesca/mapa_fv_acuadul_bio_nivel_estatico.png)

##### 2.2.1.2 Salinidad

Profundidad a partir de la cual se puede encontrar agua salobre o salada, considerando el ancho en metros de la columna de agua dulce.

**Insumos**

Capa | Curvas de espesor de agua dulce
-- | --
Fuente | Mapa con las curvas de espesor de agua dulce FAO-SEDER con datos de SARH (1988)
Año | 2016
Escala | Sin dato
Unidades | Metros

**Parámetros de la función de valor**

![](./recursos/pesca/fi_fv_acuadul_bio_espesor_agua_dulce.png)

**Función de valor de salinidad**

![](./recursos/pesca/mapa_fv_acuadul_bio_espesor_agua_dulce.png)

##### 2.2.1.3 Vegetación

Tipos de vegetación y usos de suelo.

**Insumos**

Campo | Uso del suelo y vegetación
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI y [2] Mapa de uso del suelo y vegetación de la zona costera asociada a los manglares, Región Península de Yucatán CONABIO
Año | [1] 2017; [2] 2021
Campo | [1] descripcio; [2] Descrip
Escala | [1] 1:250,000; [2] 1:50,000
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Acuícola | Muy alta | 1.00
11 | Sin vegetación | Muy alta | 1.00
3 | Agricultura de temporal | Alta | 0.75
8 | Pastizal | Alta | 0.75
2 | Agricultura de riego | Moderada | 0.50
5 | Bosque cultivado/Palmar inducido | Moderada | 0.50
9 | Selva baja | Moderada | 0.50
12 | Sabana | Moderada | 0.50
7 | Manglar | Baja | 0.25
10 | Selva mediana | Baja | 0.25
13 | Tular | Baja | 0.25
4 | Asentamiento humano | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
14 | Vegetación de duna costera | Nula | 0.00
15 | Vegetación de petén | Nula | 0.00
16 | Vegetación halófila hidrófila | Nula | 0.00
17 | ND | Nula | 0.00

<div style="page-break-after: always;"></div>

**Función de valor de vegetación**

![](./recursos/pesca/mapa_fv_acuadul_bio_cobertura_usv_svi_16cats.png)

#### 2.2.2 Infraestructura

Criterio|Definición
--|--
Electricidad| Distancia a red de transmisión eléctrica.
Vías de comunicación| Distancia a caminos y carreteras para el transporte de insumos y productos.

##### 2.2.2.1 Electricidad

Distancia a red de transmisión eléctrica.

**Insumos**

Capa | Distancia líneas de transmisión de energía   eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros

<div style="page-break-after: always;"></div>

**Parámetros de la función de valor**

![](./recursos/pesca/fi_fv_acuadul_infra_d_lineas_electricas.png)

**Función de valor de electricidad**

![](./recursos/pesca/mapa_fv_acuadul_infra_d_lineas_electricas.png)

##### 2.2.2.2 Vías de comunicación

Distancia a caminos y carreteras para el transporte de insumos y productos.

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](./recursos/pesca/fi_fv_acuasal_infra_d_carreteras_caminos.png)

**Función de valor de vías de comunicación**

![](./recursos/pesca/mapa_fv_acuasal_infra_d_carreteras_caminos.png)

<div style="page-break-after: always;"></div>

#### 2.2.3 Socioeconómicos

Criterio|Definición
--|--
Tenencia| Tenencia de la tierra.

##### 2.2.3.1 Tenencia

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

<div style="page-break-after: always;"></div>

**Función de valor de tenencia**

![](./recursos/pesca/mapa_fv_acuadul_socio_tenencia_tierra.png)

### 2.3 Mapa de aptitud

#### 2.3.1 Zonas de exclusión

**Insumos**

Campo | Uso del suelo y vegetación
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI y [2] Mapa de uso del suelo y vegetación de la zona costera asociada a los manglares, Región Península de Yucatán CONABIO
Año | [1] 2017; [2] 2021
Campo | [1] descripcio; [2] Descrip
Escala | [1] 1:250,000; [2] 1:50,000
Unidades | Adimensional

**Tabla de exclusión del subsector de acuacultura dulce**

ID | Categoría
-- | --
4 | Asentamiento humano
6 | Cuerpo de agua
14 | Vegetación de duna costera
15 | Vegetación de petén
16 | Vegetación halófila hidrófila
17 | ND

![](./recursos/pesca/mapa_ex_acuadul.png)

<div style="page-break-after: always;"></div>

#### 2.3.2 Mapa de aptitud de acuacultura dulce

![](./recursos/pesca/mapa_aptitud_acuadul.png)

**Pesos globales de los atributos ambientales de acuacultura dulce**

Criterio | Peso
-- | --
Electricidad | 0.394
Acceso a agua | 0.320
Salinidad | 0.104
Tenencia | 0.100
Vías de comunicación | 0.056
Vegetación | 0.027

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del estado
-- | --: | --:
Muy alta | 18877.9 | 48
Alta | 12582.7 | 32
Moderada | 4487.8 | 11
Baja | 1443.6 | 4
Muy baja | 522.1 | 1
Nula | 1622.4 | 4

#### 2.3.3 Sensibilidad de atributos ambientales del sector acuacultura dulce

![](./recursos/pesca/fi_analisis_sensibilidad_acuacultura_dulce.png)
