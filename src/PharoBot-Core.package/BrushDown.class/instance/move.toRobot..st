actions
move: aDistance toRobot: aRobot
	
	aRobot doMove: aDistance.
	aRobot currentPath addPoint: aRobot position