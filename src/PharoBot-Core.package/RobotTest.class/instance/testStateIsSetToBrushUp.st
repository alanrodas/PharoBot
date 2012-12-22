state
testStateIsSetToBrushUp

	|robot|
	"given"
	robot := Robot new.
	"when"
	robot brushUp.
	"then"
	self assert: robot isBrushUp.
	self deny: robot isBrushDown.