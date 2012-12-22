directioning
testDefaultDirectionIsNorth

	|robot|
	"when"
	robot := Robot new.
	self assert: robot direction equals: 90