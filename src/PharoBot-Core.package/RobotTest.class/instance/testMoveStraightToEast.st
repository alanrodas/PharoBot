movements
testMoveStraightToEast

	|robot|
	"given"
	robot := Robot new.
	robot east.
	"when"
	robot move: 250.
	"then"
	self assert: robot position equals: 250 @ 0