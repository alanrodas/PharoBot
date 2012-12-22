movements
testMoveStraightToWest

	|robot|
	"given"
	robot := Robot new.
	robot west.
	"when"
	robot move: 110.
	"then"
	self assert: robot position equals: -110 @ 0