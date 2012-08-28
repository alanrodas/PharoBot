adding classes
testAddingANewClass
	
	env addClassNamed: self tempClassName.
	
	self assert: (env hasClassNamed: self tempClassName).