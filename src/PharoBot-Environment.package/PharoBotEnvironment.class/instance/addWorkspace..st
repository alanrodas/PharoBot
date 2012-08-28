actions
addWorkspace: aWorkspace

	self workspaces add: aWorkspace.
	self announce: (PharoBotWorkspaceAddedEvent new workspace: aWorkspace).