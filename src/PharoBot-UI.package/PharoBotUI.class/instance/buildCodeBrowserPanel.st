ui building
buildCodeBrowserPanel

	|browser|
	browser := GLMTabulator new.
	self buildLayoutFor: browser.
	self buildTransitionsFor: browser.
	^self startBrowser: browser.