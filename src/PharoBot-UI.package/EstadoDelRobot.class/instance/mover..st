movimientos
mover: unaLongitud

|movimientoEnX movimientoEnY|

(self robot bateria carga < unaLongitud)
ifTrue: [self error: 'Debe recargar la bateria para realizar el movimiento'].

movimientoEnX:= self robot angle cos * unaLongitud.
movimientoEnY:= self robot angle sin * unaLongitud.

"Movimiento en x"

self robot position: (self robot position x + movimientoEnX) @ (self robot position y).
self robot mundo ampliarParaMoverEnX: movimientoEnX abs delRobot: self robot.

"Movimiento en y"

self robot position: (self robot position x) @ (self robot position y - movimientoEnY).
self robot mundo ampliarParaMoverEnY: movimientoEnY abs delRobot: self robot.
"Actualizo ultima posicion"

self robot ultimaPosicion: self robot position .

self robot bateria carga: self robot bateria carga - unaLongitud.

