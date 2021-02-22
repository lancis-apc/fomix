# Industrial-En proceso de actualización

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

* Incrementar la productividad y diversificar las actividades en sector industrial, considerando las actividades e infraestructura de: (1) producción, (2) almacenamiento y centros de distribución y de logística, y (3) comercialización de insumos y productos terminados
* Disminuir el impacto ambiental, en cuanto al consumo de recursos y suelo y generación de residuos
* Promover la producción en el sector industrial mediante el favorecimiento de economía circular
* Promover la descentralización de la actividad industrial hacia la zona sur y oriente

[Lista de participantes](https://www.dropbox.com/s/d0mffzikrg22raf/lista_asistencia_industrial.pdf?dl=0)

## 1. Industria ligera

La industria ligera incluye desarrollo de tecnología, actividades de apoyo a la industria mediana y pesada, y almacenamiento.

### 1.1 Modelo de decisión

![](/recursos/industrial/industria_ligera.png)

### 1.2 Criterios

#### 1.2.1 Infraestructura

Criterio | Definición
-- | --
Comunicación | Distancia a localidades con cobertura de internet.
Conectividad | Distancia a vías de comunicación que permiten el movimiento de trabajadores y la distribución de insumos y productos.
Energía | Distancia a líneas de transmisión eléctrica.
Acceso a agua | Distancia a localidades con cobertura de red de agua potable.
Manejo de residuos | Distancia a sitios de disposición final de residuos solidos y agua residual.

##### 1.2.1.1 Comunicación

Distancia a localidades con cobertura de internet.

**Insumos**

Capa | Viviendas con internet por localidad
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [2] Datos de indicador. Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | 2020
Campo | [2] VIVTOT y VPH_INTER
Unidades | Adimensional

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_loc_internet.png)  

**Función de valor de comunicación**

![](/recursos/industrial/mapa_fv_lig_infra_loc_internet.png)

##### 1.2.1.2 Conectividad

Distancia a vías de comunicación que permiten el movimiento de trabajadores y la distribución de insumos y productos.

Subcriterio | Definición
-- | --
Carreteras | Distancia a carreteras.
Aeropuertos | Distancia a aeropuertos.
Puertos | Distancia a puertos.
Red ferroviaria | Distancia a red ferroviaria.

###### 1.2.1.2.1 Carreteras

Distancia a carreteras.

Subcriterio | Definición
-- | --
Varios carriles | Carreteras de dos o más carriles.
Un carril | Carreteras de un solo carril.

###### 1.2.1.2.1.1 Varios carriles

Carreteras de dos o más carriles.

**Insumos**

Campo | Distancia a carreteras de dos o más carriles
-- | --
Fuente | Red Nacional de Caminos (RNC) INEGI
Año | 2019
Campo | CARRILES
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_carreteras_2mcarril.png)  

**Función de valor de varios carriles**

![](/recursos/industrial/mapa_fv_lig_infra_d_carreteras_2mcarril.png)

###### 1.2.1.2.1.2 Un carril

Carreteras de un solo carril.

**Insumos**

Capa | Distancia a carreteras de un carril
-- | --
Fuente | Red Nacional de Caminos (RNC) INEGI
Año | 2019
Campo | CARRILES
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_carreteras_1carril.png)  

**Función de valor de un carril**

![](/recursos/industrial/mapa_fv_lig_infra_d_carreteras_1carril.png)

###### 1.2.1.2.2 Aeropuertos

Distancia a aeropuertos.

**Insumos**

Capa | Distancia a aeropuertos
-- | --
Fuente | Aeródromos, aeropuertos y pistas de aterrizaje SENEAM
Año | 2017
Escala | 1:1,000,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_aeropuertos.png)  

**Función de valor de aeropuertos**

![](/recursos/industrial/mapa_fv_lig_infra_d_aeropuertos.png)

###### 1.2.1.2.3 Puertos

Distancia a puertos.

**Insumos**

Capa | Distancia a puertos
-- | --
Fuente | Ubicación de los principales puertos de el estado de Yucatán POETY
Año | 2002
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_puertos.png)  

**Función de valor de puertos**

![](/recursos/industrial/mapa_fv_lig_infra_d_puertos.png)

###### 1.2.1.2.4 Red ferroviaria

Distancia a red ferroviaria.

**Insumos**

Capa | Distancia a vías ferroviarias
-- | --
Fuente | Red ferroviaria INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_red_ferroviaria.png)  

**Función de valor de red ferroviaria**

![](/recursos/industrial/mapa_fv_lig_infra_d_red_ferroviaria.png)

##### 1.2.1.3 Energía

Distancia a líneas de transmisión eléctrica.

**Insumos**

Capa | Distancia líneas de transmisión de energía eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_lineas_electricas.png)  

**Función de valor de energía**

![](/recursos/industrial/mapa_fv_lig_infra_d_lineas_electricas.png)

##### 1.2.1.4 Acceso a agua

Distancia a localidades con cobertura de red de agua potable.

**Insumos**

Capa | Viviendas con acceso a agua potable por   localidad
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [2] Datos de indicador. Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | 2020
Campo | [2] VIVTOT y VPH_AEASP
Unidades | Adimensional

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_loc_acceso_agua.png)  

**Función de valor de acceso a agua**

![](/recursos/industrial/mapa_fv_lig_infra_loc_acceso_agua.png)

##### 1.2.1.5 Manejo de residuos

Distancia a sitios de disposición final de residuos solidos y agua residual.

Subcriterio | Definición
-- | --
Plantas de aguas residuales | Distancia a plantas de tratamiento de aguas residuales.
Rellenos sanitarios | Distancia a infraestructura que involucra métodos y obras de ingeniería para la disposición final de los residuos sólidos urbanos y de manejo especial.
Basureros | Distancia a bancos de basura, basureros, centros de acopio de residuos, chascaderas, tiraderos.

###### 1.2.1.5.1 Plantas de aguas residuales

Distancia a plantas de tratamiento de aguas residuales.

**Insumos**

Capa | Distancia a plantas de tratamiento de agua residual
-- | --
Fuente | Datos vectoriales de las plantas municipales de tratamiento de aguas residuales en operación registradas en el inventario nacional CONAGUA
Año | 2017
Escala | 1:250,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_plantas_agua_residual.png)  

**Función de valor de plantas de aguas residuales**

![](/recursos/industrial/mapa_fv_lig_infra_d_plantas_agua_residual.png)

###### 1.2.1.5.2 Rellenos sanitarios

Distancia a infraestructura que involucra métodos y obras de ingeniería para la disposición final de los residuos sólidos urbanos y de manejo especial.

**Insumos**

Capa | Distancia a rellenos sanitarios
-- | --
Fuente | Sitios de disposición final de residuos INEGI-SEMARNAT
Año | 2017
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_relleno_sanitario.png)  

**Función de valor de rellenos sanitarios**

![](/recursos/industrial/mapa_fv_lig_infra_d_relleno_sanitario.png)

###### 1.2.1.5.3 Basureros

Distancia a bancos de basura, basureros, centros de acopio de residuos, chascaderas, tiraderos.

**Insumos**

Capa | Distancia a basureros
-- | --
Fuente | Sitios de disposición final de residuos INEGI-SEMARNAT
Año | 2017
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_basureros.png)  

**Función de valor de basureros**

![](/recursos/industrial/mapa_fv_lig_infra_d_basureros.png)

#### 1.2.2 Socioeconómicos

Criterio | Definición
-- | --
Industria instalada | Localidades con unidades económicas registradas en el Directorio Estadístico Nacional de Unidades Económicas del INEGI en las categorías (334) Fabricación de equipo de computación, comunicación, medición y de otros equipos, componentes y accesorios electrónicos y (493) Servicios de almacenamiento, así como el Parque Científico Tecnológico de Yucatán.
Localidades | Distancia a localidades donde se tiene acceso a capital social, servicios y mercado.
Tenencia | Tenencia de la tierra.


##### 1.2.2.1 Industria instalada

Localidades con unidades económicas registradas en el Directorio Estadístico Nacional de Unidades Económicas del INEGI en las categorías (334) Fabricación de equipo de computación, comunicación, medición y de otros equipos, componentes y accesorios electrónicos y (493) Servicios de almacenamiento, así como el Parque Científico Tecnológico de Yucatán.

**Insumos**

Capa | Industria ligera instalada por localidad
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI, [2] Datos de indicador. Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI y [3] Polígono del Parque Científico Tecnológico de Yucatán. Parques industriales
Año | [1][2] 2020; [3] ?
Unidades | Adimensional

**Función de valor de industria instalada**

![](/recursos/industrial/mapa_fv_lig_socio_ind_instalada.png)

##### 1.2.2.2 Localidades

Distancia a localidades donde se tiene acceso a capital social, servicios y mercado.

**Insumos**

Capa | Distancia a localidades
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI
Año | 2020
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_socio_d_localidades.png)  

**Función de valor de localidades**

![](/recursos/industrial/mapa_fv_lig_socio_d_localidades.png)

##### 1.2.2.3 Tenencia

Tenencia de la tierra.

**Insumos**

Capa | Tenencia de la tierra
-- | --
Fuente | [1] Zonas de Tierras Parceladas RAN y [2] Tierra de uso común RAN
Año | 2020
Escala | Sin dato
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
3 | No ejidal | Máxima | 1.00
2 | Zona de tierras parceladas | Alta | 0.80
1 | Tierra de uso común | Muy Baja | 0.33

**Función de valor de tenencia**

![](/recursos/industrial/mapa_fv_lig_socio_tenencia_tierra.png)

#### 1.2.3 Biofísicos

Criterio | Definición
-- | --
Cobertura | Uso de suelo y vegetación.

##### 1.2.3.1 Cobertura

Uso de suelo y vegetación.

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
4 | Asentamiento humano | Máxima | 1.00
11 | Sin vegetación | Máxima | 1.00
1 | Acuícola | Alta | 0.80
2 | Agricultura de riego | Alta | 0.80
5 | Bosque cultivado/Palmar inducido | Alta | 0.80
3 | Agricultura de temporal | Moderada | 0.70
8 | Pastizal | Moderada | 0.70
9 | Selva baja | Moderada | 0.70
10 | Selva mediana | Moderada | 0.70
12 | Sábana | Moderada | 0.70
6 | Cuerpo de agua | Nula | 0.00
7 | Manglar | Nula | 0.00
13 | Tular | Nula | 0.00
14 | Vegetación de duna costera | Nula | 0.00
15 | Vegetación de petén | Nula | 0.00
16 | Vegetación halófila hidrófila | Nula | 0.00
17 | ND | Nula | 0.00

**Función de valor de cobertura**

![](/recursos/industrial/mapa_fv_lig_bio_usv_16cats.png)

### 1.3 Mapa de aptitud

#### 1.3.1 Aprovechamiento actual

#### 1.3.2 Zonas de exclusión

![](/recursos/industrial/mapa_exclusion_lig.png)

#### 1.3.3 Mapa de aptitud de industria ligera

![](/recursos/industrial/mapa_aptitud_lig.png)

**Pesos Globales de los atributos ambientales de industria ligera**

**Área por categoria de aptitud**

Categoría | Km² | Porcentaje del   estado
-- | --: | --:
Muy alta | 517.0 | 1
Alta | 1415.7 | 4
Moderada | 6897.1 | 17
Baja | 25415.6 | 64
Muy baja | 2874.9 | 7
Nula | 2416.2 | 6

#### 1.3.4 Sensibilidad de atributos de industria ligera

![](/recursos/industrial/fi_analisis_sensibilidad_industria_ligera.png)

## 2. Industria mediana y pesada

La industria mediana y pesada incluye agroindustria y manufactura, como las principales.

### 2.1 Modelo de decisión

![](/recursos/industrial/industria_pesada.png)

### 2.2 Criterios

#### 2.2.1 Infraestructura

Criterio | Definición
-- | --
Energía | Distancia a líneas de transmisión eléctrica de 230 KV y 400 KV y a gasoductos.
Acceso a agua | Distancia a localidades con cobertura de red de agua potable.
Conectividad | Distancia a vías de comunicación que permiten el movimiento de trabajadores y la distribución de insumos y productos.
Manejo de residuos | Distancia a sitios de disposición final de residuos solidos y agua residual.
Comunicación | Distancia a localidades con cobertura de internet.

##### 2.2.1.1 Energía

Distancia a líneas de transmisión eléctrica de 230 KV y 400 KV y a gasoductos.

**Insumos**

Capa | Distancia a líneas de transmisión de energía eléctrica y gasoducto
-- | --
Fuente | [1] Líneas de transmisión en México. GeoComunes con datos de CFE y [2] Gasoducto GeoComunes
Año | 2020
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_pesm_infra_d_lineas_electricas_gas.png)  

**Función de valor de energía**

![](/recursos/industrial/mapa_fv_pesm_infra_d_lineas_electricas_gas.png)

##### 2.2.1.2 Acceso a agua

Distancia a localidades con cobertura de red de agua potable.

**Insumos**

Capa | Viviendas con acceso a agua potable por localidad
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [2] Datos de indicador. Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | 2020
Campo | [2] VIVTOT y VPH_AEASP
Unidades | Adimensional

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_loc_acceso_agua.png)  

**Función de valor de acceso a agua**

![](/recursos/industrial/mapa_fv_lig_infra_loc_acceso_agua.png)

##### 2.2.1.3 Conectividad

Distancia a vías de comunicación que permiten el movimiento de trabajadores y la distribución de insumos y productos.

Subcriterio | Definición
-- | --
Carreteras | Distancia a carreteras.
Puertos | Distancia a puertos.
Red ferroviaria | Distancia a red ferroviaria.
Aeropuertos | Distancia a aeropuertos.

###### 2.2.1.3.1 Carreteras

Distancia a carreteras.

Subcriterio | Definición
-- | --
Varios carriles | Carreteras de dos o más carriles.
Un carril | Carreteras de un solo carril.

###### 2.2.1.3.1.1 Varios carriles

Carreteras de dos o más carriles.

**Insumos**

Campo | Distancia a carreteras de dos o más carriles
-- | --
Fuente | Red Nacional de Caminos (RNC) INEGI
Año | 2019
Campo | CARRILES
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_carreteras_2mcarril.png)  

**Función de valor de varios carriles**

![](/recursos/industrial/mapa_fv_lig_infra_d_carreteras_2mcarril.png)

###### 2.2.1.3.1.2 Un carril

Carreteras de un solo carril.

**Insumos**

Capa | Distancia a carreteras de un carril
-- | --
Fuente | Red Nacional de Caminos (RNC) INEGI
Año | 2019
Campo | CARRILES
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_carreteras_1carril.png)  

**Función de valor de un carril**

![](/recursos/industrial/mapa_fv_lig_infra_d_carreteras_1carril.png)

###### 2.2.1.3.2 Puertos

Distancia a puertos.

**Insumos**

Capa | Distancia a puertos
-- | --
Fuente | Ubicación de los principales puertos de el estado de Yucatán POETY
Año | 2002
Escala | Sin dato
Unidades | Kilómetros

![](/recursos/industrial/fi_fv_lig_infra_d_puertos.png)  

**Función de valor de puertos**

![](/recursos/industrial/mapa_fv_lig_infra_d_puertos.png)

###### 2.2.1.3.3 Red ferroviaria

Distancia a red ferroviaria.

**Insumos**

Capa | Distancia a vías ferroviarias
-- | --
Fuente | Red ferroviaria INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_red_ferroviaria.png)  

**Función de valor de red ferroviaria**

![](/recursos/industrial/mapa_fv_lig_infra_d_red_ferroviaria.png)

###### 2.2.1.3.3 Aeropuertos

Distancia a aeropuertos.

**Insumos**

Capa | Distancia a aeropuertos
-- | --
Fuente | Aeródromos, aeropuertos y pistas de aterrizaje SENEAM
Año | 2017
Escala | 1:1,000,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_aeropuertos.png)  

**Función de valor de aeropuertos**

![](/recursos/industrial/mapa_fv_lig_infra_d_aeropuertos.png)

##### 2.2.1.4 Manejo de residuos

Distancia a sitios de disposición final de residuos solidos y agua residual.

Subcriterio | Definición
-- | --
Plantas de aguas residuales | Distania a plantas de tratamiento de aguas residuales.
Rellenos sanitarios | Distancia a infraestructura que involucra métodos y obras de ingeniería para la disposición final de los residuos sólidos urbanos y de manejo especial.
Basureros | Distancia a bancos de basura, basureros, centros de acopio de residuos, chascaderas, tiraderos.

###### 2.2.1.4.1 Plantas de aguas residuales

Distancia a plantas de tratamiento de aguas residuales.

**Insumos**

Capa | Distancia a plantas de tratamiento de agua residual
-- | --
Fuente | Datos vectoriales de las plantas municipales de tratamiento de aguas residuales en operación registradas en el inventario nacional CONAGUA
Año | 2017
Escala | 1:250,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_plantas_agua_residual.png)  

**Función de valor de plantas de aguas residuales**

![](/recursos/industrial/mapa_fv_lig_infra_d_plantas_agua_residual.png)

###### 2.2.1.4.2 Rellenos sanitarios

Distancia a infraestructura que involucra métodos y obras de ingeniería para la disposición final de los residuos sólidos urbanos y de manejo especial.

**Insumos**

Capa | Distancia a rellenos sanitarios
-- | --
Fuente | Sitios de disposición final de residuos INEGI-SEMARNAT
Año | 2017
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_relleno_sanitario.png)  

**Función de valor de rellenos sanitarios**

![](/recursos/industrial/mapa_fv_lig_infra_d_relleno_sanitario.png)

###### 2.2.1.4.3 Basureros

Distancia a bancos de basura, basureros, centros de acopio de residuos, chascaderas, tiraderos.

**Insumos**

Capa | Distancia a basureros
-- | --
Fuente | Sitios de disposición final de residuos INEGI-SEMARNAT
Año | 2017
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_d_basureros.png)  

**Función de valor de basureros**

![](/recursos/industrial/mapa_fv_lig_infra_d_basureros.png)

##### 2.2.1.5 Comunicación

Distancia a localidades con cobertura de internet.

**Insumos**

Capa | Viviendas con internet por localidad
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [2] Datos de indicador. Censo de Población y Vivienda. Principales resultados por localidad (ITER) INEGI
Año | 2020
Campo | [2] VIVTOT y VPH_INTER
Unidades | Adimensional

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_infra_loc_internet.png)  

**Función de valor de comunicación**

![](/recursos/industrial/mapa_fv_lig_infra_loc_internet.png)

#### 2.2.2 Socioeconómicos

Criterio | Definición
-- | --
Industria instalada | Parques industriales y localidades con unidades económicas registradas en el Directorio Estadístico Nacional de Unidades Económicas del INEGI en la categoría (31-33). Industrias manufactureras excepto la categoría (334).
Localidades | Distancia a localidades donde se tiene acceso a capital social, servicios y mercado.
Tenencia | Tenencia de la tierra.

##### 2.2.2.1 Industria instalada

Parques industriales y localidades con unidades económicas registradas en el Directorio Estadístico Nacional de Unidades Económicas del INEGI en la categoría (31-33). Industrias manufactureras excepto la categoría (334).

**Insumos**

Capa | Industria mediana y pesada instalada
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI, [2] Datos de indicador. Directorio Estadístico Nacional de   Unidades Económicas (DENUE) INEGI y [3] Parques industriales
Año | [1][2] 2020; [3] ?
Unidades | Adimensional

**Función de valor de industria instalada**

![](/recursos/industrial/mapa_fv_pesm_socio_ind_instalada.png)

##### 2.2.2.2 Localidades

Distancia a localidades donde se tiene acceso a capital social, servicios y mercado.

**Insumos**

Capa | Distancia a localidades
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI
Año | 2020
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/industrial/fi_fv_lig_socio_d_localidades.png)  

**Función de valor de localidades**

![](/recursos/industrial/mapa_fv_pesm_socio_d_localidades.png)

##### 2.2.2.3 Tenencia

Tenencia de la tierra.

**Insumos**

Capa | Tenencia de la tierra
-- | --
Fuente | [1] Zonas de Tierras Parceladas RAN y [2] Tierra de uso común RAN
Año | 2020
Escala | Sin dato
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
3 | No ejidal | Máxima | 1.00
2 | Zona de tierras parceladas | Alta | 0.80
1 | Tierra de uso común | Muy Baja | 0.33

**Función de valor de tenencia**

![](/recursos/industrial/mapa_fv_lig_socio_tenencia_tierra.png)

#### 2.2.3 Biofísicos

Criterio | Definición
-- | --
Disponibilidad de agua | Distancia a manto freático.
Cobertura | Uso de suelo y vegetación.
Dispersión de emisiones | Vulnerabilidad del acuífero a la contaminación.

##### 2.2.3.1 Disponibilidad de agua

Distancia a manto freático.

**Insumos**

Capa | Nivel freático
-- | --
Fuente | Nivel freático POETY
Año | Sin dato
Campo | n_freat_m
Escala | Estatal
Unidades | Metros

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
4 | 10 m | Máxima | 1.00
5 | 20 m | Muy alta | 0.87
1 | 1 m | Baja | 0.56
2 | 2 m | Baja | 0.56
3 | 4 m | Baja | 0.56
6 | 40 m | Nula | 0.00
7 | 60 m | Nula | 0.00
8 | 100 m | Nula | 0.00

**Función de valor de disponibilidad de agua**

![](/recursos/industrial/mapa_fv_pesm_bio_d_manto_freatico.png)

##### 2.2.3.2 Cobertura

Uso de suelo y vegetación.

**Insumos**

Capa | Cobertura
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
4 | Asentamiento humano | Máxima | 1.00
11 | Sin vegetación | Máxima | 1.00
1 | Acuícola | Alta | 0.80
2 | Agricultura de riego | Alta | 0.80
5 | Bosque cultivado/Palmar inducido | Alta | 0.80
3 | Agricultura de temporal | Moderada | 0.70
8 | Pastizal | Moderada | 0.70
9 | Selva baja | Moderada | 0.70
10 | Selva mediana | Moderada | 0.70
12 | Sábana | Moderada | 0.70
6 | Cuerpo de agua | Nula | 0.00
7 | Manglar | Nula | 0.00
13 | Tular | Nula | 0.00
14 | Vegetación de duna costera | Nula | 0.00
15 | Vegetación de petén | Nula | 0.00
16 | Vegetación halófila hidrófila | Nula | 0.00
17 | ND | Nula | 0.00

**Función de valor de cobertura**

![](/recursos/industrial/mapa_fv_lig_bio_usv_16cats.png)

##### 2.2.3.3 Dispersión de emisiones

Vulnerabilidad del acuífero a la contaminación.

**Insumos**

Capa | Vulnerabilidad del acuífero
-- | --
Fuente | Vulnerabilidad intrínseca del acuífero en el Estado de Yucatán, Batllori Sampedro y Canto Mendiburu
Año | 2019
Escala | Sin dato
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Baja | Máxima | 1.00
2 | Media | Moderada | 0.70
3 | Alta | Baja | 0.56
4 | Muy alta | Muy baja | 0.33
5 | Extrema | Nula | 0.00
6 | NA | Nula | 0.00

**Función de valor de dispersión de emisiones**

![](/recursos/industrial/mapa_fv_pesm_bio_vul_acuifero.png)

### 2.3 Mapa de aptitud

#### 2.3.1 Aprovechamiento actual

#### 2.3.2 Zonas de exclusión

![](/recursos/industrial/mapa_exclusion_pesm.png)

#### 2.3.3 Mapa de aptitud de industria mediana y pesada

![](/recursos/industrial/mapa_aptitud_pesm.png)

**Pesos Globales de los atributos ambientales de industria ligera**

**Área por categoria de aptitud**

Categoría | Km² | Porcentaje del estado
-- | --: | --:
Muy alta | 1529.5 | 4
Alta | 2570.8 | 7
Moderada | 10017.6 | 25
Baja | 17272.4 | 44
Muy baja | 5730.1 | 14
Nula | 2416.2 | 6

#### 2.3.4 Sensibilidad de atributos de industria mediana y pesada

![](/recursos/industrial/fi_analisis_sensibilidad_industria_pesada.png)

<!-- .. csv-table::
   :file: recursos/tabla_c_biofisicos_silvopastoril.csv
   :header-rows: 1
   :align: center --> -->
