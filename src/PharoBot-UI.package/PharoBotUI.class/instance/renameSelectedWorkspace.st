actions
renameSelectedWorkspace

	self doIfSelectedWorkspace: [
		|newName|
		newName := self openRenameWorkspaceDialog.
		newName ifNotNil: [
			newName isEmpty | newName isAllSeparators
				ifTrue: [
					self openAlertDialog: 'Por favor elija un nombre adecuado para el workspace'.
					self renameSelectedWorkspace ]
				ifFalse: [ |wp|
					wp := self selectedWorkspace.
					self deselectWorkspace.
					self environment renameWorkspace: wp title: newName.
					self selectWorkspace: wp ] ] ]