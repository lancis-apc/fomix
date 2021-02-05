# Industrial

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

* Incrementar la productividad y diversificar las actividades en sector industrial, considerando las actividades e infraestructura de: (1) producción, (2) almacenamiento y centros de distribución y de logística, y (3) comercialización de insumos y productos terminados
* Disminuir el impacto ambiental, en cuanto al consumo de recursos y suelo y generación de residuos
* Promover la producción en el sector industrial mediante el favorecimiento de economía circular
* Promover la descentralización de la actividad industrial hacia la zona sur y oriente

## Subsectores

### Ligera

La industria ligera incluye desarrollo de tecnología,  actividades de apoyo a la industria mediana y pesada, y almacenamiento.

**Modelo AHP del tipo de industria ligera**

![](/recursos/industrial/industria_ligera.png)

## Criterios

### Infraestructura

Criterio | Definición
-- | --
Comunicación | Distancia a localidades con cobertura de internet.
Conectividad | Distancia a vías de comunicación que permiten el movimiento de trabajadores y la distribución de insumos y productos.
Energía | Distancia a líneas de transmisión eléctrica.
Acceso a agua | Distancia a localidades con cobertura de red de agua potable.
Manejo de residuos | Distancia a sitios de disposición final de residuos solidos y agua residual.

##### Comunicación

Distancia a localidades con cobertura de internet.

##### Conectividad

Distancia a vías de comunicación que permiten el movimiento de trabajadores y la distribución de insumos y productos.

Subcriterio | Definición
-- | --
Carreteras | Distancia a carreteras.
Aeropuertos | Distancia a aeropuertos.
Puertos | Distancia a puertos.
Red ferroviaria | Distancia a red ferroviaria.

###### Carreteras

Distancia a carreteras.

Subcriterio | Definición
-- | --
Varios carriles | Carreteras de dos o más carriles.
Un carril | Carreteras de un solo carril.

**Insumos**

Capa | Distancia a carreteras
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI. (localidad_250a) INEGI y [2] Red nacional de caminos   INEGI
Año | 2019
Escala | [1] 1:250,000; [2]Sin dato
Unidades | Kilómetros


###### Aeropuertos

Distancia a aeropuertos.


###### Puertos

Distancia a puertos.

**Insumos**

Capa | Distancia a puertos
-- | --
Fuente | Ubicación de los principales puertos de el estado de Yucatán POETY
Año | 2002
Escala | Sin dato
Unidades | Kilómetros

###### Red ferroviaria

Distancia a red ferroviaria.

**Insumos**

Capa | Distancia a red ferroviaria
-- | --
Fuente | Red ferroviaria INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros


##### Energía

Distancia a líneas de transmisión eléctrica.

**Insumos**

Capa | Distancia líneas de transmisión de energía eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros


##### Acceso a agua

Distancia a localidades con cobertura de red de agua potable.

**Insumos**

Capa | Distancia a agua
-- | --
Fuente | Censo de Población y Vivienda 2010. Principales resultados por localidad (ITER) INEGI
Año | 2010
Campo | VPH_AGUADV
Escala | Localidad
Unidades | Kilómetros


##### Manejo de residuos

Distancia a sitios de disposición final de residuos solidos y agua residual.

Subcriterio | Definición
-- | --
Plantas de aguas residuales | Distancia a plantas de tratamiento de aguas residuales.
Rellenos sanitarios | Distancia a infraestructura que involucra métodos y obras de ingeniería para la disposición final de los residuos sólidos urbanos y de manejo especial.
Basureros | Distancia a bancos de basura, basureros, centros de acopio de residuos, chascaderas, tiraderos.


###### Plantas de aguas residuales

Distancia a plantas de tratamiento de aguas residuales.

**Insumos**

Capa | Distancia a plantas de tratamiento de agua residual
-- | --
Fuente | Datos vectoriales de las plantas municipales de tratamiento de aguas residuales en operación registradas en el inventario nacional CONAGUA
Año | 2017
Escala | 1:250,000
Unidades | Kilómetros


###### Rellenos sanitarios

Distancia a infraestructura que involucra métodos y obras de ingeniería para la disposición final de los residuos sólidos urbanos y de manejo especial.

**Insumos**

Capa | Distancia a residuos
-- | --
Fuente | Sitios de disposición final de residuos INEGI-SEMARNAT
Año | 2017
Escala | Sin dato
Unidades | Kilómetros


###### Basureros

Distancia a bancos de basura, basureros, centros de acopio de residuos, chascaderas, tiraderos.


### Socioeconómicos

Criterio | Definición
-- | --
Industria instalada | Localidades con unidades económicas registradas en el Directorio Estadístico Nacional de Unidades Económicas del INEGI en las categorías (334) Fabricación de equipo de computación, comunicación, medición y de otros equipos, componentes y accesorios electrónicos y (493) Servicios de almacenamiento, así como el Parque Científico Tecnológico de Yucatán.
Localidades | Distancia a localidades donde se tiene acceso a capital social, servicios y mercado.
Tenencia | Tenencia de la tierra.


##### Industria instalada

Localidades con unidades económicas registradas en el Directorio Estadístico Nacional de Unidades Económicas del INEGI en las categorías (334) Fabricación de equipo de computación, comunicación, medición y de otros equipos, componentes y accesorios electrónicos y (493) Servicios de almacenamiento, así como el Parque Científico Tecnológico de Yucatán.

**Insumos**

Capa | Industria instalada ligera y almacenamiento
-- | --
Fuente | Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI
Año | 2020
Escala | Localidad
Unidades | Número de unidades económicas


##### Localidades

Distancia a localidades donde se tiene acceso a capital social, servicios y mercado.

**Insumos**

Capa | Tipo de localidades
-- | --
Fuente | Censo de Población y Vivienda 2010. Principales resultados por localidad (ITER) INEGI
Año | 2010
Campo | POBTOT
Escala | Localidad
Unidades | Número de habitantes


##### Tenencia

Tenencia de la tierra.

**Insumos**

Capa | Tenencia de la tierra
-- | --
Fuente | [1] Zonas de Tierras Parceladas y [2] Tierra de uso común
Año | 2020
Escala | Sin dato
Unidades | Adimensional


**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
3 | No ejidal | Máxima | 1.00
2 | Zona de tierras parceladas | Alta | 0.80
1 | Tierra de uso común | Muy Baja | 0.33


### Biofísicos

Criterio | Definición
-- | --
Cobertura | Uso de suelo y vegetación.


##### Cobertura

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


### Mediana y pesada

La industria mediana y pesada incluye agroindustria y manufactura, como las principales.

**Modelo AHP del tipo de industria mediana y pesada**

![](/recursos/industrial/industria_pesada.png)

## Criterios

### Infraestructura

Criterio | Definición
-- | --
Energía | Distancia a líneas de transmisión eléctrica de 230 KV y 400 KV y a gasoductos.
Acceso a agua | Distancia a localidades con cobertura de red de agua potable.
Conectividad | Distancia a vías de comunicación que permiten el movimiento de trabajadores y la distribución de insumos y productos.
Manejo de residuos | Distancia a sitios de disposición final de residuos solidos y agua residual.
Comunicación | Distancia a localidades con cobertura de internet.


##### Energía

Distancia a líneas de transmisión eléctrica de 230 KV y 400 KV y a gasoductos.

**Insumos**

Capa | Distancia líneas de transmisión de energía eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros


##### Acceso a agua

Distancia a localidades con cobertura de red de agua potable.

**Insumos**

Capa | Distancia a agua
-- | --
Fuente | Censo de Población y Vivienda 2010. Principales resultados por localidad   (ITER) INEGI
Año | 2010
Campo | VPH_AGUADV
Escala | Localidad
Unidades | Kilómetros


##### Conectividad

Distancia a vías de comunicación que permiten el movimiento de trabajadores y la distribución de insumos y productos.

Subcriterio | Definición
-- | --
Carreteras | Distancia a carreteras.
Puertos | Distancia a puertos.
Red ferroviaria | Distancia a red ferroviaria.
Aeropuertos | Distancia a aeropuertos.


###### Carreteras

Distancia a carreteras.

Subcriterio | Definición
-- | --
Varios carriles | Carreteras de dos o más carriles.
Un carril | Carreteras de un solo carril.

**Insumos**

Capa | Distancia a carreteras
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad   Federativa Serie VI. (localidad_250a) INEGI y [2] Red nacional de caminos   INEGI
Año | 2019
Escala | [1] 1:250,000; [2]Sin dato
Unidades | Kilómetros

###### Puertos

Distancia a puertos.

**Insumos**

Capa | Distancia a puertos
-- | --
Fuente | Ubicación de los principales puertos de el estado de Yucatán POETY
Año | 2002
Escala | Sin dato
Unidades | Kilómetros

###### Red ferroviaria

Distancia a red ferroviaria.

**Insumos**

Capa | Distancia a red ferroviaria
-- | --
Fuente | Red ferroviaria INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros


###### Aeropuertos

Distancia a aeropuertos.

**Insumos**


##### Manejo de residuos

Distancia a sitios de disposición final de residuos solidos y agua residual.

Subcriterio | Definición
-- | --
Plantas de aguas residuales | Distania a plantas de tratamiento de aguas residuales.
Rellenos sanitarios | Distancia a infraestructura que involucra métodos y obras de ingeniería para la disposición final de los residuos sólidos urbanos y de manejo especial.
Basureros | Distancia a bancos de basura, basureros, centros de acopio de residuos, chascaderas, tiraderos.


###### Plantas de aguas residuales

Distancia a plantas de tratamiento de aguas residuales.

**Insumos**

Capa | Distancia a plantas de tratamiento de agua residual
-- | --
Fuente | Datos vectoriales de las plantas municipales de tratamiento de aguas residuales en operación registradas en el inventario nacional CONAGUA
Año | 2017
Escala | 1:250,000
Unidades | Kilómetros


###### Rellenos sanitarios

Distancia a infraestructura que involucra métodos y obras de ingeniería para la disposición final de los residuos sólidos urbanos y de manejo especial.

**Insumos**

Capa | Distancia a residuos
-- | --
Fuente | Sitios de disposición final de residuos INEGI-SEMARNAT
Año | 2017
Escala | Sin dato
Unidades | Kilómetros


###### Basureros

Distancia a bancos de basura, basureros, centros de acopio de residuos, chascaderas, tiraderos.


##### Comunicación

Distancia a localidades con cobertura de internet.


### Socioeconómicos

Criterio | Definición
-- | --
Industria instalada | Parques industriales y localidades con unidades económicas registradas en el Directorio Estadístico Nacional de Unidades Económicas del INEGI en la categoría (31-33). Industrias manufactureras excepto la categoría (334).
Localidades | Distancia a localidades donde se tiene acceso a capital social, servicios y mercado.
Tenencia | Tenencia de la tierra.


##### Industria instalada

Parques industriales y localidades con unidades económicas registradas en el Directorio Estadístico Nacional de Unidades Económicas del INEGI en la categoría (31-33). Industrias manufactureras excepto la categoría (334).

**Insumos**

Capa | Industria mediana y pesada
-- | --
Fuente | Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI
Año | 2020
Escala | Localidad
Unidades | Número de unidades económicas


##### Localidades

Distancia a localidades donde se tiene acceso a capital social, servicios y mercado.

**Insumos**

Capa | Tipo de localidades
-- | --
Fuente | Censo de Población y Vivienda 2010. Principales resultados por localidad (ITER) INEGI
Año | 2010
Campo | POBTOT
Escala | Localidad
Unidades | Número de habitantes


##### Tenencia

Tenencia de la tierra.

**Insumos**

Capa | Tenencia de la tierra
-- | --
Fuente | [1] Zonas de Tierras Parceladas y [2] Tierra de uso común
Año | 2020
Escala | Sin dato
Unidades | Adimensional


**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
3 | No ejidal | Máxima | 1.00
2 | Zona de tierras parceladas | Alta | 0.80
1 | Tierra de uso común | Muy Baja | 0.33


### Biofísicos

Criterio | Definición
-- | --
Disponibilidad de agua | Distancia a manto freático.
Cobertura | Uso de suelo y vegetación.
Dispersión de emisiones | Vulnerabilidad del acuífero a la contaminación.


##### Disponibilidad de agua

Distancia a manto freático.

**Insumos**

Capa | Nivel freático
-- | --
Fuente | Nivel freático POETY
Año | Sin dato
Campo | n_freat_m
Escala | Estatal
Unidades | Metros


##### Cobertura

Uso de suelo y vegetación.

**Insumos**

Capa | Cobertura (zonas urbanas)
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


##### Dispersión de emisiones

Vulnerabilidad del acuífero a la contaminación.

**Insumos**

Capa | Vulnerabilidad del acuífero
-- | --
Fuente | Vulnerabilidad intrínseca del acuífero en el Estado de Yucatán, Batllori Sampedro y Canto Mendiburu
Año | 2019
Escala | Sin dato
Unidades | Adimensional


<!-- .. csv-table::
   :file: recursos/tabla_c_biofisicos_silvopastoril.csv
   :header-rows: 1
   :align: center -->
