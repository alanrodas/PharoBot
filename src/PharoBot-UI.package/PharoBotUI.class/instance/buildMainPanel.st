ui building
buildMainPanel

	^(builder := UITheme builder) newColumn: {
		self buildMainTabGroup.
		self buildMainButtons.
	}.