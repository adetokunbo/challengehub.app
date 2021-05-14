---
date: 2020-04-10
title: Presentem els equips d'estudi
description: A partir d'avui, ChallengeHub pot agrupar els alumnes de forma automàtica per optimitzar la instrucció entre parells a classe
reading_minutes: 2
categories:
 - ChallengeHub

author_staff_member: james
ref: 2020-04-10-announcing-study-teams
lang: ca
---
ChallengeHub pot agrupar els alumnes de forma automàtica per optimitzar la instrucció entre parells a classe. Hi hagin 10 estudiants o n'hi hagin 100, estiguin les taules totes orientades cap a la pissarra o formant illes, ChallengeHub maximitza el valor de la classe assegurant que els alumnes aprenguin el màxim possible de les seves converses amb els companys.

Per què importa això?
Perquè fa possible l'ensenyament d'1 a 1 escalable.
Un nombre més gran d'alumnes reb ajuda personalitzada amb els seus dubtes,
cosa impossible amb el format de classes tradicional.
Els alumnes estan més motivats per assistir a les classes
perquè saben que algú els ajudarà amb el seu problema específic.
I, ajudant a d'altres,
els alumnes obtenen un enteniment més profon dels conceptes que es tracten.

A l'hora,
el docent té l'avantatge d'estar lliure per interactuar
amb alumnes específics durant la classe,
mentre s'inspira amb la interacció dels alumnes ensenyant-se els uns als altres.

ChallengeHub porta això a terme fent servir el progrés
dels alumnes en els reptes per predir
equips d'estudi òptims
d'una forma impossible per a un docent de forma manual.

Ara pot decidir que la seva classe tingui equips d'estudi:

![Interfície del docent per equips d'estudi](/images/blog/2020-04-10-stint-ui-es.png){: .framed-image .retina-70width-image }

S'assignen posicions als alumnes,
i els alumnes amb la mateixa posició formen un equip.
La posició pot ser una taula en una fila concreta,
una secció d'una aula tipus amfiteatre,
o qualsevol altre tipus de distribució de la classe per part del docent.
Els alumnes reben la seva posició especificada per dues coordenades: fila i taula.

## Des de la perspectiva de l'alumne

1. ChallengeBot informa ls alumnes d'una sessió amb equips d'estudi,
i els pregunta si assistiran (no cal que el docent interactuï amb ells)
1. Els alumnes responen dient si assistiran o no
(Si no responen es suposa que no assistiran)
1. Abans que comenci la sessió s'assignen taules als alumnes,
que podran comprovar a través de la interfície d'alumnes
1. Quan entren a l'aula, els alumnes busquen la seva taula i seuen amb el seu equip

![Interfície d'assistència a sessions](/images/blog/2020-04-10-attending-es.jpg){: .framed-image }

## Creant un sistema de coordenades

Una idea per crear un sistema de coordenades per a la seva aula és
que els alumnes comptin des de la primera fila i la primera taula (columna) de l'aula.
Es pot projectar un plànol de l'aula per fer-lo més senzill.
Per exemple, la fila 1 està davant i la taula 1 està a l'esquerra, a prop de la porta.
Alguns docents imprimeixen el plànol i el pengen a l'entrada de la classe.
Recordeu que només cal fer això una vegada per cada classe en que es faci servir.

![Exemple de sistema de coordenades d'una aula](/images/blog/2020-04-10-classroom-plan-ca.png){: .framed-image }

Un altre sistema típic és imprimir etiquetes amb els números de fila i taula,
i enganxar-els en les posicions adequades abans de la classe.
Per a taules que estiguin formant illes sense formar una quadrícula, esculli utilitzar una sola fila quan configuri el seu *stint*, i etiqueti cada taula per nombre.

## En resum

ChallengeHub continua innovant juntament amb els docents
per millorar l'experiència a l'aula.
Els equips d'estudi ajuden a optimitzar el valor que la classe aporta a cada alumne
mentre que redueix la càrrega sobre el docent.
