positioning
testDefaultPositionIsZeroZero

	|robot|
	"when"
	robot := Robot new.
	"then"
	self assert: robot position equals: 0@0