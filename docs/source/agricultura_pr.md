# Agricultura tecnificada-En proceso de actualización

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta



[Lista de participantes]()

## 1. Agricultura de riego



### 1.1 Modelo de decisión

![](/recursos/agricultura/a_riego.png)

### 1.2 Criterios

#### 1.2.1 Infraestructura

Criterio | Definición
-- | --
Vías de comunicación | Distancia a caminos, brechas y carreteras para el transporte de insumos y productos.
Hidroagrícola | Distrito de riego y unidades de riego.
Energía | Distancia a red de transmisión eléctrica.

##### 1.2.1.1 Vías de comunicación

Distancia a caminos, brechas y carreteras para el transporte de insumos y productos.

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

##### 1.2.1.2 Hidroagrícola

Distrito de riego y unidades de riego.

**Insumos**

Capa | Unidades y distritos de riego
-- | --
Fuente | [1] Datos vectoriales de los distritos de riego a nivel nacional CONAGUA y [2] Unidades de riego agrupadas por Región Hidrológico-Administrativa CONAGUA
Año | [1] 2018-2019; [2] 2017-2018
Escala | [1] 1:250,000; [2] Sin dato
Unidades | Adimensional

##### 1.2.1.3 Energía

Distancia a red de transmisión eléctrica.

**Insumos**

Capa | Distancia líneas de transmisión de energía eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros

#### 1.2.2 Biofísicos

Criterio | Definición
-- | --
Tipo de cobertura | Tipos de vegetación y usos de suelo.
Tipo de suelo | Edafología.
Pendiente |  
Disponibilidad de agua | Posibilidad de extraer agua subterránea, considerando el nivel piezométrico.
Precipitación | lluvia anual

##### 1.2.2.1 Tipo de cobertura

Tipos de vegetación y usos de suelo.

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

##### 1.2.2.2 Tipo de suelo

Edafología.

**Insumos**

Capa | Edafología
-- | --
Fuente | Conjunto de datos vectoriales edafológico. Serie II (Continuo Nacional)   INEGI
Año | 2014
Campo | tipo_suelo
Escala | 1:250,000
Unidades | Adimensional

##### 1.2.2.3 Pendiente

**Insumos**

Capa | Pendiente
-- | --
Fuente | Adaptado de: Continuo de Elevaciones Mexicano (CEM) INEGI
Año | 2013
Resolución | 15 m x 15 m
Unidades | Grados

##### 1.2.2.4 Disponibilidad de agua

Posibilidad de extraer agua subterránea, considerando el nivel piezométrico.

**Insumos**

Capa | Nivel freático
-- | --
Fuente | Nivel freático POETY
Año | Sin dato
Campo | n_freat_m
Escala | Estatal
Unidades | Metros

##### 1.2.2.4 Precipitación

lluvia anual

**Insumos**

Capa | Precipitación
-- | --
Fuente | Adaptado de: Precipitación acumulada anual SGM
Año | 2013
Escala | Sin dato
Unidades | mm

#### 1.2.3 Socioeconómicos

Criterio | Definición
-- | --
Distancia a mercados | Distancia a las principales localidades en las que se venden los productos agrícolas.
Disponibilidad de mano de obra | Distancia a localidades/municipios donde existe un mayor porcentaje de población económicamente activa ocupada en el sector primario.
Tenencia | Tenencia de la tierra.

##### 1.2.3.1 Distancia a mercados

Distancia a las principales localidades en las que se venden los productos agrícolas.

**Insumos**

Capa | Distancia a localidades con centrales de abasto y almacenes agrícolas
-- | --
Fuente | Adaptado de: Infraestructura del Sector Agroalimentario almacenes y/o centrales de abasto SIAP
Año | Sin dato
Escala | Sin dato
Unidades | Kilómetros

##### 1.2.3.2 Disponibilidad de mano de obra

Distancia a localidades/municipios donde existe un mayor porcentaje de población económicamente activa ocupada en el sector primario.

**Insumos**

Capa | Población económicamente activa en el sector primario
-- | --
Fuente | Adaptado de: [1] Encuesta Intercensal INEGI y [2] División política municipal INEGI
Año | [1] 2015; [2] 2018
Campo | [1] Sector de actividad económica primario
Escala | [2] 1:250,000
Unidades | Porcentaje

##### 1.2.3.3 Tenencia

Tenencia de la tierra.

**Insumos**

Capa | Tenencia de la tierra
-- | --
Fuente | [1] Zonas de Tierras Parceladas RAN y [2] Tierra de uso común RAN
Año | 2020
Escala | Sin dato
Unidades | Adimensional

## 2. Agricultura de temporal



### 2.1 Modelo de decisión

![](/recursos/agricultura/a_temporal.png)

### 2.2 Criterios
