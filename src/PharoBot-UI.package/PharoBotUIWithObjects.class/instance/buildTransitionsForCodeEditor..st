ui building
buildTransitionsForCodeEditor: browser

	browser transmit
		from: #instanceMethods;
		to: #code;
		andShow: [ :p | self presentCodeEditorOn: p ]