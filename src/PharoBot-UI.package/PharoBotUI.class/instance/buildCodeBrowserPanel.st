ui building - glamour
buildCodeBrowserPanel

	codeBrowser := GLMTabulator new.
	self buildLayoutFor: codeBrowser.
	self buildTransitionsFor: codeBrowser.
	^self startBrowser: codeBrowser.