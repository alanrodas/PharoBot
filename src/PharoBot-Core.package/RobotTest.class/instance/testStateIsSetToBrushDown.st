state
testStateIsSetToBrushDown

	|robot|
	"given"
	robot := Robot new.
	"when"
	robot brushDown.
	"then"
	self assert: robot isBrushDown.
	self deny: robot isBrushUp.