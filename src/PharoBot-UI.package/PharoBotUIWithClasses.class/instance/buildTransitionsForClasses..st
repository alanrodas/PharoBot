ui building - glamour
buildTransitionsForClasses: browser

	browser transmit
		to: #classes;
		andShow: [ :p | 
			p list
				title: 'Clases';
				display: #classes;
				act: [ self createNewClass ]
					icon: PharoBotIcons addClassIcon
					entitled: 'Nueva';
				act: [ self removeSelectedClass ]
					icon: PharoBotIcons removeClassIcon
					entitled: 'Eliminar';
				act: [ self exportSelectedClass ]
					icon: PharoBotIcons renameClassIcon
					entitled: 'Renombrar';
				act: [ self importClass ]
					icon: PharoBotIcons importClassIcon
					entitled: 'Importar';
				act: [ self exportSelectedClass ]
					icon: PharoBotIcons exportClassIcon
					entitled: 'Exportar' ]