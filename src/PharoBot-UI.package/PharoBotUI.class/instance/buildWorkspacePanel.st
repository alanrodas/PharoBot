ui building - glamour
buildWorkspacePanel

	workspacesBrowser := GLMTabulator new.
	workspacesBrowser
		row: #world span: 6;
		row: [ :row | row
			column: #workspaces span: 3;
			column: #currentWorkspace span: 4;
			column: #variables span: 3.
		] span: 4.
	
	workspacesBrowser transmit to: #world; andShow: [ :p |
		p morph display: [ self buildWorldArea ]
	].
	
	workspacesBrowser transmit to: #workspaces; andShow: [ :p |
		p list
			title: 'Workspaces';
			display: #workspaces;
			updateOn: PharoBotWorkspaceAddedEvent from: #yourself;
			updateOn: PharoBotWorkspaceRemovedEvent from: #yourself;
			updateOn: PharoBotWorkspaceModifiedEvent from: #yourself;
			act: [ self createNewWorkspace ]
				icon: PharoBotIcons addWorkspaceIcon
				entitled: 'Agregar nuevo Workspace';
			act: [ self removeSelectedWorkspace ]
				icon: PharoBotIcons removeWorkspaceIcon
				entitled: 'Eliminar Workspace';
			act: [ self renameSelectedWorkspace ]
				icon: PharoBotIcons renameWorkspaceIcon
				entitled: 'Renombrar Workspace';
			act: [ self importWorkspace ]
				icon: PharoBotIcons importWorkspaceIcon
				entitled: 'Importar desde archivo';
			act: [ self exportSelectedWorkspace ]
				icon: PharoBotIcons exportWorkspaceIcon
				entitled: 'Exportar a un archivo' ].
	
	workspacesBrowser transmit from: #workspaces; to: #currentWorkspace; andShow: [ :p |
		p morph display: [ :pharoBotWorkspace |
			PharoBotWorkspaceAdaptor new
				workspaceModel: pharoBotWorkspace;
				acceptContents: pharoBotWorkspace content;
				buildTextMorph ]	].
	
	workspacesBrowser transmit
		from: #workspaces;
		to: #variables;
		andShow: [ :p | p table
			title: 'Referencias';
			display: [ :w | w variableBindings associations ];
			column: 'Referencia' evaluated: #key;
			column: 'Valor' evaluated: [ :a | a value printString ];
			act: [ self inspectCurrentVariable ]
				icon: PharoBotIcons inspectReferenceIcon
				entitled: 'Inspeccionar';
			act: [ :t | self removeCurrentVariable ]
				icon: PharoBotIcons removeReferenceIcon
				entitled: 'Eliminar referencia' ].
		
	^self startBrowser: workspacesBrowser