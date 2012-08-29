actions
removeWorkspace: aWorkspace

	self workspaces remove: aWorkspace.
	self announce: (PharoBotWorkspaceRemovedEvent new workspace: aWorkspace).