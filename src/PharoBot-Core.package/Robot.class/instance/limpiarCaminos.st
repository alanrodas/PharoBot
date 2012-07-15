private
limpiarCaminos
	self caminoActual: (Camino new: self posicion).
	self caminos: OrderedCollection new.
	self caminos add: caminoActual