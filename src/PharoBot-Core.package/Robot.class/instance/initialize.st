initialize-release
initialize

	self battery: Battery new.
	self color: Color random.
	self position: 0 @ 0.
	self state: self initialState.
	self direction: 90.
	self paths: OrderedCollection new.
	^self