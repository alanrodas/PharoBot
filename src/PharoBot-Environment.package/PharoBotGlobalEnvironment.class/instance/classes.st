accessing
classes

	^self classNames collect: [ :className |
		Smalltalk at: className ifAbsent: [ PharoBotEnvironmentError signal ] ]