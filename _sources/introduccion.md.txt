# Introducción


**Análisis de conflictos**

Un producto esencial de la etapa del diagnóstico es la ubicación y descripción de los conflictos ambientales que existen en el área a ordenar. Los conflictos pueden ser directos cuando los sectores tienen interés en desarrollar su actividad en el mismo espacio o en utilizar el mismo recurso natural; son indirectos cuando un sector afecta indirectamente un recurso que requiere otro sector, dificultando o impidiendo el desarrollo de su actividad.

En el análisis de conflictos se examinó cada par de sectores en disputa mediante la sobreposición de sus mapas de aptitud. Como resultado, se obtuvieron las superficies de traslape, siendo de mayor interés aquellas donde coincide la aptitud alta y muy alta de ambos sectores, las cuales se identifican por su tonalidad obscura en el mapa de conflictos. Para ilustrarlo, se toma como ejemplo el conflicto entre los sectores agricultura tecnificada - apicultura.

![](./recursos/conflictos/fi_mapas_intro.png)

A partir de las superficies de traslape se elaboraron **tablas de extensión** (km²). Los mayores conflictos ocurren donde coinciden las aptitudes alta y muy alta de ambos sectores, como se aprecia en la siguiente tabla.

![](./recursos/conflictos/fi_introd_extension.png)

Por último, a partir de los valores de las superficies de intersección se calcularon índices que proporcionan información útil para la etapa de propuesta, cuyos resultados se presentan en las **tablas de índices**:

El **índice de severidad regional bruta** representa la proporción del territorio donde coinciden las categorías de aptitud alta y muy alta de dos sectores con actividades incompatibles. Equivale a la extensión de un conflicto ambiental. Su expresión como porcentaje facilita identificar la severidad de los conflictos ambientales: valores altos significan que porciones relativamente grandes del territorio resultan de interés para esos sectores cuyas actividades son incompatibles.

El **índice de severidad regional neta** es la proporción que resulta de la comparación de la forma geográfica de las categorías de aptitud alta y muy alta de dos sectores cuyas actividades son incompatibles. Equivale a la magnitud de un conflicto ambiental.

El **índice de asimetría** del conflicto ambiental indica en qué proporción una categoría de aptitud de un sector está contenida dentro de una categoría de otro sector. Es un proxi del costo de excluir la actividad de uno o de otro de los sectores de un territorio.

![](./recursos/conflictos/fi_introd_indices.png)


# Matriz de conflictos


&nbsp; | &nbsp; | 2 | 3 | 6 | 7 | 8 | 12 | 13 | 14 | 15
-- | -- | -- | -- | -- | -- | -- | -- | -- | -- | --
&nbsp; | &nbsp; | Milpa | Apicul | Acu_sal | Pesca | Forest | Tur_nat | Tur_sol | Urbano | Conserv
1    | Agricul | [1](https://lancis-apc.github.io/fomix-pruebas/agricultura_conflictos.html#agricultura-tecnificada-vs-milpa-maya) | [1](https://lancis-apc.github.io/fomix-pruebas/agricultura_conflictos.html#agricultura-tecnificada-vs-apicultura) | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/agricultura_conflictos.html#agricultura-tecnificada-vs-forestal) | &nbsp; | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/agricultura_conflictos.html#agricultura-tecnificada-vs-conservacion)
2 | Milpa | &nbsp; | &nbsp; | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/milpa_conflictos.html#milpa-maya-vs-forestal) | &nbsp; | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/milpa_conflictos.html#milpa-maya-vs-conservacion)
4 | Bovino | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/bovino_conflictos.html#pecuario-bovino-vs-apicola) | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/bovino_conflictos.html#pecuario-bovino-vs-urbano) | [1](https://lancis-apc.github.io/fomix-pruebas/bovino_conflictos.html#pecuario-bovino-vs-conservacion)
5 | Por-avi | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/porcino_conflictos.html#porcino-y-avicola-vs-urbano) | [1](https://lancis-apc.github.io/fomix-pruebas/porcino_conflictos.html#porcino-y-avicola-vs-conservacion)
6 | Acu_sal | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/acuacultura_s_conflictos.html#acuacultura-salobre-vs-conservacion)
8 | Forest | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/forestal_conflictos.html#forestal-vs-conservacion)
9 | Minería | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/mineria_conflictos.html#mineria-vs-conservacion)
10 | Energía | [1](https://lancis-apc.github.io/fomix-pruebas/energia_conflictos.html#energia-renovable-vs-milpa-maya) | [1](https://lancis-apc.github.io/fomix-pruebas/energia_conflictos.html#energia-renovable-vs-apicultura) | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/energia_conflictos.html#energia-renovable-vs-conservacion)
11 | Indust | &nbsp; | &nbsp; | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/industrial_conflictos.html#industrial-vs-forestal) | &nbsp; | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/industrial_conflictos.html#industrial-vs-conservacion)
12 | Tur_nat | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/turismo_conflictos.html#turismo-de-naturaleza-vs-conservacion)
13 | Tur_sol | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/turismo_sol_playa_conflictos.html#turismo-de-sol-y-playa-vs-acuacultura-salobre) | [1](https://lancis-apc.github.io/fomix-pruebas/turismo_sol_playa_conflictos.html#turismo-de-sol-y-playa-vs-pesca) | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/turismo_sol_playa_conflictos.html#turismo-de-sol-y-playa-vs-turismo-de-naturaleza) | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/turismo_sol_playa_conflictos.html#turismo-de-sol-y-playa-vs-conservacion)
14 | Urbano | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/urbano_conflictos.html#urbano-vs-turismo-de-naturaleza) | [1](https://lancis-apc.github.io/fomix-pruebas/urbano_conflictos.html#urbano-vs-turismo-de-sol-y-playa) | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/urbano_conflictos.html#urbano-vs-conservacion)
15 | Conserv | &nbsp; | &nbsp; | [1](https://lancis-apc.github.io/fomix-pruebas/conservacion_conflictos.html#conservacion-vs-acuacultura-salobre) | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp; | &nbsp;


Acu_sal = acuacultura salobre, Agricul= agricultura tecnificada, Apicul = apicultura, Bovino = pecuario bovino, Conserv = conservación, Forest = forestal, Indust = industrial, Milpa = milpa maya, Por_avi = pecuario porcícola y avícola, Tur_nat = turismo de naturaleza, Tur_sol = turismo de sol y playa.
