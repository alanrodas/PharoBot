initialize-release
initialize

	self bateria: Bateria new.
	self color: Color random.
	self posicion: 0 @ 0.
	self estado: self estadoInicial.
	self direccion: 90.
	self caminos: OrderedCollection new.
	^self