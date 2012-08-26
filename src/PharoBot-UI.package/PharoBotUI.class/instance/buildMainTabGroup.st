ui building - morphic
buildMainTabGroup

	^builder newTabGroup: {
		self buildWorkspaceLabel -> self buildWorkspacePanel.
		self buildCodeBrowserLabel -> self buildCodeBrowserPanel.
	}.