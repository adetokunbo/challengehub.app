---
date: 2020-03-12
title: ¿Cómo crear buenos retos?
description: Hay muchos estilos de reto posibles. ¡Olvídate de las preguntas de elección múltiple!
image: /images/blog/2020-03-12-what-makes-a-good-challenge-es.png
image_alt: ¿Cómo crear buenos retos?
image_maxheight: 499
reading_minutes: 3
categories:
 - ChallengeHub
author_staff_member: james
ref: 2020-03-12-what-makes-a-good-challenge
lang: es
---
Una característica muy potente de ChallengeHub es que los alumnos pueden
comprobar sus respuestas en tiempo real.
Las soluciones numéricas y basadas en texto posibilitan muchos estilos de reto.

Los alumnos comprueban sus respuestas enviándolas a ChallengeBot,
quien les notifica si es correcta.
Al no ser visible la respuesta antes de resolver el reto,
nos aseguramos de que no se ha aplicado ingeniería inversa a la respuesta.

Este artículo expone algunos ejemplos de cosas que funcionan
(o no funcionan)
a la hora de crear un buen reto.

## Soluciones numéricas: ¡bien!

Una característica distintiva de ChallengeHub es que las soluciones numéricas se pueden especificar junto con una tolerancia.
Por ejemplo, considere el reto siguiente:

> Calcule la derivada de ```f(x) = x² + 3.5x + 4```.\\
> Para comprobar la solución, sustituya ```x=2``` en su solución final. 

En este caso, la solución es ```f'(x) = 2x + 3.5```,
y el alumno sustituirá ```x=2``` para obtener ```7.5```.
Se puede especificar una tolerancia para esta solución,
Como ```7.5±1%``` o ```7.5±0.1```.
Esto es especialmente útil en retos complejos
con varios pasos en los que se pueden acumular errores de redondeo.

![UI de tolerancia](/images/blog/2020-03-12-tolerance.png){: .framed-image }

Hay casos en los que una comprobación completa es difícil,
pero se puede obtener un fuerte indicador de la corrección de la respuesta.
Por ejemplo, en casos donde la solución final es una matriz
la instrucción podría ser:

> La solución final es una matriz 2x2.\\
> Para comprobar su respuesta, sume todos los números de la matriz. 

Otro ejemplo con números complejos podría ser:

> La solución final es un número complejo ```a+bi```.\\
> Para comprobar su respuesta, calcule a+10b.

o quizás:

> La solución final es un número complejo ```a+bi```.\\
> Para comprobar su respuesta, introduzca el valor absoluto del número complejo.

Aunque esto no permite una comprobación exacta,
proporciona un fuerte indicador de la corrección de la respuesta
tanto para el docente como para el alumno.
De esta manera, los alumnos pueden saber si su solución es claramente incorrecta
sin perder el ritmo de su sesión de estudio.
El docente siempre puede comprobar algunos [cuadernos de retos]( /2019/08/11/the-challenge-log/ )
durante la clase para asegurarse de que los cálculos de los alumnos son correctos.

## Elección múltiple: ¡mejor no!

El reto ideal incita al pensamiento profundo y a la discusión en clase.
No incita a responder al azar.

Un reflejo común en los docentes es hacer preguntas de elección múltiple a los alumnos.
Por ejemplo:

> ![Fase del péndulo](/images/blog/2020-03-12-pendulum-phase.png)
> Teniendo en cuenta la figura, si el ángulo inicial del péndulo es π y la velocidad angular inicial es 0 rad/s, ¿cómo actuará el péndulo?
  - a) El péndulo continuará estacionario
  - b) El péndulo oscilará hacia delante y atrás
  - c) El péndulo dará una vuelta completa

En este caso, los alumnos tendrán una gran tentación de introducir "a", "b" o "c" hasta encontrar la solución correcta, y entonces posiblemente averiguar por qué es esa la solución.
Otros alumnos pueden incluso pasar al siguiente reto, dando al docente la falsa impresión de que han comprendido el concepto y de que están al día con la asignatura.

## Adición binaria con verdadero/falso: ¡bien!

Una alternativa a la elección múltiple son los grupos de preguntas de **verdadero/falso con adición binaria**.
El reto para la figura anterior podría ser como sigue:

> Sume los puntos de las siguientes afirmaciones que sean verdaderas:
> 
> - **1 punto** Una velocidad angular de 1 unidad resulta en un movimiento circular independientemente del ángulo inicial.
> - **2 puntos** Una velocidad angular de -2.5 unidades resulta en un movimiento circular independientemente del ángulo inicial.
> - **4 puntos** Un ángulo inicial de π/2 combinado con una velocidad angular de 1 unidad resulta en una oscilación periódica.
> - **8 puntos** Un ángulo inicial de π/2 combinado con una velocidad angular de 1 unidad resulta en un movimiento circular.
> - **16 puntos** Un ángulo inicial de 0 combinado con una velocidad angular de 0 unidades resulta en una oscilación periódica.
> 
> Introduzca su solución final en forma de número entero.

Cada afirmación es una pregunta de verdadero/falso, y sumar las diferentes afirmaciones resulta en un total único.
La probabilidad de acertar respondiendo al azar ha bajado de 1/3 a 1/(2⁵),
y se puede reducir más todavía añadiendo más opciones.

## Selección de palabras: ¡mejor no!

Considere el reto siguiente:

> La convección es una forma de transmisión de calor. Nombre las otras dos.

La solución es "conducción y radiación".
ChallengeBot busca el texto exacto, así que responder en el orden inverso ("radiación y conducción") o separar las dos palabras formas alternativas como "&" o ", " no se reconocería como correcto.
Además, este estilo también favorece las respuestas al azar, dando los mismos problemas que se ha descrito anteriormente.

## Retos de ordenar: ¡bien!

Una forma de usar texto sin requerir palabras ambiguas es hacer coincidir un patrón.
Por ejemplo:

> Estas 5 gráficas (a,b,c,d,e) corresponden a las siguientes 5 ecuaciones.
> Ponga las gráficas en el mismo orden que las ecuaciones a continuación.\\
> Envíe su respuesta en el formato siguiente: abcde

Aquí está claro de qué forma se debe introducir el texto y, con solo 1/120 de probabilidad de acertar respondiendo al azar, se fomenta el aprendizaje.

## Solamente valoración

En algunos casos, puede que cuando sea necesario escribir un pequeño ensayo o un párrafo, las opciones anteriores no son las más acertadas.
Para estos casos, el docente tiene la opción de pedir que los alumnos solamente valoren la dificultad del reto, para facilitar el seguimiento del progreso de los mismos.

## Conclusiones

Desde la perspectiva del uso eficiente del tiempo del profesor, también hay que tener en mente una buena relación entre el tiempo que se tarda en preparar un reto y el tiempo que tarda un alumno en leer los recursos relevantes y completarlo, de forma que tanto el aprendizaje como la enseñanza sean altamente eficientes.

Resumiendo, ChallengeHub potencia estilos de reto que fomentan en los alumnos un aprendizaje más profundo.
También agradecemos a los docentes todo tipo de _feedback_ e innovaciones que compartan con nosotros,
para seguir ampliando el rango de estilos pedagógicos posibles en la plataforma.
