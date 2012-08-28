ui building - glamour
buildTransitionsFor: browser

	self buildTransitionsForClasses: browser.
	self buildTransitionsForCategories: browser.
	self buildTransitionsForInstanceAndClassMethods: browser.
	self buildTransitionsForCodeEditor: browser.