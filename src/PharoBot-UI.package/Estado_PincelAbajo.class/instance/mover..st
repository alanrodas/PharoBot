movimientos
mover: unaLongitud

|posicionInicial|

posicionInicial:= self robot ultimaPosicion.

super mover: unaLongitud.
self robot mundo dibujarLineaDesde: posicionInicial conLongitud: unaLongitud conInclinacion: self robot angle.