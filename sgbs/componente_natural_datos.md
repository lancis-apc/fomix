# Datos para el Componente Subsistema Natural.

La información que almacenan las tablas del Componente Subsistema Natural, se obtiene ejecuntando el código en sql almacenado en los archivos siguientes:
1. [datos_banco_datos_yucatan_sub_natural_aux.sql](datos_banco_datos_yucatan_sub_natural_aux.sql). Para almacenar la información en las tablas auxiliares que proviente de archivos en formato CSV para el Subsistema Natural.
2. [datos_banco_datos_yucatan_sub_natural.sql](datos_banco_datos_yucatan_sub_natural.sql). Para vaciar la información de las tablas auxiliares a las tablas de la base de datos.

Los archivos listados se muestran en el orden en que deben ser ejecutados, de lo contrario se podría generar errores o pérdida de información. El archivo del punto número 1 necesita permisos de SU para poder ejecutarse.
