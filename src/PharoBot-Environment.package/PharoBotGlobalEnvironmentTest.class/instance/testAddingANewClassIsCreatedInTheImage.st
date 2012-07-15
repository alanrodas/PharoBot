adding classes
testAddingANewClassIsCreatedInTheImage
	
	env addClassNamed: self tempClassName.
	
	self shouldnt: (Smalltalk at: self tempClassName) raise: Error.