crear instancia
"El tamaño es pasado de la siguiente manera    140 @ 140 donde los valores de X e Y deben ser multiplos de 70"

crearMundo: unaSuperficie

|mundo nroRepeticionesEnX nroRepeticionesEnY posicionActual cuadriculaNueva|

"Chequear datos ingresados"

((unaSuperficie x isDivisibleBy: 70) & (unaSuperficie y isDivisibleBy: 70))
ifFalse: [ self error: 'Los valores ingresados deben ser multiplos de 70'].

mundo:= self new.
mundo color: (Color black alpha: 0.3).
mundo extent: unaSuperficie.

"Cuadriculado"

nroRepeticionesEnX:= mundo extent x // 70.
nroRepeticionesEnY:= mundo extent y // 70.
posicionActual:= mundo position.

(nroRepeticionesEnY) timesRepeat: 
[(nroRepeticionesEnX) timesRepeat: [ cuadriculaNueva:= CuadriculaDeMundo crearCuadriculaDeMundo.	
								cuadriculaNueva position: posicionActual.
								mundo addMorph: cuadriculaNueva.
								posicionActual:= (posicionActual x + 70) @ (posicionActual y)].
							
	posicionActual:= (posicionActual x - (nroRepeticionesEnX * 70) @ (posicionActual y + 70)) ].

mundo caminos: Set new.

^ mundo