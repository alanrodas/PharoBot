private
doIfSelectedWorkspace: aBlock

	self selectedWorkspace
		ifNil: [ self openPleaseSelectDialog: 'Por favor seleccione un workspace' ]
		ifNotNil: aBlock