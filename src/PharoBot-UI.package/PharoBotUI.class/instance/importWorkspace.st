actions
importWorkspace

	| file |
	file := self openImportWorkspaceDialog.
	file ifNotNil: [ 
		| newWorkspace |
		newWorkspace := PharoBotWorkspace new
			title: (file localName removeSuffix: '.' , self pharoBotWorkspaceFileExtension);
			content: file contents.
		self environment addWorkspace: newWorkspace ]