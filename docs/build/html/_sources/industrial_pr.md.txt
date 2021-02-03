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
Un carril | Carreteras de un solo carril.
Varios carriles | Carreteras de dos o más carriles.

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

Distancia a red de agua potable, plantas de tratamiento, cobertura.

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
Basureros | Distancia a  bancos de basura, basureros, centros de acopio de residuos, chascaderas, tiraderos.


**Insumos**

Capa | Distancia a residuos
-- | --
Fuente | Sitios de disposición final de residuos INEGI-SEMARNAT
Año | 2017
Escala | Sin dato
Unidades | Kilómetros

Capa	Distancia a plantas de tratamiento de agua residual
Fuente	Datos vectoriales de las plantas municipales de tratamiento de aguas residuales en operación registradas en el inventario nacional CONAGUA
Año	2017
Escala	 1:250,000
Unidades	Kilómetros


### Socioeconómicos

Criterio | Definición
-- | --
Industria instalada | Unidades económicas industriales instaladas.
Localidades | Población total en las localidades
Tenencia | Tenencia de la tierra: terrenos ejidales o propiedad privada


##### Industria instalada

Unidades económicas industriales instaladas.

**Insumos**

Capa | Industria mediana y pesada
-- | --
Fuente | Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI
Año | 2020
Escala | Localidad
Unidades | Número de unidades económicas


##### Localidades

Población total en las localidades.

**Insumos**

Capa | Tipo de localidades
-- | --
Fuente | Censo de Población y Vivienda 2010. Principales resultados por localidad   (ITER) INEGI
Año | 2010
Campo | POBTOT
Escala | Localidad
Unidades | Número de habitantes


##### Tenencia

Tenencia de la tierra: terrenos ejidales o propiedad privada.

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
3 | No ejidal | Máxima | 1
2 | Zona de tierras parceladas | Alta | 0.8
1 | Tierra de uso común | Muy Baja | 0.33


### Biofísicos

Criterio | Definición
-- | --
Disponibilidad de agua | Distancia a manto freático
Cobertura | Zonas urbanas, asentamientos humanos
Dispersión de emisiones | Zonas con mayor dispersión de contaminantes al aire, con base en datos obtenidos en casetas de medición y de vulnerabilidad por movimiento de contaminantes en agua subterránea


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

Zonas urbanas, asentamientos humanos.

**Insumos**

Capa | Cobertura (zonas urbanas)
-- | --
Fuente | Conjunto de datos vectoriales de información topográfica por Entidad   Federativa Serie VI. (localidad_250a) INEGI
Año | 2019
Escala | 1:250,000
Unidades | Adimensional

Capa | Cobertura (zonas urbanas)
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2014
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional


**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
4 | Asentamiento humano | Máxima | 1
11 | Sin vegetación | Máxima | 1
1 | Acuícola | Alta | 0.8
2 | Agricultura de riego | Alta | 0.8
5 | Bosque cultivado/Palmar inducido | Alta | 0.8
3 | Agricultura de temporal | Moderada | 0.7
8 | Pastizal | Moderada | 0.7
9 | Selva baja | Moderada | 0.7
10 | Selva mediana | Moderada | 0.7
12 | Sábana | Moderada | 0.7
6 | Cuerpo de agua | Nula | 0
7 | Manglar | Nula | 0
13 | Tular | Nula | 0
14 | Vegetación de duna costera | Nula | 0
15 | Vegetación de petén | Nula | 0
16 | Vegetación halófila hidrófila | Nula | 0
17 | ND | Nula | 0


##### Dispersión de emisiones

Zonas con mayor dispersión de contaminantes al aire, con base en datos obtenidos en casetas de medición y de vulnerabilidad por movimiento de contaminantes en agua subterránea.

**Insumos**

Capa | Vulnerabilidad del acuífero
-- | --
Fuente | Vulnerabilidad intrínseca del acuífero en el Estado de Yucatán, Batllori   Sampedro y Canto Mendiburu
Año | 2019
Escala | Sin dato
Unidades | Adimensional


### Pesada y mediana

Industria pesada y mediana (incluye agroindustria y manufactura como las principales).

**Modelo AHP del tipo de industria mediana y pesada**

![](/recursos/industrial/industria_pesada.png)

## Criterios

### Infraestructura

Criterio | Definición
-- | --
Energía | Acceso y calidad/capacidad de infraestructura eléctrica (CENACE capacidad de carga en nodos).
Acceso a agua | Distancia a red de agua potable, plantas de tratamiento, cobertura.
Conectividad | Capacidad de hacer conexiones a centros de abastecimiento de mano de obra y distribución de productos.
Manejo de residuos | Sitios de disposición final.
Comunicación | Telecomunicaciones: cobertura de red (IFETEL).


##### Energía

Acceso y calidad/capacidad de infraestructura eléctrica (CENACE capacidad de carga en nodos).

**Insumos**

Capa | Distancia líneas de transmisión de energía eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros


##### Acceso a agua

Distancia a red de agua potable, plantas de tratamiento, cobertura.

**Insumos**

Capa | Distancia a agua
-- | --
Fuente | Censo de Población y Vivienda 2010. Principales resultados por localidad   (ITER) INEGI
Año | 2010
Campo | VPH_AGUADV
Escala | Localidad
Unidades | Kilómetros

Capa	Distancia a plantas de tratamiento de agua residual
Fuente	Datos vectoriales de las plantas municipales de tratamiento de aguas residuales en operación registradas en el inventario nacional CONAGUA
Año	2017
Escala	 1:250,000
Unidades	Kilómetros


##### Conectividad

Capacidad de hacer conexiones a centros de abastecimiento de mano de obra y distribución de productos.

Subcriterio | Definición
-- | --
Carreteras | Tipo de carreteras a las que se tiene acceso, carreteras de un carril o más de dos carriles.
Puertos | Distancia a puertos.
Caminos ferroviarios | Distancia a caminos ferroviarios.
Aeropuertos | Distancia a aeropuertos.

###### Carreteras

Tipo de carreteras a las que se tiene acceso, carreteras de un carril o más de dos carriles.

Subcriterio | Definición
-- | --
Un carril | Carreteras de un solo carril
Varios carriles | Carreteras de dos o más carriles

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

###### Caminos ferroviarios

Distancia a caminos ferroviarios.

**Insumos**

Capa | Distancia a red ferroviaria
-- | --
Fuente | Red ferroviaria INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros


##### Manejo de residuos

Sitios de disposición final.

Subcriterio | Definición
-- | --
Plantas de aguas residuales | Distania a plantas de tratamiento de aguas residuales.
Rellenos sanitarios | Distancia a infraestructura que involucra métodos y obras de ingeniería para la disposición final de los residuos sólidos urbanos y de manejo especial.
Basureros | Distancia a  bancos de basura, basureros, centros de acopio de residuos, chascaderas, tiraderos.

**Insumos**

Capa | Distancia a residuos
-- | --
Fuente | Sitios de disposición final de residuos INEGI-SEMARNAT
Año | 2017
Escala | Sin dato
Unidades | Kilómetros


##### Comunicación

Telecomunicaciones: cobertura de red (IFETEL).


### Socioeconómicos

Criterio | Definición
-- | --
Industria instalada | Unidades económicas industriales instaladas.
Localidades | Población total en las localidades
Tenencia | Tenencia de la tierra: terrenos ejidales o propiedad privada


##### Industria instalada

Unidades económicas industriales instaladas.

**Insumos**

Capa | Industria mediana y pesada
-- | --
Fuente | Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI
Año | 2020
Escala | Localidad
Unidades | Número de unidades económicas


##### Localidades

Población total en las localidades.

**Insumos**

Capa | Tipo de localidades
-- | --
Fuente | Censo de Población y Vivienda 2010. Principales resultados por localidad   (ITER) INEGI
Año | 2010
Campo | POBTOT
Escala | Localidad
Unidades | Número de habitantes


##### Tenencia

Tenencia de la tierra: terrenos ejidales o propiedad privada.

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
3 | No ejidal | Máxima | 1
2 | Zona de tierras parceladas | Alta | 0.8
1 | Tierra de uso común | Muy Baja | 0.33


### Biofísicos

Criterio | Definición
-- | --
Disponibilidad de agua | Distancia a manto freático
Cobertura | Zonas urbanas, asentamientos humanos
Dispersión de emisiones | Zonas con mayor dispersión de contaminantes al aire, con base en datos obtenidos en casetas de medición y de vulnerabilidad por movimiento de contaminantes en agua subterránea


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

Zonas urbanas, asentamientos humanos.

**Insumos**

Capa | Cobertura (zonas urbanas)
-- | --
Fuente | Conjunto de datos vectoriales de información topográfica por Entidad   Federativa Serie VI. (localidad_250a) INEGI
Año | 2019
Escala | 1:250,000
Unidades | Adimensional

Capa | Cobertura (zonas urbanas)
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación.   Serie VI. Conjunto Nacional INEGI
Año | 2014
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional


**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
4 | Asentamiento humano | Máxima | 1
11 | Sin vegetación | Máxima | 1
1 | Acuícola | Alta | 0.8
2 | Agricultura de riego | Alta | 0.8
5 | Bosque cultivado/Palmar inducido | Alta | 0.8
3 | Agricultura de temporal | Moderada | 0.7
8 | Pastizal | Moderada | 0.7
9 | Selva baja | Moderada | 0.7
10 | Selva mediana | Moderada | 0.7
12 | Sábana | Moderada | 0.7
6 | Cuerpo de agua | Nula | 0
7 | Manglar | Nula | 0
13 | Tular | Nula | 0
14 | Vegetación de duna costera | Nula | 0
15 | Vegetación de petén | Nula | 0
16 | Vegetación halófila hidrófila | Nula | 0
17 | ND | Nula | 0


##### Dispersión de emisiones

Zonas con mayor dispersión de contaminantes al aire, con base en datos obtenidos en casetas de medición y de vulnerabilidad por movimiento de contaminantes en agua subterránea.

**Insumos**

Capa | Vulnerabilidad del acuífero
-- | --
Fuente | Vulnerabilidad intrínseca del acuífero en el Estado de Yucatán, Batllori   Sampedro y Canto Mendiburu
Año | 2019
Escala | Sin dato
Unidades | Adimensional


<!-- .. csv-table::
   :file: recursos/tabla_c_biofisicos_silvopastoril.csv
   :header-rows: 1
   :align: center -->
