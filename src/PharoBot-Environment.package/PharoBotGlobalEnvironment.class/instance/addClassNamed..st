defining classes and methods
addClassNamed: aClassName

	aClassName == self robotClass
		ifTrue: [ PharoBotEnvironmentError signalAttemptToAddRobotClass ].
	
	self createClass: aClassName.
	self classNames add: aClassName