# Sistema de gestión para base de datos.

La base de datos es creada y administra por el _Sistema de Gestión de Bases de Datos Relacional Orientado a Objetos_ __PostgreSQL__, el cuál es de código abierto. La versión utilizada es la __12.2-4__ empaquetada para _Ubuntu 20.04 LTS_, corriendo sobre el subsistema _WSL2_ para _Windows 10_.

A Continuación, se detalla cómo utilizar los códigos almacenados en este directorio para reproducir el sistema de gestión para la base de datos.

## Reproducir la base de datos del sistema de gestión.

El orden de ejecución de los archivos con código sql es el siguiente:
1. [db_banco_datos_yucatan.sql](db_banco_datos_yucatan.sql). Este código genera las tablas del Componente General. Para más información revisar el archivo [componente_general_tablas.md](componente_general_tablas.md).
2. [db_banco_datos_yucatan_sub_natural.sql](db_banco_datos_yucatan_sub_natural.sql). Este código genera las tablas del Componente Subsistema Natural. Para más información revisar el archivo [componente_natural_tablas.md](componente_natural_tablas.md).
3. [db_banco_datos_yucatan_sub_natural_views.sql](db_banco_datos_yucatan_sub_natural_views.sql). Este código genera las vistas para el Componente Subsistema Natural. Para más información revisar el archivo [componente_natural_vistas.md](componente_natural_vistas.md).
4. [db_banco_datos_yucatan_sub_natural_aux.sql](db_banco_datos_yucatan_sub_natural_aux.sql). Este código genera las tablas auxiliares para el Componente Subsistema Natural. Para más información revisar el archivo [componente_natural_auxiliar.md](componente_natural_auxiliar.md).
5. [datos_banco_datos_yucatan_sub_natural_aux.sql](datos_banco_datos_yucatan_sub_natural_aux.sql). Este código almacena la información proveniente de archivos CSV preparados para para la Componente Subsistema Natural, para su ejecución se debe contar con permisos de __su__. Para más información revisar el archivo [componente_natural_datos.md](componente_natural_datos.md).
6. [datos_banco_datos_yucatan.sql](datos_banco_datos_yucatan.sql). Este código almacena información en las tablas del Componente General. Para más información revisar el archivo [componente_general_datos.md](componente_general_datos.md).
7. [datos_banco_datos_yucatan_sub_natural.sql](datos_banco_datos_yucatan_sub_natural.sql). Este código almacena información en las tablas del Componente Subsistema Natural. Para más información revisar el archivo [componente_natural_datos.md](componente_natural_datos.md).

Los archivos listados se muestran en el orden en que deben ser ejecutados, de lo contrario se podrían generar errores o pérdida de información.

## Códigos auxiliares para la gestión de la base de datos.

Los códigos auxiliares para el borrado de información, o eliminación de tablas, se muestran a continuación:

1. [datos_delete_banco_datos_yucatan_sub_natural.sql](datos_delete_banco_datos_yucatan_sub_natural.sql). Borra toda la información únicamente de las tablas del Componente Subsistema Natural.
2. [db_rm_banco_datos_yucatan.sql](db_rm_banco_datos_yucatan.sql). Elimina las tablas del Componente General.
3. [db_rm_banco_datos_yucatan_sub_natural.sql](db_rm_banco_datos_yucatan_sub_natural.sql). Elimina las tablas del Componente Subsistema Natural.
4. [db_rm_banco_datos_yucatan_sub_natural_aux.sql](db_rm_banco_datos_yucatan_sub_natural_aux.sql). Elimina las tablas auxiliares del Componente Subsistema Natural.

Para más información ver el archivo [auxiliares.md](auxiliares.md).
