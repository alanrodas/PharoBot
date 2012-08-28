ui building - glamour
presentClassMethodsOn: presentation title: title

	presentation list
		title: title;
			display: [ :category | self classMethodsInCategory: category ];
			act: [ self addNewClassMethod ]
				icon: PharoBotIcons addMethodIcon
				entitled: 'Agregar';
			act: [ self removeClassMethod ]
				icon: PharoBotIcons removeMethodIcon
				entitled: 'Eliminar metodo';
			act: [ self renameClassMethod ]
				icon: PharoBotIcons renameMethodIcon
				entitled: 'Eliminar metodo'