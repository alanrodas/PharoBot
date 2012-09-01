actions
renameWorkspace: workspace title: aString

	workspace title: aString.
	self announce: (PharoBotWorkspaceModifiedEvent new workspace: workspace).