porcentaje
testPorcentajeCargaAl0PorCiento

	bateria := Bateria new.
	
	bateria consumir: bateria cargaMaxima.
	self assert: 0 equals: bateria porcentajeCarga.