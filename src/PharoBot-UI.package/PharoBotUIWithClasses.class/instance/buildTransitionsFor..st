ui building
buildTransitionsFor: browser
	
	browser transmit to: #classes; andShow: [ :p |
		p list
			title: 'Clases'; display: #classes;
			act: [ self createNewClass ] icon: GLMUIThemeExtraIcons glamorousAdd entitled: 'Nueva Clase';
			selectionAct: [ :class | self removeClass: class ] icon: GLMUIThemeExtraIcons glamorousRemove entitled: 'Eliminar Clase';
			act: [ self importClass ] icon: GLMUIThemeExtraIcons glamorousUp entitled: 'Importar Clase';
			selectionAct: [ :class | self exportClass: class ] icon: GLMUIThemeExtraIcons glamorousDown entitled: 'Exportar Clase'
	].
	browser transmit from: #classes; to: #methods; andShow: [ :p |
		p list
			title: 'Metodos de instancia'; display: [ :class | class selectors ];
			act: [ :m | nil ] icon: GLMUIThemeExtraIcons glamorousAdd entitled: 'Agregar metodo';
			selectionAct: [ :m | nil ] icon: GLMUIThemeExtraIcons glamorousRemove entitled: 'Eliminar metodo'.
		p list
			title: 'Metodos de clase'; display: [ :class | class class selectors ];
			act: [ :m | nil ] icon: GLMUIThemeExtraIcons glamorousAdd entitled: 'Agregar metodo';
			selectionAct: [ :m | nil ] icon: GLMUIThemeExtraIcons glamorousRemove entitled: 'Eliminar metodo'.
	].
	browser transmit
		from: #classes;
		from: #methods;
		to: #code;
		andShow: [ :p | 
			p smalltalkCode
				display: [ :class :selector |
					[ class >> selector ] on: Error do: [ class class >> selector ]
				];
				title: 'Implementacion';
				smalltalkClass: [ :class :selector | class ];
				act: [ :text | text inspect ] icon: GLMUIThemeExtraIcons glamorousCancel on: $l entitled: 'Deshacer cambios';
				act: [ :text | text inspect ] icon: GLMUIThemeExtraIcons glamorousAccept on: $s entitled: 'Guardar metodo'.
		].