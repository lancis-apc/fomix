# Pecuario porcino y avícola-En proceso de actualización

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

Fomentar el desarrollo, el crecimiento y la descentralización de empresas porcícolas y avícolas para que su operación se realice de manera ordenada y sustentable, promueva modelos de producción no convencionales a partir de porcinos y aves seleccionados, especializados o localmente adaptados e incorpore esquemas tecnológicos para reducir y mitigar impactos socioambientales, de manera que se incremente la sostenibilidad ambiental y contribuya a mejorar la salud pública.

[Lista de participantes]()

### 1.1 Modelo de decisión

![](/recursos/pec_porcino/fi_porcino.png)

### 1.2 Atributos

#### 1.2.1 Infraestructura

Atributo | Definición
-- | --
Caminos | Distancia a carreteras pavimentadas de 2 carriles y secundarias
Distancia a redes eléctricas: | Distancia a redes eléctricas CFE.
Distancia a rastro y empacadora | Infraestructura industrial complementaria (incluye establecimientos de inspección federal, plantas transformadoras de productos y empacadoras). Distancia a rastros y empacadoras porcinos y avícolas.
Puerto Progreso | Distancia a Puerto Progreso.

##### 1.2.1.1 Caminos

Distancia a carreteras pavimentadas de 2 carriles y secundarias.

Atributo | Definición
-- | --
Distancia a carreteras | Distancia a carreteras y prolongación
Distancia a caminos y veredas | Distancia a caminos y veredas.

###### 1.2.1.1.1 Distancia a carreteras

Distancia a carreteras y prolongación.

**Insumos**

Capa | Distancia a carreteras y prolongaciones
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Campo | TIPO_VIAL
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/pec_porcino/fi_fv_por_infra_cam_d_carretera_prolongacion.png)

**Función de valor de distancia a carreteras**

![](/recursos/pec_porcino/mapa_fv_por_infra_cam_d_carretera_prolongacion.png)

###### 1.2.1.1.2 Distancia a caminos y veredas

Distancia a caminos y veredas.

**Insumos**

Capa | Distancia a veredas y caminos
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Campo | TIPO_VIAL
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/pec_porcino/fi_fv_por_infra_cam_d_caminos_veredas.png)

**Función de valor de distancia a caminos y veredas**

![](/recursos/pec_porcino/mapa_fv_por_infra_cam_d_caminos_veredas.png)

##### 1.2.1.2 Distancia a redes eléctricas

Distancia a redes eléctricas CFE.

**Insumos**

Capa | Distancia líneas de transmisión de energía   eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/pec_porcino/fi_fv_por_infra_elec_d_lineas_electricas.png)

**Función de valor de distancia a redes eléctricas**

![](/recursos/pec_porcino/mapa_fv_por_infra_elec_d_lineas_electricas.png)

##### 1.2.1.3 Distancia a rastro y empacadora

Infraestructura industrial complementaria (incluye establecimientos de inspección federal, plantas transformadoras de productos y empacadoras). Distancia a rastros y empacadoras porcinos y avícolas.

**Insumos**

Capa | Distancia a rastros, sitios de empacado y procesamiento de ganado porcino y avícola
-- | --
Fuente | [1] Infraestructura del sector Agroalimentario centros de sacrificio y TIF SAGARPA SIAP; [2] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [3] Datos de indicador. Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI
Año | [1] Sin dato; [2] [3] 2020
Escala | Localidad
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/pec_porcino/fi_fv_por_infra_tif_d_rastros_porcinos_avicolas.png)

**Función de valor de distancia a rastro y empacadora**

![](/recursos/pec_porcino/mapa_fv_por_infra_tif_d_rastros_porcinos_avicolas.png)

##### 1.2.1.4 Puerto Progreso

Distancia a Puerto Progreso.

**Insumos**

Capa | Distancia a Puerto Progreso
-- | --
Fuente | [1] Ubicación de los principales puertos de el estado de Yucatán POETY y [2] Red Nacional de Caminos (RNC) Red vial - INEGI
Año | [1] 2002; [2] 2019
Campo | [2] TIPO_VIAL
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/pec_porcino/fi_fv_por_infra_puer_d_puerto_progreso_con_carreteras.png)

**Función de valor de Puerto Progreso**

![](/recursos/pec_porcino/mapa_fv_por_infra_puer_d_puerto_progreso_con_carreteras.png)

#### 1.2.2 Biofísicos

Atributo | Definición
-- | --
Profundidad del acuífero | Distancia al acuífero o nivel piezométrico. Costo de extracción de agua del acuífero
Cobertura | Vegetación o uso de suelo actual

##### 1.2.2.1 Profundidad del acuífero

Distancia al acuífero o nivel piezométrico. Costo de extracción de agua del acuífero.

**Insumos**

Capa | Nivel freático
-- | --
Fuente | Nivel freático POETY
Año | Sin dato
Campo | n_freat_m
Escala | Estatal
Unidades | Metros

**Parámetros de la función de valor**

![](/recursos/pec_porcino/fi_fv_por_bio_agua_d_manto_freatico.png)

**Función de valor de disponibilidad de agua**

![](/recursos/pec_porcino/mapa_fv_por_bio_agua_d_manto_freatico.png)

##### 1.2.2.2 Cobertura

Vegetación o uso de suelo actual.

**Insumos**

Capa | Cobertura del suelo
-- | --
Fuente | Mapa de coberturas del suelo del estado de Yucatán al año base 2016 CONAFOR
Año | 2020
Campo | Desc_SAMOF
Escala | Sin dato
Unidades | Adimensional

**Función de valor de cobertura**

![](/recursos/pec_porcino/mapa_fv_por_bio_usv_usv_cobertura_conafor.png)

#### 1.2.3 Mano de obra

Atributo | Definición
-- | --
Rural-Urbano | Distancia a localidades rurales-urbanas => 2500 y <15,000 habitantes.
Rurales | Distancia localidades rurales < 2,500 habitantes.
Urbanos | Distancia a localidades urbanas >= 15,000 habitantes.

##### 1.2.3.1 Rural-Urbano

Distancia a localidades rurales-urbanas => 2500 y <15,000 habitantes.

**Insumos**

Capa | Distancia a localidades rurales - urbanas (entre 2,500 y 15,000 habitantes)
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [2] Datos de indicador. Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | 2020
Campo | [2] POBTOT
Escala | Localidad
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/pec_porcino/fi_fv_por_socio_loca_d_localidades_2500_15k_exc.png)

**Función de valor de rural-urbano**

![](/recursos/pec_porcino/mapa_fv_por_socio_loca_d_localidades_2500_15k_exc.png)

##### 1.2.3.2 Rurales

Distancia localidades rurales < 2,500 habitantes.

**Insumos**

Capa | Distancia a localidades rurales (menos de 2,500 habitantes)
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [2] Datos de indicador. Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | 2020
Campo | [2] POBTOT
Escala | Localidad
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/pec_porcino/fi_fv_por_socio_loca_d_localidades_2500_exc.png)

**Función de valor de rurales**

![](/recursos/pec_porcino/mapa_fv_por_socio_loca_d_localidades_2500_exc.png)

##### 1.2.3.3 Urbanos

Distancia a localidades urbanas >= 15,000 habitantes.

**Insumos**

Capa | Distancia a localidades urbanas (mayor o igual a 15,000 habitantes)
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [2] Datos de indicador. Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | 2020
Campo | [2] POBTOT
Escala | Localidad
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/pec_porcino/fi_fv_por_socio_loca_d_localidades_15k_exc.png)

**Función de valor de urbanos**

![](/recursos/pec_porcino/mapa_fv_por_socio_loca_d_localidades_15k_exc.png)

### 1.3 Mapa de aptitud

#### 1.3.1 Zona de aprovechamiento actual del sector pecuario porcino

**Insumos**

Capa | Granjas porcinas y avícolas
-- | --
Fuente | Granjas porcinas y avícolas en la Península de Yucatán GeoComunes con datos de SAGARPA SIAP
Año | 2019
Escala | Sin dato
Unidades | Adimensional

![](/recursos/pec_porcino/mapa_por_aprov_actual.png)

#### 1.3.2 Zona de exclusión

**Insumos**

Capa | Cobertura del suelo
-- | --
Fuente | Mapa de coberturas del suelo del estado de Yucatán al año base 2016 CONAFOR
Año | 2020
Campo | Desc_SAMOF
Escala | Sin dato
Unidades | Adimensional

**Tabla de exclusión del sector pecuario porcíno y avícola**

ID | Categoría
-- | --
1 | Agua (H2O, PRE y ACUI)
3 | Manglar y Petén (VM y VP)
12 | Tular (VT)
13 | Urbano y Construido (ZU y AH)
14 | Vegetación Halófila Hidrófila (VHH)
15 | Vegetación de Dunas Costeras (VU)

![](/recursos/pec_porcino/mapa_por_exclusion.png)

#### 1.3.3 Mapa de aptitud del sector pecuario porcino y avícola

![](/recursos/pec_porcino/mapa_por_aptitud.png)

**Tabla de pesos globales**

Criterio | Peso
-- | --
Distancia a carreteras y prolongación | 0.265
Profundidad del acuífero | 0.232
Distancia a redes eléctricas | 0.161
Distancia a rastro y empacadora | 0.087
Distancia a caminos y veredas | 0.066
Asentamiento rural-urbano | 0.053
Puerto Progreso | 0.047
Cobertura | 0.046
Asentamiento rural | 0.030
Asentamiento urbano | 0.012

**Área por categoria de aptitud**

Categoría | Km² | Porcentaje del   estado
-- | --: | --:
Muy alta | 6792.6 | 17
Alta | 14471.5 | 37
Moderada | 10005.6 | 25
Baja | 3724.9 | 9
Muy baja | 1471.0 | 4
Nula | 3071.1 | 8

#### 1.3.4 Sensibilidad de atributos ambientales

![](/recursos/pec_porcino/fi_analisis_sensibilidad_porcino_avicola.png)
