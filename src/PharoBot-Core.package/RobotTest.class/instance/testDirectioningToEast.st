directioning
testDirectioningToEast

	|robot|
	"given"
	robot := Robot new.
	"when"
	robot east.
	"then"
	self assert: robot direction equals: 0