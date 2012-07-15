private
comenzarNuevoCamino

	self caminoActual: (Camino new: self posicion).
	self caminos add: self caminoActual