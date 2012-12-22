movements - brush down
testLiftingTheBrushFinishesTheCurrentPath

	|robot|
	"given"
	robot := Robot new.
	robot brushDown.
	robot move: 40; north; move: 120.
	"when"
	robot brushUp.
	robot brushDown.
	"then"
	self assert: robot numberOfPaths equals: 2.
	self assert: robot paths first numberOfPoints equals: 3.
	self assert: robot paths second numberOfPoints equals: 1.