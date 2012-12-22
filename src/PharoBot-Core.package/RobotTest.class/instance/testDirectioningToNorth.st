directioning
testDirectioningToNorth

	|robot|
	"given"
	robot := Robot new.
	"when"
	robot north.
	"then"
	self assert: robot direction equals: 90