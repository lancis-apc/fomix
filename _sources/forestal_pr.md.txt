# Forestal

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

Incorporar nuevas superficies y productores a la producción forestal maderable y no maderable, de tal manera que represente una alternativa productiva, y mejorar las capacidades técnicas y financieras de aprovechamiento de las áreas ya destinadas a la producción forestal.
Fomentar las plantaciones forestales en superficies preferentemente forestales.
Orientar la producción al aprovechamiento sostenible, que garantice que los ecosistemas se mantengan.
Minimizar los riesgos del sector forestal.

## Subsectores

### Maderable

Aprovechamiento de los recursos forestales constituidos por vegetación leñosa susceptibles de aprovechamiento o uso.

**Modelo AHP de la actividad maderable**

![](/recursos/forestal/maderable.png)

## Criterios

### Biofísicos

Criterio | Definición
-- | --
Tipo de vegetación | Uso de suelo y vegetación (cubierta vegetal).
Edafología | Tipo de suelo.
Clima | Tipo de clima.
Factores de riesgo | Elementos del ambiente biofísico que impiden las actividades forestales maderables (zonas con plagas y especies invasoras, zonas con incidencia de incendios).

##### Tipo de vegetación

Uso de suelo y vegetación (cubierta vegetal).

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
5 | Bosque cultivado | Máxima | 1
11 | Selva mediana | Máxima | 1
2 | Agricultura de riego | Moderada | 0.7
9 | Pastizal | Moderada | 0.7
10 | Selva baja | Moderada | 0.7
3 | Agricultura de temporal | Baja | 0.56
8 | Palmar inducido | Baja | 0.56
13 | Sábana | Muy baja | 0.33
1 | Acuícola | Nula | 0
4 | Asentamiento humano | Nula | 0
6 | Cuerpo de agua | Nula | 0
7 | Manglar | Nula | 0
12 | Sin vegetación | Nula | 0
14 | Tular | Nula | 0
15 | Vegetación de duna costera | Nula | 0
16 | Vegetación de petén | Nula | 0
17 | Vegetación halófila hidrófila | Nula | 0
18 | NA | Nula | 0


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
7 | Luvisol | Máxima | 1
8 | Nitosol | Máxima | 1
3 | Chernozem | Alta | 0.8
5 | Histosol | Alta | 0.8
2 | Cambisol | Moderada | 0.7
6 | Leptosol | Moderada | 0.7
9 | Phaeozem | Moderada | 0.7
10 | Regosol | Moderada | 0.7
4 | Gleysol | Baja | 0.56
12 | Vertisol | Baja | 0.56
1 | Arenosol | Muy baja | 0.33
11 | Solonchak | Muy baja | 0.33
13 | No aplica | Nula | 0

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
3 | Aw2(x') | Máxima | 1
1 | Aw1 | Muy alta | 0.87
2 | Aw1(x') | Muy alta | 0.87
4 | Awo | Alta | 0.8
5 | Awo(x') | Alta | 0.8
6 | BS1(h')w | Baja | 0.56
7 | BSo(h')(x') | Muy baja | 0.33
8 | NA | Nula | 0

**Función de valor de climas**

![](/recursos/forestal/mapa_fv_for_mad_bio_climas.png)


##### Factores de riesgo

Elementos del ambiente biofísico que impiden las actividades forestales maderables (zonas con plagas y especies invasoras, zonas con incidencia de incendios).

**Insumos**

Capa	Riesgos para la actividad forestal (plaga)
Fuente	Riesgo estatal para Escarabajos Ambrosiales Exóticos SIVICOFF
Año	2020
Escala	Sin dato
Unidades	Adimensional

Capa | Riesgos para la actividad forestal (incendios)
-- | --
Fuente | Áreas prioritarias de protección contra incendios forestales SNIGF CONAFOR
Año | 2020
Escala | Sin dato
Unidades | Adimensional

Capa | Riesgos para la actividad forestal (plaga)
-- | --
Fuente | Riesgo estatal por Sinoxylon unidentatum SIVICOFF
Año | 2020
Escala | Sin dato
Unidades | Adimensional


**Parámetros de la función de valor de incendios**

Id | Categoría | Importancia | FV
-- | -- | -- | --
5 | Muy Alta | Máxima | 1
4 | Alta | Alta | 0.8
3 | Media | Moderada | 0.7
2 | Baja | Baja | 0.56
1 | Muy Baja | Muy baja | 0.33
6 | NA | Nula | 0

**Función de valor de incendios**

![](/recursos/forestal/mapa_fv_for_mad_bio_incendios.png)


### Socioeconómicos

Criterio | Definición
-- | --
Aprovechamiento | Autorizaciones de aprovechamiento (activos e inactivos).
Mercados | Distancia a localidades con puntos de venta.
Tenencia | Tenencia de la tierra por zonas ejidales, no ejidales y tierras de uso común.


##### Aprovechamiento

Autorizaciones de aprovechamiento (activos e inactivos).

**Insumos**


##### Mercados

Distancia a localidades con puntos de venta.

**Insumos**

Capa | Tamaño poblacional
-- | --
Fuente | [1] Polígonos de localidades. Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI (localidad250_a) INEGI y [2] Datos de indicador. Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | [1] 2019; [2] 2010
Campo | [2] POBTOT
Escala | Localidad
Unidades | Número de habitantes


##### Tenencia

Tenencia de la tierra por zonas ejidales, no ejidales y tierras de uso común.

**Insumos**

Capa	Tenencia de la tierra
Fuente	[1] Zonas de Tierras Parceladas y [2] Tierra de uso común
Año	2020
Escala	Sin dato
Unidades	Adimensional


**Parámetros de la función de valor versión 1**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Tierra de uso común | Máxima | 1
2 | Zona de tierras parceladas | Alta | 0.8
3 | No ejidal | Baja | 0.56

**Función de valor de tenencia versión 1**

![](/recursos/forestal/mapa_fv_for_mad_socio_tenencia_tierra.png)


**Parámetros de la función de valor versión 2**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Tierra de uso común | Máxima | 1
3 | No ejidal | Máxima | 1
2 | Zona de tierras parceladas | Alta | 0.8

**Función de valor de tenencia versión 2**

![](/recursos/forestal/mapa_fv_for_mad_socio_tenencia_tierra_v2.png)


### Infraestructura

Criterio | Definición
-- | --
Abastecimiento | Acceso a insumos para la producción (fuentes de energía y combustible en localidades).
Centros de almacenamiento | Distancia a centros de almacenamiento y transformación.
Comunicación | Distancia a carreteras, caminos rurales y veredas (red de caminos primarios y secundarios).


##### Abastecimiento

Acceso a insumos para la producción (fuentes de energía y combustible en localidades).

**Insumos**

Capa | Tamaño poblacional
-- | --
Fuente | [1] Polígonos de localidades. Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI (localidad250_a) INEGI y [2] Datos de indicador. Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | [1] 2019; [2] 2010
Campo | [2] POBTOT
Escala | Localidad
Unidades | Número de habitantes


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


### No maderable

Aprovechamiento de los recursos constituidos por la parte no leñosa de la vegetación de un ecosistema forestal, y susceptibles de aprovechamiento o uso, incluyendo líquenes, musgos, hongos y resinas, así como los suelos de terrenos forestales y preferentemente forestales.

**Modelo AHP de la actividad no maderable**

![](/recursos/forestal/no_maderable.png)

## Criterios

### Biofísicos

Criterio | Definición
-- | --
Tipo de vegetación | Uso de suelo y vegetación (cubierta vegetal).
Edafología | Tipo de suelo.
Clima | Tipo de clima.
Factores de riesgo | Elementos del ambiente biofísico que impiden las actividades forestales no maderables (zonas con plagas y especies invasoras, zonas con incidencia de incendios).

##### Tipo de vegetación

Uso de suelo y vegetación (cubierta vegetal).

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

Elementos del ambiente biofísico que impiden las actividades forestales no maderables (zonas con plagas y especies invasoras, zonas con incidencia de incendios).

**Insumos**

Capa	Riesgos para la actividad forestal (plaga)
Fuente	Riesgo estatal para Escarabajos Ambrosiales Exóticos SIVICOFF
Año	2020
Escala	Sin dato
Unidades	Adimensional

Capa | Riesgos para la actividad forestal (incendios)
-- | --
Fuente | Áreas prioritarias de protección contra incendios forestales SNIGF CONAFOR
Año | 2020
Escala | Sin dato
Unidades | Adimensional

Capa | Riesgos para la actividad forestal (plaga)
-- | --
Fuente | Riesgo estatal por Sinoxylon unidentatum SIVICOFF
Año | 2020
Escala | Sin dato
Unidades | Adimensional


### Socioeconómicos

Criterio | Definición
-- | --
Aprovechamiento | Autorizaciones de aprovechamiento (activos e inactivos).
Mercados | Distancia a puntos de venta.
Tenencia | Tenencia de la tierra por zonas ejidales, no ejidales y tierras de uso común.


##### Aprovechamiento

Autorizaciones de aprovechamiento (activos e inactivos).

**Insumos**


##### Mercados

Distancia a puntos de venta.

**Insumos**


##### Tenencia

Tenencia de la tierra por zonas ejidales, no ejidales y tierras de uso común.

**Insumos**


### Infraestructura

Criterio | Definición
-- | --
Abastecimiento | Acceso a insumos para la producción (fuentes de energía y combustible en localidades).
Centros de almacenamiento | Distancia a centros de almacenamiento y transformación.
Comunicación | Distancia a carreteras, caminos rurales, veredas (red de caminos primarios y secundarios).


##### Abastecimiento

Acceso a insumos para la producción (fuentes de energía y combustible en localidades).

**Insumos**


##### Centros de almacenamiento

Distancia a centros de almacenamiento y transformación.

**Insumos**


##### Comunicación

Distancia a carreteras, caminos rurales, veredas (red de caminos primarios y secundarios).

**Insumos**
