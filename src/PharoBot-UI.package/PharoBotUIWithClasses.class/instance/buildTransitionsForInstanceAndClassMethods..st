ui building - glamour
buildTransitionsForInstanceAndClassMethods: browser

	browser transmit
		from: #categories;
		to: #methods;
		andShow: [ :p | 
			self presentInstanceMethodsOn: p title: 'Metodos de instancia'.
			self presentClassMethodsOn: p title: 'Metodos de clase'.
		].