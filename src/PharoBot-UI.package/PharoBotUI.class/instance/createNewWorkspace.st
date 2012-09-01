actions
createNewWorkspace

	|choice|
	choice := self openCreateWorkspaceDialog.
	choice ifNotNil: [
		choice isEmpty | choice isAllSeparators
			ifTrue: [
				self openAlertDialog: 'Por favor elija un nombre adecuado para el workspace'.
				self createNewWorkspace ]
			ifFalse: [
				self environment addWorkspace: (PharoBotWorkspace new title: choice) ] ]
	