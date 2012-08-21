ui opening
open

	environment := self environmentClass new.
	^(self buildMainPanel openInWindowLabeled: 'PharoBot') fullscreen; yourself