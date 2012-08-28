defining classes and methods
addClassNamed: aClassName

	aClassName == self robotClassName
		ifTrue: [ PharoBotEnvironmentError signalAttemptToAddRobotClass ].
	
	self createClass: aClassName.
	self classNames add: aClassName