caminos
dibujarPunto: posicion

|nuevoPunto|

nuevoPunto:= Morph new.
nuevoPunto extent: 2@2.
nuevoPunto position: posicion.
self caminos add: nuevoPunto.
^ nuevoPunto openInWorld .