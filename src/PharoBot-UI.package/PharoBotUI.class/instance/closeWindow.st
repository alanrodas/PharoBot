actions
closeWindow

	"Advertir que se pierden cambios: robots, variables inicializadas, workspaces. No se pierden metodos y clases creados"
	"Luego, cerrar la ventana"
	self flag: #TODO.
	self shouldBeImplemented.