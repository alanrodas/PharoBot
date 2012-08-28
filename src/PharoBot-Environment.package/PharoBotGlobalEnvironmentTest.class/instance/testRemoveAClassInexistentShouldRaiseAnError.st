removing classes
testRemoveAClassInexistentShouldRaiseAnError

	self
		should: [ env removeClassNamed: self tempClassName ]
		raise: PharoBotEnvironmentError 
		withExceptionDo: [ :e | self assert: e messageText = PharoBotEnvironmentError attemptToRemoveInexistentClass  ]