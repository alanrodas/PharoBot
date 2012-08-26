accessing
methodsInCategoryForCurrentClass: category

	^self currentClassSelected methods
		select: [ :m | m category == category ]
		thenCollect: #selector