actions
createNewWorkspace

	|dialog|
	dialog := (TextEntryDialogWindow labelled: 'Ingrese el nombre del nuevo workspace').
	self mainWindow openModal: dialog.
	self environment addWorkspace: (PharoBotWorkspace new title: dialog entryText).