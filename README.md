# Trabajo Consejo de Ingenieros
Acá está el código del proyecto. No descargar como zip, ni tampoco subir archivos a mano.
## Preparar
1. Descargar el escritorio de github desde [acá](https://desktop.github.com/).
2. Hacer un fork de este repositorio con el botón 'Fork'.
3. Bajar el repositorio desde el escritorio de github.

## Trabajar con Docker
Es bueno si se puede trabajar con docker ya que permite trabajar en entornos aislados
y sin necesidad de ensuciar nuestro sistema windows con varios servidores instalados. Con una máquina de docker se pueden tener muchos servicios corriendo al mismo tiempo y en entornos completamente aislados.

Docker se puede bajar desde [acá](https://www.docker.com/). El único problema es que se requiere de un buen equipo para hacerlo correr óptimamente.

Una vez descargado, se puede correr el proyecto sin pasos adicionales con solo un comando:

	`docker-compose
	$ docker-compose up -d
	`

Esto va a correr tanto un servidor apache2 como una base de datos MySQL, cada servicio de forma completamente aislada.

Cualquier cosa, preguntarme.

francipvb@hotmail.com
