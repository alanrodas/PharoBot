adding classes
testAddRobotClassShouldFailBecauseItIsDefault

	self
		should: [ env addClassNamed: #Robot ]
		raise: PharoBotEnvironmentError
		withExceptionDo: [ :e |
			self assert: e messageText = PharoBotEnvironmentError attemptToAddRobotClass ]