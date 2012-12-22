removing classes
testRemoveAClassRecentlyAddedAlsoShouldRemoveItFromTheImage

	env addClassNamed: self tempClassName.
	env removeClassNamed: self tempClassName.
	
	self should: [ Smalltalk at: self tempClassName ] raise: Error.