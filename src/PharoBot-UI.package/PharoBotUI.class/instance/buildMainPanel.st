ui building - morphic
buildMainPanel

	^(builder := UITheme builder) newColumn: {
		self buildMainTabGroup.
		self buildMainButtons.
	}.