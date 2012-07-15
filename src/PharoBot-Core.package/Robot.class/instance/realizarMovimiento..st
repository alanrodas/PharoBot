private
realizarMovimiento: unaDistancia

	self posicion:
		(self posicion + (Point r: unaDistancia theta: Float pi / 180 * (self direccion negated - 90))) rounded.