ui building
buildLayoutFor: browser
	
	browser
		row: [ :row | row column: #classes span: 30; column: #methods span: 70 ];
		row: #code.