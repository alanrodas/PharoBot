positioning
move: aDistance

	(self battery canConsume: aDistance)
		ifTrue: [
			self state move: aDistance toRobot: self.
			self battery consume: aDistance.]
		ifFalse: [ EmptyBatteryError signal ].