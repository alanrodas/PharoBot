ui building
buildMainTabGroup

	^builder newTabGroup: {
		self buildWorkspaceLabel -> self buildWorkspacePanel.
		self buildCodeBrowserLabel -> self buildCodeBrowserPanel.
	}.