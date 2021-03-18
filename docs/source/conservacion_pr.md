# Conservación-En proceso de actualización

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

Promover la conservación, la protección y el aprovechamiento sustentable de los elementos biofísicos y bioculturales; la preservación de sitios prioritarios y la restauración de sitios degradados; para garantizar la funcionalidad y conectividad de los ecosistemas y la provisión de servicios ambientales, respetando los usos y costumbres de las comunidades indígenas mediante el fomento de mejores prácticas y la participación de comunidades locales.

[Lista de participantes]()

### 1.1 Modelo de decisión

![](/recursos/conservacion/fi_conservacion.png)

### 1.2 Atributos

#### 1.2.1 Servicios ambientales

Beneficios que la gente recibe de los diferentes ecosistemas, ya sea de manera natural o por medio de su manejo sustentable, ya sea en el ámbito local, regional o global. Los servicios ambientales influyen directamente en el mantenimiento de la vida, generando beneficios y bienestar para las personas y las comunidades.

Atributos | Definición
-- | --
Soporte | Procesos ecológicos necesarios para los otros tres tipos de servicios ambientales. Su impacto sobre el ser humano es indirecto (o directo a muy largo plazo). Comprenden: formación de suelo, fotosíntesis, producción primaria, ciclo de nutrientes y ciclo del   agua.
Regulación | Procesos ecológicos que mejoran o  hacen posible nuestra vida, tales como: mejoras en la calidad del aire, regulación del clima, del ciclo del agua, control de la erosión, mantenimiento de la fertilidad del suelo, reciclado de desechos y purificación de aguas residuales, control de enfermedades y plagas, polinización y reducción de daños ante catástrofes naturales.
Provisión | Productos obtenidos de la   naturaleza para su consumo o utilización, ya sea de manera directa o previo procesamiento, tales como: comida, agua dulce de consumo y uso agrícola; materias primas bióticas para tejidos, materiales de construcción, resinas;   materiales geóticos (sal); combustibles renovables; recursos genéticos para   agricultura, ganadería y biotecnología; recursos ornamentales, decoración, jardinería, etc; compuestos bioquímicos de distintos usos, recursos farmacológicos y medicinales, etc.
Culturales | Valores o beneficios no materiales que se obtienen de la naturaleza a través del enriquecimiento personal o espiritual, el desarrollo cognitivo, la reflexión, el disfrute de la naturaleza, los placeres estéticos que ofrecen los propios ecosistemas. La   diversidad de los ecosistemas es uno de los factores determinantes en la diversidad cultural de un territorio. Muchos ecosistemas son una fuente de inspiración para el arte, el folklore, los símbolos nacionales y regionales, la arquitectura y la publicidad.

##### 1.2.1.1 Soporte

Procesos ecológicos necesarios para los otros tres tipos de servicios ambientales. Su impacto sobre el ser humano es indirecto (o directo a muy largo plazo). Comprenden: formación de suelo, fotosíntesis, producción primaria, ciclo de nutrientes y ciclo del   agua.

Atributos | Definición
-- | --
Zonas de recarga | Zonas de recarga de acuífero.
Cobertura forestal | Tipo de cobertura forestal como indicador de productividad primaria.
Riqueza forestal | Número de taxones como indicador de productividad primaria.
Biomasa aérea | Biomasa vegetal arbórea

###### 1.2.1.1.1 Zonas de recarga

Zonas de recarga de acuífero.

###### 1.2.1.1.2 Cobertura forestal

Tipo de cobertura forestal como indicador de productividad primaria.

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI y [2] Mapa de uso del suelo y vegetación de la zona costera asociada a los manglares, Región Península de Yucatán CONABIO
Año | [1] 2017; [2] 2021
Campo | [1] descripcio; [2] Descrip
Escala | [1] 1:250,000; [2] 1:50,000
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
6 | Cuerpo de agua | Muy alta | 1.00
7 | Manglar | Muy alta | 1.00
9 | Selva baja | Muy alta | 1.00
10 | Selva mediana | Muy alta | 1.00
13 | Tular | Muy alta | 1.00
14 | Vegetación de duna costera | Muy alta | 1.00
15 | Vegetación de petén | Muy alta | 1.00
16 | Vegetación halófila hidrófila | Muy alta | 1.00
3 | Agricultura de temporal | Moderada | 0.50
12 | Sabana | Moderada | 0.50
5 | Bosque cultivado/Palmar inducido | Baja | 0.25
8 | Pastizal | Baja | 0.25
11 | Sin vegetación | Baja | 0.25
1 | Acuícola | Nula | 0.00
2 | Agricultura de riego | Nula | 0.00
4 | Asentamiento humano | Nula | 0.00
17 | ND | Nula | 0.00

**Función de valor de cobertura forestal**

![](/recursos/conservacion/mapa_fv_con_sa_sop_cobertura_usv_svi_16cats.png)

###### 1.2.1.1.3 Riqueza forestal

Número de taxones como indicador de productividad primaria.

**Insumos**

Capa | Composición total
-- | --
Fuente | Composición total CONAFOR  - predicción CONAFOR  (con datos del INFyS 2009-2014)
Año | 2014
Escala | Sin dato
Unidades | Taxones/UMP

**Parámetros de la función de valor**

![](/recursos/conservacion/fi_fv_con_sa_sop_inf_composicion_total.png)

**Función de valor de riqueza forestal**

![](/recursos/conservacion/mapa_fv_con_sa_sop_inf_composicion_total.png)

###### 1.2.1.1.4 Biomasa aérea

Biomasa vegetal arbórea.

**Parámetros de la función de valor**

![](/recursos/conservacion/fi_fv_con_sa_sop_biomasa_aerea.png)

**Función de valor de biomasa aérea**

![](/recursos/conservacion/mapa_fv_con_sa_sop_biomasa_aerea.png)

##### 1.2.1.2 Regulación

Procesos ecológicos que mejoran o  hacen posible nuestra vida, tales como: mejoras en la calidad del aire, regulación del clima, del ciclo del agua, control de la erosión, mantenimiento de la fertilidad del suelo, reciclado de desechos y purificación de aguas residuales, control de enfermedades y plagas, polinización y reducción de daños ante catástrofes naturales.

Atributos | Definición
-- | --
Cobertura | Tipo de cobertura como indicador de productividad primaria.
Captura de carbono | Captura de carbono como indicador de calidad del aire.
Especies melíferas | Concentración de especies melíferas como indicador del servicio ambiental de regulación de polinización.

###### 1.2.1.2.1 Cobertura

Tipo de cobertura como indicador de productividad primaria.

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI y [2] Mapa de uso del suelo y vegetación de la zona costera asociada a los manglares, Región Península de Yucatán CONABIO
Año | [1] 2017; [2] 2021
Campo | [1] descripcio; [2] Descrip
Escala | [1] 1:250,000; [2] 1:50,000
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
6 | Cuerpo de agua | Muy alta | 1.00
7 | Manglar | Muy alta | 1.00
9 | Selva baja | Muy alta | 1.00
10 | Selva mediana | Muy alta | 1.00
13 | Tular | Muy alta | 1.00
14 | Vegetación de duna costera | Muy alta | 1.00
15 | Vegetación de petén | Muy alta | 1.00
16 | Vegetación halófila hidrófila | Muy alta | 1.00
12 | Sabana | Alta | 0.75
2 | Agricultura de riego | Baja | 0.25
3 | Agricultura de temporal | Baja | 0.25
5 | Bosque cultivado/Palmar inducido | Baja | 0.25
8 | Pastizal | Baja | 0.25
1 | Acuícola | Nula | 0.00
4 | Asentamiento humano | Nula | 0.00
11 | Sin vegetación | Nula | 0.00
17 | ND | Nula | 0.00

**Función de valor de cobertura**

![](/recursos/conservacion/mapa_fv_con_sa_reg_cobertura_usv_svi_16cats.png)

###### 1.2.1.2.2 Captura de carbono

Captura de carbono como indicador de calidad del aire.

**Insumos**

Capa | Carbono almacenado
-- | --
Fuente | Carbono almacenado  - predicción CONAFOR  (con datos del INFyS 2009-2014)
Año | 2017
Escala | Sin dato
Unidades | Toneladas/hectárea

**Parámetros de la función de valor**

![](/recursos/conservacion/fi_fv_con_sa_reg_inf_carbono_almacenado.png)

**Función de valor de captura de carbono**

![](/recursos/conservacion/mapa_fv_con_sa_reg_inf_carbono_almacenado.png)

###### 1.2.1.2.3 Especies melíferas

Concentración de especies melíferas como indicador del servicio ambiental de regulación de polinización.

**Insumos**

Capa | Riqueza melífera
-- | --
Fuente | Riqueza melífera SEDUMA, con información de la base de datos de especies   de flora integrada para el Estudio de Biodiversidad y Desarrollo Humano en   Yucatán. CICY, PPD-FMAM, CONABIO y SEDUMA
Año | 2005
Escala | Sin dato
Unidades | Número de especies/sitio

**Parámetros de la función de valor**

![](/recursos/conservacion/fi_fv_con_sa_reg_riqueza_melifera.png)

**Función de valor de especies melíferas**

![](/recursos/conservacion/mapa_fv_con_sa_reg_riqueza_melifera.png)

##### 1.2.1.3 Provisión  

Productos obtenidos de la naturaleza para su consumo o utilización, ya sea de manera directa o previo procesamiento, tales como: comida, agua dulce de consumo y uso agrícola; materias primas bióticas para tejidos, materiales de construcción, resinas; materiales geóticos (sal); combustibles renovables; recursos genéticos para agricultura, ganadería y biotecnología; recursos ornamentales, decoración, jardinería, etc; compuestos bioquímicos de distintos usos, recursos farmacológicos y medicinales, etc.

Atributos | Definición
-- | --
Cobertura | Vegetación con posible uso o consumo, ya sea directamente o con previo procesamiento.   
Cuerpos de agua | Presencia de cuerpos de agua no considerados en la capa de cobertura.   
Parientes silvestres de cultivo | Frecuencia de las siete especies publicadas por CONABIO que se distribuyen potencialmente en menos del 50% del estado. A las áreas de distribución se le eliminaron las áreas de agricultura de riego, los asentamientos humanos y cuerpos de agua.

###### 1.2.1.3.1 Cobertura

Vegetación con posible uso o consumo, ya sea directamente o con previo procesamiento.   

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | [1] Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI y [2] Mapa de uso del suelo y vegetación de la zona costera asociada a los manglares, Región Península de Yucatán CONABIO
Año | [1] 2017; [2] 2021
Campo | [1] descripcio; [2] Descrip
Escala | [1] 1:250,000; [2] 1:50,000
Unidades | Adimensional

**Parámetros de la función de valor**

###### 1.2.1.3.2 Cuerpos de agua

Presencia de cuerpos de agua no considerados en la capa de cobertura.

**Insumos**

Capa | Cuerpos de agua no incluidos en el Serie VI de Uso del suelo y vegetación INEGI
-- | --
Fuente | [1] Modelo cartográfico de humedales INEGI; [2] Cenotes POETY y [3] Censo de cenotes SDS
Año | [1] 2014; [2] Sin dato; [3] 2009
Escala | [1] 1:50,000; [2] [3] Sin dato
Unidades | Adimensional

###### 1.2.1.3.3 Parientes silvestres de cultivo

Frecuencia de las siete especies publicadas por CONABIO que se distribuyen potencialmente en menos del 50% del estado. A las áreas de distribución se le eliminaron las áreas de agricultura de riego, los asentamientos humanos y cuerpos de agua.

**Insumos**

Capa | Parientes silvestres de cultivos
-- | --
Fuente |  [1] Capsicum rhomboideum. Distribución potencial de   chiles  CONABIO - UICN; [2] Physalis   angulata. Distribución potencial de tomates verdes  CONABIO - UICN; [3] Physalis gracilis.   Distribución potencial de tomates verdes CONABIO - UICN; [4] Physalis   lagascae. Distribución potencial de tomates verdes CONABIO - UICN; [5]   Physalis melanocystis. Distribución potencial de tomates verdes CONABIO -   UICN; [6] Tripsacum latifolium. Distribución potencial de maíces CONABIO -   UIC y [7] Vanilla odorata. Distribución potencial de vainillas CONABIO -UICN
Año | 2020
Escala | 1:1,000,000
Unidades | Número

##### 1.2.1.4 Culturales

Valores o beneficios no materiales que se obtienen de la naturaleza a través del enriquecimiento personal o espiritual, el desarrollo cognitivo, la reflexión, el disfrute de la naturaleza, los placeres estéticos que ofrecen los propios ecosistemas. La diversidad de los ecosistemas es uno de los factores determinantes en la diversidad cultural de un territorio. Muchos ecosistemas son una fuente de inspiración para el arte, el folklore, los símbolos nacionales y regionales, la arquitectura y la publicidad.

Atributos | Definición
-- | --
Biofísico y social | Atributos biofísicos y sociales relacionados con los servicios   ambientales culturales.
Administrativo | Atributos administrativos y de gestión relacionados con los servicios   ambientales culturales.

###### 1.2.1.4.1 Biofísico y social

Atributos biofísicos y sociales relacionados con los servicios ambientales culturales.

Atributos | Definición
-- | --
Cenotes y grutas | Presencia de cenotes y grutas (Cavidades que se forman de manera natural en la tierra o roca, por erosión que provoca la disolución de rocas calcáreas).
Población indígena | Porcentaje de la población municipal de 3 años y más que son mayahablantes.
Zonas arqueológicas | Presencia de sitios arqueológicos (lugares con vestigios de civilizaciones o culturas antiguas).

###### 1.2.1.4.1.1 Cenotes y grutas

Presencia de cenotes y grutas (Cavidades que se forman de manera natural en la tierra o roca, por erosión que provoca la disolución de rocas calcáreas).

**Insumos**

Capa | Cenotes y grutas
-- | --
Fuente | [1] Cenotes POETY; [2] Censo de cenotes SDS; [3] Cenotes y Grutas con   infraestructura turística y posicionamiento satelital  SEDUMA
Año | [1] [3]  Sin dato; [2] 2009
Escala | Sin dato
Unidades | Adimensional

**Función de valor de cenotes y grutas**

![](/recursos/conservacion/mapa_fv_con_sa_cul_cenotes_grutas.png)

###### 1.2.1.4.1.2 Población indígena

Porcentaje de la población municipal de 3 años y más que son mayahablantes.

**Insumos**

Capa | Población indígena
-- | --
Fuente | [1] Polígonos de municipios. División política municipal INEGI y [2] Datos   de indicador. Censo de Población y Vivienda INEGI
Año | [1] 2018 y [2] 2020
Campo | [2] POBTOT y P3YM_HLI
Escala | Municipal
Unidades | Porcentaje

**Parámetros de la función de valor**

![](/recursos/conservacion/fi_fv_con_sa_cul_porcentaje_indigena_municipal.png)

**Función de valor de población indígena**

![](/recursos/conservacion/mapa_fv_con_sa_cul_porcentaje_indigena_municipal.png)

###### 1.2.1.4.1.3 Zonas arqueológicas

Presencia de sitios arqueológicos (lugares con vestigios de civilizaciones o culturas antiguas).

**Insumos**

Capa | Sitios arqueológicos
-- | --
Fuente | [1] Sitios arqueológicos INAH; [2] Mapa turístico del estado de Yucatán   Gobierno de Yucatán
Año | [1] 2012; [2] 2021
Escala | Sin dato
Unidades | Adimensional

**Función de valor de zonas arqueológicas**

![](/recursos/conservacion/mapa_fv_con_sa_cul_sitios_arqueologicos.png)

###### 1.2.1.4.2 Administrativo

Atributos administrativos y de gestión relacionados con los servicios ambientales culturales.

Atributos | Definición
-- | --
ANP bioculturales | Presencia de áreas naturales protegidas con enfoque biocultural
ADVC | Presencia de Áreas Destinadas Voluntariamente a la Conservación (ADVC).
Áreas de uso común | Presencia de áreas ejidales de uso común
UMA | Presencia de Unidades de Manejo Ambiental (UMA)
PSA | Presencia de proyectos de pago por servicios ambientales

###### 1.2.1.4.2.1 ANP bioculturales

Presencia de áreas naturales protegidas con enfoque biocultural.

**Insumos**

Capa | Áreas Naturales Protegidas: Reserva   Biocultural del Puuc, Kabah y San Juan Bautista Tabi y Anexa Sacnité
-- | --
Fuente | Áreas Naturales Protegidas SDS
Año | 2020
Escala | Sin dato
Unidades | Adimensional

**Función de valor de ANP bioculturales**

![](/recursos/conservacion/mapa_fv_con_sa_cul_anp_puuc_kabah_tabi.png)

###### 1.2.1.4.2.2 ADVC

Presencia de Áreas Destinadas Voluntariamente a la Conservación (ADVC).

**Insumos**

Capa | Áreas destinadas voluntariamente a la   conservación
-- | --
Fuente | Áreas destinadas voluntariamente a la conservación CONANP
Año | 2021
Escala | Sin dato
Unidades | Adimensional

**Función de valor de ADVC**

![](/recursos/conservacion/mapa_fv_con_sa_cul_advc.png)

###### 1.2.1.4.2.3 Áreas de uso común

Presencia de áreas ejidales de uso común.

**Insumos**

Capa | Tenencia de la tierra - tierra de uso común
-- | --
Fuente | Tierra de uso común RAN
Año | 2020
Escala | Sin dato
Unidades | Adimensional

**Función de valor de áreas de uso común**

![](/recursos/conservacion/mapa_fv_con_sa_cul_ran_uso_comun.png)

###### 1.2.1.4.2.4 UMA

Presencia de Unidades de Manejo Ambiental (UMA).

**Función de valor de UMA**

![](/recursos/conservacion/mapa_fv_con_sa_cul_uma.png)

###### 1.2.1.4.2.5 PSA

Presencia de proyectos de pago por servicios ambientales.

**Insumos**

Capa | Pago por servicios ambientales
-- | --
Fuente | Áreas de servicios ambientales del bosque CONAFOR
Año | 2018
Escala | Sin dato
Unidades | Adimensional

**Función de valor de PSA**

![](/recursos/conservacion/mapa_fv_con_sa_cul_psa.png)

#### 1.2.2 Funcionalidad ecosistémica

Procesos biológicos, geoquímicos y físicos que tienen lugar en un ecosistema y producen un servicio.

Atributos | Definición
-- | --
Fragilidad ecosistémica | Estado de conservación y salud de los ecosistemas y su capacidad de resiliencia.
Vulnerabilidad hídrica | Vulnerabilidad del recurso hídríco ante agentes externos como contaminación, intrusión salina,   sobreexplotación.
Fragilidad kárstica | Vulnerabilidad del suelo de ser afectado por alguna actividad del hombre o por sus efectos, como la erosión. Vulnerabilidad de los ecosistemas kársticos derivada de su nivel de desarrollo y fragilidad ante impactos externos.

##### 1.2.2.1 Fragilidad ecosistémica

Estado de conservación y salud de los ecosistemas y su capacidad de resiliencia.

Atributos | Definición
-- | --
Integridad ecológica | Índice de Integridad ecológica.  
Degradación ecológica | Índice de degradación ecológica.   
Distancia a ANP y sitios Ramsar | Distancia con ANP, incluye las ANP  
AICAS | Presencia de AICAS fuera de ANP   y sitios RAMSAR.

**Insumos**

Capa | Índice de integridad ecológica
-- | --
Fuente | Índice de integridad ecológica (IIE) CONABIO
Año | 2018
Escala | 1:250,000
Unidades | Adimensional

**Insumos**

Capa | Índice de degradación ecológica
-- | --
Fuente | Índice de degradación ecológica (IDE) CONABIO
Año | 2018
Escala | 1:250,000
Unidades | Adimensional

**Insumos**

Capa | Distancia a Áreas Naturales Protegidas y   sitios RAMSAR
-- | --
Fuente | [1] Áreas Naturales Protegidas SDS, [2] Áreas Naturales Protegidas   Federales de la República Mexicana CONANP; [3]  Áreas Naturales Protegidas Estatales,   Municipales, Ejidales y Privadas de México CONABIO Y [4] Sitios RAMSAR de   México CONANP
Año | [1] 2020; [2] 2017; [3] 2015; [4] 2016
Escala | Sin dato
Unidades | Kilómetros

**Insumos**

Capa | AICAS fuera de Áreas Naturales Protegidas y   sitios RAMSAR
-- | --
Fuente | Áreas de importancia para la conservación de las aves (AICAS) CIPAMEX -   CONABIO
Año | 2015
Escala | 1:250,000
Unidades | Adimensional

##### 1.2.2.2 Vulnerabilidad hídrica

Vulnerabilidad del recurso hídríco ante agentes externos como contaminación, intrusión salina, sobreexplotación.

Atributos | Definición
-- | --
Vulnerabilidad intrínseca | Vulnerabilidad intrínseca a la contaminación del acuífero kárstico.   
Cenotes | Presencia de cenotes.   
Humedales | Presencia de cuerpos de agua, excluye cenotes y estanques artificiales.  
Reforestación | Zonas cuyo uso de suelo cambió   en los últimos 15 años, potenciales a ser reforestadas.  
Zonas de recarga | Zonas de recarga de acuífero.

**Insumos**

Capa | Vulnerabilidad del acuífero
-- | --
Fuente | Vulnerabilidad intrínseca del acuífero en el Estado de Yucatán, Batllori   Sampedro y Canto Mendiburu
Año | 2019
Escala | Sin dato
Unidades | Adimensional

**Insumos**

Capa | Cenotes
-- | --
Fuente | [1] Cenotes POETY y [2] Censo de cenotes SDS
Año | [1] Sin dato; [2] 2009
Escala | Sin dato
Unidades | Adimensional

**Insumos**

Capa | Humedales (sin cenotes)
-- | --
Fuente | Modelo cartográfico de humedales INEGI
Año | 2014
Escala | 1:50,000
Unidades | Adimensional

##### 1.2.2.2 Fragilidad kárstica

Vulnerabilidad del suelo de ser afectado por alguna actividad del hombre o por sus efectos, como la erosión. Vulnerabilidad de los ecosistemas kársticos derivada de su nivel de desarrollo y fragilidad ante impactos externos.

Atributos | Definición
-- | --
Cenotes | Presencia de cenotes  
Densidad de dolinas | Número de dolinas por hectárea

**Insumos**

Capa | Densidad de dolinas
-- | --
Fuente | Densidad de dolinas. Atlas de Peligros por Fenómenos del Estado de   Yucatán. Servicio Geológico Mexicano
Año | 2013
Campo | GRADO
Escala | Sin dato
Unidades | Adimensional

**Insumos**

Capa | Cenotes
-- | --
Fuente | [1] Cenotes POETY y [2] Censo de cenotes SDS
Año | [1] Sin dato; [2] 2009
Escala | Sin dato
Unidades | Adimensional
