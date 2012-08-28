ui building - glamour
buildTransitionsForCodeEditor: browser

	browser transmit
		from: #methods;
		to: #code;
		andShow: [ :p |
			p morph
				title: 'Implementacion';
				display: [ :selector | 
					| class |
					class := PharoBotGlobalEnvironment instance robotClass.
					self methodBrowser
						setClass: class selector: selector;
						buildTextMorph ] ]