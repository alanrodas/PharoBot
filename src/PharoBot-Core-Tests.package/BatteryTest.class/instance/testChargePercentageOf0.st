percentage
testChargePercentageOf0

	battery := Battery new.
	
	battery consume: battery capacity.
	self assert: 0 equals: battery chargePercentage.