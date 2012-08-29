actions
createNewWorkspace

	|choice|
	choice := self openCreateWorkspaceDialog.
	choice ifNotNil: [
		choice isEmpty | choice isAllSeparators
			ifTrue: [
				UIManager default
					alert: 'Por favor elija un nombre adecuado para el workspace'
					title: 'Alerta'.
					self createNewWorkspace ]
			ifFalse: [
				self environment addWorkspace: (PharoBotWorkspace new title: choice) ] ]
	