# Forestal

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

* Incorporar nuevas superficies y productores a la producción forestal maderable y no maderable, de tal manera que represente una  alternativa productiva, y mejorar las capacidades técnicas y financieras de aprovechamiento de las áreas ya destinadas a la producción forestal.
* Fomentar las plantaciones forestales en superficies preferentemente forestales.
* Orientar la producción al aprovechamiento sostenible, que garantice que los ecosistemas se mantengan.
* Minimizar los riesgos del sector forestal.

## Subsector

### Aprovechamiento forestal maderable

Aprovechamiento de los recursos forestales constituidos por vegetación leñosa susceptibles de aprovechamiento o uso.

**Modelo AHP de la actividad maderable**

![](/recursos/forestal/maderable.png)

## Criterios

### Biofísicos

Criterio | Definición
-- | --
Tipo de vegetación | Tipos de vegetación y usos de suelo.
Edafología | Tipo de suelo.
Clima | Tipo de clima.
Factores de riesgo | Elementos del ambiente biofísico que ponen en riesgo las actividades de aprovechamiento forestal maderable (zonas con plagas y zonas con incidencia de incendios).

##### Tipo de vegetación

Tipos de vegetación y usos de suelo.

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | 2014
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


##### Edafología

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


##### Clima

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


##### Factores de riesgo

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


### Socioeconómicos

Criterio | Definición
-- | --
Aprovechamiento |  Autorizaciones de aprovechamiento forestal vigentes.
Mercados | Cercanía a las principales localidades en las que se venden los recursos maderables.
Tenencia | Tenencia de la tierra.


##### Aprovechamiento

Autorizaciones de aprovechamiento forestal vigentes.

**Insumos**


##### Mercados

Cercanía a las principales localidades en las que se venden los recursos maderables.

**Insumos**

Capa | Distancia a mercados
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad   Federativa Serie VI (localidad250_a) INEGI y [2] Red nacional de caminos   INEGI
Año | 2019
Escala | [1] 1:250,000; [2]Sin dato
Unidades | Adimensional


**Parámetros de la función de valor**

![](/recursos/forestal/fi_fv_for_mad_socio_d_mercados.png)

**Función de valor de mercados**

![](/recursos/forestal/mapa_fv_for_mad_socio_d_mercados.png)


##### Tenencia

Tenencia de la tierra.

**Insumos**

Capa | Tenencia de la tierra
-- | --
Fuente | [1] Zonas de Tierras Parceladas y [2] Tierra de uso común
Año | 2020
Escala | Sin dato
Unidades | Adimensional


**Parámetros de la función de valor versión 1**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Tierra de uso común | Máxima | 1.00
2 | Zona de tierras parceladas | Alta | 0.80
3 | No ejidal | Baja | 0.56

**Función de valor de tenencia versión 1**

![](/recursos/forestal/mapa_fv_for_mad_socio_tenencia_tierra.png)


**Parámetros de la función de valor versión 2**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Tierra de uso común | Máxima | 1.0
3 | No ejidal | Máxima | 1.0
2 | Zona de tierras parceladas | Alta | 0.8

**Función de valor de tenencia versión 2**

![](/recursos/forestal/mapa_fv_for_mad_socio_tenencia_tierra_v2.png)


### Infraestructura

Criterio | Definición
-- | --
Abastecimiento | Cercanía a localidades como centro de acceso a insumos para la actividad forestal.
Centros de almacenamiento | Distancia a centros de almacenamiento y transformación.
Comunicación | Distancia a carreteras, caminos rurales y veredas (red de caminos primarios y secundarios).


##### Abastecimiento

Cercanía a localidades como centro de acceso a insumos para la actividad forestal.

**Insumos**

Capa | Distancia a localidades
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad   Federativa Serie VI (localidad250_a) INEGI y [2] Red nacional de caminos   INEGI
Año | 2019
Escala | [1] 1:250,000; [2]Sin dato
Unidades | Adimensional


##### Centros de almacenamiento

Distancia a centros de almacenamiento y transformación.

**Insumos**


##### Comunicación

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


### Aprovechamiento forestal no maderable

Aprovechamiento de los recursos constituidos por la parte no leñosa de la vegetación de un ecosistema forestal, y susceptibles de aprovechamiento o uso, incluyendo líquenes, musgos, hongos y resinas, así como los suelos de terrenos forestales y preferentemente forestales.

**Modelo AHP de la actividad no maderable**

![](/recursos/forestal/no_maderable.png)

## Criterios

### Biofísicos

Criterio | Definición
-- | --
Tipo de vegetación | Tipos de vegetación y usos de suelo.
Edafología | Tipo de suelo.
Clima | Tipo de clima.
Factores de riesgo | Elementos del ambiente biofísico que ponen en riesgo las actividades de aprovechamiento forestal no maderable (zonas con plagas y zonas con incidencia de incendios).

##### Tipo de vegetación

Tipos de vegetación y usos de suelo.

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | 2014
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional


##### Edafología

Tipo de suelo.

**Insumos**

Capa | Edafología
-- | --
Fuente | Conjunto de datos vectoriales edafológico. Serie II (Continuo Nacional) INEGI
Año | 2014
Campo | tipo_suelo
Escala | 1:250,000
Unidades | Adimensional


##### Clima

Tipo de clima.

**Insumos**

Capa | Climas
-- | --
Fuente | Climas CONAGUA
Año | 2001
Campo | Clima_tipo
Escala | 1:1,000,000
Unidades | Adimensional


##### Factores de riesgo

Elementos del ambiente biofísico que ponen en riesgo las actividades de aprovechamiento forestal no maderable (zonas con plagas y zonas con incidencia de incendios).

**Insumos**

Capa | Riesgos para la actividad forestal
-- | --
Fuente | [1] Mapa de Áreas Prioritarias de Manejo del Fuego CONAFOR y [2) Áreas de atención prioritaria de sanidad forestal. Riesgo de plagas forestales
Año | 2021
Escala | [1] 1:250,000,000 ; [2] Sin dato
Unidades | Adimensional


### Socioeconómicos

Criterio | Definición
-- | --
Aprovechamiento |  Autorizaciones de aprovechamiento forestal vigentes.
Mercados | Cercanía a las principales localidades en las que se venden los recursos no maderables.
Tenencia | Tenencia de la tierra.


##### Aprovechamiento

Autorizaciones de aprovechamiento forestal vigentes.

**Insumos**


##### Mercados

Cercanía a las principales localidades en las que se venden los recursos no maderables.

**Insumos**

Capa | Distancia a mercados
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad   Federativa Serie VI (localidad250_a) INEGI y [2] Red nacional de caminos   INEGI
Año | 2019
Escala | [1] 1:250,000; [2]Sin dato
Unidades | Adimensional


##### Tenencia

Tenencia de la tierra.

**Insumos**

Capa	Tenencia de la tierra
Fuente	[1] Zonas de Tierras Parceladas y [2] Tierra de uso común
Año	2020
Escala	Sin dato
Unidades	Adimensional


### Infraestructura

Criterio | Definición
-- | --
Abastecimiento | Cercanía a localidades como centro de acceso a insumos para la actividad forestal.
Centros de almacenamiento | Distancia a centros de almacenamiento y transformación.
Comunicación | Distancia a carreteras, caminos rurales, veredas (red de caminos primarios y secundarios).


##### Abastecimiento

Cercanía a localidades como centro de acceso a insumos para la actividad forestal.

**Insumos**

Capa | Distancia a localidades
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad   Federativa Serie VI (localidad250_a) INEGI y [2] Red nacional de caminos   INEGI
Año | 2019
Escala | [1] 1:250,000; [2]Sin dato
Unidades | Adimensional


##### Centros de almacenamiento

Distancia a centros de almacenamiento y transformación.

**Insumos**


##### Comunicación

Distancia a carreteras, caminos rurales, veredas (red de caminos primarios y secundarios).

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros
