movements - brush down
testMovementsWithTheBrushDownModifyTheCurrentPath

	|robot|
	"given"
	robot := Robot new.
	"when"
	robot brushDown; east.
	robot move: 30; south; move: 50.
	"then"
	self assert: robot currentPath numberOfPoints equals: 3.
	self assert: robot currentPath points first equals: 0 @ 0.
	self assert: robot currentPath points second equals: 30 @ 0.
	self assert: robot currentPath points third equals: 30 @ -50.