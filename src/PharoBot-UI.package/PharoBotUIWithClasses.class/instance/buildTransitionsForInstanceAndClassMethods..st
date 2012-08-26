ui building
buildTransitionsForInstanceAndClassMethods: browser

	browser transmit
		from: #categories;
		to: #methods;
		andShow: [ :p | 
			p list
				title: 'Metodos de instancia';
				display: [ :category | self environment
					instanceMethodsFor: self selectedClass
					inCategory: category ];
				act: [  ]
					icon: GLMUIThemeExtraIcons glamorousAdd
					entitled: 'Agregar metodo';
				act: [  ]
					icon: GLMUIThemeExtraIcons glamorousRemove
					entitled: 'Eliminar metodo'.
			p list
				title: 'Metodos de clase';
				display: [ :category | self environment
					classMethodsFor: self selectedClass
					inCategory: category ];
				act: [  ]
					icon: GLMUIThemeExtraIcons glamorousAdd
					entitled: 'Agregar metodo';
				act: [  ]
					icon: GLMUIThemeExtraIcons glamorousRemove
					entitled: 'Eliminar metodo' ].