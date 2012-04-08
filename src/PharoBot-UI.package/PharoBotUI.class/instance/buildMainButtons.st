ui building
buildMainButtons

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