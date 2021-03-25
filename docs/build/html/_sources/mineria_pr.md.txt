# Minería-En proceso de actualización

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

Aumentar la apertura de bancos de materiales para cumplir con la demanda de productos químicos, de alimentación, así como de insumos en la construcción, en particular de desarrollos inmobiliarios, caminos y carreteras, que están en aumento por el crecimiento poblacional y la llegada de proyectos como el Tren Maya.

[Lista de participantes](https://www.dropbox.com/s/lxqdnpxi3kjv4hq/lista_asistencia_mineria.pdf?dl=0)

### 1.1 Modelo de decisión

![](/recursos/mineria/fi_mineria.png)

Los participantes decidieron que se hiciera la distinción entre la minería de rocas, arenas y arcillas, con base en los tipos de suelo en los que es más viable desarrollar cada tipo de minería.
Asimismo, de acuerdo con la técnica de explotación de rocas, los participantes definieron dos funciones de valor para el atributo Nivel freático con el objeto de distinguir entre los sitios propicios para la extracción en seco y en húmedo. En el caso de la minería de arenas y arcillas únicamente se hace la extracción en seco.
*Versión 1 corresponde a los pesos resultantes de las ponderaciones de los atributos biofísicos para minería de rocas con extracción en seco y húmedo.
*Versión 2 corresponde a los pesos resultantes de las ponderaciones de los atributos biofísicos para minería de arcillas y arenas.

### 1.2 Tipos

#### 1.2.1 Minería de arcillas

##### 1.2.1.1 Biofísicos

Criterio|Definición
--|--
Tipo de suelo| Edafología.
Nivel freático| Distancia al manto acuífero medido por el nivel piezométrico.
Tipo de cobertura| Tipos de vegetación y usos de suelo.

###### 1.2.1.1.1 Tipo de suelo

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

**Función de valor de tipo de suelo**

![](/recursos/mineria/mapa_fv_min_arci_bio_tipo_suelo.png)

###### 1.2.1.1.2 Nivel freático

Distancia al manto acuífero medido por el nivel piezométrico.

**Insumos**

Capa | Nivel freático
-- | --
Fuente | Nivel freático POETY
Año | Sin dato
Campo | n_freat_m
Escala | Estatal
Unidades | Metros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_arci_bio_d_manto_freatico.png)

**Función de valor de nivel freático**

![](/recursos/mineria/mapa_fv_min_arci_bio_d_manto_freatico.png)

###### 1.2.1.1.3 Tipo de Cobertura

Tipos de vegetación y usos de suelo.

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

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

**Función de valor de tipo de cobertura**

![](/recursos/mineria/mapa_fv_min_arci_bio_cobertura_usv_svi_16cats.png)

##### 1.2.1.2 Infraestructura

Criterio|Definición
--|--
Caminos| Distancia a caminos y carreteras para transporte de los productos.
Electricidad| Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.
Minas| Distancia a sitios de explotación de yacimientos minerales

###### 1.2.1.2.1 Caminos

Distancia a caminos y carreteras para transporte de los productos.

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_arci_infra_d_carreteras_caminos.png)

**Función de valor de caminos**

![](/recursos/mineria/mapa_fv_min_arci_infra_d_carreteras_caminos.png)

###### 1.2.1.2.2 Electricidad

Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.

**Insumos**

Capa | Distancia líneas de transmisión de energía   eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_arci_infra_d_lineas_electricas.png)

**Función de valor de electricidad**

![](/recursos/mineria/mapa_fv_min_arci_infra_d_lineas_electricas.png)

###### 1.2.1.2.3 Minas

Distancia a sitios de explotación de yacimientos minerales.

**Insumos**

Capa | Distancia a minas y rocas dimensionables
-- | --
Fuente | [1] Yacimientos minerales - minas SGM y [2] Rocas dimensionables SGM
Año | [1] Sin dato ; [2] 2011
Escala | [1] 1:250,000 ;[2] 1:50,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_arci_infra_rocas_banco_materiales.png)

**Función de valor de minas**

![](/recursos/mineria/mapa_fv_min_arci_infra_rocas_banco_materiales.png)

##### 1.2.1.3 Socioeconómicos

Criterio|Definición
--|--
Localidades| Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.

###### 1.2.1.3.1 Localidades

Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.

**Insumos**

Capa | Distancia a localidades con mayor demanda de material minero
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI
Año | 2020
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_arci_socio_d_localidades_min.png)

**Función de valor de localidades**

![](/recursos/mineria/mapa_fv_min_arci_socio_d_localidades_min.png)

#### 1.2.2 Minería de arenas

##### 1.2.2.1 Biofísicos

Criterio|Definición
--|--
Tipo de suelo| Edafología.
Nivel freático| Distancia al manto acuífero medido por el nivel piezométrico.
Tipo de cobertura| Tipos de vegetación y usos de suelo.

###### 1.2.2.1.1 Tipo de suelo

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

**Función de valor de tipo de suelo**

![](/recursos/mineria/mapa_fv_min_arena_bio_tipo_suelo.png)

###### 1.2.2.1.2 Nivel freático

Distancia al manto acuífero medido por el nivel piezométrico.

**Insumos**

Capa | Nivel freático
-- | --
Fuente | Nivel freático POETY
Año | Sin dato
Campo | n_freat_m
Escala | Estatal
Unidades | Metros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_arena_bio_d_manto_freatico.png)

**Función de valor de nivel freático**

![](/recursos/mineria/mapa_fv_min_arena_bio_d_manto_freatico.png)

###### 1.2.2.1.3 Tipo de Cobertura

Tipos de vegetación y usos de suelo.

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

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

**Función de valor de tipo de cobertura**

![](/recursos/mineria/mapa_fv_min_arena_bio_cobertura_usv_svi_16cats.png)

##### 1.2.2.2 Infraestructura

Criterio|Definición
--|--
Caminos| Distancia a caminos y carreteras para transporte de los productos.
Electricidad| Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.
Minas| Distancia a sitios de explotación de yacimientos minerales

###### 1.2.2.2.1 Caminos

Distancia a caminos y carreteras para transporte de los productos.

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_arena_infra_d_carreteras_caminos.png)

**Función de valor de caminos**

![](/recursos/mineria/mapa_fv_min_arena_infra_d_carreteras_caminos.png)

###### 1.2.2.2.2 Electricidad

Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.

**Insumos**

Capa | Distancia líneas de transmisión de energía   eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_arena_infra_d_lineas_electricas.png)

**Función de valor de electricidad**

![](/recursos/mineria/mapa_fv_min_arena_infra_d_lineas_electricas.png)

###### 1.2.2.2.3 Minas

Distancia a sitios de explotación de yacimientos minerales.

**Insumos**

Capa | Distancia a minas y rocas dimensionables
-- | --
Fuente | [1] Yacimientos minerales - minas SGM y [2] Rocas dimensionables SGM
Año | [1] Sin dato ; [2] 2011
Escala | [1] 1:250,000 ;[2] 1:50,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_arena_infra_rocas_banco_materiales.png)

**Función de valor de minas**

![](/recursos/mineria/mapa_fv_min_arena_infra_rocas_banco_materiales.png)

##### 1.2.2.3 Socioeconómicos

Criterio|Definición
--|--
Localidades| Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.

###### 1.2.2.3.1 Localidades

Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.

**Insumos**

Capa | Distancia a localidades con mayor demanda de material minero
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI
Año | 2020
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_arena_socio_d_localidades_min.png)

**Función de valor de localidades**

![](/recursos/mineria/mapa_fv_min_arena_socio_d_localidades_min.png)

#### 1.2.3 Minería de rocas con extracción en seco

##### 1.2.3.1 Biofísicos

Criterio|Definición
--|--
Nivel freático| Distancia al manto acuífero medido por el nivel piezométrico.
Tipo de suelo| Edafología.
Tipo de cobertura| Tipos de vegetación y usos de suelo.

###### 1.2.3.1.1 Nivel freático

Distancia al manto acuífero medido por el nivel piezométrico.

**Insumos**

Capa | Nivel freático
-- | --
Fuente | Nivel freático POETY
Año | Sin dato
Campo | n_freat_m
Escala | Estatal
Unidades | Metros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_rosec_bio_d_manto_freatico.png)

**Función de valor de nivel freático**

![](/recursos/mineria/mapa_fv_min_rosec_bio_d_manto_freatico.png)

###### 1.2.3.1.2 Tipo de suelo

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

**Función de valor de tipo de suelo**

![](/recursos/mineria/mapa_fv_min_rosec_bio_tipo_suelo.png)

###### 1.2.3.1.3 Tipo de Cobertura

Tipos de vegetación y usos de suelo.

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

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

**Función de valor de tipo de cobertura**

![](/recursos/mineria/mapa_fv_min_rosec_bio_cobertura_usv_svi_16cats.png)

##### 1.2.3.2 Infraestructura

Criterio|Definición
--|--
Caminos| Distancia a caminos y carreteras para transporte de los productos.
Electricidad| Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.
Minas| Distancia a sitios de explotación de yacimientos minerales

###### 1.2.3.2.1 Caminos

Distancia a caminos y carreteras para transporte de los productos.

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_rosec_infra_d_carreteras_caminos.png)

**Función de valor de caminos**

![](/recursos/mineria/mapa_fv_min_rosec_infra_d_carreteras_caminos.png)

###### 1.2.3.2.2 Electricidad

Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.

**Insumos**

Capa | Distancia líneas de transmisión de energía   eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_rosec_infra_d_lineas_electricas.png)

**Función de valor de electricidad**

![](/recursos/mineria/mapa_fv_min_rosec_infra_d_lineas_electricas.png)

###### 1.2.3.2.3 Minas

Distancia a sitios de explotación de yacimientos minerales.

**Insumos**

Capa | Distancia a minas y rocas dimensionables
-- | --
Fuente | [1] Yacimientos minerales - minas SGM y [2] Rocas dimensionables SGM
Año | [1] Sin dato ; [2] 2011
Escala | [1] 1:250,000 ;[2] 1:50,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_rosec_infra_rocas_banco_materiales.png)

**Función de valor de minas**

![](/recursos/mineria/mapa_fv_min_rosec_infra_rocas_banco_materiales.png)

##### 1.2.3.3 Socioeconómicos

Criterio|Definición
--|--
Localidades| Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.
Oportunidades| Proyectos de construcción y ampliación de vías de comunicación.

###### 1.2.3.3.1 Localidades

Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.

**Insumos**

Capa | Distancia a localidades con mayor demanda de material minero
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI
Año | 2020
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_rosec_socio_d_localidades_min.png)

**Función de valor de localidades**

![](/recursos/mineria/mapa_fv_min_rosec_socio_d_localidades_min.png)

#### 1.2.4 Minería de rocas con extracción en húmedo

##### 1.2.4.1 Biofísicos

Criterio|Definición
--|--
Nivel freático| Distancia al manto acuífero medido por el nivel piezométrico.
Tipo de suelo| Edafología.
Tipo de cobertura| Tipos de vegetación y usos de suelo.

###### 1.2.4.1.1 Nivel freático

Distancia al manto acuífero medido por el nivel piezométrico.

**Insumos**

Capa | Nivel freático
-- | --
Fuente | Nivel freático POETY
Año | Sin dato
Campo | n_freat_m
Escala | Estatal
Unidades | Metros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_rohum_bio_d_manto_freatico.png)

**Función de valor de nivel freático**

![](/recursos/mineria/mapa_fv_min_rohum_bio_d_manto_freatico.png)

###### 1.2.4.1.2 Tipo de suelo

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

**Función de valor de tipo de suelo**

![](/recursos/mineria/mapa_fv_min_rohum_bio_tipo_suelo.png)

###### 1.2.4.1.3 Tipo de Cobertura

Tipos de vegetación y usos de suelo.

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

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

**Función de valor de tipo de cobertura**

![](/recursos/mineria/mapa_fv_min_rohum_bio_cobertura_usv_svi_16cats.png)

##### 1.2.4.2 Infraestructura

Criterio|Definición
--|--
Caminos| Distancia a caminos y carreteras para transporte de los productos.
Electricidad| Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.
Minas| Distancia a sitios de explotación de yacimientos minerales

###### 1.2.4.2.1 Caminos

Distancia a caminos y carreteras para transporte de los productos.

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_rohum_infra_d_carreteras_caminos.png)

**Función de valor de caminos**

![](/recursos/mineria/mapa_fv_min_rohum_infra_d_carreteras_caminos.png)

###### 1.2.4.2.2 Electricidad

Distancia a red de transmisión eléctrica. Requerimiento de electricidad para la operación de trituradoras.

**Insumos**

Capa | Distancia líneas de transmisión de energía   eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_rohum_infra_d_lineas_electricas.png)

**Función de valor de electricidad**

![](/recursos/mineria/mapa_fv_min_rohum_infra_d_lineas_electricas.png)

###### 1.2.4.2.3 Minas

Distancia a sitios de explotación de yacimientos minerales.

**Insumos**

Capa | Distancia a minas y rocas dimensionables
-- | --
Fuente | [1] Yacimientos minerales - minas SGM y [2] Rocas dimensionables SGM
Año | [1] Sin dato ; [2] 2011
Escala | [1] 1:250,000 ;[2] 1:50,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_rohum_infra_rocas_banco_materiales.png)

**Función de valor de minas**

![](/recursos/mineria/mapa_fv_min_rohum_infra_rocas_banco_materiales.png)

##### 1.2.4.3 Socioeconómicos

Criterio|Definición
--|--
Localidades| Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.
Oportunidades| Proyectos de construcción y ampliación de vías de comunicación.

###### 1.2.4.3.1 Localidades

Distancia a localidades donde existe mayor demanda de materiales: Mérida y zona conurbada, Tizimín, Progreso, Valladolid e Izamal.

**Insumos**

Capa | Distancia a localidades con mayor demanda de material minero
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI
Año | 2020
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/mineria/fi_fv_min_rohum_socio_d_localidades_min.png)

**Función de valor de localidades**

![](/recursos/mineria/mapa_fv_min_rohum_socio_d_localidades_min.png)

### 1.3 Mapa de aptitud

#### 1.3.1 Mapa de aptitud de minería de arcillas

#### 1.3.1.1 Zonas de exclusión de minería de arcillas

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del sector minería**

ID | Categoría
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
7 | Manglar
13 | Tular
15 | Vegetación de petén
16 | Vegetación halófila hidrófila
17 | ND

![](/recursos/mineria/mapa_exclusion_min.png)

#### 1.3.1.2 Mapa de aptitud de minería de arcillas

![](/recursos/mineria/mapa_aptitud_min_arcilla.png)

**Pesos globales de los atributos de minería de arcillas**

Criterio | Peso
-- | --
Tipo de suelo | 0.335
Nivel freático | 0.223
Localidades | 0.140
Caminos | 0.107
Electricidad | 0.092
Tipo de cobertura | 0.062
Minas | 0.040

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del   estado
-- | --: | --:
Muy alta | 2003.2 | 5
Alta | 14019.6 | 35
Moderada | 15223.6 | 39
Baja | 5674.9 | 14
Muy baja | 189.3 | 0
Nula | 2426.0 | 6

#### 1.3.2 Sensibilidad de atributos ambientales de minería de arcillas

![](/recursos/mineria/fi_analisis_sensibilidad_mineria_arcilla.png)

#### 1.3.3 Mapa de aptitud de minería de arenas

#### 1.3.3.1 Zonas de exclusión de minería de arenas

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del sector minería**

ID | Categoría
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
7 | Manglar
13 | Tular
15 | Vegetación de petén
16 | Vegetación halófila hidrófila
17 | ND

![](/recursos/mineria/mapa_exclusion_min.png)

#### 1.3.3.2 Mapa de aptitud de minería de arenas

![](/recursos/mineria/mapa_aptitud_min_arena.png)

**Pesos globales de los atributos de minería de arenas**

Criterio | Peso
-- | --
Tipo de suelo | 0.335
Nivel freático | 0.223
Localidades | 0.140
Caminos | 0.107
Electricidad | 0.092
Tipo de cobertura | 0.062
Minas | 0.040

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del   estado
-- | --: | --:
Muy alta | 2208.4 | 6
Alta | 18923.7 | 48
Moderada | 13549.8 | 34
Baja | 2411.8 | 6
Muy baja | 16.9 | 0
Nula | 2426.0 | 6

#### 1.3.4 Sensibilidad de atributos ambientales de minería de arenas

![](/recursos/mineria/fi_analisis_sensibilidad_mineria_arena.png)

#### 1.3.5 Mapa de aptitud de minería de rocas con extracción en seco

#### 1.3.5.1 Zonas de exclusión de minería de rocas con extracción en seco

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del sector minería**

ID | Categoría
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
7 | Manglar
13 | Tular
15 | Vegetación de petén
16 | Vegetación halófila hidrófila
17 | ND

![](/recursos/mineria/mapa_exclusion_min.png)

#### 1.3.5.2 Mapa de aptitud de minería de rocas con extracción en seco

![](/recursos/mineria/mapa_aptitud_min_rosec.png)

**Pesos globales de los atributos de minería de rocas con extracción en seco**

Criterio | Peso
-- | --
Nivel freático | 0.387
Tipo de suelo | 0.174
Localidades | 0.140
Caminos | 0.107
Electricidad | 0.092
Tipo de cobertura | 0.058
Minas | 0.040

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del   estado
-- | --: | --:
Muy alta | 5777.1 | 15
Alta | 14206.0 | 36
Moderada | 13048.0 | 33
Baja | 4038.6 | 10
Muy baja | 40.9 | 0
Nula | 2426.0 | 6

#### 1.3.6 Sensibilidad de atributos ambientales de rocas con extracción en seco

![](/recursos/mineria/fi_analisis_sensibilidad_mineria_rocas_secas.png)

#### 1.3.7 Mapa de aptitud de minería de rocas con extracción en húmedo

#### 1.3.7.1 Zonas de exclusión de minería de rocas con extracción en húmedo

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Tabla de exclusión del sector minería**

ID | Categoría
-- | --
1 | Acuícola
4 | Asentamiento humano
6 | Cuerpo de agua
7 | Manglar
13 | Tular
15 | Vegetación de petén
16 | Vegetación halófila hidrófila
17 | ND

![](/recursos/mineria/mapa_exclusion_min.png)

#### 1.3.7.2 Mapa de aptitud de minería de rocas con extracción en húmedo

![](/recursos/mineria/mapa_aptitud_min_rohum.png)

**Pesos globales de los atributos de minería de rocas con extracción en húmedo**

Criterio | Peso
-- | --
Nivel freático | 0.387
Tipo de suelo | 0.174
Localidades | 0.140
Caminos | 0.107
Electricidad | 0.092
Tipo de cobertura | 0.058
Minas | 0.040

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del   estado
-- | --: | --:
Muy alta | 13851.9 | 35
Alta | 12137.3 | 31
Moderada | 1897.6 | 5
Baja | 5476.0 | 14
Muy baja | 3747.8 | 9
Nula | 2426.0 | 6

#### 1.3.8 Sensibilidad de atributos ambientales de rocas con extracción en húmedo

![](/recursos/mineria/fi_analisis_sensibilidad_mineria_rocas_humedas.png)
