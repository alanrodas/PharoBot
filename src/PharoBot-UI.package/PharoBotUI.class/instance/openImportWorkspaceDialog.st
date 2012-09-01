dialogs
openImportWorkspaceDialog

	^UIManager default
		fileOpen: 'Seleccione el archivo que desea importar'
		extensions: {(self pharoBotWorkspaceFileExtension)}