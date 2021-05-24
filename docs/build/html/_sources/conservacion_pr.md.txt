# Conservación-Final

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

Promover la conservación, la protección y el aprovechamiento sustentable de los elementos biofísicos y bioculturales; la preservación de sitios prioritarios y la restauración de sitios degradados; para garantizar la funcionalidad y conectividad de los ecosistemas y la provisión de servicios ambientales, respetando los usos y costumbres de las comunidades indígenas mediante el fomento de mejores prácticas y la participación de comunidades locales.

[Lista de participantes](https://www.dropbox.com/s/d67uabsa4we9daj/lista_asistencia_conservaci%C3%B3n.pdf?dl=0)

## 1. Versión 1

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
Zonas de recarga | Zonas de recarga de acuífero como indicador de ciclo del agua.
Cobertura forestal | Tipo de cobertura forestal como indicador de productividad primaria.
Riqueza forestal | Número de taxones forestales como indicador de productividad primaria.
Biomasa aérea | Biomasa vegetal arbórea como indicador de productividad primaria.

###### 1.2.1.1.1 Zonas de recarga

Zonas de recarga de acuífero como indicador de ciclo del agua.

**Insumos**

Capa | Recarga del acuífero
-- | --
Fuente | Recarga del acuífero Yucatán. Amigos de Sian Kaan - Aarón Siller
Año | 2021
Escala | 1:20,000
Unidades | Milímetros

**Parámetros de la función de valor**

![](/recursos/conservacion/fi_fv_con_sa_sop_recarga_acuifero.png)

**Función de valor de zonas de recarga**

![](/recursos/conservacion/mapa_fv_con_sa_sop_recarga_acuifero.png)

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

Número de taxones forestales como indicador de productividad primaria.

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

Biomasa vegetal arbórea como indicador de productividad primaria.

**Insumos**

Capa | Biomasa aérea
-- | --
Fuente | Biomasa aérea CICY - José Luis Hernández Stefanoni
Año | 2021
Escala | ?
Unidades | Toneladas/hectárea

**Parámetros de la función de valor**

![](/recursos/conservacion/fi_fv_con_sa_sop_biomasa_aerea.png)

**Función de valor de biomasa aérea**

![](/recursos/conservacion/mapa_fv_con_sa_sop_biomasa_aerea.png)

##### 1.2.1.2 Regulación

Procesos ecológicos que mejoran o  hacen posible nuestra vida, tales como: mejoras en la calidad del aire, regulación del clima, del ciclo del agua, control de la erosión, mantenimiento de la fertilidad del suelo, reciclado de desechos y purificación de aguas residuales, control de enfermedades y plagas, polinización y reducción de daños ante catástrofes naturales.

Atributos | Definición
-- | --
Cobertura | Tipo de cobertura como indicador   de mantenimiento de fertilidad del suelo, control de la erosión, control de   enfermedades y reducción de daños ante catástrofes naturales.
Captura de carbono | Captura de carbono como   indicador de regulación del clima.
Especies melíferas | Distribución agregada de   especies melíferas como indicador  de   polinización.

###### 1.2.1.2.1 Cobertura

Tipo de cobertura como indicador   de mantenimiento de fertilidad del suelo, control de la erosión, control de   enfermedades y reducción de daños ante catástrofes naturales.

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

Captura de carbono como indicador de regulación del clima.

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

Distribución agregada de especies melíferas como indicador de polinización.

**Insumos**

Capa | Riqueza melífera
-- | --
Fuente | Riqueza melífera SEDUMA, con información de la base de datos de especies de flora integrada para el Estudio de Biodiversidad y Desarrollo Humano en Yucatán. CICY, PPD-FMAM, CONABIO y SEDUMA
Año | 2005
Escala | Sin dato
Unidades | Número de especies

**Parámetros de la función de valor**

![](/recursos/conservacion/fi_fv_con_sa_reg_riqueza_melifera.png)

**Función de valor de especies melíferas**

![](/recursos/conservacion/mapa_fv_con_sa_reg_riqueza_melifera.png)

##### 1.2.1.3 Provisión  

Productos obtenidos de la naturaleza para su consumo o utilización, ya sea de manera directa o previo procesamiento, tales como: comida, agua dulce de consumo y uso agrícola; materias primas bióticas para tejidos, materiales de construcción, resinas; materiales geóticos (sal); combustibles renovables; recursos genéticos para agricultura, ganadería y biotecnología; recursos ornamentales, decoración, jardinería, etc; compuestos bioquímicos de distintos usos, recursos farmacológicos y medicinales, etc.

Atributos | Definición
-- | --
Cobertura | Uso de suelo y vegetación como   provisión de alimentos, recursos genéticos y medicinales, materias primas y   combustibles renovables.
Cuerpos de agua | Provisión de agua para consumo y   uso agrícola. Presencia de cuerpos de agua no considerados en la capa de   cobertura.
Parientes silvestres de cultivo | Recursos genéticos para   agricultura y biotecnología. Frecuencia de las siete especies publicadas por   CONABIO que se distribuyen potencialmente en menos del 50% del estado. A las   áreas de distribución se le eliminaron las áreas de agricultura de riego, los   asentamientos humanos y cuerpos de agua.

###### 1.2.1.3.1 Cobertura

 Uso de suelo y vegetación como provisión de alimentos, recursos genéticos y medicinales, materias primas y combustibles renovables.

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
15 | Vegetación de petén | Muy alta | 1.00
16 | Vegetación halófila hidrófila | Muy alta | 1.00
12 | Sabana | Alta | 0.75
14 | Vegetación de duna costera | Alta | 0.75
1 | Acuícola | Moderada | 0.50
3 | Agricultura de temporal | Moderada | 0.50
2 | Agricultura de riego | Baja | 0.25
5 | Bosque cultivado/Palmar inducido | Baja | 0.25
8 | Pastizal | Baja | 0.25
4 | Asentamiento humano | Nula | 0.00
11 | Sin vegetación | Nula | 0.00
17 | ND | Nula | 0.00

**Función de valor de zonas de cobertura**

![](/recursos/conservacion/mapa_fv_con_sa_pro_cobertura_usv_svi_16cats_costa_manglar.png)

###### 1.2.1.3.2 Cuerpos de agua

 Provisión de agua para consumo y uso agrícola. Presencia de cuerpos de agua no considerados en la capa de cobertura.

**Insumos**

Capa | Cuerpos de agua no incluidos en el Serie VI de Uso del suelo y vegetación INEGI
-- | --
Fuente | [1] Modelo cartográfico de humedales INEGI; [2] Cenotes POETY y [3] Censo de cenotes SEDUMA
Año | [1] 2014; [2] 2007; [3] 2009
Escala | [1] 1:50,000; [2] [3] 1:1,000
Unidades | Adimensional

**Función de valor de cuerpos de agua**

![](/recursos/conservacion/mapa_fv_con_sa_pro_cuerpos_agua_serie6_exc_presencia.png)

###### 1.2.1.3.3 Parientes silvestres de cultivo

Recursos genéticos para agricultura y biotecnología. Frecuencia de las siete especies publicadas por CONABIO que se distribuyen potencialmente en menos del 50% del estado. A las áreas de distribución se le eliminaron las áreas de agricultura de riego, los   asentamientos humanos y cuerpos de agua.

**Insumos**

Capa | Parientes silvestres de cultivos
-- | --
Fuente |  [1] Capsicum rhomboideum. Distribución potencial de   chiles  CONABIO - UICN; [2] Physalis   angulata. Distribución potencial de tomates verdes  CONABIO - UICN; [3] Physalis gracilis.   Distribución potencial de tomates verdes CONABIO - UICN; [4] Physalis   lagascae. Distribución potencial de tomates verdes CONABIO - UICN; [5]   Physalis melanocystis. Distribución potencial de tomates verdes CONABIO -   UICN; [6] Tripsacum latifolium. Distribución potencial de maíces CONABIO -   UIC y [7] Vanilla odorata. Distribución potencial de vainillas CONABIO -UICN
Año | 2020
Escala | 1:1,000,000
Unidades | Número

**Parámetros de la función de valor**

![](/recursos/conservacion/fi_fv_con_sa_pro_parientes_silvestres.png)

**Función de valor de parientes silvestres de cultivo**

![](/recursos/conservacion/mapa_fv_con_sa_pro_parientes_silvestres.png)

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
Fuente | [1] Cenotes POETY; [2] Censo de cenotes SEDUMA; [3] Cenotes y Grutas con infraestructura turística y posicionamiento satelital; SEDUMA
Año | [1] 2007; [2] 2009; [3] sin dato
Escala | [1] [2] [3] 1:1,000
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
Fuente | [1] Sitios arqueológicos INAH; [2] Mapa turístico del estado de Yucatán   Gobierno de Yucatán; [3] Sitios de patrimonio arqueológico IMDUT con datos   del INAH e INEGI
Año | [1] 2012; [2] 2021; [3] Sin dato
Escala | Sin dato
Unidades | Adimensional

**Función de valor de zonas arqueológicas**

![](/recursos/conservacion/mapa_fv_con_sa_cul_sitios_arqueologicos.png)

###### 1.2.1.4.2 Administrativo

Atributos administrativos y de gestión relacionados con los servicios ambientales culturales.

Atributos | Definición
-- | --
ANP bioculturales | Presencia de áreas naturales   protegidas con enfoque biocultural (Reserva Biocultural del Puuc, Kabah y San Juan BautistaTabí y Anexa Sacnité).
ADVC | Presencia de Áreas Destinadas Voluntariamente a la Conservación (ADVC).
Áreas de uso común | Presencia de áreas ejidales de uso común
UMA | Presencia de Unidades de Manejo Ambiental (UMA)
PSA | Presencia de proyectos de pago por servicios ambientales

###### 1.2.1.4.2.1 ANP bioculturales

Presencia de áreas naturales protegidas con enfoque biocultural (Reserva Biocultural del Puuc, Kabah y San Juan BautistaTabí y Anexa Sacnité).

**Insumos**

Capa | Áreas Naturales Protegidas: Reserva   Biocultural del Puuc, Kabah y San Juan Bautista Tabi y Anexa Sacnité
-- | --
Fuente | Áreas Naturales Protegidas SDS con datos de los decretos de las ANPS estatales
Año | 2020
Escala | 1:50,000
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

**Insumos**

Capa | Unidades de Manejo Ambiental (UMAS)
-- | --
Año | Sin dato
Escala | 1:1,000
Unidades | Adimensional
Fuente | Características de las UMAS

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
Integridad ecológica | Índice de Integridad ecológica   para depredadores superiores, como la capacidad  para mantener procesos ecológicos   auto-organizados y estables en sitemas naturales (Mora, 2017).
Distancia a ANP y sitios Ramsar | Presencia y distancia a las   áreas naturales protegidas (federales, estatales, municipales, privadas) y   sitios Ramsar.
AICAS | Presencia de AICAS fuera de ANP y sitios RAMSAR.

###### 1.2.2.1.1 Integridad ecológica

Índice de Integridad ecológica para depredadores superiores, como la capacidad para mantener procesos ecológicos auto-organizados y estables en sitemas naturales (Mora, 2017).

**Insumos**

Capa | Índice de integridad ecológica
-- | --
Fuente | Índice de integridad ecológica (IIE) CONABIO
Año | 2018
Escala | 1:250,000
Unidades | Adimensional

**Parámetros de la función de valor**

![](/recursos/conservacion/fi_fv_con_fun_eco_ind_integridad_ecologica.png)

**Función de valor de integridad ecológica**

![](/recursos/conservacion/mapa_fv_con_fun_eco_ind_integridad_ecologica.png)

###### 1.2.2.1.2 Distancia a ANP y sitios Ramsar

Presencia y distancia a las áreas naturales protegidas (federales, estatales, municipales, privadas) y sitios Ramsar.

**Insumos**

Capa | Distancia a Áreas Naturales Protegidas y   sitios RAMSAR
-- | --
Fuente | [1] Áreas Naturales Protegidas SDS, [2] Áreas Naturales Protegidas   Federales de la República Mexicana CONANP; [3]&nbsp; Áreas Naturales Protegidas Estatales,   Municipales, Ejidales y Privadas de México CONABIO y [4] Sitios RAMSAR de   México CONANP
Año | [1] 2020; [2] 2017; [3] 2015; [4] 2016
Escala | [1] 1:50,000; [2][3][4] Sin dato
Unidades | Kilómetros

**Función de valor de distancia a ANP y sitios Ramsar**

![](/recursos/conservacion/mapa_fv_con_fun_eco_d_anp_ramsar.png)

###### 1.2.2.1.3 AICAS

Presencia de AICAS fuera de ANP y sitios RAMSAR.

**Insumos**

Capa | AICAS fuera de Áreas Naturales Protegidas y sitios RAMSAR
-- | --
Fuente | Áreas de importancia para la conservación de las aves (AICAS) CIPAMEX -   CONABIO
Año | 2015
Escala | 1:250,000
Unidades | Adimensional

**Función de valor de AICAS**

![](/recursos/conservacion/mapa_fv_con_fun_eco_aicas.png)

##### 1.2.2.2 Vulnerabilidad hídrica

Vulnerabilidad del recurso hídríco ante agentes externos como contaminación, intrusión salina, sobreexplotación.

Atributos | Definición
-- | --
Vulnerabilidad intrínseca | Vulnerabilidad intrínseca a la contaminación del acuífero kárstico.   
Zonas de recarga | Zonas de recarga de acuífero.
Humedales | Presencia de cuerpos de agua   (excluye cenotes y estanques artificiales).
Cenotes | Presencia de cenotes, dolinas,   poljes y uvalas.
Reforestación | Zonas potenciales a ser   reforestadas o restauradas con base en el cambio de cobertura 2002-2014.

###### 1.2.2.2.1 Vulnerabilidad intrínseca

Vulnerabilidad intrínseca a la contaminación del acuífero kárstico.  

**Insumos**

Capa | Vulnerabilidad del acuífero
-- | --
Fuente | Vulnerabilidad intrínseca del acuífero en el Estado de Yucatán, Batllori   Sampedro y Canto Mendiburu
Año | 2019
Escala | Sin dato
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
5 | e) Extrema | Muy alta | 1.00
4 | d) Muy alta | Muy alta | 1.00
3 | c) Alta | Alta | 0.75
2 | b) Media | Moderada | 0.50
1 | a) Baja | Baja | 0.25
6 | NA | Nula | 0.00

**Función de valor de vulnerabilidad intrínseca**

![](/recursos/conservacion/mapa_fv_con_fun_hid_vul_acuifero.png)

###### 1.2.2.2.2 Zonas de recarga

Zonas de recarga de acuífero.

**Insumos**

Capa | Recarga del acuífero
-- | --
Fuente | Recarga del acuífero Yucatán. Amigos de Sian Kaan - Aarón Siller
Año | 2021
Escala | 1:20,000
Unidades | Milímetros

**Parámetros de la función de valor**

![](/recursos/conservacion/fi_fv_con_fun_hid_recarga_acuifero.png)

**Función de valor de zonas de recarga**

![](/recursos/conservacion/mapa_fv_con_fun_hid_recarga_acuifero.png)

###### 1.2.2.2.3 Humedales

Presencia de cuerpos de agua (excluye cenotes y estanques artificiales).

**Insumos**

Capa | Humedales (sin cenotes)
-- | --
Fuente | Modelo cartográfico de humedales INEGI
Año | 2014
Escala | 1:50,000
Unidades | Adimensional

**Función de valor de humedales**

![](/recursos/conservacion/mapa_fv_con_fun_hid_humedales_sin_cenotes.png)

###### 1.2.2.2.4 Cenotes

Presencia de cenotes, dolinas, poljes y uvalas.

**Insumos**

Capa | Depresiones kársticas
-- | --
Fuente | Aguilar, Y., Bautista, F., Mendoza, M. E., Frausto, O., & Ihl, T. (2016). Density of karst depressions in Yucatán state, Mexico. Journal of Cave and Karst Studies, 78(2), 51–60. https://doi.org/10.4311/2015ES0124
Año | 2016
Escala | Sin dato
Unidades | Adimensional

**Función de valor de cenotes**

![](/recursos/conservacion/mapa_fv_con_fun_hid_depresiones_presencia.png)

###### 1.2.2.2.5 Reforestación

Zonas potenciales a ser reforestadas o restauradas con base en el cambio de cobertura 2002-2014.

**Insumos**

Capa | Cambio de cobertura
-- | --
Fuente | Cambio de cobertura en el estado de Yucatán 2002 - 2014 LANCIS, con datos de las Series de Suelo y Vegetación III y VI de INEGI
Año | 2020
Campo | cambio
Escala | Sin dato
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Conservado | Muy alta | 1.00
4 | Dentro de cobertura natural | Muy alta | 1.00
7 | Revegetado | Alta | 0.75
2 | Deforestado | Moderada | 0.50
3 | Degradado | Moderada | 0.50
6 | Por actividad productiva | Baja | 0.25
8 | Sin cambio dentro de uso antrópico | Baja | 0.25
5 | Falso cambio | Nula | 0.00
9 | Sin datos | Nula | 0.00

**Función de valor de reforestación**

![](/recursos/conservacion/mapa_fv_con_fun_hid_cambio_cob_s3_s6.png)

##### 1.2.2.3 Fragilidad kárstica

Vulnerabilidad del suelo de ser afectado por alguna actividad del hombre o por sus efectos, como la erosión. Vulnerabilidad de los ecosistemas kársticos derivada de su nivel de desarrollo y fragilidad ante impactos externos.

Atributos | Definición
-- | --
Densidad de dolinas | Número de dolinas por hectárea
Cenotes | Presencia de cenotes  

###### 1.2.2.3.1 Densidad de dolinas

Número de dolinas por hectárea.

**Insumos**

Capa | Densidad de dolinas
-- | --
Fuente | Densidad de dolinas. Atlas de Peligros por Fenómenos del Estado de   Yucatán. Servicio Geológico Mexicano
Año | 2013
Campo | VAL_DOL
Escala | Sin dato
Unidades | Número de dolinas/16 km2

**Parámetros de la función de valor**

![](/recursos/conservacion/fi_fv_con_fun_kar_densidad_dolinas.png)

**Función de valor de densidad de dolinas**

![](/recursos/conservacion/mapa_fv_con_fun_kar_densidad_dolinas.png)

###### 1.2.2.3.2 Cenotes

Presencia de cenotes.

**Insumos**

Capa | Depresiones kársticas
-- | --
Fuente | Aguilar, Y., Bautista, F., Mendoza, M. E., Frausto, O., & Ihl, T. (2016). Density of karst depressions in Yucatán state, Mexico. Journal of Cave and Karst Studies, 78(2), 51–60. https://doi.org/10.4311/2015ES0124
Año | 2016
Escala | Sin dato
Unidades | Adimensional

**Función de valor de cenotes**

![](/recursos/conservacion/mapa_fv_con_fun_kar_depresiones_presencia.png)

### 1.3 Mapa de aptitud

#### 1.3.1 Mapa de aptitud de servicios ambientales de soporte

![](/recursos/conservacion/mapa_aptitud_con_sa_soporte.png)

#### 1.3.2 Mapa de aptitud de servicios ambientales de regulación

![](/recursos/conservacion/mapa_aptitud_con_sa_regulacion.png)

#### 1.3.3 Mapa de aptitud de servicios ambientales de provisión

![](/recursos/conservacion/mapa_aptitud_con_sa_provision.png)

#### 1.3.4 Mapa de aptitud de servicios ambientales culturales

![](/recursos/conservacion/mapa_aptitud_con_sa_culturales.png)

#### 1.3.5 Mapa de aptitud de funcionalidad ecosistémica

![](/recursos/conservacion/mapa_aptitud_funcionalidad_ecosistemica.png)

#### 1.3.6 Mapa de aptitud de conservación

![](/recursos/conservacion/mapa_aptitud_con.png)

**Pesos globales de los atributos del sector conservación**

Criterio | Subcriterio | Peso
-- | -- | --
Fragilidad ecosistémica | Integridad ecológica | 0.136
Regulación | Cobertura forestal | 0.112
Soporte | Zonas de recarga | 0.087
Vulnerabilidad hídrica | Vulnerabilidad intrínseca | 0.075
Fragilidad kárstica | Densidad de dolinas | 0.074
Soporte | Cobertura forestal | 0.065
Vulnerabilidad hídrica | Zonas de recarga | 0.061
Provisión | Cobertura | 0.055
Regulación | Captura de carbono | 0.050
Fragilidad ecosistémica | Distancia a ANP y sitios Ramsar | 0.046
Soporte | Riqueza forestal | 0.030
Vulnerabilidad hídrica | Humedales | 0.025
Fragilidad kárstica | Cenotes | 0.025
Vulnerabilidad hídrica | Cenotes | 0.024
Fragilidad ecosistémica | AICAS | 0.021
Provisión | Cuerpos de agua | 0.018
Provisión | Parientes silvestres de cultivo | 0.018
Regulación | Especies melíferas | 0.016
Soporte | Biomasa aérea | 0.016
Vulnerabilidad hídrica | Reforestación | 0.013
Culturales - biofísicos sociales | Cenotes y grutas | 0.008
Culturales - biofísicos sociales | Población indígena | 0.008
Culturales - biofísicos sociales | Zonas arqueológicas | 0.008
Culturales - político administrativo | ANP bioculturales | 0.002
Culturales - político administrativo | ADVC | 0.002
Culturales - político administrativo | Áreas de uso común | 0.001
Culturales - político administrativo | UMA | 0.001
Culturales - político administrativo | PSA | 0.001

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del estado
-- | --: | --:
Muy alta | 1713.1 | 4
Alta | 18051.3 | 46
Moderada | 8985.8 | 23
Baja | 8434.7 | 21
Muy baja | 2351.6 | 6

#### 1.3.7 Sensibilidad de atributos ambientales del sector conservación

![](/recursos/conservacion/fi_analisis_sensibilidad_conservacion.png)

## 2. Versión 2

### 2.1 Modelo de decisión

![](/recursos/conservacion_v2/fi_conservacion.png)

### 2.2 Atributos

#### 2.2.1 Servicios ambientales

Beneficios que la gente recibe de los diferentes ecosistemas, ya sea de manera natural o por medio de su manejo sustentable, ya sea en el ámbito local, regional o global. Los servicios ambientales influyen directamente en el mantenimiento de la vida, generando beneficios y bienestar para las personas y las comunidades.

Atributos | Definición
-- | --
Soporte | Procesos ecológicos necesarios para los otros tres tipos de servicios ambientales. Su impacto sobre el ser humano es indirecto (o directo a muy largo plazo). Comprenden: formación de suelo, fotosíntesis, producción primaria, ciclo de nutrientes y ciclo del   agua.
Regulación | Procesos ecológicos que mejoran o  hacen posible nuestra vida, tales como: mejoras en la calidad del aire, regulación del clima, del ciclo del agua, control de la erosión, mantenimiento de la fertilidad del suelo, reciclado de desechos y purificación de aguas residuales, control de enfermedades y plagas, polinización y reducción de daños ante catástrofes naturales.
Provisión | Productos obtenidos de la   naturaleza para su consumo o utilización, ya sea de manera directa o previo procesamiento, tales como: comida, agua dulce de consumo y uso agrícola; materias primas bióticas para tejidos, materiales de construcción, resinas;   materiales geóticos (sal); combustibles renovables; recursos genéticos para   agricultura, ganadería y biotecnología; recursos ornamentales, decoración, jardinería, etc; compuestos bioquímicos de distintos usos, recursos farmacológicos y medicinales, etc.
Culturales | Valores o beneficios no materiales que se obtienen de la naturaleza a través del enriquecimiento personal o espiritual, el desarrollo cognitivo, la reflexión, el disfrute de la naturaleza, los placeres estéticos que ofrecen los propios ecosistemas. La   diversidad de los ecosistemas es uno de los factores determinantes en la diversidad cultural de un territorio. Muchos ecosistemas son una fuente de inspiración para el arte, el folklore, los símbolos nacionales y regionales, la arquitectura y la publicidad.

##### 2.2.1.1 Soporte

Procesos ecológicos necesarios para los otros tres tipos de servicios ambientales. Su impacto sobre el ser humano es indirecto (o directo a muy largo plazo). Comprenden: formación de suelo, fotosíntesis, producción primaria, ciclo de nutrientes y ciclo del   agua.

Atributos | Definición
-- | --
Zonas de recarga | Zonas de recarga de acuífero como indicador de ciclo del agua.
Cobertura forestal | Tipo de cobertura forestal como indicador de productividad primaria.
Riqueza forestal | Número de taxones forestales como indicador de productividad primaria.
Biomasa aérea | Biomasa vegetal arbórea como indicador de productividad primaria.

###### 2.2.1.1.1 Zonas de recarga

Zonas de recarga de acuífero como indicador de ciclo del agua.

**Insumos**

Capa | Recarga del acuífero
-- | --
Fuente | Recarga promedio 2004-2008. Batllori Sampedro, E. y Canto Mendiburu, S
Año | Sin dato
Escala | Sin dato
Unidades | Milímetros

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
8 | 500 | Muy alta | 1.00
7 | 400 | Alta | 0.75
6 | 300 | Moderada | 0.50
4 | 100 | Baja | 0.25
1 | -300 | Nula | 0.00
2 | -500 | Nula | 0.00

**Función de valor de zonas de recarga**

![](/recursos/conservacion_v2/mapa_fv_con_sa_sop_recarga_acuifero.png)

###### 2.2.1.1.2 Cobertura forestal

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

![](/recursos/conservacion_v2/mapa_fv_con_sa_sop_cobertura_usv_svi_16cats.png)

###### 2.2.1.1.3 Riqueza forestal

Número de taxones forestales como indicador de productividad primaria.

**Insumos**

Capa | Composición total
-- | --
Fuente | Composición total CONAFOR  - predicción CONAFOR  (con datos del INFyS 2009-2014)
Año | 2014
Escala | Sin dato
Unidades | Taxones/UMP

**Parámetros de la función de valor**

![](/recursos/conservacion_v2/fi_fv_con_sa_sop_inf_composicion_total.png)

**Función de valor de riqueza forestal**

![](/recursos/conservacion_v2/mapa_fv_con_sa_sop_inf_composicion_total.png)

###### 2.2.1.1.4 Biomasa aérea

Biomasa vegetal arbórea como indicador de productividad primaria.

**Insumos**

Capa | Biomasa aérea
-- | --
Fuente | Biomasa aérea CICY - José Luis Hernández Stefanoni
Año | 2021
Escala | ?
Unidades | Toneladas/hectárea

**Parámetros de la función de valor**

![](/recursos/conservacion_v2/fi_fv_con_sa_sop_biomasa_aerea.png)

**Función de valor de biomasa aérea**

![](/recursos/conservacion_v2/mapa_fv_con_sa_sop_biomasa_aerea.png)

##### 2.2.1.2 Regulación

Procesos ecológicos que mejoran o  hacen posible nuestra vida, tales como: mejoras en la calidad del aire, regulación del clima, del ciclo del agua, control de la erosión, mantenimiento de la fertilidad del suelo, reciclado de desechos y purificación de aguas residuales, control de enfermedades y plagas, polinización y reducción de daños ante catástrofes naturales.

Atributos | Definición
-- | --
Cobertura | Tipo de cobertura como indicador   de mantenimiento de fertilidad del suelo, control de la erosión, control de   enfermedades y reducción de daños ante catástrofes naturales.
Captura de carbono | Captura de carbono como   indicador de regulación del clima.
Especies melíferas | Distribución agregada de   especies melíferas como indicador  de   polinización.

###### 2.2.1.2.1 Cobertura

Tipo de cobertura como indicador   de mantenimiento de fertilidad del suelo, control de la erosión, control de   enfermedades y reducción de daños ante catástrofes naturales.

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

![](/recursos/conservacion_v2/mapa_fv_con_sa_reg_cobertura_usv_svi_16cats.png)

###### 2.2.1.2.2 Captura de carbono

Captura de carbono como indicador de regulación del clima.

**Insumos**

Capa | Carbono almacenado
-- | --
Fuente | Carbono almacenado  - predicción CONAFOR  (con datos del INFyS 2009-2014)
Año | 2017
Escala | Sin dato
Unidades | Toneladas/hectárea

**Parámetros de la función de valor**

![](/recursos/conservacion_v2/fi_fv_con_sa_reg_inf_carbono_almacenado.png)

**Función de valor de captura de carbono**

![](/recursos/conservacion_v2/mapa_fv_con_sa_reg_inf_carbono_almacenado.png)

###### 2.2.1.2.3 Especies melíferas

Distribución agregada de especies melíferas como indicador de polinización.

**Insumos**

Capa | Riqueza melífera
-- | --
Fuente | Riqueza melífera SEDUMA, con información de la base de datos de especies de flora integrada para el Estudio de Biodiversidad y Desarrollo Humano en Yucatán. CICY, PPD-FMAM, CONABIO y SEDUMA
Año | 2005
Escala | Sin dato
Unidades | Número de especies

**Parámetros de la función de valor**

![](/recursos/conservacion_v2/fi_fv_con_sa_reg_riqueza_melifera.png)

**Función de valor de especies melíferas**

![](/recursos/conservacion_v2/mapa_fv_con_sa_reg_riqueza_melifera.png)

##### 2.2.1.3 Provisión  

Productos obtenidos de la naturaleza para su consumo o utilización, ya sea de manera directa o previo procesamiento, tales como: comida, agua dulce de consumo y uso agrícola; materias primas bióticas para tejidos, materiales de construcción, resinas; materiales geóticos (sal); combustibles renovables; recursos genéticos para agricultura, ganadería y biotecnología; recursos ornamentales, decoración, jardinería, etc; compuestos bioquímicos de distintos usos, recursos farmacológicos y medicinales, etc.

Atributos | Definición
-- | --
Cobertura | Uso de suelo y vegetación como   provisión de alimentos, recursos genéticos y medicinales, materias primas y   combustibles renovables.
Cuerpos de agua | Provisión de agua para consumo y   uso agrícola. Presencia de cuerpos de agua no considerados en la capa de   cobertura.
Parientes silvestres de cultivo | Recursos genéticos para   agricultura y biotecnología. Frecuencia de las siete especies publicadas por   CONABIO que se distribuyen potencialmente en menos del 50% del estado. A las   áreas de distribución se le eliminaron las áreas de agricultura de riego, los   asentamientos humanos y cuerpos de agua.

###### 2.2.1.3.1 Cobertura

 Uso de suelo y vegetación como provisión de alimentos, recursos genéticos y medicinales, materias primas y combustibles renovables.

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
15 | Vegetación de petén | Muy alta | 1.00
16 | Vegetación halófila hidrófila | Muy alta | 1.00
12 | Sabana | Alta | 0.75
14 | Vegetación de duna costera | Alta | 0.75
1 | Acuícola | Moderada | 0.50
3 | Agricultura de temporal | Moderada | 0.50
2 | Agricultura de riego | Baja | 0.25
5 | Bosque cultivado/Palmar inducido | Baja | 0.25
8 | Pastizal | Baja | 0.25
4 | Asentamiento humano | Nula | 0.00
11 | Sin vegetación | Nula | 0.00
17 | ND | Nula | 0.00

**Función de valor de zonas de cobertura**

![](/recursos/conservacion_v2/mapa_fv_con_sa_pro_cobertura_usv_svi_16cats_costa_manglar.png)

###### 2.2.1.3.2 Cuerpos de agua

 Provisión de agua para consumo y uso agrícola. Presencia de cuerpos de agua no considerados en la capa de cobertura.

**Insumos**

Capa | Cuerpos de agua no incluidos en el Serie VI de Uso del suelo y vegetación INEGI
-- | --
Fuente | [1] Modelo cartográfico de humedales INEGI; [2] Cenotes POETY y [3] Censo de cenotes SEDUMA
Año | [1] 2014; [2] 2007; [3] 2009
Escala | [1] 1:50,000; [2] [3] 1:1,000
Unidades | Adimensional

**Función de valor de cuerpos de agua**

![](/recursos/conservacion_v2/mapa_fv_con_sa_pro_cuerpos_agua_serie6_exc_presencia.png)

###### 2.2.1.3.3 Parientes silvestres de cultivo

Recursos genéticos para agricultura y biotecnología. Frecuencia de las siete especies publicadas por CONABIO que se distribuyen potencialmente en menos del 50% del estado. A las áreas de distribución se le eliminaron las áreas de agricultura de riego, los   asentamientos humanos y cuerpos de agua.

**Insumos**

Capa | Parientes silvestres de cultivos
-- | --
Fuente |  [1] Capsicum rhomboideum. Distribución potencial de   chiles  CONABIO - UICN; [2] Physalis   angulata. Distribución potencial de tomates verdes  CONABIO - UICN; [3] Physalis gracilis.   Distribución potencial de tomates verdes CONABIO - UICN; [4] Physalis   lagascae. Distribución potencial de tomates verdes CONABIO - UICN; [5]   Physalis melanocystis. Distribución potencial de tomates verdes CONABIO -   UICN; [6] Tripsacum latifolium. Distribución potencial de maíces CONABIO -   UIC y [7] Vanilla odorata. Distribución potencial de vainillas CONABIO -UICN
Año | 2020
Escala | 1:1,000,000
Unidades | Número

**Parámetros de la función de valor**

![](/recursos/conservacion_v2/fi_fv_con_sa_pro_parientes_silvestres.png)

**Función de valor de parientes silvestres de cultivo**

![](/recursos/conservacion_v2/mapa_fv_con_sa_pro_parientes_silvestres.png)

##### 2.2.1.4 Culturales

Valores o beneficios no materiales que se obtienen de la naturaleza a través del enriquecimiento personal o espiritual, el desarrollo cognitivo, la reflexión, el disfrute de la naturaleza, los placeres estéticos que ofrecen los propios ecosistemas. La diversidad de los ecosistemas es uno de los factores determinantes en la diversidad cultural de un territorio. Muchos ecosistemas son una fuente de inspiración para el arte, el folklore, los símbolos nacionales y regionales, la arquitectura y la publicidad.

Atributos | Definición
-- | --
Biofísico y social | Atributos biofísicos y sociales relacionados con los servicios   ambientales culturales.
Administrativo | Atributos administrativos y de gestión relacionados con los servicios   ambientales culturales.

###### 2.2.1.4.1 Biofísico y social

Atributos biofísicos y sociales relacionados con los servicios ambientales culturales.

Atributos | Definición
-- | --
Cenotes y grutas | Presencia de cenotes y grutas (Cavidades que se forman de manera natural en la tierra o roca, por erosión que provoca la disolución de rocas calcáreas).
Población indígena | Porcentaje de la población municipal de 3 años y más que son mayahablantes.
Zonas arqueológicas | Presencia de sitios arqueológicos (lugares con vestigios de civilizaciones o culturas antiguas).

###### 2.2.1.4.1.1 Cenotes y grutas

Presencia de cenotes y grutas (Cavidades que se forman de manera natural en la tierra o roca, por erosión que provoca la disolución de rocas calcáreas).

**Insumos**

Capa | Cenotes y grutas
-- | --
Fuente | [1] Cenotes POETY; [2] Censo de cenotes SEDUMA; [3] Cenotes y Grutas con infraestructura turística y posicionamiento satelital; SEDUMA
Año | [1] 2007; [2] 2009; [3] sin dato
Escala | [1] [2] [3] 1:1,000
Unidades | Adimensional

**Función de valor de cenotes y grutas**

![](/recursos/conservacion_v2/mapa_fv_con_sa_cul_cenotes_grutas.png)

###### 2.2.1.4.1.2 Población indígena

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

![](/recursos/conservacion_v2/fi_fv_con_sa_cul_porcentaje_indigena_municipal.png)

**Función de valor de población indígena**

![](/recursos/conservacion_v2/mapa_fv_con_sa_cul_porcentaje_indigena_municipal.png)

###### 2.2.1.4.1.3 Zonas arqueológicas

Presencia de sitios arqueológicos (lugares con vestigios de civilizaciones o culturas antiguas).

**Insumos**

Capa | Sitios arqueológicos
-- | --
Fuente | [1] Sitios arqueológicos INAH; [2] Mapa turístico del estado de Yucatán   Gobierno de Yucatán; [3] Sitios de patrimonio arqueológico IMDUT con datos   del INAH e INEGI
Año | [1] 2012; [2] 2021; [3] Sin dato
Escala | Sin dato
Unidades | Adimensional

**Función de valor de zonas arqueológicas**

![](/recursos/conservacion_v2/mapa_fv_con_sa_cul_sitios_arqueologicos.png)

###### 2.2.1.4.2 Administrativo

Atributos administrativos y de gestión relacionados con los servicios ambientales culturales.

Atributos | Definición
-- | --
ANP bioculturales | Presencia de áreas naturales   protegidas con enfoque biocultural (Reserva Biocultural del Puuc, Kabah y San Juan BautistaTabí y Anexa Sacnité).
ADVC | Presencia de Áreas Destinadas Voluntariamente a la Conservación (ADVC).
Áreas de uso común | Presencia de áreas ejidales de uso común
UMA | Presencia de Unidades de Manejo Ambiental (UMA)
PSA | Presencia de proyectos de pago por servicios ambientales

###### 2.2.1.4.2.1 ANP bioculturales

Presencia de áreas naturales protegidas con enfoque biocultural (Reserva Biocultural del Puuc, Kabah y San Juan BautistaTabí y Anexa Sacnité).

**Insumos**

Capa | Áreas Naturales Protegidas: Reserva Biocultural del Puuc, Kabah y San Juan Bautista Tabi y Anexa Sacnité
-- | --
Fuente | Áreas Naturales Protegidas SDS con datos de los decretos de las ANPS estatales
Año | 2020
Escala | 1:50,000
Unidades | Adimensional

**Función de valor de ANP bioculturales**

![](/recursos/conservacion_v2/mapa_fv_con_sa_cul_anp_puuc_kabah_tabi.png)

###### 2.2.1.4.2.2 ADVC

Presencia de Áreas Destinadas Voluntariamente a la Conservación (ADVC).

**Insumos**

Capa | Áreas destinadas voluntariamente a la   conservación
-- | --
Fuente | Áreas destinadas voluntariamente a la conservación CONANP
Año | 2021
Escala | Sin dato
Unidades | Adimensional

**Función de valor de ADVC**

![](/recursos/conservacion_v2/mapa_fv_con_sa_cul_advc.png)

###### 2.2.1.4.2.3 Áreas de uso común

Presencia de áreas ejidales de uso común.

**Insumos**

Capa | Tenencia de la tierra - tierra de uso común
-- | --
Fuente | Tierra de uso común RAN
Año | 2020
Escala | Sin dato
Unidades | Adimensional

**Función de valor de áreas de uso común**

![](/recursos/conservacion_v2/mapa_fv_con_sa_cul_ran_uso_comun.png)

###### 2.2.1.4.2.4 UMA

Presencia de Unidades de Manejo Ambiental (UMA).

**Insumos**

Capa | Unidades de Manejo Ambiental (UMAS)
-- | --
Año | Sin dato
Escala | 1:1,000
Unidades | Adimensional
Fuente | Características de las UMAS

**Función de valor de UMA**

![](/recursos/conservacion_v2/mapa_fv_con_sa_cul_uma.png)

###### 2.2.1.4.2.5 PSA

Presencia de proyectos de pago por servicios ambientales.

**Insumos**

Capa | Pago por servicios ambientales
-- | --
Fuente | Áreas de servicios ambientales del bosque CONAFOR
Año | 2018
Escala | Sin dato
Unidades | Adimensional

**Función de valor de PSA**

![](/recursos/conservacion_v2/mapa_fv_con_sa_cul_psa.png)

#### 2.2.2 Funcionalidad ecosistémica

Procesos biológicos, geoquímicos y físicos que tienen lugar en un ecosistema y producen un servicio.

Atributos | Definición
-- | --
Fragilidad ecosistémica | Estado de conservación y salud de los ecosistemas y su capacidad de resiliencia.
Vulnerabilidad hídrica | Vulnerabilidad del recurso hídríco ante agentes externos como contaminación, intrusión salina,   sobreexplotación.
Fragilidad kárstica | Vulnerabilidad del suelo de ser afectado por alguna actividad del hombre o por sus efectos, como la erosión. Vulnerabilidad de los ecosistemas kársticos derivada de su nivel de desarrollo y fragilidad ante impactos externos.

##### 2.2.2.1 Fragilidad ecosistémica

Estado de conservación y salud de los ecosistemas y su capacidad de resiliencia.

Atributos | Definición
-- | --
Integridad ecológica | Índice de Integridad ecológica   para depredadores superiores, como la capacidad  para mantener procesos ecológicos   auto-organizados y estables en sitemas naturales (Mora, 2017).
Distancia a ANP y sitios Ramsar | Presencia y distancia a las   áreas naturales protegidas (federales, estatales, municipales, privadas) y   sitios Ramsar.
AICAS | Presencia de AICAS fuera de ANP y sitios RAMSAR.

###### 2.2.2.1.1 Integridad ecológica

Índice de Integridad ecológica para depredadores superiores, como la capacidad para mantener procesos ecológicos auto-organizados y estables en sitemas naturales (Mora, 2017).

**Insumos**

Capa | Índice de integridad ecológica
-- | --
Fuente | Índice de integridad ecológica (IIE) CONABIO
Año | 2018
Escala | 1:250,000
Unidades | Adimensional

**Parámetros de la función de valor**

![](/recursos/conservacion_v2/fi_fv_con_fun_eco_ind_integridad_ecologica.png)

**Función de valor de integridad ecológica**

![](/recursos/conservacion_v2/mapa_fv_con_fun_eco_ind_integridad_ecologica.png)

###### 2.2.2.1.2 Distancia a ANP y sitios Ramsar

Presencia y distancia a las áreas naturales protegidas (federales, estatales, municipales, privadas) y sitios Ramsar.

**Insumos**

Capa | Distancia a Áreas Naturales Protegidas y sitios RAMSAR
-- | --
Fuente | [1] Áreas Naturales Protegidas SDS, [2] Áreas Naturales Protegidas Federales de la República Mexicana CONANP; [3]&nbsp; Áreas Naturales Protegidas Estatales,   Municipales, Ejidales y Privadas de México CONABIO y [4] Sitios RAMSAR de México CONANP
Año | [1] 2020; [2] 2017; [3] 2015; [4] 2016
Escala | [1] 1:50,000; [2][3][4] Sin dato
Unidades | Kilómetros

**Función de valor de distancia a ANP y sitios Ramsar**

![](/recursos/conservacion_v2/mapa_fv_con_fun_eco_d_anp_ramsar.png)

###### 2.2.2.1.3 AICAS

Presencia de AICAS fuera de ANP y sitios RAMSAR.

**Insumos**

Capa | AICAS fuera de Áreas Naturales Protegidas y sitios RAMSAR
-- | --
Fuente | Áreas de importancia para la conservación de las aves (AICAS) CIPAMEX -   CONABIO
Año | 2015
Escala | 1:250,000
Unidades | Adimensional

**Función de valor de AICAS**

![](/recursos/conservacion_v2/mapa_fv_con_fun_eco_aicas.png)

##### 2.2.2.2 Vulnerabilidad hídrica

Vulnerabilidad del recurso hídríco ante agentes externos como contaminación, intrusión salina, sobreexplotación.

Atributos | Definición
-- | --
Vulnerabilidad intrínseca | Vulnerabilidad intrínseca a la contaminación del acuífero kárstico.   
Zonas de recarga | Zonas de recarga de acuífero.
Humedales | Presencia de cuerpos de agua   (excluye cenotes y estanques artificiales).
Cenotes | Presencia de cenotes, dolinas,   poljes y uvalas.
Reforestación | Zonas potenciales a ser   reforestadas o restauradas con base en el cambio de cobertura 2002-2014.

###### 2.2.2.2.1 Vulnerabilidad intrínseca

Vulnerabilidad intrínseca a la contaminación del acuífero kárstico.  

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
5 | e) Extrema | Muy alta | 1.00
4 | d) Muy alta | Muy alta | 1.00
3 | c) Alta | Alta | 0.75
2 | b) Media | Moderada | 0.50
1 | a) Baja | Baja | 0.25
6 | NA | Nula | 0.00

**Función de valor de vulnerabilidad intrínseca**

![](/recursos/conservacion_v2/mapa_fv_con_fun_hid_vul_acuifero.png)

###### 2.2.2.2.2 Zonas de recarga

Zonas de recarga de acuífero.

**Insumos**

Capa | Recarga del acuífero
-- | --
Fuente | Recarga promedio 2004-2008. Batllori Sampedro, E. y Canto Mendiburu, S
Año | Sin dato
Escala | Sin dato
Unidades | Milímetros

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
8 | 500 | Muy alta | 1.00
7 | 400 | Alta | 0.75
6 | 300 | Moderada | 0.50
4 | 100 | Baja | 0.25
1 | -300 | Nula | 0.00
2 | -500 | Nula | 0.00

**Función de valor de zonas de recarga**

![](/recursos/conservacion_v2/mapa_fv_con_fun_hid_recarga_acuifero.png)

###### 2.2.2.2.3 Humedales

Presencia de cuerpos de agua (excluye cenotes y estanques artificiales).

**Insumos**

Capa | Humedales (sin cenotes)
-- | --
Fuente | Modelo cartográfico de humedales INEGI
Año | 2014
Escala | 1:50,000
Unidades | Adimensional

**Función de valor de humedales**

![](/recursos/conservacion_v2/mapa_fv_con_fun_hid_humedales_sin_cenotes.png)

###### 2.2.2.2.4 Cenotes

Presencia de cenotes, dolinas, poljes y uvalas.

**Insumos**

Capa | Depresiones kársticas
-- | --
Fuente | Aguilar, Y., Bautista, F., Mendoza, M. E., Frausto, O., & Ihl, T. (2016). Density of karst depressions in Yucatán state, Mexico. Journal of Cave and Karst Studies, 78(2), 51–60. https://doi.org/10.4311/2015ES0124
Año | 2016
Escala | Sin dato
Unidades | Adimensional

**Función de valor de cenotes**

![](/recursos/conservacion_v2/mapa_fv_con_fun_hid_depresiones_presencia.png)

###### 2.2.2.2.5 Reforestación

Zonas potenciales a ser reforestadas o restauradas con base en el cambio de cobertura 2002-2014.

**Insumos**

Capa | Cambio de cobertura
-- | --
Fuente | Cambio de cobertura en el estado de Yucatán 2002 - 2014 LANCIS, con datos de las Series de Suelo y Vegetación III y VI de INEGI
Año | 2020
Campo | cambio
Escala | Sin dato
Unidades | Adimensional

**Parámetros de la función de valor**

ID | Categoría | Importancia | FV
-- | -- | -- | --
1 | Conservado | Muy alta | 1.00
4 | Dentro de cobertura natural | Muy alta | 1.00
7 | Revegetado | Alta | 0.75
2 | Deforestado | Moderada | 0.50
3 | Degradado | Moderada | 0.50
6 | Por actividad productiva | Baja | 0.25
8 | Sin cambio dentro de uso antrópico | Baja | 0.25
5 | Falso cambio | Nula | 0.00
9 | Sin datos | Nula | 0.00

**Función de valor de reforestación**

![](/recursos/conservacion_v2/mapa_fv_con_fun_hid_cambio_cob_s3_s6.png)

##### 2.2.2.3 Fragilidad kárstica

Vulnerabilidad del suelo de ser afectado por alguna actividad del hombre o por sus efectos, como la erosión. Vulnerabilidad de los ecosistemas kársticos derivada de su nivel de desarrollo y fragilidad ante impactos externos.

Atributos | Definición
-- | --
Densidad de dolinas | Número de dolinas por hectárea
Cenotes | Presencia de cenotes  

###### 2.2.2.3.1 Densidad de dolinas

Número de dolinas por hectárea.

**Insumos**

Capa | Densidad de dolinas
-- | --
Fuente | Densidad de dolinas. Atlas de Peligros por Fenómenos del Estado de   Yucatán. Servicio Geológico Mexicano
Año | 2013
Campo | VAL_DOL
Escala | Sin dato
Unidades | Número de dolinas/16 km2

**Parámetros de la función de valor**

![](/recursos/conservacion_v2/fi_fv_con_fun_kar_densidad_dolinas.png)

**Función de valor de densidad de dolinas**

![](/recursos/conservacion_v2/mapa_fv_con_fun_kar_densidad_dolinas.png)

###### 2.2.2.3.2 Cenotes

Presencia de cenotes.

**Insumos**

Capa | Depresiones kársticas
-- | --
Fuente | Aguilar, Y., Bautista, F., Mendoza, M. E., Frausto, O., & Ihl, T. (2016). Density of karst depressions in Yucatán state, Mexico. Journal of Cave and Karst Studies, 78(2), 51–60. https://doi.org/10.4311/2015ES0124
Año | 2016
Escala | Sin dato
Unidades | Adimensional

**Función de valor de cenotes**

![](/recursos/conservacion_v2/mapa_fv_con_fun_kar_depresiones_presencia.png)

### 2.3 Mapa de aptitud

#### 2.3.1 Mapa de aptitud de servicios ambientales de soporte

![](/recursos/conservacion_v2/mapa_aptitud_con_sa_soporte.png)

#### 2.3.2 Mapa de aptitud de servicios ambientales de regulación

![](/recursos/conservacion_v2/mapa_aptitud_con_sa_regulacion.png)

#### 2.3.3 Mapa de aptitud de servicios ambientales de provisión

![](/recursos/conservacion_v2/mapa_aptitud_con_sa_provision.png)

#### 2.3.4 Mapa de aptitud de servicios ambientales culturales

![](/recursos/conservacion_v2/mapa_aptitud_con_sa_culturales.png)

#### 2.3.5 Mapa de aptitud de funcionalidad ecosistémica

![](/recursos/conservacion_v2/mapa_aptitud_funcionalidad_ecosistemica.png)

#### 2.3.6 Mapa de aptitud de conservación

##### 2.3.6.1 Zonas de aprovechamiento actual de conservación

**Insumos**

Capa | Áreas Naturales Protegidas
-- | --
Fuente | [1] Áreas Naturales Protegidas SDS con datos de los decretos de las ANPs estatales, [2] Áreas Naturales Protegidas Federales de la República Mexicana CONANP y [3] Áreas Naturales Protegidas Estatales, Municipales, Ejidales y Privadas de México CONABIO
Año | [1] 2020; [2] 2017; [3] 2015
Escala | [1] 1:50,000; [2] [3] Sin dato
Unidades | Adimensional

![](/recursos/conservacion_v2/mapa_anp.png)

##### 2.3.6.2 Zonas de exclusión

Se utilizaron todas las localidades (urbanas y rurales).

**Insumos**

Capa | Localidades
-- | --
Fuente | Polígonos de localidades. Marco Geoestadístico. Censo de Población y   Vivienda INEGI
Año | 2020
Escala | Localidad
Unidades | Adimensional

![](/recursos/conservacion_v2/mapa_exclusion_con.png)

##### 2.3.6.3 Mapa de aptitud de conservación

![](/recursos/conservacion_v2/mapa_aptitud_con.png)

**Pesos globales de los atributos del sector conservación**

Criterio | Subcriterio | Peso
-- | -- | --
Fragilidad ecosistémica | Integridad ecológica | 0.136
Regulación | Cobertura forestal | 0.112
Soporte | Zonas de recarga | 0.087
Vulnerabilidad hídrica | Vulnerabilidad intrínseca | 0.075
Fragilidad kárstica | Densidad de dolinas | 0.074
Soporte | Cobertura forestal | 0.065
Vulnerabilidad hídrica | Zonas de recarga | 0.061
Provisión | Cobertura | 0.055
Regulación | Captura de carbono | 0.050
Fragilidad ecosistémica | Distancia a ANP y sitios Ramsar | 0.046
Soporte | Riqueza forestal | 0.030
Vulnerabilidad hídrica | Humedales | 0.025
Fragilidad kárstica | Cenotes | 0.025
Vulnerabilidad hídrica | Cenotes | 0.024
Fragilidad ecosistémica | AICAS | 0.021
Provisión | Cuerpos de agua | 0.018
Provisión | Parientes silvestres de cultivo | 0.018
Regulación | Especies melíferas | 0.016
Soporte | Biomasa aérea | 0.016
Vulnerabilidad hídrica | Reforestación | 0.013
Culturales - biofísicos sociales | Cenotes y grutas | 0.008
Culturales - biofísicos sociales | Población indígena | 0.008
Culturales - biofísicos sociales | Zonas arqueológicas | 0.008
Culturales - político administrativo | ANP bioculturales | 0.002
Culturales - político administrativo | ADVC | 0.002
Culturales - político administrativo | Áreas de uso común | 0.001
Culturales - político administrativo | UMA | 0.001
Culturales - político administrativo | PSA | 0.001

**Área por categoría de aptitud**

Categoría | km² | Porcentaje del estado
-- | --: | --:
Muy alta | 10218.5 | 26
Alta | 13326.4 | 34
Moderada | 7518.1 | 19
Baja | 7043.7 | 18
Muy baja | 537.0 | 1
Nula | 893.0 | 2

#### 2.3.7 Sensibilidad de atributos ambientales del sector conservación

![](/recursos/conservacion_v2/fi_analisis_sensibilidad_conservacion.png)
