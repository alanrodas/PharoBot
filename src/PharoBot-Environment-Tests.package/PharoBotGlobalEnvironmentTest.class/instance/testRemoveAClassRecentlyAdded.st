removing classes
testRemoveAClassRecentlyAdded

	env addClassNamed: self tempClassName.
	env removeClassNamed: self tempClassName.
	
	self deny: (env hasClassNamed: self tempClassName)