state
testToggleBrushUpAndDown

	|robot|
	"given"
	robot := Robot new.
	"when"
	robot brushDown.
	"then"
	self assert: robot isBrushDown.
	"when"
	robot brushUp.
	"then"
	self assert: robot isBrushUp.
	"when"
	robot brushDown.
	"then"
	self assert: robot isBrushDown.