ui building
buildTransitionsForCategories: browser

	browser transmit
		to: #categories;
		andShow: [ :p |
			p list
				title: 'Categorias';
				display: #categories ]