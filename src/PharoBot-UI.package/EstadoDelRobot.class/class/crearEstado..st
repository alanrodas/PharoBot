crear instancia
"Luego de crear un EstadoDelRobot  hay que mandarle el mensaje inicializarEstadoEnRobot "

crearEstado: unRobot

|estado|

estado:= self new.
estado robot: unRobot.
^ estado.