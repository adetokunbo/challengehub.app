---
date: 2020-04-10
title: Presentamos&colon; equipos de estudio
description: A partir de hoy, ChallengeHub puede agrupar a los alumnos de forma automática para optimizar la instrucción entre pares en clase
reading_minutes: 2
categories:
 - ChallengeHub
author_staff_member: james
ref: 2020-04-10-announcing-study-teams
lang: es
---
A partir de hoy, ChallengeHub puede agrupar a los alumnos de forma automática para optimizar la instrucción entre pares en clase. Haya 10 estudiantes o haya 100, estén las mesas todas orientadas hacia la pizarra o formando islas, ChallengeHub maximiza el valor de la clase asegurando que los alumnos aprenden lo máximo posible de sus conversaciones con sus compañeros.

¿Por qué importa esto?
Porque hace posible la enseñanza uno a uno escalable.
Un mayor número de alumnos reciben ayuda personalizada con sus dudas,
algo imposible en el formato de clases tradicional.
Los alumnos están más motivados para asistir a las clases
porque saben que alguien los va a ayudar con su problema específico.
Y, ayudando a otros,
los alumnos obtienen un entendimiento más profundo de los conceptos tratados.

Mientras tanto,
el docente tiene la ventaja de estar libre para interactuar
con alumnos específicos durante la clase,
alentado por la interacción de los alumnos enseñeandose unos a otros.

ChallengeHub lleva esto a cabo usando datos sobre el progreso
de los alumnos en los retos para predecir
los equipos de estudio óptimos
de una forma imposible para un docente de forma manual.

Ahora puede decidir que su clase tenga equipos de estudio:

![Interfaz del docente para equipos de estudio](/images/blog/2020-04-10-stint-ui-es.png){: .framed-image .retina-70width-image }

Se asignan posiciones a los alumnos,
y los alumnos con la misma posición forman un equipo.
La posición puede ser una mesa en una fila concreta,
una sección de un aula tipo anfiteatro,
o cualquier otro tipo de distribución de la clase por parte del docente.
Los alumnos reciben su posición especificada por dos coordenadas: fila y mesa.

## Desde la perspectiva del alumno

1. ChallengeBot informa a los alumnos de una sesión con equipos de estudio,
y les pregunta si van a asistir (no es necesario que el docente interactúe con ellos)
1. Los alumnos responden diciendo si asistirán o no
(si no responden se supone que no asistirán)
1. Antes de que empiece la sesión se asignan mesas a los alumnos,
que podrán comprobar a través de la interfaz de alumnos
1. Cuando entran al aula, los alumnos buscan su mesa y se sientan con su equipo

![Interfaz de asistencia a sesiones](/images/blog/2020-04-10-attending-es.jpg){: .framed-image }

## Creando un sistema de coordenadas

Una idea para crear un sistema de coordenadas para su aula es
que los alumnos cuenten desde la primera fila y la primera mesa (columna) del aula.
Se puede proyectar el plano del aula para hacerlo más sencillo.
Por ejemplo, la fila 1 está delante y la mesa 1 está a la izquierda, cerca de la puerta.
Algunos docentes imprimen el plano y lo cuelgan en la entrada de la clase.
Tenga en cuenta que solo es necesario hacer esto una vez por cada clase que se use.

![Ejemplo del sistema de coordenadas de un aula](/images/blog/2020-04-10-classroom-plan-es.png){: .framed-image }

Otro sistema típico es imprimir etiquetas con los números de fila y mesa,
y fijarlos en las posiciones adecuadas antes de la clase.
Para mesas que estén formando islas sin formar una cuadrícula, elija usar una sola fila cuando configure su *stint*, y etiquete cada mesa por número.

## En resumen

ChallengeHub continúa innovando junto con los docentes
para mejorar la experiencia en el aula.
Los equipos de estudio ayudan a optimizar el valor que la clase aporta a cada alumno
mientras que reduce la carga sobre el docente.
