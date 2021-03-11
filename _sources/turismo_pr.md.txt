# Turismo-En proceso de actualización

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

Desarrollar y promocionar un modelo de turismo sustentable y diversificado, que oferte un balance entre el turismo tradicional y el turismo comunitario-rural y biocultural.

[Lista de participantes]()

### 1.1 Modelo de decisión

![](/recursos/turismo/fi_turismo.png)

### 1.2 Tipos

#### 1.2.1 Cultural

Viaje turístico para conocer, comprender y disfrutar el conjunto de rasgos y elementos distintivos, espirituales y materiales, intelectuales y afectivos que caracterizan a una sociedad o grupo social de un destino específico.

Atributos | Definición
-- | --
Cooperativas culturales | Presencia de cooperativas que ofrecen servicios de turismo cultural.   
Distancia a sitios arqueológicos | Sitios con vestigios de civilizaciones o culturas antiguas, con posibilidad de ser visitados por los turistas.  
Patrimonio edificado | Conjunto de bienes edificados, heredados del pasado, con relevancia cultural, histórica, artística, identitaria, etc. (Distancia a Valladorid, Izamal, Dzilam, Maní, Motul, Buctzotz).   
Población indígena | Porcentaje de la población municipal de 3 años y más que son mayahablantes.  
Sitios gastronómicos | Lugares con instalaciones y activades destinadas a dar a conocer la gastronomía típica.   

#### 1.2.2 Naturaleza

Viajes para realizar actividades recreativas en contacto directo con la naturaleza y las expresiones culturales que le envuelven con una actitud y compromiso de conocer, respetar, disfrutar y participar en la conservación de los recursos naturales y culturales. Comprende tres modalidades: Ecoturismo, Turismo de Aventura y Turismo Rural. (SECTUR 2003). Incluye  turismo de aventura, ecoturismo, aviturismo, comunitario, rural, cultural, religioso e histórico.

Atributos | Definición
-- | --
ANP | Presencia de áreas naturales protegidas de competencia federal, estatal o municipal.   
Atractivos naturales | Elementos o formaciones geológicas con características únicas que satisfacen necesidades de recreacion y esparcimiento.  
Caminos | Presencia de caminos principales, brechas, terracerías   
Ciclovías | Sistema de ciclovías fuera de zonas urbanas.   
Cobertura | Vegetación o uso de suelo actual  
Cooperativas naturales | Presencia de cooperativas que ofrecen servicios de turismo de naturaleza.   

##### 1.2.2.2 Atractivos naturales

Atributos | Definición
-- | --
Cenotes | Pozo o estanque natural de agua dulce abastecido por un río subterráneo que se forma  por la erosión de los suelos.
Esteros | Lagunas costeras, marismas y esteros.
Grutas | Cavidad que se forma en las rocas por procesos erosivos, principalmente por disolución causada por el agua de lluvia que se filtra entre rocas calcáreas y las disuelve.

#### 1.2.3 Sol y playa

Turismo de sol y playa, segundas residencias y bodas.

Atributos | Definición  
-- | --
Antropogénico | Atributos que describen las características antropogénicas del territorio.
Físico | Atributos asociados a las propiedades físicas del suelo y del ambiente.
Biológico | Atributos asociados a las propiedades biológicas del ambiente.

#### 1.2.3.1 Antropogénico

Atributos que describen las características antropogénicas del territorio.

Atributos | Definición
-- | --
Tenencia de la tierra | Áreas ejidales (comunitaria o parcelada) y no ejidales.
Asentamientos urbanos | Distancia a localidades urbanas >= 15,000 habitantes, vía carreteras.


#### 1.2.3.2 Físico

Atributos asociados a las propiedades físicas del suelo y del ambiente.

Atributos | Definición
-- | --
Distancia al litoral | Distancia a zona costera
Tipo de playa | Tipo de playa (rocosa o arenosa)
Tipo de suelo | Tipo de suelo (edafología)

#### 1.2.3.3 Biológico

Atributos asociados a las propiedades biológicas del ambiente.

Atributos | Definición   
-- | --
Cobertura | Tipo de vegetación y uso del suelo.
Distancia a ANP | Distancia a áreas naturales protegidas de competencia federal, estatal o municipal.

#### 1.2.4 Urbano

Viajes que se realizan al interior de las zonas urbanas. Comprende convenciones, reuniones, negocios, médico y educativo.

#### 1.2.5 Cruceros

Actividad turística que se realiza a bordo de un barco o buque, el cual brinda todos los servicios y facilidades similares a los de un gran hotel o resort del mundo.






<!--

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
