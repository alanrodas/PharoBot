movements
testMoveANegativeAmountInYAxis

	|robot|
	"given"
	robot := Robot new.
	robot south.
	"when"
	robot move: -20.
	"then"
	self assert: robot position equals: 0 @ 20