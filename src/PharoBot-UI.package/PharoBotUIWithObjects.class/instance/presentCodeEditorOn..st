ui building
presentCodeEditorOn: presentation

	presentation morph
		title: 'Implementacion';
		display: [ :selector | 
			| class |
			class := PharoBotGlobalEnvironment instance robotClass.
			selector == currentMethodSelected
				ifFalse: [
					self methodBrowser setClass: class selector: selector.
					currentMethodTextMorph := self methodBrowser buildTextMorph.
							currentMethodSelected := selector ].
					currentMethodTextMorph ]