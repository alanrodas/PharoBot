ui building - glamour
buildLayoutFor: browser
	
	browser
		row: [ :row |
			row
				column: #classes span: 3;
				column: #categories span: 3;
				column: #methods span: 4 ] span: 4;
		row: #code span: 6.