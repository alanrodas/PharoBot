positioning
testPositionCanBePassedInConstructor

	|robot|
	"when"
	robot := Robot newWithPosition: 100@50.
	"then"
	self assert: robot position equals: 100@50