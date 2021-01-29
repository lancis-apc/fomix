# Energía

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

Consolidar al Estado de Yucatán como productor de energía limpia y confiable para asegurar la suficiencia energética mediante criterios de uso sostenible del territorio, certidumbre jurídica y desarrollo ordenado e incluyente del sector, que permitan aprovechar los recursos para crear un valor económico, ambiental y social.

**Modelo AHP del sector energía**

![](/recursos/energia/energia.png)
**Nota** Valores en morado son los pesos o importancias ya realizadas. Valores en azul son las fuentes de energía que faltan por ponderar.

## Subsectores

### Energía industrial

Fuentes de energía a escala industrial.

### Energía comunitaria

Fuentes de energía utilizadas en las comunidades.

## Fuentes

### Energía industrial

Criterio | Definición
-- | --
Hidrocarburos líquidos | Consumo y almacenamiento de hidrocarburos líquidos. Plantas que utilizan diesel o combustóleo para generar energía. Terminales de almacenamiento y reparto.
Gas natural | Transporte de gas natural por gasoductos y vehículos terrestres. Terminales de almacenamiento y centrales eléctricas. Uso de gas comprimido por empresas.
Solar | Instalaciones industriales que aprovechan la irradiación solar como fuente de energía.
Eólica | Instalaciones de generación de energía, mayores a 0.5 MW.
Biomasa | Proyectos diseñados que utilizan material biológico, para conversion en energía utilizable. Incluye los desechos de granjas porcícolas para producir energía eléctrica.


##### Hidrocarburos líquidos

Consumo y almacenamiento de hidrocarburos líquidos. Plantas que utilizan diesel o combustóleo para generar energía. Terminales de almacenamiento y reparto.

Atributos | Definición
-- | --
Carreteras | Distancia a carreteras.
Poblaciones | Distancia a asentamientos humanos.
Poliductos | Red de ductos para transportar hidrocarburos líquidos.
Vías férreas | Distancia a vías férreas.
Puerto Progreso | Terminal marítima

###### Carreteras

Distancia a carreteras.

**Insumos**

Capa | Distancia a carreteras
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros


###### Poblaciones

Distancia a asentamientos humanos.

**Insumos**

Capa | Distancia a localidades
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI (localidad250_a) INEGI y [2] Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | [1] 1:250,000; [2]Sin dato
Unidades | Adimensional


###### Poliductos

Red de ductos para transportar hidrocarburos líquidos.

**Insumos**

Capa | Poliducto Progreso - Mérida
-- | --
Fuente | Infraestructura Nacional de Almacenamiento y Transporte por Ducto de Petrolíferos
Año | Sin dato
Escala | Sin dato
Unidades | Adimensional


###### Vías férreas

Distancia a vías férreas.

**Insumos**

Capa | Distancia a red ferroviaria
-- | --
Fuente | Red ferroviaria INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros


###### Puerto Progreso

Terminal marítima

**Insumos**

Capa | Puerto de Progreso
-- | --
Fuente | Ubicación de los principales puertos de el estado de Yucatán POETY
Año | 2002
Escala | Sin dato
Unidades | Adimensional


##### Gas natural

Transporte de gas natural por gasoductos y vehículos terrestres. Terminales de almacenamiento y centrales eléctricas. Uso de gas comprimido por empresas.

Atributos | Definición
-- | --
Gasoductos | Red de ductos para transportar hidrocarburos líquidos.
Zonas industriales | Zonas industriales que demandan gas natural.
Poblaciones | Distancia a asentamientos humanos.

###### Gasoductos

Red de ductos para transportar hidrocarburos líquidos.

**Insumos**

Capa | Gasoductos
-- | --
Fuente | Gasoductos GeoComunes
Año | Sin dato
Escala | Sin dato
Unidades | Adimensional


###### Zonas industriales

Zonas industriales que demandan gas natural.

**Insumos**

Capa | Parques industriales
-- | --
Fuente | ?
Año | ?
Escala | ?
Unidades | Adimensional


###### Poblaciones

Distancia a asentamientos humanos.

**Insumos**

Capa | Distancia a localidades
-- | --
Fuente | [1] Conjunto de datos vectoriales de información topográfica por Entidad Federativa Serie VI (localidad250_a) INEGI y [2] Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | [1] 1:250,000; [2]Sin dato
Unidades | Adimensional


##### Solar

Instalaciones industriales que aprovechan la irradiación solar como fuente de energía.

Atributos | Definición
-- | --
Distancia a red eléctrica | Distancia a líneas de transmisión y subestaciones.
Cobertura | Tipo de vegetación.
Tenencia | Áreas ejidales (comunitaria o parcelada) y no ejidales.

###### Distancia a red eléctrica

Distancia a líneas de transmisión y subestaciones.

**Insumos**

Capa | Distancia líneas de transmisión de energía eléctrica
-- | --
Fuente | Líneas de transmisión en México. GeoComunes con datos de CFE
Año | 2010
Escala | Sin dato
Unidades | Kilómetros


###### Cobertura

Tipo de vegetación.

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional


###### Tenencia

Áreas ejidales (comunitaria o parcelada) y no ejidales.

**Insumos**

Capa | Tenencia de la tierra
-- | --
Fuente | [1] Zonas de Tierras Parceladas y [2] Tierra de uso común
Año | 2020
Escala | Sin dato
Unidades | Adimensional


##### Eolica

Instalaciones de generación de energía, mayores a 0.5 MW.

**Insumos**

Capa | Parques eólicos
-- | --
Fuente | Parques eólicos en México. GeoComunes
Año | 2020
Escala | Sin dato
Unidades | Adimensional


##### Biomasa industrial

Proyectos diseñados que utilizan material biológico, para conversion en energía utilizable. Incluye los desechos de granjas porcícolas para producir energía eléctrica.


### Energía comunitaria

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
