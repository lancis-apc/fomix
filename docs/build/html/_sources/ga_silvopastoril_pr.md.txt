# Silvopastoril


Sistema de producción bovina integrada a especies arbóreas, arbustivas con gramíneas forrajeras.

**Modelo AHP del sistema de alimentación silvopastoril**

![](/recursos/silvopastoril.png)

## Criterios


### Biofísicos

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

##### Cobertura

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
1 | Acuícola | Nula | 0
2 | Agricultura De Riego Anual | Baja | 0.56
3 | Agricultura De Riego Anual Y Permanente | Baja | 0.56
4 | Agricultura De Riego Permanente | Baja | 0.56
5 | Agricultura De Riego Semipermanente | Baja | 0.56
6 | Agricultura De Riego Semipermanente Y Permanente | Baja | 0.56
7 | Agricultura De Temporal Anual | Baja | 0.56
8 | Agricultura De Temporal Anual Y Permanente | Baja | 0.56
9 | Agricultura De Temporal Permanente | Baja | 0.56
10 | Agricultura De Temporal Semipermanente | Baja | 0.56
11 | Cuerpo de agua | Nula | 0
12 | Bosque Cultivado | Baja | 0.56
13 | Manglar | Nula | 0
14 | Palmar Inducido | Baja | 0.56
15 | Pastizal Cultivado | Extremadamente alta | 1
16 | Pastizal Halófilo | Muy baja | 0.33
17 | Pastizal Inducido | Extremadamente alta | 1
18 | Sabana | Muy baja | 0.33
19 | Selva Baja Espinosa Subperennifolia | Moderada | 0.7
20 | Selva Mediana Subcaducifolia | Muy alta | 0.87
21 | Selva Mediana Subperennifolia | Muy alta | 0.87
22 | Sin Vegetación Aparente | Nula | 0
23 | Tular | Nula | 0
24 | Urbano Construido | Nula | 0
25 | Vegetación De Dunas Costeras | Nula | 0
26 | Vegetación De Petén | Nula | 0
27 | Vegetación Halófila Hidrófila | Nula | 0
28 | Vegetación Secundaria Arbustiva De Manglar | Muy baja | 0.33
29 | Vegetación Secundaria Arbustiva De Selva Baja Caducifolia | Alta | 0.8
30 | Vegetación Secundaria Arbustiva De Selva Baja Espinosa Caducifolia | Alta | 0.8
31 | Vegetación Secundaria Arbustiva De Selva Baja Espinosa Subperennifolia | Alta | 0.8
32 | Vegetación Secundaria Arbustiva De Selva Baja Subcaducifolia | Moderada | 0.7
33 | Vegetación Secundaria Arbustiva De Selva Mediana Caducifolia | Alta | 0.8
34 | Vegetación Secundaria Arbustiva De Selva Mediana Subcaducifolia | Alta | 0.8
35 | Vegetación Secundaria Arbustiva De Selva Mediana Subperennifolia | Muy alta | 0.87
36 | Vegetación Secundaria Arbórea De Manglar | Nula | 0
37 | Vegetación Secundaria Arbórea De Selva Baja Caducifolia | Alta | 0.8
38 | Vegetación Secundaria Arbórea De Selva Baja Espinosa Caducifolia | Moderada | 0.7
39 | Vegetación Secundaria Arbórea De Selva Baja Espinosa Subperennifolia | Alta | 0.8
40 | Vegetación Secundaria Arbórea De Selva Baja Subcaducifolia | Alta | 0.8
41 | Vegetación Secundaria Arbórea De Selva Mediana Caducifolia | Alta | 0.8
42 | Vegetación Secundaria Arbórea De Selva Mediana Subcaducifolia | Muy alta | 0.87
43 | Vegetación Secundaria Arbórea De Selva Mediana Subperennifolia | Muy alta | 0.87
44 | Vegetación Secundaria Herbácea De Selva Baja Caducifolia | Alta | 0.8
45 | Vegetación Secundaria Herbácea De Selva Mediana Caducifolia | Alta | 0.8
46 | Vegetación Secundaria Herbácea De Selva Mediana Subcaducifolia | Alta | 0.8
47 | Área Desprovista De Vegetación | Nula | 0

<!-- .. csv-table:: Cobertura
   :file: recursos/tabla_fv_gbe_sil_bio_usv_inegi.csv
   :header-rows: 1
   :align: center -->

**Función de valor de cobertura**

![](/recursos/mapa_fv_gbe_sil_bio_usv_inegi.png)

#### Temperatura

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

![](/recursos/fi_fv_gbe_sil_bio_temp_max.png)

**Función de valor de temperatura**

![](/recursos/mapa_fv_gbe_sil_bio_temp_max.png)

##### Precipitación

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

![](/recursos/fi_fv_gbe_sil_bio_precipitacion.png)  

**Función de valor de precipitación**

![](/recursos/mapa_fv_gbe_sil_bio_precipitacion.png)

#### Tipo de suelo

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

![](/recursos/mapa_fv_gbe_sil_bio_t_suelo.png)    

##### Disponibilidad de agua

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

![](/recursos/fi_fv_gbe_sil_bio_d_acuifero.png)

**Función de valor de disponibilidad de agua**

![](/recursos/mapa_fv_gbe_sil_bio_d_acuifero.png)   

### Socioeconómicos

Criterio | Definición
-- | --
Accesibilidad a mercados locales | Distancia a puntos de venta local de becerros (Tizimín, Valladolid, Mérida y Tzucacab)
Accesibilidad a mercados foráneos | Distancia a puntos de venta de carne (Campeche, Cancún, Playa del Carmen).
Disponibilidad de mano de obra | Población económicamente activa ocupada en el sector primario (%)

<!-- .. csv-table::
   :file: recursos/tabla_c_socioeconomico_silvopastoril.csv
   :header-rows: 1
   :align: center -->

#### Accesibilidad a mercados

Criterio | Definición | FV
-- | -- | --
Accesibilidad a mercados locales | Distancia a puntos de venta local de becerros (Tizimín, Valladolid, Mérida y Tzucacab) | 0.87
Accesibilidad a mercados foráneos | Distancia a puntos de venta de carne (Campeche, Cancún, Playa del Carmen). | 0.13

<!-- .. csv-table::
   :file: recursos/tabla_c_socioeconomico_mercados.csv
   :header-rows: 1
   :align: center -->

**Accesibilidad a mercados locales**

Distancia a puntos de venta local de becerros (Tizimín, Valladolid, Mérida y Tzucacab).

**Insumos**

Capas | Distancia a localidades intraestatales
-- | --
Fuente | Adaptado de: [1] Conjunto de datos vectoriales de información topográfica   por Entidad Federativa Serie VI. (Zonas urbanas) INEGI y [2] Red nacional de   caminos INEGI
Año | 2019
Escala | [1] 1:250,000; [2] Sin dato
Unidades | Adimensional

<!-- .. csv-table::
   :file: recursos/tabla_insumos_fv_gbe_sil_socio_d_mercados_loc.csv
   :align: left -->

**Parámetros de la función de valor**

![](/recursos/fi_fv_gbe_sil_socio_d_mercados_loc.png)

**Función de valor de accesibilidad a mercados locales**

![](/recursos/mapa_fv_gbe_sil_socio_d_mercados_loc.png)

**Accesibilidad a mercados foráneos**

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

![](/recursos/fi_fv_gbe_sil_socio_d_mercados_for.png)

**Función de valor de accesibilidad a mercados foráneos**

![](/recursos/mapa_fv_gbe_sil_socio_d_mercados_for.png)  

#### Disponibilidad de mano de obra

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

![](/recursos/fi_fv_gbe_sil_socio_sec_primario.png)  

**Función de valor de disponibilidad de mano de obra**

![](/recursos/mapa_fv_gbe_sil_socio_sec_primario.png)  

## Pesos globales del modelo de aptitud silvopastoril

Criterio | Peso
-- | --:
Cobertura | 0.20
Disponibilidad de agua | 0.38
Precipitación | 0.08
temperatura | 0.02
Tipo de suelo | 0.08
Accesibilidad a mercados locales | 0.09
Accesibilidad a mercados foráneos | 0.01
Disponibilidad de mano de obra | 0.15

<!-- .. csv-table::
   :file: recursos/tabla_pesos_globales.csv
   :header-rows: 1
   :align: center -->

## Capa de exclusión

Tipos de coberturas no aptas

ID | Categoría
:--| --
01 | Acuícola
11 | Cuerpo de agua
13 | Manglar
22 | Sin Vegetación Aparente
23 | Tular
24 | Urbano Construido
25 | Vegetación De Dunas Costeras
26 | Vegetación De Petén
27 | Vegetación Halófila Hidrófila
36 | Vegetación Secundaria Arbórea De Manglar
47 | Área Desprovista De Vegetación

<!-- .. csv-table::
   :file: recursos/tabla_categorias_exclusion.csv
   :header-rows: 1
   :align: center -->

![](/recursos/mapa_gbe_silvopastoril_exclusion.png)  

## Mapa de aptitud silvopastoril


![](/recursos/mapa_apt_gbe_silvopastoril.png)  

### Área por categoría de aptitud


Categoria | km² | Porcentaje del estado
:-- | --: | --:
Nula | 2359.6 |  6
Muy baja | 719.6 |  2
Baja | 399.0 |  1
Moderada | 4492.7 | 11
Alta | 11615.5 | 30
Muy alta | 19793.8 | 50

## Análisis de sensibilidad


![](/recursos/fi_analisis_sensibilidad_silvopastoril.png)


