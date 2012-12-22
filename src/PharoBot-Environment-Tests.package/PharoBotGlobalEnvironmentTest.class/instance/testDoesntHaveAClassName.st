accessing classes
testDoesntHaveAClassName

	self deny: (PharoBotGlobalEnvironment instance hasClassNamed: #NonExistentClassXXX)