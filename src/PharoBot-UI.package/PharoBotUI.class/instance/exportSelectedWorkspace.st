actions
exportSelectedWorkspace

	self doIfSelectedWorkspace: [ 
		| file |
		[ file := self openExportWorkspaceDialog ]
			on: CannotDeleteFileException
			do: [ :e | UIManager alert: e messageText title: 'Error al exportar archivo' ].
		
		file ifNotNil: [ file nextPutAll: self selectedWorkspace content; flush; close ] ]