extenciones
extenderAlNorte: unaLongitud

|cuadriculasAExtender nuevoMundo|

cuadriculasAExtender:= (unaLongitud // 70 ) + 1.
nuevoMundo:= Mundo crearMundo: (self extent x) @ (self extent y + (cuadriculasAExtender * 70)).
nuevoMundo position: (self position x) @ (self position y - (cuadriculasAExtender * 70)).
self actualizarCaminos: nuevoMundo.
nuevoMundo robot: self robot.
self robot mundo: nuevoMundo.
self delete.
^ nuevoMundo openInWorld .
