actions
removeSelectedWorkspace

	self doIfSelectedWorkspace: [
		self openRemoveWorkspaceDialog
			ifTrue: [
				self environment removeWorkspace: self selectedWorkspace.
				self deselectWorkspace ] ].