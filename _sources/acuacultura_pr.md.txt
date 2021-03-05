# Acuacultura-En proceso de actualización

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

Promover el crecimiento de la producción acuícola de agua marina en la zona costera y de agua dulce al interior del estado, a partir de la capacitación del personal técnico, la construcción de granjas y la integración de la infraestructura ya existente a un estándar de sustentabilidad.
Implementar en la granjas acuícolas infraestructura y tecnología para la mejora de los procesos de producción, como el uso de sistemas de recirculación del agua, sistemas acuapónicos y de generación de energía solar.
Establecer y habilitar centros de acopio, laboratorios de producción de semilla, unidades de bioseguridad y centros de capacitación para la producción acuícola (proyecto de parque acuícola).

[Lista de participantes]()

### 1.1 Modelo de decisión

![](/recursos/pesca/fi_acuacultura.png)

### 1.2 Criterios

#### 1.2.1 Biofísicos

Criterio|Definición
--|--|
Acceso a agua| Posibilidad de extraer agua subterránea, considerando el nivel piezométrico.
Salinidad| Interfase salina
Vegetación| Tipos de vegetación y usos de suelo.

#### 1.2.2 Infraestructura

Criterio|Definición
--|--|
Carreteras| Distancia a caminos, brechas y carreteras para el transporte de insumos y productos.
Electricidad| Distancia a red de transmisión eléctrica.
Localidades| Distancia a localidades de 2,500 habitantes o más, para mano de obra en las granjas acuícolas.

<!--
## 1. Energía industrial

Fuentes de energía a escala industrial.

### 1.1 Modelo de decisión

![](/recursos/energia/energia_industrial_v3.png)

### 1.2 Fuentes

#### 1.2.1 Hidrocarburos líquidos

Consumo y almacenamiento de hidrocarburos líquidos. Plantas que utilizan diesel o combustóleo para generar energía. Terminales de almacenamiento y reparto.

Atributos | Definición
-- | --
Carreteras | Distancia a carreteras.
Localidades | Distancia a asentamientos humanos.

##### 1.2.1.1 Carreteras

Distancia a carreteras.

**Insumos**

Capa | Distancia a carreteras
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/energia/fi_fv_ene_ind_hidro_d_carreteras.png)

**Función de valor de carreteras**

![](/recursos/energia/mapa_fv_ene_ind_hidro_d_carreteras.png)

##### 1.2.1.2 Localidades

Distancia a asentamientos humanos.

**Insumos**

Capa | Distancia a localidades
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI
Año | 2020
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/energia/fi_fv_ene_ind_hidro_d_localidades.png)

**Función de valor de localidades**

![](/recursos/energia/mapa_fv_ene_ind_hidro_d_localidades.png)

#### 1.2.2 Gas natural

Transporte de gas natural por gasoductos y vehículos terrestres. Terminales de almacenamiento y centrales eléctricas. Uso de gas comprimido por empresas.

Atributos | Definición
-- | --
Distancia del gasoducto a zonas industriales | Zonas industriales que demandan gas natural.
Distancia del gasoducto a localidades | Distancia a asentamientos humanos.

##### 1.2.2.1  Distancia del gasoducto a zonas industriales

Zonas industriales que demandan gas natural.

**Insumos**

Capa | Distancia del gasoducto a los parques   industriales
-- | --
Fuente | [1] ?; [2] Gasoductos GeoComunes con datos de CRE, SEMARNAT, ASEA y CFE
Año | [1] ?; [2] 2020
Escala | [1] ? ; [2] Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/energia/fi_fv_ene_ind_gas_d_gasoducto_parques_industriales.png)

**Función de valor de distancia del gasoducto a zonas industriales**

![](/recursos/energia/mapa_fv_ene_ind_gas_d_gasoducto_parques_industriales.png)

##### 1.2.2.2 Distancia del gasoducto a localidades

Distancia a asentamientos humanos.

**Insumos**

Capa | Distancia de localidades al gasoducto
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [2] Gasoductos GeoComunes con datos de CRE, SEMARNAT, ASEA y CFE
Año | 2020
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/energia/fi_fv_ene_ind_gas_d_localidades_gasoducto.png)

**Función de valor de distancia del gasoducto a localidades**

![](/recursos/energia/mapa_fv_ene_ind_gas_d_localidades_gasoducto.png)

#### 1.2.3 Solar

Instalaciones industriales que aprovechan la irradiación solar como fuente de energía.

Atributos | Definición
-- | --
Distancia a red eléctrica | Distancia a líneas de transmisión y subestaciones.
Cobertura | Tipo de vegetación.
Tenencia de la tierra | Áreas ejidales (comunitaria o parcelada) y no ejidales.

##### 1.2.3.1 Distancia a red eléctrica

Distancia a líneas de transmisión y subestaciones.

**Insumos**

Capa | Distancia líneas de transmisión de energía eléctrica
-- | --
Fuente | Líneas de transmisión en México. GeoComunes con datos de CFE
Año | 2010
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/energia/fi_fv_ene_ind_sol_d_lineas_transmision.png)

**Función de valor de distancia a red eléctrica**

![](/recursos/energia/mapa_fv_ene_ind_sol_d_lineas_transmision.png)

##### 1.2.3.2 Cobertura

Tipo de vegetación.

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
2 | Agricultura de riego | Máxima | 1.00
3 | Agricultura de temporal | Máxima | 1.00
5 | Bosque cultivado/Palmar inducido | Máxima | 1.00
8 | Pastizal | Máxima | 1.00
11 | Sin vegetación | Máxima | 1.00
4 | Asentamiento humano | Moderada | 0.70
9 | Selva baja | Baja | 0.56
10 | Selva mediana | Baja | 0.56
12 | Sabana | Muy baja | 0.33
1 | Acuícola | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
7 | Manglar | Nula | 0.00
13 | Tular | Nula | 0.00
14 | Vegetación de duna costera | Nula | 0.00
15 | Vegetación de petén | Nula | 0.00
16 | Vegetación halófila hidrófila | Nula | 0.00
17 | ND | Nula | 0.00

**Función de valor de cobertura**

![](/recursos/energia/mapa_fv_ene_ind_sol_cobertura_usv_svi_16cats.png)

##### 1.2.3.3 Tenencia de la tierra

Áreas ejidales (comunitaria o parcelada) y no ejidales.

**Insumos**

Capa | Tenencia de la tierra
-- | --
Fuente | [1] Zonas de Tierras Parceladas RAN y [2] Tierra de uso común RAN
Año | 2020
Escala | Sin dato
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoria | FV
-- | -- | --
3 | No ejidal | 1.00
2 | Zona de tierras parceladas | 0.52
1 | Tierra de uso común | 0.19

**Función de valor de tenencia**

![](/recursos/energia/mapa_fv_ene_ind_sol_tenencia_tierra.png)

#### 1.2.4 Eólica

Instalaciones de generación de energía, mayores a 0.5 MW.

Atributos | Definición
-- | --
Velocidad | Velocidad del viento en m/s a 120 m de altura, para colocar dispositivos de conversión de energía eólica a eléctrica.
Distancia a red eléctrica | Distancia a líneas de transmisión y subestaciones.
Cobertura | Tipo de vegetación.
Distancia a caminos | Distancia a carreteras.
Distancia a localidades | Distancia de asentamientos humanos a los aerogeneradores, excluye a las localidades.

##### 1.2.4.1 Velocidad

Velocidad del viento en m/s a 120 m de altura, para colocar dispositivos de conversión de energía eólica a eléctrica.

**Insumos**

Capa | Velocidad del viento a 120 metros de altura
-- | --
Fuente | Velocidad de viento a 120 metros de altura (anual) SENER-CFE
Año | 2014
Campo | Velocidad
Escala | 7 km
Unidades | m/s

**Parámetros de la función de valor**

![](/recursos/energia/fi_fv_ene_ind_eol_velocidad_viento_120m.png)

**Función de valor de velocidad**

![](/recursos/energia/mapa_fv_ene_ind_eol_velocidad_viento_120m.png)

##### 1.2.4.2 Distancia a red eléctrica

Distancia a líneas de transmisión y subestaciones.

**Insumos**

Capa | Distancia a líneas de transmisión de energía   eléctrica
-- | --
Fuente | Líneas de transmisión en México. GeoComunes con datos de CFE
Año | 2020
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/energia/fi_fv_ene_ind_eol_d_lineas_transmision.png)

**Función de valor de distancia a red eléctrica**

![](/recursos/energia/mapa_fv_ene_ind_eol_d_lineas_transmision.png)

##### 1.2.4.3 Cobertura

Tipo de vegetación.

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Cobertura | Importancia | FV
-- | -- | -- | --
2 | Agricultura de riego | Máxima | 1.00
3 | Agricultura de temporal | Máxima | 1.00
5 | Bosque cultivado/Palmar inducido | Máxima | 1.00
8 | Pastizal | Máxima | 1.00
11 | Sin vegetación | Máxima | 1.00
9 | Selva baja | Baja | 0.56
10 | Selva mediana | Baja | 0.56
12 | Sabana | Muy baja | 0.33
15 | Vegetación de petén | Muy baja | 0.33
1 | Acuícola | Nula | 0.00
4 | Asentamiento humano | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
7 | Manglar | Nula | 0.00
13 | Tular | Nula | 0.00
14 | Vegetación de duna costera | Nula | 0.00
16 | Vegetación halófila hidrófila | Nula | 0.00
17 | ND | Nula | 0.00

**Función de valor de cobertura**

![](/recursos/energia/mapa_fv_ene_ind_eol_cobertura_usv_svi_16cats.png)

##### 1.2.4.4 Distancia a caminos

Distancia a carreteras.

**Insumos**

Capa | Distancia a carreteras
-- | --
Fuente | Red Nacional de Caminos (RNC) INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/energia/fi_fv_ene_ind_eol_d_carreteras.png)

**Función de valor de distancia a carreteras**

![](/recursos/energia/mapa_fv_ene_ind_eol_d_carreteras.png)

##### 1.2.4.5 Distancia a localidades

Distancia de asentamientos humanos a los aerogeneradores, excluye a las localidades.

**Insumos**

Capa | Distancia a localidades
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI
Año | 2020
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/energia/fi_fv_ene_ind_eol_d_localidades.png)

**Función de valor de distancia a localidades**

![](/recursos/energia/mapa_fv_ene_ind_eol_d_localidades.png)

#### 1.2.5 Biomasa

Proyectos diseñados que utilizan material biológico, para conversion en energía utilizable. Incluye los desechos de granjas porcícolas para producir energía eléctrica.

Atributos | Definición
-- | --
Residuos urbanos | Distancia a los sitios de disposición final de residuos urbanos
Distancia a granjas porcícolas | Distancia a granjas porcícolas
Residuos vegetales | Residuos agrícolas y forestales

##### 1.2.5.1 Residuos urbanos

Distancia a los sitios de disposición final de residuos urbanos.

**Insumos**

Capa | Distancia a sitios de disposición final
-- | --
Fuente | Sitios de disposición final de residuos INEGI-SEMARNAT
Año | 2017
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/energia/fi_fv_ene_ind_bio_d_sitios_disp_residuos.png)

**Función de valor de residuos urbanos**

![](/recursos/energia/mapa_fv_ene_ind_bio_d_sitios_disp_residuos.png)

##### 1.2.5.2 Distancia a granjas porcícolas

Distancia a granjas porcícolas.

**Insumos**

Capa | Distancia a granjas porcinas
-- | --
Fuente | Granjas porcinas y avícolas en la Península de Yucatán GeoComunes con datos de SAGARPA SIAP
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/energia/fi_fv_ene_ind_bio_d_granjas_porcinas.png)

**Función de valor de distancia a granjas porcícolas**

![](/recursos/energia/mapa_fv_ene_ind_bio_d_granjas_porcinas.png)

##### 1.2.5.3 Residuos vegetales

Residuos agrícolas y forestales.

**Insumos**

Capa | Residuos agrícolas forestales
-- | --
Fuente | Residuos agrícolas forestales (municipal) SENER-CFE
Año | 2013
Campo | POTENER
Escala | 1:50,000
Unidades | TJ/a

**Parámetros de la función de valor**

![](/recursos/energia/fi_fv_ene_ind_bio_potencial_biomasa_residuos_agricolas_forestales.png)

**Función de valor de residuos vegetales**

![](/recursos/energia/mapa_fv_ene_ind_bio_potencial_biomasa_residuos_agricolas_forestales.png)

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
