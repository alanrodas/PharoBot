state
testDefaultStateIsBrushUp

	|robot|
	"when"
	robot := Robot new.
	"then"
	self assert: robot isBrushUp.