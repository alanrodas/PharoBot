private
startNewPath

	self currentPath: (RobotPath new: self position).
	self paths add: self currentPath