percentage
testChargePercentageOf100

	battery := Battery new.
	self assert: 100 equals: battery chargePercentage.