ui building
buildWorkspacePanel

	|browser|
	browser := GLMTabulator new.
	browser
		row: #world span: 6;
		row: [ :row | row
			column: #workspaces span: 3;
			column: #currentWorkspace span: 4;
			column: #variables span: 3.
		] span: 4.
	
	browser transmit to: #world; andShow: [ :p |
		p morph display: [ self buildWorldArea ]
	].
	
	browser transmit to: #workspaces; andShow: [ :p |
		p list
			title: 'Workspaces';
			display: #workspaces;
			act: [ self createNewWorkspace ]
				icon: GLMUIThemeExtraIcons glamorousAdd
				entitled: 'Agregar nuevo Workspace';
			act: [ self removeSelectedWorkspace ]
				icon: GLMUIThemeExtraIcons glamorousRemove
				entitled: 'Eliminar Workspace';
			act: [ self renameSelectedWorkspace ]
				"icon: ???"
				entitled: 'Renombrar Workspace';
			act: [ self importWorkspace ]
				"icon: ???"
				entitled: 'Importar desde archivo';
			act: [ self exportSelectedWorkspace ]
				"icon: ???"
				entitled: 'Exportar a un archivo' ].
	
	browser transmit from: #workspaces; to: #currentWorkspace; andShow: [ :p |
		p morph display: [ :pharoBotWorkspace |
			PharoBotWorkspaceAdaptor new
				workspaceModel: pharoBotWorkspace;
				buildTextMorph ]	].
	
	browser transmit
		from: #workspaces;
		to: #variables;
		andShow: [ :p | p table
			display: [ :w | w variableBindings associations ];
			column: 'Referencia' evaluated: #key;
			column: 'Valor' evaluated: [ :a | a value printString ];
			act: [ self inspectCurrentVariable ]
				"icon: ???"
				entitled: 'Inspeccionar';
			act: [ :t | self removeCurrentVariable ]
				"icon: ???"
				entitled: 'Eliminar referencia' ].
		
	^self startBrowser: browser