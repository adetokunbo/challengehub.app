---
date: 2020-03-12
title: Com crear bons reptes?
description: Hi han molts estils de repte possibles. Oblida't de les preguntes d'elecció múltiple!
image: /images/blog/2020-03-12-what-makes-a-good-challenge-ca.jpg
image_alt: Com crear bons reptes?
image_maxheight: 499
reading_minutes: 4
categories:
 - ChallengeHub

author_staff_member: james
ref: 2020-03-12-what-makes-a-good-challenge
lang: ca
---
Una característica molt potent de ChallengeHub és que els alumnes poden
comprovar les seves respostes en temps real.
Les solucions numèriques i basades en text possibiliten molts estils de repte.

Els alumnes comproven les seves respostes enviant-les a ChallengeBot,
qui els notifica si és correcta.
A el no ser visible la resposta abans de resoldre el repte,
ens assegurem que no s'ha aplicat enginyeria inversa a la pregunta.

Aquest article exposa alguns exemples de coses que funcionen
(o no funcionen)
a l'hora de crear un bon repte.

## Solucions numèriques: bé!

Una característica distintiva de ChallengeHub és que les solucions numèriques es poden especificar juntament amb una tolerància.
Per exemple, consideri el repte següent:

> Calculeu la derivada de ```f(x) = x² + 3.5x + 4```.\\
> Per a comprovar la solució, substitueixi ```x=2``` en la seva solució final. 

En aquest cas, la solució és ```f'(x) = 2x + 3.5```,
i l'alumne substituirà ```x=2``` per obtenir ```7.5```.
Es pot especificar una tolerància per a aquesta solució,
Com ```7.5±1%``` o ```7.5±0.1```.
Això és especialment útil en reptes complexos
amb diversos passos en els quals es poden acumular errors d'arrodoniment.

![UI de tolerància](/images/blog/2020-03-12-tolerance.png){: .framed-image .retina-70width-image }

Hi han casos en què una comprovació completa és difícil,
però es pot obtenir un fort indicador de la correcció de la resposta.
Per exemple, en casos on la solució final és una matriu
la instrucció podria ser:

> La solució final és una matriu 2x2.\\
> Per comprovar la seva resposta, sumi tots els números de la matriu. 

Un altre exemple amb nombres complexos podria ser:

> La solució final és un nombre complex ```a+bi```.\\
> Per comprovar la seva resposta, calculi a+10b.

o potser:

> La solució final és un nombre complex ```a+bi```.\\
> Per comprovar la seva resposta, introdueixi el valor absolut del nombre complex.

Encara que això no permet una comprovació exacta,
proporciona un fort indicador de la correcció de la resposta
tant per al docent com per a l'alumne.
D'aquesta manera, els alumnes poden saber si la seva solució és clarament incorrecta
sense perdre el ritme de la seva sessió d'estudi.
El docent sempre pot comprovar alguns [quaderns de reptes]( /2019/08/11/the-challenge-log/ )
durant la classe per assegurar-se que els càlculs dels alumnes són correctes.

## Elecció múltiple: millor no!

El repte ideal incita a el pensament profon i a la discussió a classe.
No incita a respondre a l'atzar.

Un reflex comú en els docents és fer preguntes d'elecció múltiple als alumnes.
Per exemple:

> ![Fase d'el pèndol](/images/blog/2020-03-12-pendulum-phase.png)
> Tenint en compte la figura, si l'angle inicial del pèndol és π i la velocitat angular inicial és 0 rad / s, com actuarà el pèndol?
  - a) El pèndol continuarà estacionari
  - b) El pèndol oscil·larà cap endavant i enrere
  - c) El pèndol farà una volta completa

En aquest cas, els alumnes tindran una gran temptació d'introduir "a", "b" o "c" fins a trobar la solució correcta, i llavors possiblement esbrinar per què és aquesta la solució.
Altres alumnes poden fins i tot passar al següent repte, donant a l'docent la falsa impressió que han comprès el concepte i que estan al dia amb l'assignatura.

## Suma binària amb veritable/fals: bé!

Una alternativa a la elecció múltiple són els grups de preguntes de **veritable/fals amb suma binària**.
El repte per a la figura anterior podria ser com segueix:

> Sumi els punts de les següents afirmacions que siguin veritables:
> 
> - **1 punt** Una velocitat angular d'1 unitat resulta en un moviment circular independentment de l'angle inicial.
> - **2 punts** Una velocitat angular de -2.5 unitats resulta en un moviment circular independentment de l'angle inicial.
> - **4 punts** Un angle inicial de π/2 combinat amb una velocitat angular d'1 unitat resulta en una oscil·lació periòdica.
> - **8 punts** Un angle inicial de π/2 combinat amb una velocitat angular d'1 unitat resulta en un moviment circular.
> - **16 punts** Un angle inicial de 0 combinat amb una velocitat angular de 0 unitats resulta en una oscil·lació periòdica.
> 
> Introduïu la vostra solució final en forma de nombre sencer.

Cada afirmació és una pregunta de veritable/fals, i sumar les diferents afirmacions resulta en un total únic.
La probabilitat d'encertar responent a l'atzar ha baixat de 1/3 a 1/(2⁵),
i es pot reduir més encara afegint més opcions.

## Selecció de paraules: millor no!

Penseu el repte següent:

> La convecció és una forma de transmissió de calor. Anomena les altres dues.

La solució és "conducció i radiació".
ChallengeBot busca el text exacte, així que respondre en l'ordre invers ( "radiació i conducció") o separar les dues paraules formes alternatives com "&" o ", " no es reconeixeria com a correcte.
A més, aquest estil també afavoreix les respostes a l'atzar, donant els mateixos problemes que s'ha descrit anteriorment.

## Reptes d'ordenar: bé!

Una manera d'usar text sense requerir paraules ambigües és fer coincidir un patró.
Per exemple:

> Aquestes 5 gràfiques (a,b,c,d,e) corresponen a les següents 5 equacions.
> Poseu les gràfiques en el mateix ordre que les equacions a continuació.\\
> Envieu la seva resposta en el format següent: abcde

Aquí està clar de quina manera s'ha d'introduir el text i, amb només 1/120 de probabilitat d'encertar responent a l'atzar, es fomenta l'aprenentatge.

## Només valoració

En alguns casos, pot ser que quan sigui necessari escriure un petit assaig o un paràgraf, les opcions anteriors no siguin les més encertades.
Per a aquests casos, el docent té l'opció de demanar que els alumnes només valorin la dificultat de l'repte, per facilitar el seguiment del progrés dels mateixos.

## Conclusions

Des de la perspectiva de l'ús eficient de el temps de professor, també cal tenir en ment una bona relació entre el temps que es triga a preparar un repte i el temps que triga un alumne en llegir els recursos rellevants i completar-lo, de manera que tant el aprenentatge com l'ensenyament siguin altament eficients.

Resumint, ChallengeHub potència estils de repte que fomenten en els alumnes un aprenentatge més profon.
També agraïm als docents tot tipus de _feedback_ i innovacions que comparteixin amb nosaltres,
per seguir ampliant el rang d'estils pedagògics possibles a la plataforma.
