# Industrial

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

Incrementar la productividad considerando los elementos de producción, las actividades e infraestructura de producción, almacenamiento y centro de distribución y de logística y comercialización de productos terminados. Disminuir el impacto ambiental: consumo de suelo y recursos, y generación de residuos.

## Tipos de industria

### Industria ligera

Industria ligera (tecnología y actividades de apoyo a la industria mediana y pesada: almacenamiento).

### Industria mediana y pesada

Industria mediana y pesada (incluye agroindustria y manufactura como las principales).

**Modelo AHP del tipo de industria mediana y pesada**

![](/recursos/industrial/industria_pesada.png)

## Criterios

### Infraestructura

Criterio | Definición
-- | --
Energía | Energía eléctrica: acceso y calidad/capacidad de infraestructura eléctrica (CENACE capacidad de carga en nodos).
Distacia a agua | Distancia a red de agua potable, plantas de tratamiento, cobertura.
Conectividad | Capacidad de hacer conexiones a centros de abastecimiento de mano de obra y distribución de productos.
Distancia a residuos | Manejo de residuos: distancia a sitios de disposición final (basureros, rellenos sanitarios, disposición de residuos peligrosos).
Comunicación | Telecomunicaciones: cobertura de red (IFETEL).


##### Energía

Energía eléctrica: acceso y calidad/capacidad de infraestructura eléctrica (CENACE capacidad de carga en nodos).

**Insumos**

Capa | Distancia líneas de transmisión de energía   eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros

##### Distancia a agua

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

**Insumos**

Capa | Distancia a carreteras
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad   Federativa Serie VI. (localidad_250a) INEGI y [2] Red nacional de caminos   INEGI
Año | 2019
Escala | [1] 1:250,000; [2]Sin dato
Unidades | Kilómetros

Capa | Distancia a puertos
-- | --
Fuente | Ubicación de los principales puertos de el estado de Yucatán POETY
Año | 2002
Escala | Sin dato
Unidades | Kilómetros

Capa | Distancia a red ferroviaria
-- | --
Fuente | Red ferroviaria INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros


##### Distancia a residuos

Manejo de residuos: distancia a sitios de disposición final (basureros, rellenos sanitarios, disposición de residuos peligrosos).

**Insumos**

Capa | Distancia a residuos
-- | --
Fuente | Sitios de disposición final de residuos INEGI-SEMARNAT
Año | 2017
Escala | Sin dato
Unidades | Kilómetros


##### Comunicación

Telecomunicaciones: cobertura de red (IFETEL).

**Insumos**

### Socioeconómicos

Criterio | Definición
-- | --
Industria instalada | Centros urbanos con predominancia de actividad industrial, corredores industriales, servicios anexos – talleres, bodegas (fuente: INEGI - DNUE) y proyectos industriales autorizados (fuente: MIA).
Localidades | Población total en localidades.
Tenencia | Tenencia de la tierra: terrenos ejidales o propiedad privada.

##### Industria instalada

Centros urbanos con predominancia de actividad industrial, corredores industriales, servicios anexos – talleres, bodegas (fuente: INEGI - DNUE) y proyectos industriales autorizados (fuente: MIA).

**Insumos**

Capa | Industria mediana y pesada
-- | --
Fuente | Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI
Año | 2020
Escala | Localidad
Unidades | Número de unidades económicas


##### Localidades

Población total en localidades.

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


### Biofísicos

Criterio | Definición
-- | --
Disponibilidad de agua | Distancia a manto freático.
Cobertura | Zonas urbanas, asentamientos humanos.
Dispersión de emisiones | Zonas con mayor dispersión de contaminantes al aire, con base en datos obtenidos en casetas de medición y de vulnerabilidad por movimiento de contaminantes en agua subterránea.

##### Disponibilidad de agua

Distancia a manto freático.

**Insumos**


##### Cobertura

Zonas urbanas, asentamientos humanos.

**Insumos**


##### Dispersión de emisiones

Zonas con mayor dispersión de contaminantes al aire, con base en datos obtenidos en casetas de medición y de vulnerabilidad por movimiento de contaminantes en agua subterránea.

**Insumos**


<!-- .. csv-table::
   :file: recursos/tabla_c_biofisicos_silvopastoril.csv
   :header-rows: 1
   :align: center -->
