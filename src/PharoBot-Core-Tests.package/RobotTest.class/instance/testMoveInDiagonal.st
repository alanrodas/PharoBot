movements
testMoveInDiagonal

	|robot|
	"given"
	robot := Robot new.
	robot direction: 45.
	"when"
	robot move: 8 sqrt.
	"then"
	self assert: robot position equals: 2 @ 2