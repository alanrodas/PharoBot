state
testBrushDownIfItIsAlreadyBrushDownDoesNothing

	|robot|
	"given"
	robot := Robot new.
	"when"
	robot brushDown.

	self shouldnt: [robot brushDown] raise: Error.