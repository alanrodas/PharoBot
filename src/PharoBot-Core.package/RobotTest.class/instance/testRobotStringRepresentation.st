printing
testRobotStringRepresentation

	|robot robotString|
	"given"
	robot := Robot new.
	"when"
	robotString := robot printString.
	"then"
	self assert: robotString equals: 'Robot at (0@0), direction 90'.
	"when"
	robot move: -40; west; move: 50.
	robotString := robot printString.
	"then"
	self assert: robotString equals: 'Robot at (-50@ -40), direction 180'.
	