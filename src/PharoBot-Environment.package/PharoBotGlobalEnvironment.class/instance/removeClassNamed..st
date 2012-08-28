defining classes and methods
removeClassNamed: aClassName

	aClassName == self robotClassName
		ifTrue: [ PharoBotEnvironmentError signalCannotRemoveRobotClass ].
	
	self classNames
		remove: aClassName
		ifAbsent: [ PharoBotEnvironmentError signalAttemptToRemoveInexistentClass ].
	self removeClass: aClassName.