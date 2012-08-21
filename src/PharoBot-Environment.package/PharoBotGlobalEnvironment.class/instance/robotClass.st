constants
robotClass

	^Smalltalk at: self robotClassName ifAbsent: [ PharoBotEnvironmentError signal ]