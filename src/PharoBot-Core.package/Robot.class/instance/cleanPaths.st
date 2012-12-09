private
cleanPaths

	self currentPath: (RobotPath new: self position).
	self paths: OrderedCollection new.
	self paths add: currentPath