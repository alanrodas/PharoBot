ui building
buildTransitionsForInstanceMethods: browser

	browser transmit
		from: #categories;
		to: #instanceMethods;
		andShow: [ :p | self presentInstanceMethodsOn: p title: 'Metodos' ]