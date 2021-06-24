# Pecuario porcino y avícola-Final

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

Fomentar el desarrollo, el crecimiento y la descentralización de empresas porcícolas y avícolas para que su operación se realice de manera ordenada y sustentable, promueva modelos de producción no convencionales a partir de porcinos y aves seleccionados, especializados o localmente adaptados e incorpore esquemas tecnológicos para reducir y mitigar impactos socioambientales, de manera que se incremente la sostenibilidad ambiental y contribuya a mejorar la salud pública.

[Lista de participantes](https://www.dropbox.com/s/cifalc2f4lo3kgn/lista_asistencia_porcino.pdf?dl=0)

## 1. Pecuario porcino y avícola

Esta es la versión que se utilizará para análisis de conflictos.

### 1.1 Modelo de decisión

![](./recursos/pec_porcino_v2/fi_porcino.png)

### 1.2 Atributos

#### 1.2.1 Infraestructura

Atributo | Definición
-- | --
Caminos | Distancia (km) a carreteras pavimentadas de 2 carriles y secundarias.
Distancia a redes eléctricas: | Distancia (km) a redes eléctricas principales o primarias de la Comisión Federal de Electricidad (CFE) como disponibilidad de energía para la operación de las granjas.
Distancia a rastro y empacadora | Distancia (km) a rastros y empacadoras porcinos y avícolas. Incluye infraestructura industrial complementaria como establecimientos de inspección federal, plantas transformadoras de productos y empacadoras.
Distancia a Puerto Progreso | Distancia en kilómetros de las plantas de producción de alimento (ubicadas en su mayoría a una distancia cercana a Puerto Progreso).

##### 1.2.1.1 Caminos

Distancia (km) a carreteras pavimentadas de 2 carriles y secundarias.

Atributo | Definición
-- | --
Distancia a carreteras | Distancia (km) a carreteras y prolongación
Distancia a caminos y veredas | Distancia (km) a caminos y veredas.

###### 1.2.1.1.1 Distancia a carreteras

Distancia (km) a carreteras y prolongación.

**Insumos**

Capa | Distancia a carreteras y prolongaciones
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Campo | TIPO_VIAL
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](./recursos/pec_porcino_v2/fi_fv_por_infra_cam_d_carretera_prolongacion.png)

<div style="page-break-after: always;"></div>

**Función de valor de distancia a carreteras**

![](./recursos/pec_porcino_v2/mapa_fv_por_infra_cam_d_carretera_prolongacion.png)

###### 1.2.1.1.2 Distancia a caminos y veredas

Distancia (km) a caminos y veredas.

**Insumos**

Capa | Distancia a veredas y caminos
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Campo | TIPO_VIAL
Escala | Sin dato
Unidades | Kilómetros

<div style="page-break-after: always;"></div>

**Parámetros de la función de valor**

![](./recursos/pec_porcino_v2/fi_fv_por_infra_cam_d_caminos_veredas.png)

**Función de valor de distancia a caminos y veredas**

![](./recursos/pec_porcino_v2/mapa_fv_por_infra_cam_d_caminos_veredas.png)

##### 1.2.1.2 Distancia a redes eléctricas

Distancia (km) a redes eléctricas principales o primarias de la Comisión Federal de Electricidad (CFE) como disponibilidad de energía para la operación de las granjas.

**Insumos**

Capa | Distancia a líneas de transmisión de energía   eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](./recursos/pec_porcino_v2/fi_fv_por_infra_elec_d_lineas_electricas.png)

**Función de valor de distancia a redes eléctricas**

![](./recursos/pec_porcino_v2/mapa_fv_por_infra_elec_d_lineas_electricas.png)

<div style="page-break-after: always;"></div>

##### 1.2.1.3 Distancia a rastro y empacadora

Distancia (km) a rastros y empacadoras porcinos y avícolas. Incluye infraestructura industrial complementaria como establecimientos de inspección federal, plantas transformadoras de productos y empacadoras.

**Insumos**

Capa | Distancia a rastros, sitios de empacado y procesamiento de ganado porcino y avícola
-- | --
Fuente | [1] Infraestructura del sector Agroalimentario centros de sacrificio y TIF SAGARPA SIAP; [2] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [3] Datos de indicador. Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI
Año | [1] Sin dato; [2] [3] 2020
Escala | Localidad
Unidades | Kilómetros

**Parámetros de la función de valor**

![](./recursos/pec_porcino_v2/fi_fv_por_infra_tif_d_rastros_porcinos_avicolas.png)

<div style="page-break-after: always;"></div>

**Función de valor de distancia a rastro y empacadora**

![](./recursos/pec_porcino_v2/mapa_fv_por_infra_tif_d_rastros_porcinos_avicolas.png)

##### 1.2.1.4 Distancia a Puerto Progreso

Distancia en kilómetros de las plantas de producción de alimento (ubicadas en su mayoría a una distancia cercana a Puerto Progreso).

**Insumos**

Capa | Distancia a Puerto Progreso
-- | --
Fuente | [1] Ubicación de los principales puertos del estado de Yucatán POETY y [2] Red Nacional de Caminos (RNC) Red vial - INEGI
Año | [1] 2002; [2] 2019
Campo | [2] TIPO_VIAL
Escala | Sin dato
Unidades | Kilómetros

<div style="page-break-after: always;"></div>

**Parámetros de la función de valor**

![](./recursos/pec_porcino_v2/fi_fv_por_infra_puer_d_puerto_progreso_con_carreteras.png)

**Función de valor de distancia a Puerto Progreso**

![](./recursos/pec_porcino_v2/mapa_fv_por_infra_puer_d_puerto_progreso_con_carreteras.png)

#### 1.2.2 Biofísicos

Atributo | Definición
-- | --
Costo de extracción de agua | Inversión necesaria para extraer el agua del acuífero, determinada por la profundidad o distancia a la que se encuentra el acuífero o nivel piezométrico (m).
Cobertura | Vegetación o uso de suelo actual

##### 1.2.2.1 Costo de extracción de agua

Inversión necesaria para extraer el agua del acuífero, determinada por la profundidad o distancia a la que se encuentra el acuífero o nivel piezométrico (m).

**Insumos**

Capa | Nivel freático
-- | --
Fuente | Nivel freático POETY
Año | 2007
Campo | n_freat_m
Escala | Estatal
Unidades | Metros

**Parámetros de la función de valor**

![](./recursos/pec_porcino_v2/fi_fv_por_bio_agua_d_manto_freatico.png)

<div style="page-break-after: always;"></div>

**Función de valor de costo de extracción de agua**

![](./recursos/pec_porcino_v2/mapa_fv_por_bio_agua_d_manto_freatico.png)

##### 1.2.2.2 Cobertura

Vegetación o uso de suelo actual.

**Insumos**

Campo | Uso del suelo y vegetación
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI y [2] Mapa de uso del suelo y vegetación de la zona costera asociada a los manglares, Región Península de Yucatán CONABIO
Año | [1] 2017; [2] 2021
Campo | [1] descripcio; [2] Descrip
Escala | [1] 1:250,000; [2] 1:50,000
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Preferencia del productor | FV
-- | -- | -- | --
8 | Pastizal | Muy alta | 1.00
9 | Selva baja | Muy alta | 1.00
10 | Selva mediana | Muy alta | 1.00
11 | Sin vegetación | Muy alta | 1.00
12 | Sabana | Muy alta | 1.00
2 | Agricultura de riego | Alta | 0.75
3 | Agricultura de temporal | Alta | 0.75
5 | Bosque cultivado/Palmar inducido | Baja | 0.25
1 | Acuícola | Nula | 0.00
4 | Asentamiento humano | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
7 | Manglar | Nula | 0.00
13 | Tular | Nula | 0.00
14 | Vegetación de duna costera | Nula | 0.00
15 | Vegetación de petén | Nula | 0.00
16 | Vegetación halófila hidrófila | Nula | 0.00
17 | ND | Nula | 0.00

<div style="page-break-after: always;"></div>

**Función de valor de cobertura**

![](./recursos/pec_porcino_v2/mapa_fv_por_bio_usv_usv_cobertura_conafor.png)

#### 1.2.3 Disponibilidad de mano de obra

Atributo | Definición
-- | --
Localidades rural-urbano | Distancia (km) a localidades rurales-urbanas => 2500 y <15,000   habitantes.
Localidades rurales | Distancia (km) a localidades rurales < 2,500 habitantes.
Localidades urbanas | Distancia (km) a localidades urbanas >= 15,000 habitantes.

##### 1.2.3.1 Localidades rural-urbano

Distancia (km) a localidades rurales-urbanas => 2500 y <15,000 habitantes.

**Insumos**

Capa | Distancia a localidades rurales - urbanas (entre 2,500 y 15,000 habitantes)
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [2] Datos de indicador. Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | 2020
Campo | [2] POBTOT
Escala | Localidad
Unidades | Kilómetros

**Parámetros de la función de valor**

![](./recursos/pec_porcino_v2/fi_fv_por_socio_loca_d_localidades_2500_15k_exc.png)

**Función de valor de localidades rural-urbano**

![](./recursos/pec_porcino_v2/mapa_fv_por_socio_loca_d_localidades_2500_15k_exc.png)

##### 1.2.3.2 Localidades rurales

Distancia (km) a localidades rurales < 2,500 habitantes.

**Insumos**

Capa | Distancia a localidades rurales (menos de 2,500 habitantes)
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [2] Datos de indicador. Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | 2020
Campo | [2] POBTOT
Escala | Localidad
Unidades | Kilómetros

**Parámetros de la función de valor**

![](./recursos/pec_porcino_v2/fi_fv_por_socio_loca_d_localidades_2500_exc.png)

<div style="page-break-after: always;"></div>

**Función de valor de localidades rurales**

![](./recursos/pec_porcino_v2/mapa_fv_por_socio_loca_d_localidades_2500_exc.png)

##### 1.2.3.3 Localidades urbanas

Distancia (km) a localidades urbanas >= 15,000 habitantes.

**Insumos**

Capa | Distancia a localidades urbanas (mayor o igual a 15,000 habitantes)
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [2] Datos de indicador. Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | 2020
Campo | [2] POBTOT
Escala | Localidad
Unidades | Kilómetros

<div style="page-break-after: always;"></div>

**Parámetros de la función de valor**

![](./recursos/pec_porcino_v2/fi_fv_por_socio_loca_d_localidades_15k_exc.png)

**Función de valor de localidades urbanas**

![](./recursos/pec_porcino_v2/mapa_fv_por_socio_loca_d_localidades_15k_exc.png)

Con base en la solicitud de consulta a los productores, la versión 2 se utilizará como insumo para el POETY.

### 1.3 Mapa de aptitud

#### 1.3.1 Zona de aprovechamiento actual del sector pecuario porcino y avícola

**Insumos**

Capa | Granjas porcinas y avícolas
-- | --
Fuente | Granjas porcinas y avícolas en la Península de Yucatán GeoComunes con datos de SAGARPA SIAP
Año | 2019
Escala | Sin dato
Unidades | Adimensional

![](./recursos/pec_porcino_v2/mapa_por_aprov_actual.png)

#### 1.3.2 Zona de exclusión

**Insumos**

Capa | Uso del suelo y vegetación y localidades
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI, [2] Mapa de uso del suelo y vegetación de la zona costera asociada a los manglares, Región Península de Yucatán CONABIO y [3] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI
Año | [1] 2017; [2] 2021; [3] 2020
Campo | [1] descripcio; [2] Descrip
Escala | [1] 1:250,000;[2] 1:50,000; [3] Sin dato
Unidades | Adimensional

**Tabla de exclusión del sector pecuario porcino y avícola**

[1]

ID | Categoría
-- | --
1 | Agua (H2O, PRE y ACUI)
3 | Manglar y Petén (VM y VP)
12 | Tular (VT)
14 | Vegetación Halófila Hidrófila (VHH)
15 | Vegetación de Dunas Costeras (VU)
16 | NA

[2] Se utilizaron todas las localidades (urbanas y rurales).

![](./recursos/pec_porcino_v2/mapa_por_exclusion.png)

<div style="page-break-after: always;"></div>

#### 1.3.3 Mapa de aptitud del sector pecuario porcino y avícola

![](./recursos/pec_porcino_v2/mapa_por_aptitud.png)

**Tabla de pesos globales de los atributos ambientales del sector percuario porcino y avícola**

Criterio | Peso
-- | --
Distancia a carreteras | 0.265
Costo de extracción de agua | 0.232
Distancia a redes eléctricas | 0.161
Distancia a rastro y empacadora | 0.087
Distancia a caminos y veredas | 0.066
Localidades rurales-urbanas | 0.053
Distancia a Puerto Progreso | 0.047
Cobertura | 0.046
Localidades rurales | 0.030
Localidades urbanas | 0.012

<div style="page-break-after: always;"></div>

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del estado
-- | --: | --:
Muy alta | 10354.5 | 26
Alta | 13590.9 | 34
Moderada | 8865.5 | 22
Baja | 2762.5 | 7
Muy baja | 917.0 | 2
Nula | 3046.2 | 8

#### 1.3.4 Sensibilidad de atributos ambientales del sector percuario porcino y avícola

![](./recursos/pec_porcino_v2/fi_analisis_sensibilidad_porcino_avicola.png)
