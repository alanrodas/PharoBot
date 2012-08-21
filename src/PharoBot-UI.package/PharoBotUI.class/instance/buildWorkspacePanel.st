ui building
buildWorkspacePanel

	|browser|
	browser := GLMTabulator new.
	browser
		row: #world span: 6;
		row: [ :row | row
			column: #workspaces span: 2;
			column: #currentWorkspace span: 5;
			column: #variables span: 3.
		] span: 4.
	
	browser transmit to: #world; andShow: [ :p |
		p morph display: [ self buildWorldArea ]
	].
	
	browser transmit to: #workspaces; andShow: [ :p |
		p list
			title: 'Workspaces';
			display: #workspaces;
			act: [ :pl | self createNewWorkspace ] icon: GLMUIThemeExtraIcons glamorousAdd entitled: 'Nuevo Workspace';
			selectionAct: [ :w | nil ] entitled: 'Eliminar Workspace'
	].
	
	browser transmit from: #workspaces; to: #currentWorkspace; andShow: [ :p |
		p morph display: [ :pharoBotWorkspace | PharoBotWorkspaceAdaptor new workspace: pharoBotWorkspace; buildTextMorph ]
	].
	
	browser transmit
		from: #workspaces;
		to: #variables;
		andShow: [ :p | p table
			display: [ :w | w variableBindings associations ];
			column: 'Variable' evaluated: #key;
			column: 'Valor' evaluated: [ :a | a value printString ];
			selectionAct: [ :t | t selection value inspect ] on: $i entitled: 'Inspect'
		].
		
	^self startBrowser: browser