actions
exportSelectedWorkspace

	"Exporta el contenido del workspace a un archivo"
	"Luego, se muestra un cartel diciendo si se exporto correctamente y si no, mostrar el error (por ejemplo, falta de permisos en el disco)"
	"Puede asumirse la convencion nombre archivo == nombre del workspace"
	"Tener en cuenta que se debe lanzar una advertencia si ningun workspace esta seleccionado"
	self flag: #TODO.
	self shouldBeImplemented