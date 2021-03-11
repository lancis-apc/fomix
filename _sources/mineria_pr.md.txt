# Minería-En proceso de actualización

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

Aumentar la apertura de bancos de materiales para cumplir con la demanda de productos químicos, de alimentación, así como de insumos en la construcción, en particular de desarrollos inmobiliarios, caminos y carreteras, que están en aumento por el crecimiento poblacional y la llegada de proyectos como el Tren Maya.

[Lista de participantes]()

### 1.1 Modelo de decisión

![](/recursos/mineria/fi_mineria.png)

Los participantes decidieron que se hiciera la distinción entre la minería de rocas, arenas y arcillas, con base en los tipos de suelo en los que es más viable desarrollar cada tipo de minería.
Asimismo, de acuerdo con la técnica de explotación de rocas, los participantes definieron dos funciones de valor para el atributo Nivel freático con el objeto de distinguir entre los sitios propicios para la extracción en seco y en húmedo. En el caso de la minería de arenas y arcillas únicamente se hace la extracción en seco.

### 1.2 Tipos

#### 1.2.1 Minería de arcillas



##### 1.2.1.1 Biofísicos

Criterio|Definición
--|--
Nivel freático| Distancia al manto acuífero medido por el nivel piezométrico.
Tipo de suelo| Edafología.
Tipo de cobertura| Tipos de vegetación y usos de suelo.

###### 1.2.1.1.1 Nivel freático

Distancia al manto acuífero medido por el nivel piezométrico.

###### 1.2.1.1.2 Tipo de suelo

Edafología.

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
7 | Luvisol | Muy alta | 1.00
8 | Nitosol | Muy alta | 1.00
2 | Cambisol | Baja | 0.25
6 | Leptosol | Baja | 0.25
10 | Regosol | Baja | 0.25
12 | Vertisol | Baja | 0.25
1 | Arenosol | Nula | 0.00
3 | Chernozem | Nula | 0.00
4 | Gleysol | Nula | 0.00
5 | Histosol | Nula | 0.00
9 | Phaeozem | Nula | 0.00
11 | Solonchak | Nula | 0.00
13 | No aplica | Nula | 0.00

###### 1.2.1.1.3 Tipo de Cobertura

Tipos de vegetación y usos de suelo.

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
11 | Sin vegetación | Muy alta | 1.00
2 | Agricultura de riego | Alta | 0.75
3 | Agricultura de temporal | Alta | 0.75
8 | Pastizal | Alta | 0.75
9 | Selva baja | Alta | 0.75
14 | Vegetación de duna costera | Alta | 0.75
5 | Bosque cultivado/Palmar inducido | Moderada | 0.50
10 | Selva mediana | Moderada | 0.50
12 | Sabana | Baja | 0.25
1 | Acuícola | Nula | 0.00
4 | Asentamiento humano | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
7 | Manglar | Nula | 0.00
13 | Tular | Nula | 0.00
15 | Vegetación de petén | Nula | 0.00
16 | Vegetación halófila hidrófila | Nula | 0.00
17 | ND | Nula | 0.00

##### 1.2.1.2 Infraestructura

Criterio|Definición
--|--
Caminos| Distancia a caminos y carreteras para transporte de los productos.
Electricidad| Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.
Minas| Distancia a sitios de explotación de yacimientos minerales

###### 1.2.1.2.1 Caminos

Distancia a caminos y carreteras para transporte de los productos.

###### 1.2.1.2.2 Electricidad

Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.

###### 1.2.1.2.3 Minas

Distancia a sitios de explotación de yacimientos minerales.

##### 1.2.1.3 Socioeconómicos

Criterio|Definición
--|--
Localidades| Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.
Oportunidades| Proyectos de construcción y ampliación de vías de comunicación.

###### 1.2.1.3.1 Localidades

Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.

###### 1.2.1.3.2 Oportunidades

Proyectos de construcción y ampliación de vías de comunicación.

#### 1.2.2 Minería de arenas

##### 1.2.2.1 Biofísicos

Criterio|Definición
--|--
Nivel freático| Distancia al manto acuífero medido por el nivel piezométrico.
Tipo de suelo| Edafología.
Tipo de cobertura| Tipos de vegetación y usos de suelo.

###### 1.2.2.1.1 Nivel freático

Distancia al manto acuífero medido por el nivel piezométrico.

###### 1.2.2.1.2 Tipo de suelo

Edafología.

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Arenosol | Muy alta | 1.00
10 | Regosol | Moderada | 0.50
11 | Solonchak | Baja | 0.25
2 | Cambisol | Nula | 0.00
3 | Chernozem | Nula | 0.00
4 | Gleysol | Nula | 0.00
5 | Histosol | Nula | 0.00
6 | Leptosol | Nula | 0.00
7 | Luvisol | Nula | 0.00
8 | Nitosol | Nula | 0.00
9 | Phaeozem | Nula | 0.00
12 | Vertisol | Nula | 0.00
13 | No aplica | Nula | 0.00

###### 1.2.2.1.3 Tipo de Cobertura

Tipos de vegetación y usos de suelo.

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
11 | Sin vegetación | Muy alta | 1.00
2 | Agricultura de riego | Alta | 0.75
3 | Agricultura de temporal | Alta | 0.75
8 | Pastizal | Alta | 0.75
9 | Selva baja | Alta | 0.75
14 | Vegetación de duna costera | Alta | 0.75
5 | Bosque cultivado/Palmar inducido | Moderada | 0.50
10 | Selva mediana | Moderada | 0.50
12 | Sabana | Baja | 0.25
1 | Acuícola | Nula | 0.00
4 | Asentamiento humano | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
7 | Manglar | Nula | 0.00
13 | Tular | Nula | 0.00
15 | Vegetación de petén | Nula | 0.00
16 | Vegetación halófila hidrófila | Nula | 0.00
17 | ND | Nula | 0.00

##### 1.2.2.2 Infraestructura

Criterio|Definición
--|--
Caminos| Distancia a caminos y carreteras para transporte de los productos.
Electricidad| Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.
Minas| Distancia a sitios de explotación de yacimientos minerales

###### 1.2.2.2.1 Caminos

Distancia a caminos y carreteras para transporte de los productos.

###### 1.2.2.2.2 Electricidad

Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.

###### 1.2.2.2.3 Minas

Distancia a sitios de explotación de yacimientos minerales.

##### 1.2.2.3 Socioeconómicos

Criterio|Definición
--|--
Localidades| Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.
Oportunidades| Proyectos de construcción y ampliación de vías de comunicación.

###### 1.2.2.3.1 Localidades

Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.

###### 1.2.2.3.2 Oportunidades

Proyectos de construcción y ampliación de vías de comunicación.

#### 1.2.3 Minería de rocas con extracción en seco



##### 1.2.3.1 Biofísicos

Criterio|Definición
--|--
Nivel freático| Distancia al manto acuífero medido por el nivel piezométrico.
Tipo de suelo| Edafología.
Tipo de cobertura| Tipos de vegetación y usos de suelo.

###### 1.2.3.1.1 Nivel freático

Distancia al manto acuífero medido por el nivel piezométrico.

###### 1.2.3.1.2 Tipo de suelo

Edafología.

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
6 | Leptosol | Muy alta | 1.00
2 | Cambisol | Alta | 0.75
10 | Regosol | Moderada | 0.50
1 | Arenosol | Baja | 0.25
3 | Chernozem | Baja | 0.25
7 | Luvisol | Baja | 0.25
8 | Nitosol | Baja | 0.25
9 | Phaeozem | Baja | 0.25
12 | Vertisol | Baja | 0.25
4 | Gleysol | Nula | 0.00
5 | Histosol | Nula | 0.00
11 | Solonchak | Nula | 0.00
13 | No aplica | Nula | 0.00

###### 1.2.3.1.3 Tipo de Cobertura

Tipos de vegetación y usos de suelo.

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
11 | Sin vegetación | Muy alta | 1.00
2 | Agricultura de riego | Alta | 0.75
3 | Agricultura de temporal | Alta | 0.75
8 | Pastizal | Alta | 0.75
9 | Selva baja | Alta | 0.75
14 | Vegetación de duna costera | Alta | 0.75
5 | Bosque cultivado/Palmar inducido | Moderada | 0.50
10 | Selva mediana | Moderada | 0.50
12 | Sabana | Baja | 0.25
1 | Acuícola | Nula | 0.00
4 | Asentamiento humano | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
7 | Manglar | Nula | 0.00
13 | Tular | Nula | 0.00
15 | Vegetación de petén | Nula | 0.00
16 | Vegetación halófila hidrófila | Nula | 0.00
17 | ND | Nula | 0.00

##### 1.2.3.2 Infraestructura

Criterio|Definición
--|--
Caminos| Distancia a caminos y carreteras para transporte de los productos.
Electricidad| Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.
Minas| Distancia a sitios de explotación de yacimientos minerales

###### 1.2.3.2.1 Caminos

Distancia a caminos y carreteras para transporte de los productos.

###### 1.2.3.2.2 Electricidad

Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.

###### 1.2.3.2.3 Minas

Distancia a sitios de explotación de yacimientos minerales.

##### 1.2.3.3 Socioeconómicos

Criterio|Definición
--|--
Localidades| Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.
Oportunidades| Proyectos de construcción y ampliación de vías de comunicación.

###### 1.2.3.3.1 Localidades

Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.

###### 1.2.3.3.2 Oportunidades

Proyectos de construcción y ampliación de vías de comunicación.

#### 1.2.4 Minería de rocas con extracción en húmedo



##### 1.2.4.1 Biofísicos

Criterio|Definición
--|--
Nivel freático| Distancia al manto acuífero medido por el nivel piezométrico.
Tipo de suelo| Edafología.
Tipo de cobertura| Tipos de vegetación y usos de suelo.

###### 1.2.4.1.1 Nivel freático

Distancia al manto acuífero medido por el nivel piezométrico.

###### 1.2.4.1.2 Tipo de suelo

Edafología.

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
6 | Leptosol | Muy alta | 1.00
2 | Cambisol | Alta | 0.75
10 | Regosol | Moderada | 0.50
1 | Arenosol | Baja | 0.25
3 | Chernozem | Baja | 0.25
7 | Luvisol | Baja | 0.25
8 | Nitosol | Baja | 0.25
9 | Phaeozem | Baja | 0.25
12 | Vertisol | Baja | 0.25
4 | Gleysol | Nula | 0.00
5 | Histosol | Nula | 0.00
11 | Solonchak | Nula | 0.00
13 | No aplica | Nula | 0.00

###### 1.2.4.1.3 Tipo de Cobertura

Tipos de vegetación y usos de suelo.

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
11 | Sin vegetación | Muy alta | 1.00
2 | Agricultura de riego | Alta | 0.75
3 | Agricultura de temporal | Alta | 0.75
8 | Pastizal | Alta | 0.75
9 | Selva baja | Alta | 0.75
14 | Vegetación de duna costera | Alta | 0.75
5 | Bosque cultivado/Palmar inducido | Moderada | 0.50
10 | Selva mediana | Moderada | 0.50
12 | Sabana | Baja | 0.25
1 | Acuícola | Nula | 0.00
4 | Asentamiento humano | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
7 | Manglar | Nula | 0.00
13 | Tular | Nula | 0.00
15 | Vegetación de petén | Nula | 0.00
16 | Vegetación halófila hidrófila | Nula | 0.00
17 | ND | Nula | 0.00

##### 1.2.4.2 Infraestructura

Criterio|Definición
--|--
Caminos| Distancia a caminos y carreteras para transporte de los productos.
Electricidad| Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.
Minas| Distancia a sitios de explotación de yacimientos minerales

###### 1.2.4.2.1 Caminos

Distancia a caminos y carreteras para transporte de los productos.

###### 1.2.4.2.2 Electricidad

Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.

###### 1.2.4.2.3 Minas

Distancia a sitios de explotación de yacimientos minerales.

##### 1.2.4.3 Socioeconómicos

Criterio|Definición
--|--
Localidades| Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.
Oportunidades| Proyectos de construcción y ampliación de vías de comunicación.

###### 1.2.4.3.1 Localidades

Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.

###### 1.2.4.3.2 Oportunidades

Proyectos de construcción y ampliación de vías de comunicación.



<!--


### 1.3 Mapa de aptitud

#### 1.3.1 Mapa de aptitud de fuente hidrocarburos líquidos

##### 1.3.1.1 Zonas de aprovechamiento actual de hidrocarburos líquidos

**Insumos**

Capa | Poliducto Progreso - Mérida y centrales eléctricas de combustóleo
-- | --
Fuente | [1] Infraestructura Nacional de Almacenamiento y Transporte por Ducto de Petrolíferos y [2] Mapas de Infraestructura Energética y Recursos Renovables SENER
Año | [1] ?; [2] 2016
Escala | [1] ?; [2] Sin dato
Unidades | Adimensional

![](/recursos/energia/mapa_aprov_actual_hidrocarburos.png)

##### 1.3.1.2 Zonas de exclusión actual de hidrocarburos líquidos

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del sector energía de fuente hidrocarburos líquidos**

ID | Cobertura
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
7 | Manglar
13 | Tular
14 | Vegetación de duna costera
16 | Vegetación halófila hidrófila

![](/recursos/energia/mapa_exclusion.png)

##### 1.3.1.3 Mapa de aptitud de energía de fuente hidrocarburos líquidos

![](/recursos/energia/mapa_aptitud_hidrocarburos.png)

#### 1.3.2 Mapa de aptitud de fuente gas natural

##### 1.3.2.1 Zonas de aprovechamiento actual de gas natural

**Insumos**

Capa | [1] Centrales eléctricas de gas; [2] Gasoducto
-- | --
Fuente | [1] Mapas de Infraestructura Energética y Recursos Renovables SENER; [2] Gasoductos GeoComunes con datos de CRE, SEMARNAT, ASEA y CFE
Año | [1] 2016; [2] 2020
Escala | Sin dato
Unidades | Adimensional

![](/recursos/energia/mapa_aprov_actual_gas.png)

##### 1.3.2.2 Zonas de exclusión actual de gas natural

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del sector energía de fuente gas natural**

ID | Cobertura
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
7 | Manglar
13 | Tular
14 | Vegetación de duna costera
16 | Vegetación halófila hidrófila

![](/recursos/energia/mapa_exclusion.png)

##### 1.3.2.3 Mapa de aptitud de energía de fuente gas natural

![](/recursos/energia/mapa_aptitud_gas.png)

#### 1.3.3 Mapa de aptitud de energía solar

##### 1.3.3.1 Zonas de aprovechamiento actual de energía solar

**Insumos**

Capa | Parques solares
-- | --
Fuente | Parques solares en México GeoComunes con datos de coordenadas en MIAs
Año | 2020
Escala | Sin dato
Unidades | Adimensional

![](/recursos/energia/mapa_aprov_actual_solar.png)

##### 1.3.3.2 Zonas de exclusión actual de energía solar

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del sector energía de fuente solar**

ID | Cobertura
-- | --
1 | Acuícola
6 | Cuerpo de agua
7 | Manglar
13 | Tular
14 | Vegetación de duna costera
15 | Vegetación de petén
16 | Vegetación halófila hidrófila

![](/recursos/energia/mapa_exclusion_solar.png)

##### 1.3.3.3 Mapa de aptitud de energía solar

![](/recursos/energia/mapa_aptitud_solar.png)

#### 1.3.4 Mapa de aptitud de energía eólica

##### 1.3.4.1 Zonas de aprovechamiento actual de energía eólica

**Insumos**

Capa | Parques eólicos
-- | --
Fuente | Parques eólicos en México GeoComunes con datos de coordenadas en MIAs
Año | 2020
Escala | Sin dato
Unidades | Adimensional

![](/recursos/energia/mapa_aprov_actual_eolica.png)

##### 1.3.4.2 Zonas de exclusión actual de energía eólica

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del sector energía de fuente energía eólica**

ID | Cobertura
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
7 | Manglar
13 | Tular
14 | Vegetación de duna costera
16 | Vegetación halófila hidrófila

![](/recursos/energia/mapa_exclusion.png)

##### 1.3.4.3 Mapa de aptitud de energía eólica

![](/recursos/energia/mapa_aptitud_eolica.png)

#### 1.3.5 Mapa de aptitud de energía de fuente biomasa

##### 1.3.5.1 Zonas de aprovechamiento actual de energía fuente biomasa

**Insumos**

Capa | Granjas porcinas
-- | --
Fuente | Granjas porcinas y avícolas en la Península de Yucatán GeoComunes con datos de SAGARPA SIAP
Año | 2019
Escala | Sin dato
Unidades | Adimensional

![](/recursos/energia/mapa_aprov_actual_biomasa.png)

##### 1.3.5.2 Zonas de exclusión actual de energía fuente biomasa

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del sector energía de fuente biomasa**

ID | Cobertura
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
7 | Manglar
13 | Tular
14 | Vegetación de duna costera
16 | Vegetación halófila hidrófila

![](/recursos/energia/mapa_exclusion.png)

##### 1.3.5.3 Mapa de aptitud de energía de fuente biomasa

![](/recursos/energia/mapa_aptitud_biomasa.png)

#### 1.3.6 Zona de aprovechamiento actual del sector energía industrial

![](/recursos/energia/mapa_aprov_energia.png)

#### 1.3.7 Zonas de exclusión

**Tabla de exclusión general del sector energía industrial**

ID | Cobertura
-- | --
4 | Asentamiento humano
6 | Cuerpo de agua
7 | Manglar
13 | Tular
15 | Vegetación de petén
16 | Vegetación halófila hidrófila

![](/recursos/energia/mapa_exclusion_energia.png)

#### 1.3.8 Mapa de aptitud de energía industrial

![](/recursos/energia/mapa_aptitud_energia.png)

**Pesos globales de los atributos del sector energía industrial**

Fuente de energía | Criterio | Peso
-- | -- | --
Gas natural | Distancia del gasoducto a las zonas industriales | 0.274
Hidrocarburos líquidos | Distancia a carreteras | 0.256
Hidrocarburos líquidos | Distancia a localidades | 0.138
Solar | Distancia a red eléctrica | 0.091
Gas natural | Distancia de localidades al gasoducto | 0.065
Eólica | Velocidad a 120 m de altura | 0.057
Biomasa | Distancia a sitios de disposición final | 0.026
Eólica | Distancia a la red eléctrica | 0.020
Solar | Tipo de cobertura | 0.018
Solar | Tenencia de la tierra | 0.018
Eólica | Tipo de cobertura | 0.012
Biomasa | Distancia a granjas porcícolas | 0.010
Eólica | Distancia a localidades | 0.004
Eólica | Distancia a carreteras | 0.004
Biomasa | Residuos agrícolas forestales | 0.002

**Área por categoría de aptitud**

Categoría | Km² | Porcentaje del estado
-- | --: | --:
Muy alta | 617.2 | 2
Alta | 2080.0 | 5
Moderada | 9211.1 | 23
Baja | 17249.7 | 44
Muy baja | 7959.2 | 20
Nula | 2419.4 | 6

#### 1.3.9 Sensibilidad de atributos ambientales del sector energía industrial

![](/recursos/energia/fi_analisis_sensibilidad_energia.png) --->

<!--### Energía comunitaria

Fuentes de energía utilizadas en las comunidades.

Criterio | Definición
-- | --
Biomasa comunitaria | Uso de leña y carbón vegetal como combustible.
Eólica comunitaria | Generación de energía en las comunidades, a través de la energía del viento.
Solar comunitaria | Generación distribuída de energía en las comunidades, a través de la energía solar.

##### Biomasa comunitaria

Uso de leña y carbón vegetal como combustible.

##### Eólica comunitaria

Generación de energía en las comunidades, a través de la energía del viento.

##### Solar comunitaria

Generación distribuída de energía en las comunidades, a través de la energía solar.


<!-- .. csv-table::
   :file: recursos/tabla_c_biofisicos_silvopastoril.csv
   :header-rows: 1
   :align: center -->
