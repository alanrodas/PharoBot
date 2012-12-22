directioning
testDirectioningToSouth

	|robot|
	"given"
	robot := Robot new.
	"when"
	robot south.
	"then"
	self assert: robot direction equals: 270