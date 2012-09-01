instance creation
crearBateriaConCargaMaxima: unaCarga

"Las baterias nuevas vienen con la mitad de carga"

|bateria|
bateria:= self new.
bateria cargaMaxima: unaCarga.
bateria carga: unaCarga / 2.
^ bateria.