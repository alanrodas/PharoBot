ui opening
open

	environment := self environmentClass new.
	methodBrowser := Browser new.
	^(self buildMainPanel openInWindowLabeled: 'PharoBot') fullscreen; yourself