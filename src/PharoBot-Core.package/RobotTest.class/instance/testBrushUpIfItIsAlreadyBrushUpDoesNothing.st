state
testBrushUpIfItIsAlreadyBrushUpDoesNothing

	|robot|
	"given"
	robot := Robot new.
	"when"
	robot brushUp.

	self shouldnt: [robot brushUp] raise: Error.