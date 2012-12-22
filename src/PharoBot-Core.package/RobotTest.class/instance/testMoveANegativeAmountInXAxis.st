movements
testMoveANegativeAmountInXAxis

	|robot|
	"given"
	robot := Robot new.
	robot east.
	"when"
	robot move: -70.
	"then"
	self assert: robot position equals: -70 @ 0