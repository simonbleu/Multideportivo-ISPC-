Integreantes:
Simon Azul Sanchez Vottero - DNI 39173576 - simonvottero.95@gmail.com - repositorio de soluciones practicas: https://github.com/simonbleu/ispc-datos-1ero
(ex repositorio tentativo, donde se ve que se mandaaron las cosas antes de las 10am: https://github.com/Valtecnology/eventosmultideportivos)

Propuesta: 
Desarrollar una aplicación que facilite la organización integral de eventos multideportivos. Esta herramienta permitirá gestionar a los participantes, agregar diversas disciplinas deportivas y organizar los encuentros, así como los horarios de cada evento de manera eficiente.
------------------------------------------------------------------------------------------------------

Analisis:

ENTRADAS:
 - Tipeo de variables alfanumericas para itneractuar con las variables del programa
POOCESOS:
 - El programa se ejecuta y se conecta a la libreria de mySQL
 - El programa imprime el menu en pantalla, instando al usuario a recorrerlo
 - La navegacion del usuario ejecuta ciertas variables
 - Dichas variables pueden pedir o no datos al usuario (por ej, si es una creacion de datos)
 - El programa ejecuta la variable y consecuentemente el CRUD correspondiente o cambio de credenciales para ellas
SALIDA:
 - Si el usuario selecciono alguna de las opciones del menu a excepcion de la de salida, se ejecuta la opcion correspondiente y luego se vuelve a ejecutar el menu principal
 - Si el usuario selecciono alguna opcion que no este en el menu, el programa informara del error e instara al usuario a elegir nuevamente
 - Si el usuario selecciona la ultima opcion del menu, el programa da un mensaje de despedida y finaliza.
 - 
La aplicacion en si funciona como un proxy o intermediario entre funcionaldiade basicas de SQL, y el usuario.

ESTRUCTURA DEL REPOSITORIO
 BD:
 En esta carpeta se encuentra todo lo relacionado a la base de datos. Entre ello podemos encontrar
  - /Base de datos del proyecto, sus diagramas, y SQL.pdf
Una presentacion resumiendo la base de datos y ejemplificando funcionaldiades
 - DER.png
   Diagrama de entidad-relacion (notacion de chen)
 - MER.png
   Moderlo relacional (crow foot)
 - SQL carga.sql
   Archivo sql con datos (insert)
 - SQL consulta.sql
   Archivo sql con las consultas del proyecto
 - SQL MWB.mwb
   base de datos en formato mwb
 - SQL script (anotado).sql
   archivo sql anotado con el script para formar la base de datos
APLICACION
- BBDD.py
  Este archivo se encarga de configurar la conexion y las credenciales de  acceso a la base de datos de mySQL
- App.py
  Alli se alojan las funciones del programa responsables de los CRUD (crear leer actualziar o borrar)
- Main.py
  Contiene el menu por el que el usuario navega, y las conexiones a los otros archivos, reflejando la modularidad del program
ETICA
En esta seccion se encuentran las actividades relacionadas con la materia de etica profesional, y trata principalmente licencias y resolucion de conflictos nacidos de crimenes o negligencias ciberneticas que puedan terminar en sanciones e inhabilitaciones, o juicios civiles, o penales.
 - README
   El presente documento, como primer toma de contacto al repositorio

