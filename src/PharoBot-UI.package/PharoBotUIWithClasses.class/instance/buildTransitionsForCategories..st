ui building - glamour
buildTransitionsForCategories: browser

	browser transmit
		from: #classes;
		to: #categories;
		andShow: [ :p |
			p list
				title: 'Categorias';
				display: #protocols ]