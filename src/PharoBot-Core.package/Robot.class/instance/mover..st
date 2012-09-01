movimientos
mover: unaDistancia

	(self bateria puedeConsumir: unaDistancia)
		ifTrue: [
			self estado mover: unaDistancia alRobot: self.
			self bateria consumir: unaDistancia.]
		ifFalse: [self error: '!No hay suficiente bateria!'].