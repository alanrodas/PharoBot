movements
testMoveStraightToSouth

	|robot|
	"given"
	robot := Robot new.
	robot south.
	"when"
	robot move: 50.
	"then"
	self assert: robot position equals: 0 @ -50