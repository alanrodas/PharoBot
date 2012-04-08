caminos
dibujarLineaDesde: ptoInicio conLongitud: unaLongitud conInclinacion: unAngulo

|ptoActual longEnX longEnY puntoDibujado|

ptoActual:= ptoInicio.
longEnX:= self robot angle cos * 2.
longEnY:= self robot angle sin * 2.


(unaLongitud // 2) timesRepeat: 
[ 	puntoDibujado:= self dibujarPunto: ptoActual.
	self addMorph: puntoDibujado.
	ptoActual:= (ptoActual x + longEnX) @ (ptoActual y - longEnY).]

