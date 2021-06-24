# Forestal-Final
<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

* Incorporar nuevas superficies y productores a la producción forestal maderable y no maderable, de tal manera que represente una  alternativa productiva, y mejorar las capacidades técnicas y financieras de aprovechamiento de las áreas ya destinadas a la producción forestal.
* Fomentar las plantaciones forestales en superficies preferentemente forestales.
* Orientar la producción al aprovechamiento sostenible, que garantice que los ecosistemas se mantengan.
* Minimizar los riesgos del sector forestal.

[Lista de participantes](https://www.dropbox.com/s/0ikq17y6sluhx1d/lista_asistencia%20forestal.pdf?dl=0)

## 1. Aprovechamiento forestal maderable

Aprovechamiento de los recursos forestales constituidos por vegetación leñosa susceptibles de aprovechamiento o uso.

### 1.1 Modelo de decisión

![](./recursos/forestal/maderable.png)

### 1.2 Criterios

#### 1.2.1 Biofísicos

Criterio | Definición
-- | --
Tipo de vegetación | Tipos de vegetación y usos de suelo.
Edafología | Tipo de suelo.
Clima | Tipo de clima.
Factores de riesgo | Elementos del ambiente biofísico que ponen en riesgo las actividades de aprovechamiento forestal maderable (zonas con plagas y zonas con incidencia de incendios).

<div style="page-break-after: always;"></div>

##### 1.2.1.1 Tipo de vegetación

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
5 | Bosque cultivado | Máxima | 1.00
11 | Selva mediana | Máxima | 1.00
2 | Agricultura de riego | Moderada | 0.70
9 | Pastizal | Moderada | 0.70
10 | Selva baja | Moderada | 0.70
3 | Agricultura de temporal | Baja | 0.56
8 | Palmar inducido | Baja | 0.56
13 | Sabana | Muy baja | 0.33
1 | Acuícola | Nula | 0.00
4 | Asentamiento humano | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
7 | Manglar | Nula | 0.00
12 | Sin vegetación | Nula | 0.00
14 | Tular | Nula | 0.00
15 | Vegetación de duna costera | Nula | 0.00
16 | Vegetación de petén | Nula | 0.00
17 | Vegetación halófila hidrófila | Nula | 0.00
18 | NA | Nula | 0.00

<div style="page-break-after: always;"></div>

**Función de valor de tipo de vegetación**

![](./recursos/forestal/mapa_fv_for_mad_bio_usv_17cats.png)

##### 1.2.1.2 Edafología

Tipo de suelo.

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
7 | Luvisol | Máxima | 1.00
8 | Nitosol | Máxima | 1.00
3 | Chernozem | Alta | 0.80
5 | Histosol | Alta | 0.80
2 | Cambisol | Moderada | 0.70
6 | Leptosol | Moderada | 0.70
9 | Phaeozem | Moderada | 0.70
10 | Regosol | Moderada | 0.70
4 | Gleysol | Baja | 0.56
12 | Vertisol | Baja | 0.56
1 | Arenosol | Muy baja | 0.33
11 | Solonchak | Muy baja | 0.33
13 | No aplica | Nula | 0.00

**Función de valor de edafología**

![](./recursos/forestal/mapa_fv_for_mad_bio_t_suelo.png)

##### 1.2.1.3 Clima

Tipo de clima.

**Insumos**

Capa | Climas
-- | --
Fuente | Climas CONAGUA
Año | 2001
Campo | Clima_tipo
Escala | 1:1,000,000
Unidades | Adimensional

**Parámetros de la función de valor**

Id | Categoría | Importancia | FV
-- | -- | -- | --
3 | Aw2(x') | Máxima | 1.00
1 | Aw1 | Muy alta | 0.87
2 | Aw1(x') | Muy alta | 0.87
4 | Awo | Alta | 0.80
5 | Awo(x') | Alta | 0.80
6 | BS1(h')w | Baja | 0.56
7 | BSo(h')(x') | Muy baja | 0.33
8 | NA | Nula | 0.00

<div style="page-break-after: always;"></div>

**Función de valor de climas**

![](./recursos/forestal/mapa_fv_for_mad_bio_climas.png)

##### 1.2.1.4 Factores de riesgo

Elementos del ambiente biofísico que ponen en riesgo las actividades de aprovechamiento forestal maderable (zonas con plagas y zonas con incidencia de incendios).

**Insumos**

Capa | Riesgos para la actividad forestal
-- | --
Fuente | [1] Mapa de Áreas Prioritarias de Manejo del Fuego CONAFOR y [2) Áreas de atención prioritaria de sanidad forestal. Riesgo de plagas forestales CONAFOR
Año | 2021
Escala | [1] 1:250,000,000 ; [2] Sin dato
Unidades | Adimensional

**Parámetros de la función de valor**

Id | Categoría | Importancia | FV
-- | -- | -- | --
5 | Muy Alta | Máxima | 1.00
4 | Alta | Alta | 0.80
3 | Media | Moderada | 0.70
2 | Baja | Baja | 0.56
1 | Muy Baja | Muy baja | 0.33
6 | NA | Nula | 0.00

**Función de valor de factores de riesgo**

![](./recursos/forestal/mapa_fv_for_mad_bio_incendios.png)

#### 1.2.2 Socioeconómicos

Criterio | Definición
-- | --
Aprovechamiento |  Autorizaciones de aprovechamiento forestal vigentes.
Mercados | Cercanía a las principales localidades en las que se venden los recursos maderables.
Tenencia | Tenencia de la tierra.

##### 1.2.2.1 Aprovechamiento

Autorizaciones de aprovechamiento forestal vigentes.

**Insumos**

Capa | Aprovechamiento de recursos forestales  maderables
-- | --
Fuente | [1] Polígonos de municipios. División política municipal INEGI; [2] Datos   de indicador. Aprovechamientos forestales maderables y no maderables vigentes   en el estado de Yucatán y [3] Conjunto de datos vectoriales de la carta de   Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | [1] 2018; [2] 2021; [3] 2017
Escala | [1] [3] 1:250,000
Unidades | Adimensional

**Parámetros de la función de valor**

Municipio | FV
-- | --
Tekax | 1.00
Tetiz | 0.50
Tzucacab | 0.50
Yaxcabá | 0.50
Cantamayec | 0.25
Chichimilá | 0.25
Cenotillo | 0.25
Tizimín | 0.25
Calotmul | 0.25
Tinum | 0.25
Kaua | 0.25
Muna | 0.25
Halachó | 0.25
Dzitás | 0.25
Santa Elena | 0.25
Kopomá | 0.25
Valladolid | 0.25
Tunkás | 0.25
Maxcanú | 0.25
Peto | 0.25
Chocholá | 0.25
Sotuta | 0.25
Sudzal | 0.25

**Función de valor de aprovechamiento**

![](./recursos/forestal/mapa_fv_mad_socio_aprovechamiento.png)

##### 1.2.2.2 Mercados

Cercanía a las principales localidades en las que se venden los recursos maderables.

**Insumos**

Capa | Distancia a mercados
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI
Año | 2020
Escala | Sin dato
Unidades | Kilómetros

<div style="page-break-after: always;"></div>

**Parámetros de la función de valor**

![](./recursos/forestal/fi_fv_for_mad_socio_d_mercados.png)

**Función de valor de mercados**

![](./recursos/forestal/mapa_fv_for_mad_socio_d_mercados.png)

##### 1.2.2.3 Tenencia

Tenencia de la tierra.

**Insumos**

Capa | Tenencia de la tierra
-- | --
Fuente | [1] Zonas de Tierras Parceladas RAN y [2] Tierra de uso común RAN
Año | 2020
Escala | Sin dato
Unidades | Adimensional

Para este atributo se decidió explorar dos funciones de valor, ya que había dos puntos de vista en el grupo.

Versión a.

Visión de impulsar los proyectos forestales en las comunidades. Los proponentes de esta visión exponen que, aunque es más sencillo ponerse de acuerdo con una o pocas personas, el criterio de la versión b impulsa los beneficios individuales por encima de los colectivos. Por ello, las tierras de uso común deberían ser más importantes debido a que el beneficio es para toda la comunidad.

Da la importancia más alta a las tierras de uso común y las tierras parceladas, ya que en estas áreas están las masas forestales más continuas y la actividad es más redituable, y asigna menor importancia a las zonas no ejidales, las cuales son más pequeñas y fragmentadas.

**Parámetros de la función de valor versión a**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Tierra de uso común | Máxima | 1.00
2 | Zona de tierras parceladas | Alta | 0.80
3 | No ejidal | Baja | 0.56

<div style="page-break-after: always;"></div>

**Función de valor de tenencia versión a**

![](./recursos/forestal/mapa_fv_for_mad_socio_tenencia_tierra.png)

<!--![](./recursos/forestal/.png)--->

Versión b. Visión de facilidad para gestionar los proyectos.

Da mayor importancia a las zonas no ejidales y las ejidales parceladas, ya que en la gestión de los proyectos se trata con una sola persona o un grupo de personas. Se da menor importancia a las tierras ejidales de uso común, debido a que la gestión de un proyecto forestal requeriría un cabildeo más largo y el aval de la asamblea ejidal.

**Parámetros de la función de valor versión b**

ID | Categoría | Importancia | FV
-- | -- | -- | --
3 | No ejidal | Máxima | 1.00
2 | Zona de tierras parceladas | Alta | 0.80
1 | Tierra de uso común | Baja | 0.56

<div style="page-break-after: always;"></div>

**Función de valor de tenencia versión b**

![](./recursos/forestal/mapa_fv_for_mad_socio_tenencia_tierra_v2.png)

<!--!![](./recursos/forestal/.png)--->

#### 1.2.3 Infraestructura

Criterio | Definición
-- | --
Abastecimiento | Cercanía a localidades como centro de acceso a insumos para la actividad forestal.
Centros de almacenamiento | Distancia a centros de almacenamiento y transformación.
Comunicación | Distancia a carreteras, caminos rurales y veredas (red de caminos primarios y secundarios).

##### 1.2.3.1 Abastecimiento

Cercanía a localidades como centro de acceso a insumos para la actividad forestal.

**Insumos**

Capa | Distancia a localidades
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI
Año | 2020
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](./recursos/forestal/fi_fv_mad_infra_infra_d_localidades.png)

**Función de valor de abastecimiento**

![](./recursos/forestal/mapa_fv_for_mad_infra_infra_d_localidades.png)

##### 1.2.3.2 Centros de almacenamiento

Distancia a centros de almacenamiento y transformación.

**Insumos**

Capa | Distancia a centros de almacenamiento
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI y [2] Centros de almacenamiento y transformación de materias   primas forestales CATMPF en Yucatán con información en el Sistema Nacional de   Gestión Forestal SEMARNAT
Año | [1] 2020; [2] 2021
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](./recursos/forestal/fi_fv_mad_infra_d_centros_almacenamiento.png)

<div style="page-break-after: always;"></div>

**Función de valor de centros de almacenamiento**

![](./recursos/forestal/mapa_fv_mad_infra_d_centros_almacenamiento.png)

##### 1.2.3.3 Comunicación

Distancia a carreteras, caminos rurales, veredas (red de caminos primarios y secundarios).

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

<div style="page-break-after: always;"></div>

**Parámetros de la función de valor**

![](./recursos/forestal/fi_fv_for_mad_infra_d_caminos.png)  

**Función de valor de comunicación**

![](./recursos/forestal/mapa_fv_for_mad_infra_d_caminos.png)

### 1.3 Mapa de aptitud

#### 1.3.1 Mapa de aptitud de aprovechamiento forestal maderable versión a

#### 1.3.1.1 Zonas de exclusión de aprovechamiento forestal maderable versión a

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del aprovechamiento forestal maderable**

ID | Categoría
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
7 | Manglar
12 | Sin vegetación
14 | Tular
15 | Vegetación de duna costera
16 | Vegetación de petén
17 | Vegetación halófila hidrófila
18 | NA

![](./recursos/forestal/mapa_exclusion_for_mad_a.png)

<div style="page-break-after: always;"></div>

#### 1.3.1.2 Mapa de aptitud de aprovechamiento forestal maderable versión a

![](./recursos/forestal/mapa_aptitud_for_mad_a.png)

**Pesos globales de los atributos de aprovechamiento forestal maderable versión a**

Criterio | Peso
-- | --
Tipo de vegetación | 0.185
Aprovechamiento | 0.170
Tenencia | 0.167
Tipo de suelo | 0.155
Clima | 0.130
Comunicación | 0.092
Mercados | 0.033
Factores de riesgo | 0.030
Abastecimiento | 0.020
Centro de almacenamiento | 0.018

<div style="page-break-after: always;"></div>

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del   estado
-- | --: | --:
Muy alta | 2587.5 | 7
Alta | 22047.1 | 56
Moderada | 12212.2 | 31
Baja | 318.7 | 1
Muy baja | 82.0 | 0
Nula | 2289.1 | 6

#### 1.3.2 Sensibilidad de atributos ambientales de aprovechamiento forestal maderable versión a

![](./recursos/forestal/fi_analisis_sensibilidad_forestal_maderable_a.png)

#### 1.3.3 Mapa de aptitud de aprovechamiento forestal maderable versión b

#### 1.3.3.1 Zonas de exclusión de aprovechamiento forestal maderable versión b

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del aprovechamiento forestal maderable**

ID | Categoría
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
7 | Manglar
12 | Sin vegetación
14 | Tular
15 | Vegetación de duna costera
16 | Vegetación de petén
17 | Vegetación halófila hidrófila
18 | NA

![](./recursos/forestal/mapa_exclusion_for_mad_b.png)

<div style="page-break-after: always;"></div>

#### 1.3.3.2 Mapa de aptitud de aprovechamiento forestal maderable versión b

![](./recursos/forestal/mapa_aptitud_for_mad_b.png)

**Pesos globales de los atributos de aprovechamiento forestal maderable versión b**

Criterio | Peso
-- | --
Tipo de vegetación | 0.185
Aprovechamiento | 0.170
Tenencia | 0.167
Tipo de suelo | 0.155
Clima | 0.130
Comunicación | 0.092
Mercados | 0.033
Factores de riesgo | 0.030
Abastecimiento | 0.020
Centro de almacenamiento | 0.018

<div style="page-break-after: always;"></div>

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del estado
-- | --: | --:
Muy alta | 1786.0 | 5
Alta | 16892.3 | 43
Moderada | 18044.9 | 46
Baja | 463.4 | 1
Muy baja | 61.0 | 0
Nula | 2289.1 | 6

#### 1.3.4 Sensibilidad de atributos ambientales de aprovechamiento forestal maderable versión b

![](./recursos/forestal/fi_analisis_sensibilidad_forestal_maderable_b.png)

#### 1.3.5 Análisis de semejanzas entre las versiones de los mapas de aptitud

Las dos versiones del mapa de aptitud de aprovechamiento forestal maderable tienen una semejanza del 57%, medido con el índice de Lee-Sallee que compara la superficie (ha) de cada categoría de los dos mapas.

![](./recursos/forestal/fi_tabla_mad1_vs_mad2.png)

Para fines del análisis de conflictos se usará la versión a debido a que la superficie de las categorías de aptitud alta y muy alta es mayor.

## 2. Aprovechamiento forestal no maderable

Aprovechamiento de los recursos constituidos por la parte no leñosa de la vegetación de un ecosistema forestal, y susceptibles de aprovechamiento o uso, incluyendo líquenes, musgos, hongos y resinas, así como los suelos de terrenos forestales y preferentemente forestales.

### 2.1 Modelo de decisión

![](./recursos/forestal/no_maderable.png)
*Se decidió explorar la priorización de los atributos socioeconómicos de dos maneras, ya que había dos puntos de vista en el grupo.

Versión 1. Da la mayor importancia a Aprovechamientos, ya que ahí se sabe que hay recursos y se puede dar la actividad independientemente de la Tenencia, y la menor importancia la tiene la distancia a Mercados.

Versión 2. Da la mayor importancia a Tenencia, ya que este atributo da seguridad legal para poder llevar a cabo un proyecto forestal en el territorio. Seguiría en importancia Mercados, dado que no sería una actividad productiva si no hay el mercado. La menor importancia se asigna a Aprovechamiento, debido a que actualmente no hay tantas autorizaciones de aprovechamiento de recursos no maderables, aunque sí se desarrolla la actividad (por ejemplo, orégano y palma). En este sentido, el estar cercano a una zona donde ya haya proyectos autorizados no garantiza que sea un mejor lugar.

### 2.2 Criterios

#### 2.2.1 Biofísicos

Criterio | Definición
-- | --
Tipo de vegetación | Tipos de vegetación y usos de suelo.
Edafología | Tipo de suelo.
Clima | Tipo de clima.
Factores de riesgo | Elementos del ambiente biofísico que ponen en riesgo las actividades de aprovechamiento forestal no maderable (zonas con plagas y zonas con incidencia de incendios).

<div style="page-break-after: always;"></div>

##### 2.2.1.1 Tipo de vegetación

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
10 | Selva baja | Máxima | 1.00
11 | Selva mediana | Máxima | 1.00
8 | Palmar inducido | Alta | 0.80
2 | Agricultura de riego | Moderada | 0.70
9 | Pastizal | Moderada | 0.70
3 | Agricultura de temporal | Baja | 0.56
15 | Vegetación de duna costera | Baja | 0.56
17 | Vegetación halófila hidrófila | Baja | 0.56
5 | Bosque cultivado | Muy baja | 0.33
7 | Manglar | Muy baja | 0.33
13 | Sabana | Muy baja | 0.33
14 | Tular | Muy baja | 0.33
1 | Acuícola | Nula | 0.00
4 | Asentamiento humano | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
12 | Sin vegetación | Nula | 0.00
16 | Vegetación de petén | Nula | 0.00
18 | NA | Nula | 0.00

<div style="page-break-after: always;"></div>

**Función de valor de tipo de vegetación**

![](./recursos/forestal/mapa_fv_for_nomad_bio_usv_17cats.png)

##### 2.2.1.2 Edafología

Tipo de suelo.

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
7 | Luvisol | Máxima | 1.00
8 | Nitosol | Máxima | 1.00
3 | Chernozem | Alta | 0.80
5 | Histosol | Alta | 0.80
2 | Cambisol | Moderada | 0.70
6 | Leptosol | Moderada | 0.70
9 | Phaeozem | Moderada | 0.70
10 | Regosol | Moderada | 0.70
4 | Gleysol | Baja | 0.56
12 | Vertisol | Baja | 0.56
1 | Arenosol | Muy baja | 0.33
11 | Solonchak | Muy baja | 0.33
13 | No aplica | Nula | 0.00

**Función de valor de edafología**

![](./recursos/forestal/mapa_fv_for_mad_bio_t_suelo.png)

##### 2.2.1.3 Clima

Tipo de clima.

**Insumos**

Capa | Climas
-- | --
Fuente | Climas CONAGUA
Año | 2001
Campo | Clima_tipo
Escala | 1:1,000,000
Unidades | Adimensional

**Parámetros de la función de valor**

Id | Categoría | Importancia | FV
-- | -- | -- | --
3 | Aw2(x') | Máxima | 1.00
1 | Aw1 | Muy alta | 0.87
2 | Aw1(x') | Muy alta | 0.87
4 | Awo | Alta | 0.80
5 | Awo(x') | Alta | 0.80
6 | BS1(h')w | Baja | 0.56
7 | BSo(h')(x') | Muy baja | 0.33
8 | NA | Nula | 0.00

<div style="page-break-after: always;"></div>

**Función de valor de climas**

![](./recursos/forestal/mapa_fv_for_mad_bio_climas.png)

##### 2.2.1.4 Factores de riesgo

Elementos del ambiente biofísico que ponen en riesgo las actividades de aprovechamiento forestal no maderable (zonas con plagas y zonas con incidencia de incendios).

**Insumos**

Capa | Riesgos para la actividad forestal
-- | --
Fuente | [1] Mapa de Áreas Prioritarias de Manejo del Fuego CONAFOR y [2) Áreas de atención prioritaria de sanidad forestal. Riesgo de plagas forestales CONAFOR
Año | 2021
Escala | [1] 1:250,000,000 ; [2] Sin dato
Unidades | Adimensional

**Parámetros de la función de valor**

Id | Categoría | Importancia | FV
-- | -- | -- | --
5 | Muy Alta | Máxima | 1.00
4 | Alta | Alta | 0.80
3 | Media | Moderada | 0.70
2 | Baja | Baja | 0.56
1 | Muy Baja | Muy baja | 0.33
6 | NA | Nula | 0.00

**Función de valor de factores de riesgo**

![](./recursos/forestal/mapa_fv_for_mad_bio_incendios.png)

#### 2.2.2 Socioeconómicos

Criterio | Definición
-- | --
Aprovechamiento |  Autorizaciones de aprovechamiento forestal vigentes.
Mercados | Cercanía a las principales localidades en las que se venden los recursos no maderables.
Tenencia | Tenencia de la tierra.

##### 2.2.2.1 Aprovechamiento

Autorizaciones de aprovechamiento forestal vigentes.

**Insumos**

Capa | Aprovechamiento de recursos forestales no   maderables
-- | --
Fuente | [1] Polígonos de municipios. División política municipal INEGI; [2] Datos   de indicador. Aprovechamientos forestales maderables y no maderables vigentes   en el estado de Yucatán y [3] Conjunto de datos vectoriales de la carta de   Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | [1] 2018; [2] 2021; [3] 2017
Escala | [1] [3] 1:250,000
Unidades | Adimensional

**Parámetros de la función de valor**

Municipio | FV
-- | --
Kinchil | 1.00
Tekax | 0.50
Halachó | 0.25
Tzucacab | 0.25

**Función de valor de aprovechamiento**

![](./recursos/forestal/mapa_fv_nomad_socio_aprovechamiento.png)

##### 2.2.2.2 Mercados

Cercanía a las principales localidades en las que se venden los recursos no maderables.

**Insumos**

Capa | Distancia a mercados
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI
Año | 2020
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](./recursos/forestal/fi_fv_for_mad_socio_d_mercados.png)

<div style="page-break-after: always;"></div>

**Función de valor de mercados**

![](./recursos/forestal/mapa_fv_for_mad_socio_d_mercados.png)

##### 2.2.2.3 Tenencia

Tenencia de la tierra.

**Insumos**

Capa | Tenencia de la tierra
-- | --
Fuente | [1] Zonas de Tierras Parceladas RAN y [2] Tierra de uso común RAN
Año | 2020
Escala | Sin dato
Unidades | Adimensional

Para este atributo se decidió explorar dos funciones de valor, ya que había dos puntos de vista en el grupo.

Versión a. Visión de impulsar los proyectos forestales en las comunidades.

Visión de impulsar los proyectos forestales en las comunidades. Los proponentes de esta visión exponen que, aunque es más sencillo ponerse de acuerdo con una o pocas personas, el criterio de la versión b impulsa los beneficios individuales por encima de los colectivos. Por ello, las tierras de uso común deberían ser más importantes debido que el beneficio es para toda la comunidad.

Da la importancia más alta a las zonas de uso común y tierras ejidales parceladas ya que en estas áreas están las masas forestales más continuas, la actividad es más redituable y asigna menor importancia a las zonas no ejidales, las cuales son más pequeñas y fragmentadas.

**Parámetros de la función de valor versión a**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Tierra de uso común | Máxima | 1.00
2 | Zona de tierras parceladas | Alta | 0.80
3 | No ejidal | Baja | 0.56

**Función de valor de tenencia versión a**

![](./recursos/forestal/mapa_fv_for_nomad_socio_tenencia_tierra.png)

<!--!![](./recursos/forestal/.png)--->

Versión b. Visión de facilidad para gestionar los proyectos.

Da mayor importancia a las zonas no ejidales y las ejidales parceladas, ya que en la gestión de los proyectos se trata con una sola persona o un grupo de personas. Se da menor importancia a las tierras ejidales de uso común, debido a que la gestión de un proyecto forestal requeriría un cabildeo más largo y el aval de la asamblea ejidal.

**Parámetros de la función de valor versión b**

ID | Categoría | Importancia | FV
-- | -- | -- | --
3 | No ejidal | Máxima | 1.00
2 | Zona de tierras parceladas | Alta | 0.80
1 | Tierra de uso común | Baja | 0.56

**Función de valor de tenencia versión b**

![](./recursos/forestal/mapa_fv_for_nomad_socio_tenencia_tierra_v2.png)

<!--!![](./recursos/forestal/.png)--->

#### 2.2.3 Infraestructura

Criterio | Definición
-- | --
Abastecimiento | Cercanía a localidades como centro de acceso a insumos para la actividad forestal.
Centros de almacenamiento | Distancia a centros de almacenamiento y transformación.
Comunicación | Distancia a carreteras, caminos rurales, veredas (red de caminos primarios y secundarios).

##### 2.2.3.1 Abastecimiento

Cercanía a localidades como centro de acceso a insumos para la actividad forestal.

**Insumos**

Capa | Distancia a localidades
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI
Año | 2020
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](./recursos/forestal/fi_fv_mad_infra_infra_d_localidades.png)

**Función de valor de abastecimiento**

![](./recursos/forestal/mapa_fv_for_nomad_infra_infra_d_localidades.png)

##### 2.2.3.2 Centros de almacenamiento

Distancia a centros de almacenamiento y transformación.

**Insumos**

Capa | Distancia a centros de almacenamiento
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI y [2] Centros de almacenamiento y transformación de materias   primas forestales CATMPF en Yucatán con información en el Sistema Nacional de   Gestión Forestal SEMARNAT
Año | [1] 2020; [2] 2021
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](./recursos/forestal/fi_fv_nomad_infra_d_centros_almacenamiento.png)

<div style="page-break-after: always;"></div>

**Función de valor de centros de almacenamiento**

![](./recursos/forestal/mapa_fv_nomad_infra_d_centros_almacenamiento.png)

##### 2.2.3.3 Comunicación

Distancia a carreteras, caminos rurales, veredas (red de caminos primarios y secundarios).

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

<div style="page-break-after: always;"></div>

**Parámetros de la función de valor**

![](./recursos/forestal/fi_fv_for_mad_infra_d_caminos.png)  

**Función de valor de comunicación**

![](./recursos/forestal/mapa_fv_for_mad_infra_d_caminos.png)

### 2.3 Mapa de aptitud

#### 2.3.1 Mapa de aptitud de aprovechamiento forestal no maderable versión 1a

#### 2.3.1.1 Zonas de exclusión de aprovechamiento forestal no maderable versión 1a

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del aprovechamiento forestal no maderable**

ID | Categoría
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
12 | Sin vegetación
16 | Vegetación de petén
18 | NA

![](./recursos/forestal/mapa_exclusion_for_nomad_1a.png)

<div style="page-break-after: always;"></div>

#### 2.3.1.2 Mapa de aptitud de aprovechamiento forestal no maderable versión 1a

![](./recursos/forestal/mapa_aptitud_for_nomad_1a.png)

**Pesos globales de los atributos de aprovechamiento forestal no maderable versión 1a**

Criterio | Peso
-- | --
Tipo de vegetación | 0.255
Tipo de suelo | 0.214
Clima | 0.179
Aprovechamiento | 0.108
Tenencia | 0.081
Comunicación | 0.064
Factores de riesgo | 0.041
Mercados | 0.029
Abastecimiento | 0.014
Centro de almacenamiento | 0.013

<div style="page-break-after: always;"></div>

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del   estado
-- | --: | --:
Muy alta | 10651.7 | 27
Alta | 25710.1 | 65
Moderada | 626.0 | 2
Baja | 1326.8 | 3
Muy baja | 188.2 | 0
Nula | 1033.9 | 3

#### 2.3.2 Sensibilidad de atributos ambientales de aprovechamiento forestal no maderable versión 1a

![](./recursos/forestal/fi_analisis_sensibilidad_forestal_no_maderable_1a.png)

#### 2.3.3 Mapa de aptitud de aprovechamiento forestal no maderable versión 1b

#### 2.3.3.1 Zonas de exclusión de aprovechamiento forestal no maderable versión 1b

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del aprovechamiento forestal no maderable**

ID | Categoría
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
12 | Sin vegetación
16 | Vegetación de petén
18 | NA

![](./recursos/forestal/mapa_exclusion_for_nomad_1b.png)

<div style="page-break-after: always;"></div>

#### 2.3.3.2 Mapa de aptitud de aprovechamiento forestal no maderable versión 1b

![](./recursos/forestal/mapa_aptitud_for_nomad_1b.png)

**Pesos globales de los atributos de aprovechamiento forestal no maderable versión 1b**

Criterio | Peso
-- | --
Tipo de vegetación | 0.255
Tipo de suelo | 0.214
Clima | 0.179
Aprovechamiento | 0.108
Tenencia | 0.081
Comunicación | 0.064
Factores de riesgo | 0.041
Mercados | 0.029
Abastecimiento | 0.014
Centro de almacenamiento | 0.013

<div style="page-break-after: always;"></div>

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del estado
-- | --: | --:
Muy alta | 9279.8 | 23
Alta | 26704.4 | 68
Moderada | 1038.8 | 3
Baja | 1287.2 | 3
Muy baja | 192.4 | 0
Nula | 1033.9 | 3

#### 2.3.4 Sensibilidad de atributos ambientales de aprovechamiento forestal no maderable versión 1b

![](./recursos/forestal/fi_analisis_sensibilidad_forestal_no_maderable_1b.png)

#### 2.3.5 Mapa de aptitud de aprovechamiento forestal no maderable versión 2a

#### 2.3.5.1 Zonas de exclusión de aprovechamiento forestal no maderable versión 2a

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del aprovechamiento forestal no maderable**

ID | Categoría
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
12 | Sin vegetación
16 | Vegetación de petén
18 | NA

![](./recursos/forestal/mapa_exclusion_for_nomad_2a.png)

<div style="page-break-after: always;"></div>

#### 2.3.5.2 Mapa de aptitud de aprovechamiento forestal no maderable versión 2a

![](./recursos/forestal/mapa_aptitud_for_nomad_2a.png)

**Pesos globales de los atributos de aprovechamiento forestal no maderable versión 2a**

Criterio | Peso
-- | --
Tipo de vegetación | 0.255
Tipo de suelo | 0.214
Clima | 0.179
Tenencia | 0.123
Mercados | 0.077
Comunicación | 0.064
Factores de riesgo | 0.041
Aprovechamiento | 0.020
Abastecimiento | 0.014
Centro de almacenamiento | 0.013

<div style="page-break-after: always;"></div>

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del   estado
-- | --: | --:
Muy alta | 17554.3 | 44
Alta | 18961.9 | 48
Moderada | 535.3 | 1
Baja | 1290.2 | 3
Muy baja | 160.9 | 0
Nula | 1033.9 | 3

#### 2.3.6 Sensibilidad de atributos ambientales de aprovechamiento forestal no maderable versión 2a

![](./recursos/forestal/fi_analisis_sensibilidad_forestal_no_maderable_2a.png)

#### 2.3.7 Mapa de aptitud de aprovechamiento forestal no maderable versión 2b

#### 2.3.7.1 Zonas de exclusión de aprovechamiento forestal no maderable versión 2b

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del aprovechamiento forestal no maderable**

ID | Categoría
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
12 | Sin vegetación
16 | Vegetación de petén
18 | NA

![](./recursos/forestal/mapa_exclusion_for_nomad_2b.png)

<div style="page-break-after: always;"></div>

#### 2.3.7.2 Mapa de aptitud de aprovechamiento forestal no maderable versión 2b

![](./recursos/forestal/mapa_aptitud_for_nomad_2b.png)

**Pesos globales de los atributos de aprovechamiento forestal no maderable versión 2b**

Criterio | Peso
-- | --
Tipo de vegetación | 0.255
Tipo de suelo | 0.214
Clima | 0.179
Tenencia | 0.123
Mercados | 0.077
Comunicación | 0.064
Factores de riesgo | 0.041
Aprovechamiento | 0.020
Abastecimiento | 0.014
Centro de almacenamiento | 0.013

<div style="page-break-after: always;"></div>

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del   estado
-- | --: | --:
Muy alta | 13863.2 | 35
Alta | 22367.6 | 57
Moderada | 871.7 | 2
Baja | 1244.1 | 3
Muy baja | 156.1 | 0
Nula | 1033.9 | 3

#### 2.3.8 Sensibilidad de atributos ambientales de aprovechamiento forestal no maderable versión 2b

![](./recursos/forestal/fi_analisis_sensibilidad_forestal_no_maderable_2b.png)

#### 2.3.9 Análisis de semejanzas entre las versiones de los mapas de aptitud

Versión 1 y 2: difieren por los pesos de los atributos socioeconómicos

Versión a y b: difieren por la función de valor del atributo Tenencia

Las versiones 1a y 1b del mapa de aptitud de aprovechamiento forestal no maderable tienen una semejanza de 75%, medido con el índice de Lee-Sallee que compara la superficie (ha) de cada categoría de los dos mapas.

![](./recursos/forestal/fi_tabla_nomad_1a_vs_nomad_1b.png)

Las versiones 2a y 2b del mapa de aptitud de aprovechamiento forestal no maderable tienen una semejanza de 72%, medido con el índice de Lee-Sallee que compara la superficie (ha) de cada categoría de los dos mapas.

![](./recursos/forestal/fi_tabla_nomad_2a_vs_nomad_2b.png)

Las versiones 1a y 2a de mapa de aptitud de aprovechamiento forestal no maderable tienen una semejanza de 79%, medido con el índice de Lee-Sallee que compara la superficie (ha) de cada categoría de los dos mapas.

![](./recursos/forestal/fi_tabla_nomad_1a_vs_nomad_2a.png)

Las versiones 1a y 2b de mapa de aptitud de aprovechamiento forestal no maderable tienen una semejanza de 70%, medido con el índice de Lee-Sallee que compara la superficie (ha) de cada categoría de los dos mapas.

![](./recursos/forestal/fi_tabla_nomad_1a_vs_nomad_2b.png)

Las versiones 1b y 2a del mapa de aptitud de aprovechamiento forestal maderable tienen una semejanza de 71%, medido con el índice de Lee-Sallee que compara la superficie (ha) de cada categoría de los dos mapas.

![](./recursos/forestal/fi_tabla_nomad_1b_vs_nomad_2a.png)

Las versiones 1b y 2b del mapa de aptitud de aprovechamiento forestal maderable tienen una semejanza de 84%, medido con el índice de Lee-Sallee que compara la superficie (ha) de cada categoría de los dos mapas.

![](./recursos/forestal/fi_tabla_nomad_1b_vs_nomad_2b.png)

Para fines del análisis de conflicto se usará la versión 2a debido a que la superficie de las categorías de aptitud alta y muy alta es mayor.

## 3 Mapa de aptitud integrado

_El mapa de aptitud se integró considerando que los subsectores son igualmente importantes y, por lo tanto, tienen el mismo peso._

### 3.1 Modelo de decisión del mapa de aptitud integrado

![](./recursos/forestal/fi_forestal_integrado.png)

#### 3.1.1 Zonas de exclusión

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión**

ID | Categoría
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
12 | Sin vegetación
16 | Vegetación de petén
18 | NA

![](./recursos/forestal/mapa_exclusion_forestal.png)

<div style="page-break-after: always;"></div>

#### 3.1.2 Mapa de aptitud integrado del sector de aprovechamiento forestal

![](./recursos/forestal/mapa_aptitud_forestal.png)

**Pesos globales del mapa de aptitud integrado de aprovechamiento forestal**

Criterio | Peso
-- | --
Tipo de vegetación- No maderable | 0.130
Tipo de suelo- No maderable | 0.105
Tipo de vegetación - Maderable | 0.093
Clima- No maderable | 0.090
Aprovechamiento - Maderable | 0.085
Tenencia - Maderable | 0.084
Tipo de suelo - Maderable | 0.078
Clima - Maderable | 0.065
Tenencia - No maderable | 0.060
Comunicación - Maderable | 0.046
Mercados- No maderable | 0.040
Comunicación- No maderable | 0.030
Factores de riesgo - No maderable | 0.020
Mercados - Maderable | 0.017
Factores de riesgo; - Maderable | 0.015
Abastecimiento - Maderable | 0.010
Aprovechamiento- No maderable | 0.010
Centros de almacenamiento -   Maderable | 0.009
Abastecimiento- No maderable | 0.005
Centros de almacenamiento- No maderable | 0.005

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del estado
-- | --: | --:
Muy alta | 5443.5 | 14
Alta | 28719.1 | 73
Moderada | 2783.1 | 7
Baja | 1382.2 | 3
Muy baja | 174.8 | 0
Nula | 1033.9 | 3

<div style="page-break-after: always;"></div>

#### 3.1.3 Sensibilidad de atributos ambientales de aprovechamiento forestal

![](./recursos/forestal/fi_analisis_sensibilidad_forestal.png)
