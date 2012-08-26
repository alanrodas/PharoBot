bindings
bindingOf: aString

	(self hasBindingOf: aString)
		ifFalse: [self workspaceModel variableBindings at: aString put: nil].
	
	^self workspaceModel variableBindings associationAt: aString