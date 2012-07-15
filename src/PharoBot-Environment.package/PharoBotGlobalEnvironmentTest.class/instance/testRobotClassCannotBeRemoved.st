removing classes
testRobotClassCannotBeRemoved

	self
		should: [ env removeClassNamed: #Robot ]
		raise: PharoBotEnvironmentError
		withExceptionDo: [ :e |
			self assert: e messageText = PharoBotEnvironmentError cannotRemoveRobotClass ]