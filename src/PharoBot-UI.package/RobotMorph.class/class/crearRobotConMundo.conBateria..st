crear instancia
"Luego de crear un robot hay que mandarle el mensaje 'inicializarRobot' "

crearRobotConMundo: unMundo conBateria: unaBateria

|nuevoRobot|

nuevoRobot:= self new.
nuevoRobot mundo: unMundo.
nuevoRobot bateria: unaBateria.
unMundo robot: nuevoRobot.
nuevoRobot position: (nuevoRobot mundo position x + (nuevoRobot mundo extent x / 2) ) @ (nuevoRobot mundo position y + (nuevoRobot mundo extent y / 2)).
^ nuevoRobot openInWorld .
