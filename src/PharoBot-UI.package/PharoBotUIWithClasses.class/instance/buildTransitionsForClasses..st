ui building
buildTransitionsForClasses: browser

	browser transmit
		to: #classes;
		andShow: [ :p | 
			p list
				title: 'Clases';
				display: #classes;
				act: [ self createNewClass ]
					icon: GLMUIThemeExtraIcons glamorousAdd
					entitled: 'Nueva Clase';
				act: [ self removeSelectedClass ]
					icon: GLMUIThemeExtraIcons glamorousRemove
					entitled: 'Eliminar Clase';
				act: [ self importClass ]
					"icon: ???"
					entitled: 'Importar Clase';
				act: [ self exportSelectedClass ]
					"icon: ???"
					entitled: 'Exportar Clase'	]