dialogs
openRemoveWorkspaceDialog

	^UIManager default
		questionWithoutCancel:
'Esta seguro que desea eliminar este workspace?
Esto eliminara todo el codigo de prueba, el tablero y las variables inicializadas'
		title: 'Eliminar workspace'