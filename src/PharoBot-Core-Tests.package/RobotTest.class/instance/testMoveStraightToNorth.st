movements
testMoveStraightToNorth

	|robot|
	"given"
	robot := Robot new.
	robot north.
	"when"
	robot move: 30.
	"then"
	self assert: robot position equals: 0 @ 30