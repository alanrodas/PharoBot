private
doMove: aDistance

	self position:
		(self position + (Point r: aDistance theta: Float pi / 180 * (self direction negated - 90))) rounded.