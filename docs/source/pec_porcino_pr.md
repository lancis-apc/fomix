# Pecuario porcino y avícola-Final

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

Fomentar el desarrollo, el crecimiento y la descentralización de empresas porcícolas y avícolas para que su operación se realice de manera ordenada y sustentable, promueva modelos de producción no convencionales a partir de porcinos y aves seleccionados, especializados o localmente adaptados e incorpore esquemas tecnológicos para reducir y mitigar impactos socioambientales, de manera que se incremente la sostenibilidad ambiental y contribuya a mejorar la salud pública.

[Lista de participantes](https://www.dropbox.com/s/cifalc2f4lo3kgn/lista_asistencia_porcino.pdf?dl=0)

### 1.1 Modelo de decisión

![](/recursos/pec_porcino/fi_porcino.png)

### 1.2 Atributos

#### 1.2.1 Infraestructura

Atributo | Definición
-- | --
Caminos | Distancia a carreteras pavimentadas de 2 carriles y secundarias
Distancia a redes eléctricas: | Distancia a redes eléctricas CFE.
Distancia a rastro y empacadora | Infraestructura industrial complementaria (incluye establecimientos de inspección federal, plantas transformadoras de productos y empacadoras). Distancia a rastros y empacadoras porcinos y avícolas.
Puerto Progreso | Distancia a Puerto Progreso para recepción de insumos.

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

Distancia a Puerto Progreso para recepción de insumos.

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

**Parámetros de la función de valor**

ID | Categoría | Preferencia del productor | FV
-- | -- | -- | --
4 | Pastizal Cultivado e Inducido (PC y PI) | Muy alta | 1.00
5 | Pastizal Natural (PN, PY, PH, VW, VS y VSI) | Muy alta | 1.00
6 | Selva Baja Caducifolia Subcaducifolia (SBC, SBK, SBS,MST y VPI   ) | Muy alta | 1.00
7 | Selva Baja y Mediana Subperennifolia (SBQ, SBQP, SMQ, SG y   VPN) | Muy alta | 1.00
9 | Suelo Desnudo (ADV y DV) | Muy alta | 1.00
8 | Selva Mediana Caducifolia y Subcaducifolia (SMC y SMS) | Alta | 0.75
10 | Tierra Agrícola Cultivo Anual (T, R y H) (A y S) | Alta | 0.75
11 | Tierra Agrícola Cultivo Perenne (T, R y H) (P) | Alta | 0.75
2 | Bosque Cultivado e Inducido (BC y BI) | Baja | 0.25
1 | Agua (H2O, PRE y ACUI) | Nula | 0.00
3 | Manglar y Petén (VM y VP) | Nula | 0.00
12 | Tular (VT) | Nula | 0.00
13 | Urbano y Construido (ZU y AH) | Nula | 0.00
14 | Vegetación Halófila Hidrófila (VHH) | Nula | 0.00
15 | Vegetación de Dunas Costeras (VU) | Nula | 0.00
16 | NA | Nula | 0.00

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

#### 1.3.1 Zona de aprovechamiento actual del sector pecuario porcino y avícola

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

Capa | Cobertura del suelo y localidades
-- | --
Fuente | [1] Mapa de coberturas del suelo del estado de Yucatán al año base 2016 CONAFOR y [2] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI
Año | 2020
Campo | [1] Desc_SAMOF
Escala | Sin dato
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

![](/recursos/pec_porcino/mapa_por_exclusion.png)

#### 1.3.3 Mapa de aptitud del sector pecuario porcino y avícola

![](/recursos/pec_porcino/mapa_por_aptitud.png)

**Tabla de pesos globales de los atributos ambientales del sector percuario porcino y avícola**

Criterio | Peso
-- | --
Carreteras | 0.265
Profundidad del acuífero | 0.232
Distancia a redes eléctricas | 0.161
Distancia a rastro y empacadoras | 0.087
Caminos y veredas | 0.066
Rurales-Urbanas | 0.053
Puerto Progreso | 0.047
Cobertura | 0.046
Rurales | 0.030
Urbanas | 0.012

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del   estado
-- | --: | --:
Muy alta | 6792.6 | 17
Alta | 14471.5 | 37
Moderada | 10005.6 | 25
Baja | 3724.9 | 9
Muy baja | 1471.0 | 4
Nula | 3071.1 | 8

#### 1.3.4 Sensibilidad de atributos ambientales del sector percuario porcino y avícola

![](/recursos/pec_porcino/fi_analisis_sensibilidad_porcino_avicola.png)
