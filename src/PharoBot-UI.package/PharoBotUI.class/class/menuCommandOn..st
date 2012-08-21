world menu
menuCommandOn: aBuilder
	<worldMenu>

	(aBuilder item: #PharoBot)
		order: 4;
		target: self.
	
	(aBuilder group: #PharoBotPracticas)
		parent: #PharoBot;
		with: [
			(aBuilder item: #'Practica 1')
				action:[ PharoBotUIWithObjects open ].
			(aBuilder item: #'Practica 2')
				action: [ PharoBotUIWithClasses open ]].