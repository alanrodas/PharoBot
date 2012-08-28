constants
startWorkspace

	^PharoBotWorkspace new
		title: 'Bienvenido a PharoBot - Clase 1';
		content:
'
"Bienvenido a PharoBot - Clase 1"

robotech mover: 100.
robotech norte.

etc, etc, etc...
';
	variableBindings: self defaultVariableBindings asDictionary;
	yourself