ui building
buildTransitionsForInstanceMethods: browser

	browser transmit
		from: #categories;
		to: #instanceMethods;
		andShow: [ :p |
			p list
				title: 'Metodos';
				display: [ :cat | self environment robotMethodsInCategory: cat];
				act: [ self addNewMethodToSelectedClass ]
					icon: GLMUIThemeExtraIcons glamorousAdd
					entitled: 'Agregar metodo';
				act: [ self removeSelectedInstanceMethodFromSelectedClass ]
					icon: GLMUIThemeExtraIcons glamorousRemove
					entitled: 'Eliminar metodo';
				act: [ self renameSelectedInstanceMethod ]
					"icon: ???"
					entitled: 'Renombrar metodo']