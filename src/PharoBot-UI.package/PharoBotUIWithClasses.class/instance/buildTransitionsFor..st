ui building
buildTransitionsFor: browser

	self buildTransitionsForClasses: browser.
	self buildTransitionsForCategories: browser.
	self buildTransitionsForInstanceAndClassMethods: browser.
	self buildTransitionsForCodeEditor: browser.