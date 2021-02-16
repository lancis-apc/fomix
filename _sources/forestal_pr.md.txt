# Forestal-En proceso de actualización

La generación de los mapas de aptitud está en espera de la recepción de las capas de información de (1) Autorizaciones de aprovechamiento forestal maderable vigentes, (2) Autorizaciones de aprovechamiento forestal no maderable vigentes y (3) Centros de almacenamiento y transformación de materias primas forestales.
<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

* Incorporar nuevas superficies y productores a la producción forestal maderable y no maderable, de tal manera que represente una  alternativa productiva, y mejorar las capacidades técnicas y financieras de aprovechamiento de las áreas ya destinadas a la producción forestal.
* Fomentar las plantaciones forestales en superficies preferentemente forestales.
* Orientar la producción al aprovechamiento sostenible, que garantice que los ecosistemas se mantengan.
* Minimizar los riesgos del sector forestal.

[Lista de participantes](https://www.dropbox.com/s/8kif6lcb53radud/lista_asistencia_forestal.pdf?dl=0)

## 1. Aprovechamiento forestal maderable

Aprovechamiento de los recursos forestales constituidos por vegetación leñosa susceptibles de aprovechamiento o uso.

### 1.1 Modelo de decisión

![](/recursos/forestal/maderable.png)

### 1.2 Criterios

#### 1.2.1 Biofísicos

Criterio | Definición
-- | --
Tipo de vegetación | Tipos de vegetación y usos de suelo.
Edafología | Tipo de suelo.
Clima | Tipo de clima.
Factores de riesgo | Elementos del ambiente biofísico que ponen en riesgo las actividades de aprovechamiento forestal maderable (zonas con plagas y zonas con incidencia de incendios).

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
13 | Sábana | Muy baja | 0.33
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

**Función de valor de tipo de vegetación**

![](/recursos/forestal/mapa_fv_for_mad_bio_usv_17cats.png)

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

![](/recursos/forestal/mapa_fv_for_mad_bio_t_suelo.png)

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

**Función de valor de climas**

![](/recursos/forestal/mapa_fv_for_mad_bio_climas.png)

##### 1.2.1.4 Factores de riesgo

Elementos del ambiente biofísico que ponen en riesgo las actividades de aprovechamiento forestal maderable (zonas con plagas y zonas con incidencia de incendios).

**Insumos**

Capa | Riesgos para la actividad forestal
-- | --
Fuente | [1] Mapa de Áreas Prioritarias de Manejo del Fuego CONAFOR y [2) Áreas de atención prioritaria de sanidad forestal. Riesgo de plagas forestales
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

![](/recursos/forestal/mapa_fv_for_mad_bio_incendios.png)

#### 1.2.2 Socioeconómicos

Criterio | Definición
-- | --
Aprovechamiento |  Autorizaciones de aprovechamiento forestal vigentes.
Mercados | Cercanía a las principales localidades en las que se venden los recursos maderables.
Tenencia | Tenencia de la tierra.

##### 1.2.2.1 Aprovechamiento

Autorizaciones de aprovechamiento forestal vigentes.

**Insumos**

##### 1.2.2.2 Mercados

Cercanía a las principales localidades en las que se venden los recursos maderables.

**Insumos**

Capa | Distancia a mercados
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI
Año | 2020
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/forestal/fi_fv_for_mad_socio_d_mercados.png)

**Función de valor de mercados**

![](/recursos/forestal/mapa_fv_for_mad_socio_d_mercados.png)

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

Versión 1. Visión de facilidad para gestionar los proyectos.

Da mayor importancia a las zonas no ejidales y las ejidales parceladas, ya que en la gestión de los proyectos se trata con una sola persona o un grupo de personas. Se da menor importancia a las tierras ejidales de uso común, debido a que la gestión de un proyecto forestal requeriría un cabildeo más largo y el aval de la asamblea ejidal.

**Parámetros de la función de valor versión 1**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Tierra de uso común | Máxima | 1.00
2 | Zona de tierras parceladas | Alta | 0.80
3 | No ejidal | Baja | 0.56

**Función de valor de tenencia versión 1**

![](/recursos/forestal/mapa_fv_for_mad_socio_tenencia_tierra.png)

<!--![](/recursos/forestal/.png)--->

Versión 2. Visión de impulsar los proyectos forestales en las comunidades. Los proponentes de esta visión exponen que, aunque es más sencillo ponerse de acuerdo con una o pocas personas, el criterio de la versión 1 impulsa los beneficios individuales por encima de los colectivos. Por ello, las tierras de uso común deberían ser más importantes debido que el beneficio es para toda la comunidad.

Da la importancia más alta a las zonas no ejidales y ejidales de uso común ya que en estas áreas están las masas forestales más continuas y la actividad es más redituable y asigna menor importancia a las tierras ejidales parceladas, ya que son más pequeñas y fragmentadas.

**Parámetros de la función de valor versión 2**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Tierra de uso común | Máxima | 1.0
3 | No ejidal | Máxima | 1.0
2 | Zona de tierras parceladas | Alta | 0.8

**Función de valor de tenencia versión 2**

![](/recursos/forestal/mapa_fv_for_mad_socio_tenencia_tierra_v2.png)

<!--!![](/recursos/forestal/.png)--->

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

![](/recursos/forestal/fi_fv_mad_infra_infra_d_localidades.png)

##### 1.2.3.2 Centros de almacenamiento

Distancia a centros de almacenamiento y transformación.

**Insumos**

##### 1.2.3.3 Comunicación

Distancia a carreteras, caminos rurales, veredas (red de caminos primarios y secundarios).

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/forestal/fi_fv_for_mad_infra_d_caminos.png)  

**Función de valor de comunicación**

![](/recursos/forestal/mapa_fv_for_mad_infra_d_caminos.png)

## 2. Aprovechamiento forestal no maderable

Aprovechamiento de los recursos constituidos por la parte no leñosa de la vegetación de un ecosistema forestal, y susceptibles de aprovechamiento o uso, incluyendo líquenes, musgos, hongos y resinas, así como los suelos de terrenos forestales y preferentemente forestales.

### 2.1 Modelo de decisión

![](/recursos/forestal/no_maderable.png)
*Se decidió explorar la priorización de los atributos socioeconómicos de dos maneras, ya que había dos puntos de vista en el grupo.

Versión 1. Da la mayor importancia a Tenencia, ya que este atributo da seguridad legal para poder llevar a cabo un proyecto forestal en el territorio. Seguiría en importancia Mercados, dado que no sería una actividad productiva si no hay el mercado. La menor importancia se asigna a Aprovechamiento, debido a que actualmente no hay tantas autorizaciones de aprovechamiento de recursos no maderables, aunque sí se desarrolla la actividad (por ejemplo, orégano y palma). En este sentido, el estar cercano a una zona donde ya haya proyectos autorizados no garantiza que sea un mejor lugar.

Versión 2. Da la mayor importancia a Aprovechamientos, ya que ahí se sabe que hay recursos y se puede dar la actividad independientemente de la Tenencia, y la menor importancia la tiene la distancia a Mercados.

### 2.2 Criterios

#### 2.2.1 Biofísicos

Criterio | Definición
-- | --
Tipo de vegetación | Tipos de vegetación y usos de suelo.
Edafología | Tipo de suelo.
Clima | Tipo de clima.
Factores de riesgo | Elementos del ambiente biofísico que ponen en riesgo las actividades de aprovechamiento forestal no maderable (zonas con plagas y zonas con incidencia de incendios).

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
13 | Sábana | Muy baja | 0.33
14 | Tular | Muy baja | 0.33
1 | Acuícola | Nula | 0.00
4 | Asentamiento humano | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
12 | Sin vegetación | Nula | 0.00
16 | Vegetación de petén | Nula | 0.00
18 | NA | Nula | 0.00

**Función de valor de tipo de vegetación**

![](/recursos/forestal/mapa_fv_for_nomad_bio_usv_17cats.png)

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

![](/recursos/forestal/mapa_fv_for_mad_bio_t_suelo.png)

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

**Función de valor de climas**

![](/recursos/forestal/mapa_fv_for_mad_bio_climas.png)

##### 2.2.1.4 Factores de riesgo

Elementos del ambiente biofísico que ponen en riesgo las actividades de aprovechamiento forestal no maderable (zonas con plagas y zonas con incidencia de incendios).

**Insumos**

Capa | Riesgos para la actividad forestal
-- | --
Fuente | [1] Mapa de Áreas Prioritarias de Manejo del Fuego CONAFOR y [2) Áreas de atención prioritaria de sanidad forestal. Riesgo de plagas forestales
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

![](/recursos/forestal/mapa_fv_for_mad_bio_incendios.png)

#### 2.2.2 Socioeconómicos

Criterio | Definición
-- | --
Aprovechamiento |  Autorizaciones de aprovechamiento forestal vigentes.
Mercados | Cercanía a las principales localidades en las que se venden los recursos no maderables.
Tenencia | Tenencia de la tierra.

##### 2.2.2.1 Aprovechamiento

Autorizaciones de aprovechamiento forestal vigentes.

**Insumos**

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

![](/recursos/forestal/fi_fv_for_mad_socio_d_mercados.png)

**Función de valor de mercados**

![](/recursos/forestal/mapa_fv_for_mad_socio_d_mercados.png)

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

Versión 1. Visión de facilidad para gestionar los proyectos.

Da mayor importancia a las zonas no ejidales y las ejidales parceladas, ya que en la gestión de los proyectos se trata con una sola persona o un grupo de personas. Se da menor importancia a las tierras ejidales de uso común, debido a que la gestión de un proyecto forestal requeriría un cabildeo más largo y el aval de la asamblea ejidal.

**Parámetros de la función de valor versión 1**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Tierra de uso común | Máxima | 1.00
2 | Zona de tierras parceladas | Alta | 0.80
3 | No ejidal | Baja | 0.56

**Función de valor de tenencia versión 1**

![](/recursos/forestal/mapa_fv_for_mad_socio_tenencia_tierra.png)

<!--!![](/recursos/forestal/.png)--->

Versión 2. Visión de impulsar los proyectos forestales en las comunidades. Los proponentes de esta visión exponen que, aunque es más sencillo ponerse de acuerdo con una o pocas personas, el criterio de la versión 1 impulsa los beneficios individuales por encima de los colectivos. Por ello, las tierras de uso común deberían ser más importantes debido que el beneficio es para toda la comunidad.

Da la importancia más alta a las zonas no ejidales y ejidales de uso común ya que en estas áreas están las masas forestales más continuas y la actividad es más redituable y asigna menor importancia a las tierras ejidales parceladas, ya que son más pequeñas y fragmentadas.

**Parámetros de la función de valor versión 2**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Tierra de uso común | Máxima | 1.0
3 | No ejidal | Máxima | 1.0
2 | Zona de tierras parceladas | Alta | 0.8

**Función de valor de tenencia versión 2**

![](/recursos/forestal/mapa_fv_for_mad_socio_tenencia_tierra_v2.png)

<!--!![](/recursos/forestal/.png)--->

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

![](/recursos/forestal/fi_fv_mad_infra_infra_d_localidades.png)

##### 2.2.3.2 Centros de almacenamiento

Distancia a centros de almacenamiento y transformación.

**Insumos**

##### 2.2.3.3 Comunicación

Distancia a carreteras, caminos rurales, veredas (red de caminos primarios y secundarios).

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/forestal/fi_fv_for_mad_infra_d_caminos.png)  

**Función de valor de comunicación**

![](/recursos/forestal/mapa_fv_for_mad_infra_d_caminos.png)
