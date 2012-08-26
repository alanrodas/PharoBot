ui building - glamour
presentInstanceMethodsOn: presentation title: title

	^presentation list
		title: title;
		display: [ :cat | self methodsInCategoryForCurrentClass: cat ];
		act: [ self addNewInstanceMethod ]
			icon: PharoBotIcons addMethodIcon
			entitled: 'Nuevo';
		act: [ self removeSelectedInstanceMethod ]
			icon: PharoBotIcons removeMethodIcon
			entitled: 'Eliminar';
		act: [ self renameSelectedInstanceMethod ]
			icon: PharoBotIcons renameMethodIcon
			entitled: 'Renombrar'