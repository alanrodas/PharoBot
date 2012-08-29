actions
removeSelectedWorkspace

	self selectedWorkspace
		ifNil: [ self openPleaseSelectDialog: 'Por favor seleccione un workspace' ]
		ifNotNil: [
			self openRemoveWorkspaceDialog
				ifTrue: [
					self environment removeWorkspace: self selectedWorkspace.
					self deselectWorkspace ] ].