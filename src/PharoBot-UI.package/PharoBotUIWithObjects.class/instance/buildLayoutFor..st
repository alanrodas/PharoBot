ui building
buildLayoutFor: browser

	browser
		row: [ :row | row column: #categories; column: #instanceMethods ] span: 4;
		row: #code span: 6