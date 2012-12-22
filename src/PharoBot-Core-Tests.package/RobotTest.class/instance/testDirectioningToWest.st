directioning
testDirectioningToWest

	|robot|
	"given"
	robot := Robot new.
	"when"
	robot west.
	"then"
	self assert: robot direction equals: 180