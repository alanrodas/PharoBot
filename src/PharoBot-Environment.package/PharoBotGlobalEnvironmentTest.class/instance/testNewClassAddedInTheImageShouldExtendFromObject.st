adding classes
testNewClassAddedInTheImageShouldExtendFromObject
	
	env addClassNamed: self tempClassName.
	
	self assert: (Smalltalk at: self tempClassName) superclass = Object.