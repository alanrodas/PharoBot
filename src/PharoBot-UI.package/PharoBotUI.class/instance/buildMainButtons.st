ui building - morphic
buildMainButtons

	self flag: #TODO.
	"Agregar iconos para ambos botones, apuntar a
		PharoBotIcons >> #saveImageIcon y a 	
		PharoBotIcons >> #quitIcon"
	
	^builder newRow: {
		builder
			newButtonFor: self
			action: #saveImage
			label: 'Guardar Ambiente'
			help: 'Guarda el estado del ambiente para ser cargado luego'.
		builder
			newButtonFor: self
			action: #quit
			label: 'Salir'
			help: 'Sale del ambiente'.
	}.