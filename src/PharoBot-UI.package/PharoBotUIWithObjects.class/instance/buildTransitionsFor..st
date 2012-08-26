ui building
buildTransitionsFor: browser

	self buildTransitionsForCategories: browser.
	self buildTransitionsForInstanceMethods: browser.
	self buildTransitionsForCodeEditor: browser