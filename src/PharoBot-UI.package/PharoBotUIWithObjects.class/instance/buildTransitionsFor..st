ui building
buildTransitionsFor: browser

	browser transmit to: #instanceMethods; andShow: [ :p |
		p list
			title: 'Metodos';
			display: #robotMethods;
			selectionAct: [ :m | self removeInstanceMethod: m onClass: self environment robotClass ]
			icon: GLMUIThemeExtraIcons glamorousRemove
			entitled: 'Eliminar metodo'.
	].

	browser transmit from: #instanceMethods; to: #code; andShow: [ :p | 
		p smalltalkCode
			display: [ :selector | self environment robotClass >> selector ];
			title: 'Implementacion';
			smalltalkClass: self environment robotClass;
			act: [ :text | text inspect ]
			icon: GLMUIThemeExtraIcons glamorousCancel
			on: $l entitled: 'Cancelar';
			act: [ :text | text inspect ]
			icon: GLMUIThemeExtraIcons glamorousAccept
			on: $s entitled: 'Aceptar'.
		].