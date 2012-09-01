porcentaje
testPorcentajeCargaAMenosDel100PorCiento

	bateria := Bateria new.
	
	bateria consumir: 500.
	self assert: 50 equals: bateria porcentajeCarga.
	bateria consumir: 200.
	self assert: 30 equals: bateria porcentajeCarga.