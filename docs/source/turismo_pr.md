# Turismo-Final

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

Desarrollar y promocionar un modelo de turismo sustentable y diversificado, que oferte un balance entre el turismo tradicional y el turismo comunitario-rural y biocultural.

[Lista de participantes](https://www.dropbox.com/s/945471sskil5wbd/lista_asistencia_turismo.pdf?dl=0)

### 1.1 Modelo de decisión

![](/recursos/turismo/fi_turismo.png)

### 1.2 Tipos

#### 1.2.1 Cultural

Viaje turístico para conocer, comprender y disfrutar el conjunto de rasgos y elementos distintivos, espirituales y materiales, intelectuales y afectivos que caracterizan a una sociedad o grupo social de un destino específico. Incluye turismo rural.

Atributos | Definición
-- | --
Patrimonio edificado | Número de registros de   patrimonio edificado por localidad (patrimonio heredado del pasado, con   relevancia cultural, histórica, artística, identitaria, etc., entre las que   destacan Valladolid, Izamal, Dzilam, Maní, Motul, Buctzotz).
Distancia a sitios   arqueológicos | Distancia a sitios arqueológicos   (sitios con vestigios de civilizaciones o culturas antiguas, con posibilidad   de ser visitados por los turistas).
Sitios gastronómicos | Localidades sobresalientes con   instalaciones y activades destinadas a dar a conocer la gastronomía típica.
Población indígena | Porcentaje de la población   municipal de 3 años y más que son mayahablantes como indicador de potencial   para aldeas mayas.

##### 1.2.1.1 Patrimonio edificado

Número de registros de patrimonio edificado por localidad (patrimonio heredado del pasado, con relevancia cultural, histórica, artística, identitaria, etc., entre las que destacan Valladolid, Izamal, Dzilam, Maní, Motul, Buctzotz).

**Insumos**

Capa | Patrimonio histórico por localidad
-- | --
Fuente | [1] Inventario de bienes inmuebles con carácter de patrimonio histórico   del estado de Yucatán SEDUMA y [2] Polígonos de localidades. Marco   Geoestadístico. Censo de Población y Vivienda INEGI
Año | [1] Sin dato; [2] 2020
Escala | Localidad
Unidades | Número de edificaciones

**Parámetros de la función de valor**

![](/recursos/turismo/fi_fv_tur_cul_atr_n_patrimonio_edificado.png)

**Función de valor de patrimonio edificado**

![](/recursos/turismo/mapa_fv_tur_cul_atr_n_patrimonio_edificado.png)

##### 1.2.1.2 Distancia a sitios arqueológicos

Distancia a sitios arqueológicos (sitios con vestigios de civilizaciones o culturas antiguas, con posibilidad de ser visitados por los turistas).

**Insumos**

Capa | Distancia a sitios arqueológicos
-- | --
Fuente | [1] Sitios arqueológicos INAH; [2] Mapa turístico del estado de Yucatán Gobierno de Yucatán; [3] Patrimonio arqueológico IMDUT con datos del INAH e INEGI
Año | [1] 2012; [2] 2021: [3] Sin dato
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/turismo/fi_fv_tur_cul_atr_d_sitios_arqueologicos.png)

**Función de valor de distancia a sitios arqueológicos**

![](/recursos/turismo/mapa_fv_tur_cul_atr_d_sitios_arqueologicos.png)

##### 1.2.1.3 Sitios gastronómicos

Localidades sobresalientes con instalaciones y activades destinadas a dar a conocer la gastronomía típica.

**Insumos**

Capa | Localidades con relevancia gastronómica
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI
Año | 2020
Escala | Localidad
Unidades | Adimensional

**Función de valor de sitios gastronómicos**

![](/recursos/turismo/mapa_fv_tur_cul_atr_loc_gastronomia.png)

##### 1.2.1.4 Población indígena

Porcentaje de la población municipal de 3 años y más que son mayahablantes como indicador de potencial para aldeas mayas.

**Insumos**

Capa | Población indígena
-- | --
Fuente | [1] Polígonos de municipios.División política municipal INEGI y [2] Datos   de indicador. Censo de Población y Vivienda INEGI
Año | [1] 2018 y [2] 2020
Campo | [2] POBTOT y P3YM_HLI
Escala | Municipal
Unidades | Porcentaje

**Parámetros de la función de valor**

![](/recursos/turismo/fi_fv_tur_cul_atr_porcentaje_indigena_municipal.png)

**Función de valor de población indígena**

![](/recursos/turismo/mapa_fv_tur_cul_atr_porcentaje_indigena_municipal.png)

#### 1.2.2 Naturaleza

Viajes para realizar actividades   recreativas en contacto directo con la naturaleza.  Incluye    turismo de aventura, ecoturismo, aviturismo, turismo comunitario.

Atributos | Definición
-- | --
Biofísicos | Elementos o formaciones   geológicas con características únicas que satisfacen necesidades de   recreación y esparcimiento.
Político-administrativo | Atributos administrativos y de   gestión relacionados con el turismo de naturaleza.
Infraestructura | Atributos de infraestructura   asociados al turismo de naturaleza.

##### 1.2.2.1 Biofísicos

Elementos o formaciones geológicas con características únicas que satisfacen necesidades de recreación y esparcimiento.

Atributos | Definición
-- | --
Cobertura | Tipo de vegetación y uso de suelo asociado al turismo de   naturaleza.
Cenotes | Presencia de cenotes con potencial turístico.
Esteros | Presencia de cuerpos de agua   costeros distintos a los cenotes (lagunas costeras, marismas y esteros).
Grutas | Presencia de grutas con   potencial turístico (cavidad que se forma en las rocas por procesos erosivos,   principalmente por disolución causada por el agua de lluvia que se filtra   entre rocas calcáreas y las disuelve).

###### 1.2.2.1.1 Cobertura

Tipo de vegetación y uso de suelo asociado al turismo de naturaleza.

**Insumos**

Campo | Uso del suelo y vegetación
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI y [2] Mapa de uso del suelo y vegetación de la zona costera asociada a los manglares, Región Península de Yucatán CONABIO
Año | [1] 2017; [2] 2021
Campo | [1] descripcio; [2] Descrip
Escala | [1] 1:250,000; [2] 1:50,000
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
7 | Manglar | Muy alta | 1.00
10 | Selva mediana | Muy alta | 1.00
13 | Tular | Muy alta | 1.00
15 | Vegetación de petén | Muy alta | 1.00
16 | Vegetación halófila hidrófila | Muy alta | 1.00
9 | Selva baja | Alta | 0.75
14 | Vegetación de duna costera | Alta | 0.75
3 | Agricultura de temporal | Moderada | 0.50
2 | Agricultura de riego | Baja | 0.25
4 | Asentamiento humano | Baja | 0.25
5 | Bosque cultivado/Palmar inducido | Baja | 0.25
8 | Pastizal | Baja | 0.25
12 | Sabana | Baja | 0.25
1 | Acuícola | Nula | 0.00
6 | Cuerpo de agua | Nula | 0.00
11 | Sin vegetación | Nula | 0.00
17 | ND | Nula | 0.00

**Función de valor de cobertura**

![](/recursos/turismo/mapa_fv_tur_nat_bio_cobertura_usv_svi_16cats.png)

###### 1.2.2.1.2 Cenotes

Presencia de cenotes con potencial turístico.

**Insumos**

Capa | Cenotes turísticos
-- | --
Fuente | Cenotes con potencial turístico SEDUMA
Año | Sin dato
Escala | Sin dato
Unidades | Adimensional

**Función de valor de cenotes**

![](/recursos/turismo/mapa_fv_tur_nat_bio_cenotes_turisticos_presencia.png)

###### 1.2.2.1.3 Esteros

Presencia de cuerpos de agua costeros distintos a los cenotes (lagunas costeras, marismas y esteros).

**Insumos**

Capa | Lagunas costeras, esteros y marismas
-- | --
Fuente | Modelo cartográfico de humedales INEGI
Año | 2014
Campo | SUBCLASE
Escala | 1:50,000
Unidades | Adimensional

**Función de valor de esteros**

![](/recursos/turismo/mapa_fv_tur_nat_bio_lagunas_esteros_marismas.png)

###### 1.2.2.1.4 Grutas

Presencia de grutas con potencial turístico (cavidad que se forma en las rocas por procesos erosivos, principalmente por disolución causada por el agua de lluvia que se filtra entre rocas calcáreas y las disuelve).

**Insumos**

Capa | Grutas
-- | --
Fuente | Cenotes y Grutas con infraestructura turística y posicionamiento satelital SEDUMA
Año | Sin dato
Campo | GRUTAS
Escala | Sin dato
Unidades | Adimensional

**Función de valor de grutas**

![](/recursos/turismo/mapa_fv_tur_nat_bio_grutas_presencia.png)

##### 1.2.2.2 Político-administrativo

Atributos administrativos y de gestión relacionados con el turismo de naturaleza.

Atributos | Definición
-- | --
ANP | Presencia de áreas naturales   protegidas de competencia federal, estatal o municipal que influyen en el   turismo de naturaleza.
Tenencia de la tierra | Tipo de tenencia de la tierra:   Áreas ejidales (comunitaria o parcelada) y no ejidales asociados a turismo de   naturaleza.
Cooperativas | Número de cooperativas que   ofrecen servicios de turismo de naturaleza.

###### 1.2.2.2.1 ANP

Presencia de áreas naturales protegidas de competencia federal, estatal o municipal que influyen en el turismo de naturaleza.

**Insumos**

Capa | Áreas Naturales Protegidas
-- | --
Fuente | [1] Áreas Naturales Protegidas SDS, [2] Áreas Naturales Protegidas   Federales de la República Mexicana CONANP y [3]  Áreas Naturales Protegidas Estatales,   Municipales, Ejidales y Privadas de México CONABIO
Año | [1] 2020; [2] 2017; [3] 2015
Escala | Sin dato
Unidades | Adimensional

**Parámetros de la función de valor**

**Función de valor de ANP**

![](/recursos/turismo/mapa_fv_tur_nat_admin_anp.png)

###### 1.2.2.2.2 Tenencia de la tierra

Tipo de tenencia de la tierra: Áreas ejidales (comunitaria o parcelada) y no ejidales asociados a turismo de naturaleza.

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
3 | No ejidal | Muy alta | 1.00
1 | Tierra de uso común | Moderada | 0.50
2 | Zona de tierras parceladas | Baja | 0.25

**Función de valor de tenencia de la tierra**

![](/recursos/turismo/mapa_fv_tur_nat_admin_tenencia_tierra.png)

###### 1.2.2.2.3 Cooperativas

Número de cooperativas que ofrecen servicios de turismo de naturaleza.

**Insumos**

Capa | Cooperativas
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI; [2] Datos de indicador. Productos de turismo alternativo en   Yucatán
Año | [1] 2020; [2] ?
Escala | Localidad
Unidades | Número

**Parámetros de la función de valor**

![](/recursos/turismo/fi_fv_tur_nat_admin_n_cooperativas.png)

**Función de valor de cooperativas**

![](/recursos/turismo/mapa_fv_tur_nat_admin_n_cooperativas.png)

##### 1.2.2.3 Infraestructura

Atributos de infraestructura asociados al turismo de naturaleza.

Atributos | Definición
-- | --
Caminos | Presencia de caminos, brechas, terracerías
Paradores   turísticos | Presencia de paradores (lugares que ofrecen instalaciones, servicios y posibilidades para que los turistas   disfruten su experiencia al máximo).

###### 1.2.2.3.1 Caminos

Presencia de caminos, brechas, terracerías.

**Insumos**

Capa | Caminos y veredas
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Campo | TIPO_VIAL
Escala | Sin dato
Unidades | Adimensional

**Función de valor de caminos**

![](/recursos/turismo/mapa_fv_tur_nat_infra_caminos_veredas.png)

###### 1.2.2.3.2 Paradores turísticos

Presencia de paradores (lugares que ofrecen instalaciones, servicios y posibilidades para que los turistas disfruten su experiencia al máximo).  

**Insumos**

Capa | Paradores turísticos
-- | --
Fuente | Paradores turísticos SEFOTUR
Año | Sin dato
Escala | Sin dato
Unidades | Adimensional

**Función de valor de paradores turísticos**

![](/recursos/turismo/mapa_fv_tur_nat_infra_paradores_turisticos_presencia.png)

#### 1.2.3 Sol y playa

Turismo de sol y playa y segundas residencias.

Atributos | Definición  
-- | --
Antropogénico | Atributos que describen las características antropogénicas del territorio.
Físico | Atributos asociados a las propiedades físicas del suelo y del ambiente.
Biológico | Atributos asociados a las propiedades biológicas del ambiente.

##### 1.2.3.1 Antropogénico

Atributos que describen las características antropogénicas del territorio.

Atributos | Definición
-- | --
Tenencia de la tierra | Áreas ejidales (comunitaria o parcelada) y   no ejidales vinculadas al turismo de sol y playa.
Asentamientos urbanos | Distancia a localidades urbanas   (>= 15,000 habitantes), vía carreteras como indicador del tiempo de   traslado.

###### 1.2.3.1.1 Tenencia de la tierra

Áreas ejidales (comunitaria o parcelada) y no ejidales vinculadas al turismo de sol y playa.

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
3 | No ejidal | Muy alta | 1.00
1 | Tierra de uso común | Alta | 0.75
2 | Zona de tierras parceladas | Moderada | 0.50

**Función de valor de tenencia de la tierra**

![](/recursos/turismo/mapa_fv_tur_sol_ant_tenencia_tierra.png)

###### 1.2.3.1.2 Asentamientos urbanos

Distancia a localidades urbanas (>= 15,000 habitantes), vía carreteras como indicador del tiempo de traslado.

**Insumos**

Capa | Distancia a localidades urbanas
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI y [2] Red Nacional de Caminos (RNC) Red vial - INEGI
Año | [1] 2020; [2] 2019
Campo | [1] AMBITO; [2] TIPO_VIAL
Escala | 1:250,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/turismo/fi_fv_tur_sol_ant_d_loc_urbanas_carreteras_prolongacion.png)

**Función de valor de asentamientos urbanos**

![](/recursos/turismo/mapa_fv_tur_sol_ant_d_loc_urbanas_carreteras_prolongacion.png)

##### 1.2.3.2 Físico

Atributos asociados a las propiedades físicas del suelo y del ambiente.

Atributos | Definición
-- | --
Distancia al litoral | Distancia a zona costera
Tipo de playa | Tipo de playa, de acuerdo al sustrato (arenoso, artificial, lodoso, vegetado).

###### 1.2.3.2.1 Distancia al litoral

Distancia a zona costera.

**Insumos**

Capa | Distancia al litoral
-- | --
Fuente | Litoral POETCY, SDS
Año | Sin dato
Escala | 1:250,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/turismo/fi_fv_tur_sol_fis_d_litoral.png)

**Función de valor de distancia al litoral**

![](/recursos/turismo/mapa_fv_tur_sol_fis_d_litoral.png)

###### 1.2.3.2.2 Tipo de playa

Tipo de playa, de acuerdo al sustrato (arenoso, artificial, lodoso, vegetado).

**Insumos**

Capa | Tipo de litoral
-- | --
Fuente | Tipo de litoral POETCY
Año | Sin dato
Campo | TIPO
Escala | Sin dato
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | ARENOSO | Muy alta | 1.00
4 | VEGETADO | Alta | 0.75
2 | ARTIFICIAL | Moderada | 0.50
3 | LODOSO | Moderada | 0.50
5 | NA | Nula | 0.00

**Función de valor de tipo de playa**

![](/recursos/turismo/mapa_fv_tur_sol_fis_tipo_playa.png)

##### 1.2.3.3 Biológico

Atributos asociados a las propiedades biológicas del ambiente.

Atributos | Definición   
-- | --
Cobertura | Tipo de vegetación y uso del   suelo que contribuye al turismo de sol y playa.
Distancia a ANP | Distancia a áreas naturales protegidas costeras que influyen en el turismo de sol y playa.

###### 1.2.3.3.1 Cobertura

Tipo de vegetación y uso del suelo que contribuye al turismo de sol y playa.

**Insumos**

Campo | Uso del suelo y vegetación
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI y [2] Mapa de uso del suelo y vegetación de la zona costera asociada a los manglares, Región Península de Yucatán CONABIO
Año | [1] 2017; [2] 2021
Campo | [1] descripcio; [2] Descrip
Escala | [1] 1:250,000; [2] 1:50,000
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
14 | Vegetación de duna costera | Muy alta | 1.00
4 | Asentamiento humano | Alta | 0.75
11 | Sin vegetación | Alta | 0.75
1 | Acuícola | Moderada | 0.50
3 | Agricultura de temporal | Moderada | 0.50
5 | Bosque cultivado/Palmar inducido | Moderada | 0.50
10 | Selva mediana | Moderada | 0.50
12 | Sabana | Moderada | 0.50
2 | Agricultura de riego | Baja | 0.25
7 | Manglar | Baja | 0.25
8 | Pastizal | Baja | 0.25
9 | Selva baja | Baja | 0.25
13 | Tular | Baja | 0.25
15 | Vegetación de petén | Baja | 0.25
16 | Vegetación halófila hidrófila | Baja | 0.25
6 | Cuerpo de agua | Nula | 0.00
17 | ND | Nula | 0.00

**Función de valor de cobertura**

![](/recursos/turismo/mapa_fv_tur_sol_bio_cobertura_usv_svi_16cats.png)

###### 1.2.3.3.2 Distancia a ANP

Distancia a áreas naturales protegidas costeras que influyen en el turismo de sol y playa.

**Insumos**

Capa | Distancia a Áreas Naturales Protegidas   costeras
-- | --
Fuente | [1] Áreas Naturales Protegidas SDS y [2] Áreas Naturales Protegidas   Federales de la República Mexicana CONANP
Año | [1] 2020; [2] 2017
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/turismo/fi_fv_tur_sol_bio_d_anp_costeras.png)

**Función de valor de distancia a ANP**

![](/recursos/turismo/mapa_fv_tur_sol_bio_d_anp_costeras.png)

#### 1.2.4 Urbano

Actividades turísticas asociadas a zonas urbanas y que incluye bodas, convenciones, reuniones, negocios, turismo médico y turismo educativo.

Atributos | Definición
-- | --
Centro de convenciones | Presencia de centros de convenciones.
Número de cuartos de hotel | Número de habitaciones de hotel en las localidades.
Haciendas | Distancia de haciendas.
Número de hospitales privados | Número de hospitales privados en las localidades.

##### 1.2.4.1 Centro de convenciones

Presencia de centros de convenciones.

**Insumos**

Capa | Centros de convenciones
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI
Año | 2020
Escala | Localidad
Unidades | Adimensional

**Función de valor de centro de convenciones**

![](/recursos/turismo/mapa_fv_tur_ur_atr_centros_convenciones.png)

##### 1.2.4.2 Número de cuartos de hotel

Número de habitaciones de hotel en las localidades.

**Insumos**

Capa | Hoteles por localidad
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI; [2] Datos de indicador. Reporte de servicios de hospedaje   SEFOTUR -InvenTur
Año | [1] 2020; [2] 2021
Escala | Localidad
Unidades | Número

**Parámetros de la función de valor**

![](/recursos/turismo/fi_fv_tur_ur_atr_n_habitaciones.png)

**Función de valor de número de cuartos de hotel**

![](/recursos/turismo/mapa_fv_tur_ur_atr_n_habitaciones.png)

##### 1.2.4.3 Haciendas

Distancia de haciendas.

**Insumos**

Capa | Distancia a haciendas
-- | --
Fuente | Haciendas de Yucatán SEFOTUR
Año | Sin dato
Escala | Sin dato
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/turismo/fi_fv_tur_ur_atr_d_haciendas.png)

**Función de valor de haciendas**

![](/recursos/turismo/mapa_fv_tur_ur_atr_d_haciendas.png)

##### 1.2.4.4 Número de hospitales privados

Número de hospitales privados en las localidades.

**Insumos**

Capa | Unidades económicas de infraestructura   hospitalaria-médica privada
-- | --
Fuente | [1] Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI y [2] Datos de indicador. Directorio Estadístico Nacional de   Unidades Económicas (DENUE) INEGI
Año | 2020
Escala | Localidad
Unidades | Número

**Parámetros de la función de valor**

![](/recursos/turismo/fi_fv_tur_ur_atr_n_hospitales.png)

**Función de valor de número de hospitales privados**

![](/recursos/turismo/mapa_fv_tur_ur_atr_n_hospitales.png)

#### 1.2.5 Cruceros

Actividad turística que se realiza a bordo de un barco o buque, el cual brinda todos los servicios y facilidades similares a los de un gran hotel o resort del mundo.

Atributos | Definición
-- | --
Puerto Progreso | Distancia a Puerto Progreso vía carreteras y prolongaciones.

##### 1.2.5.1 Puerto Progreso

Distancia a Puerto Progreso vía carreteras y prolongaciones.

**Insumos**

Capa | Distancia a Puerto Progreso
-- | --
Fuente | [1] Ubicación de los principales puertos de el estado de Yucatán POETY y   [2] Red Nacional de Caminos (RNC) Red vial - INEGI
Año | [1] 2002; [2] 2019
Campo | [2] TIPO_VIAL
Escala | 1:250,000
Unidades | Kilómetros

**Parámetros de la función de valor**

![](/recursos/turismo/fi_fv_tur_cru_atr_d_puerto_progreso_carretera_prolongacion.png)

**Función de valor de Puerto Progreso**

![](/recursos/turismo/mapa_fv_tur_cru_atr_d_puerto_progreso_carretera_prolongacion.png)

### 1.3 Mapa de aptitud

#### 1.3.1 Mapa de aptitud de turismo cultural

![](/recursos/turismo/mapa_aptitud_tur_cultural.png)

#### 1.3.2 Mapa de aptitud de turismo de naturaleza

![](/recursos/turismo/mapa_aptitud_tur_naturaleza.png)

#### 1.3.3 Mapa de aptitud de turismo de sol y playa

![](/recursos/turismo/mapa_aptitud_tur_sol_playa.png)

#### 1.3.4 Mapa de aptitud de turismo urbano

![](/recursos/turismo/mapa_aptitud_tur_urbano.png)

#### 1.3.5 Mapa de aptitud de turismo de cruceros

![](/recursos/turismo/mapa_aptitud_tur_cruceros.png)

#### 1.3.6 Mapa de aptitud de turismo

![](/recursos/turismo/mapa_aptitud_turismo.png)

**Pesos globales de los atributos del sector turismo**

Tipo de   turismo | Criterio | Peso
-- | -- | --
Cultural | Patrimonio edificado | 0.151
Cultural | Distancia a sitios aqueológicos | 0.129
Sol y playa | Tenencia de la tierra | 0.113
Sol y playa | Distancia al litoral | 0.074
Naturaleza | Cobertura | 0.074
Naturaleza | Cenotes | 0.055
Cultural | Sitios gastronómicos | 0.045
Naturaleza | ANP | 0.043
Cruceros | Puerto Progreso | 0.043
Urbano | Centro de convenciones | 0.033
Naturaleza | Esteros | 0.032
Urbano | Número de cuartos de hotel | 0.031
Sol y playa | Asentamientos urbanos | 0.028
Cultural | Población indígena | 0.028
Naturaleza | Caminos | 0.023
Naturaleza | Grutas | 0.022
Sol y playa | Cobertura | 0.018
Sol y playa | Tipo de playa | 0.015
Naturaleza | Tenencia de la tierra | 0.011
Urbano | Haciendas | 0.011
Naturaleza | Cooperativas | 0.007
Urbano | Número de hospitales privados | 0.006
Naturaleza | Paradores turísticos | 0.005
Sol y playa | Distancia a ANP | 0.005

**Área por categoría de aptitud**

Categoría | km² | Porcentaje delestado
-- | --: | --:
Muy alta | 201.9 | 1
Alta | 134.1 | 0
Moderada | 6085.0 | 15
Baja | 24611.4 | 62
Muy baja | 8504.2 | 22
Nula | 0.0 | 0

#### 1.3.7 Sensibilidad de atributos ambientales del sector turismo

![](/recursos/turismo/fi_analisis_sensibilidad_turismo.png)
