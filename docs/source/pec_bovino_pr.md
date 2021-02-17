# Pecuario bovino-En proceso de actualización

<!-- Ruta de la documentación:
FOMIX\fmx_estudio_tecnico\diagnostico\talleres\sphinx\docs -->

## Meta

Aumentar la capacidad de producción bovina a largo plazo, minimizando el crecimiento de la superficie destinada a esta actividad y haciendo más eficiente el uso del área actual.

[Lista de participantes]()

### 1.1 Modelo de decisión

![](/recursos/milpa_apic/fi_bovino.png)

### 1.2 Criterios

#### 1.2.1 Biofísicos

Criterio | Definición
-- | --
Tipo de cobertura | Tipos de vegetación y usos de suelo.
Tipo de suelo | Edafología.
Disponibilidad de agua | Posibilidad de extraer agua subterránea, considerando el nivel piezométrico.
Precipitación | Lluvia anual promedio.

##### 1.2.1.1 Tipo de cobertura

Tipos de vegetación y usos de suelo.

**Insumos**

Capa | Uso del suelo y vegetación
-- | --
Fuente | Conjunto de datos vectoriales de la carta de Uso del suelo y vegetación. Serie VI. Conjunto Nacional INEGI
Año | 2017
Campo | descripcio
Escala | 1:250,000
Unidades | Adimensional

##### 1.2.1.2 Tipo de suelo

Edafología.

**Insumos**

Capa | Edafología
-- | --
Fuente | Conjunto de datos vectoriales edafológico. Serie II (Continuo Nacional) INEGI
Año | 2014
Campo | tipo_suelo
Escala | 1:250,000
Unidades | Adimensional

##### 1.2.1.3 Disponibilidad de agua

Posibilidad de extraer agua subterránea, considerando el nivel piezométrico.

**Insumos**

Capa | Nivel freático
-- | --
Fuente | Nivel freático POETY
Año | Sin dato
Campo | n_freat_m
Escala | Estatal
Unidades | Metros

##### 1.2.1.4 Precipitación

Lluvia anual promedio.

**Insumos**

Capa | Precipitación
-- | --
Fuente | Adaptado de: Precipitación acumulada anual SGM
Año | 2013
Escala | Sin dato
Unidades | mm

#### 1.2.2 Infraestructura

Criterio | Definición
-- | --
Vías de comunicación | Distancia a caminos, brechas y carreteras para el transporte de insumos y productos.
Centros de acopio | Distancia a localidades con centros de acopio y de comercialización de ganado (subastas).
Rastros | Distancia a localidades con rastros o centros de sacrificio.
Energía | Distancia a red de transmisión eléctrica.

##### 1.2.2.1 Vías de comunicación

Distancia a caminos, brechas y carreteras para el transporte de insumos y productos.

**Insumos**

Capa | Distancia a la red vial
-- | --
Fuente | Red Nacional de Caminos (RNC) Red vial - INEGI
Año | 2019
Escala | Sin dato
Unidades | Kilómetros

##### 1.2.2.2 Centros de acopio

Distancia a localidades con centros de acopio y de comercialización de ganado (subastas).

##### 1.2.2.3 Rastros

Distancia a localidades con rastros o centros de sacrificio.

**Insumos**

Capa | Distancia a rastros, sitios de empacado y procesamiento de ganado
-- | --
Fuente | [1] Infraestructura del sector Agroalimentario centros de sacrificio y TIF; [2] Polígonos de localidades. Marco Geoestadístico. Censo de Población y Vivienda INEGI y [3] Datos de indicador. Directorio Estadístico Nacional de Unidades Económicas (DENUE) INEGI
Año | [1] Sin dato; [2] [3] 2020
Escala | Localidad
Unidades | Kilómetros

##### 1.2.2.4 Energía

Distancia a red de transmisión eléctrica.

**Insumos**

Capa | Distancia líneas de transmisión de energía eléctrica
-- | --
Fuente | Líneas de transmisión INEGI
Año | 2012
Escala | 1:50,000
Unidades | Kilómetros
