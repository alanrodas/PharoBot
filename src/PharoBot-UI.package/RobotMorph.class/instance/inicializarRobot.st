inicializar
inicializarRobot

|piezaUno piezaDos piezaTres piezaCuatro piezaCinco pixel posInicial|
"Cuerpo"
piezaUno:= BorderedMorph new.
piezaUno extent: 20@40.
piezaUno color: (Color lightGreen  ).
piezaUno borderColor: Color green.
piezaUno openInWorld .
piezaUno position: self position. 
self asFlexOf: piezaUno.

"Ojo izquierdo"
piezaDos:= CircleMorph new.
piezaDos extent: 10@10.
piezaDos color: (Color blue alpha: 0.5).
piezaDos position: (piezaUno position x + 7) @ (piezaUno position y + 5).
piezaDos openInWorld .
piezaUno addMorph: piezaDos.

"Ojo derecho"
piezaTres:= CircleMorph new.
piezaTres extent: 10@10.
piezaTres color: (Color blue alpha: 0.5).
piezaTres position: (piezaUno position x + 7) @ (piezaUno position y + 23).
piezaTres openInWorld .
piezaUno addMorph: piezaTres.

"Bolita del ojo 1"
piezaCuatro:= CircleMorph new.
piezaCuatro extent: 5@5.
piezaCuatro color: Color black .
piezaCuatro position: (piezaDos position x + 5) @ (piezaDos position y + 3) .
piezaCuatro openInWorld .
piezaDos addMorph: piezaCuatro.

"Bolita del ojo 2"
piezaCinco:= CircleMorph new.
piezaCinco extent: 5@5.
piezaCinco color: Color black .
piezaCinco position: (piezaTres position x + 5) @ (piezaTres position y + 3) .
piezaCinco openInWorld .
piezaTres addMorph: piezaCinco.

"Cuerpo del robot "

posInicial:= (piezaUno position x + 20) @ (piezaUno position y).

(8)timesRepeat: 
[pixel:= Morph new.
pixel extent: 2@2.
pixel position: posInicial.
pixel color: Color green .
pixel openInWorld .
piezaUno addMorph: pixel.
posInicial:= (posInicial x + 2) @ (posInicial y + 2.5).].

posInicial:= (piezaUno position x + 20) @ (piezaUno position y + 37).

(8)timesRepeat: 
[pixel:= Morph new.
pixel extent: 2@2.
pixel position: posInicial.
pixel color: Color green .
pixel openInWorld .
piezaUno addMorph: pixel.
posInicial:= (posInicial x + 2) @ (posInicial y - 2.5).].

" Brazos del robot  y pincel"

posInicial:= (piezaUno position x + 26) @ (piezaUno position y + 6).

(8)timesRepeat: 
[pixel:= Morph new.
pixel extent: 2@2.
pixel position: posInicial.
pixel color: Color green .
pixel openInWorld .
piezaUno addMorph: pixel.
posInicial:= (posInicial x - 1) @ (posInicial y - 2.5).].

posInicial:= (piezaUno position x + 26) @ (piezaUno position y + 31).

(8)timesRepeat: 
[pixel:= Morph new.
pixel extent: 2@2.
pixel position: posInicial.
pixel color: Color green .
pixel openInWorld .
piezaUno addMorph: pixel.
posInicial:= (posInicial x - 1) @ (posInicial y + 2.5).].

"Pies"

posInicial:= (piezaUno position x + 37) @ (piezaUno position y + 17).
(4)timesRepeat: 
[pixel:= Morph new.
pixel extent: 2@2.
pixel position: posInicial.
pixel color: Color green .
pixel openInWorld .
piezaUno addMorph: pixel.
posInicial:= (posInicial x + 2) @ (posInicial y - 2).].

posInicial:= (piezaUno position x + 37) @ (piezaUno position y + 17).
(4)timesRepeat: 
[pixel:= Morph new.
pixel extent: 2@2.
pixel position: posInicial.
pixel color: Color green .
pixel openInWorld .
piezaUno addMorph: pixel.
posInicial:= (posInicial x + 2) @ (posInicial y + 2).].

self ultimaPosicion: self position.

"Se une el robot con su mundo"
self mundo addMorph: self.


