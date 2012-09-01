dialogs
openExportWorkspaceDialog

	^UIManager default
		fileSave: 'Seleccione carpeta y nombre de archivo de destino'
		path: self selectedWorkspace title , '.' , self pharoBotWorkspaceFileExtension