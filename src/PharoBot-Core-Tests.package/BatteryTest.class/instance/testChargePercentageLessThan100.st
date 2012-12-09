percentage
testChargePercentageLessThan100

	battery := Battery new.
	
	battery consume: 500.
	self assert: 50 equals: battery chargePercentage.
	battery consume: 200.
	self assert: 30 equals: battery chargePercentage.