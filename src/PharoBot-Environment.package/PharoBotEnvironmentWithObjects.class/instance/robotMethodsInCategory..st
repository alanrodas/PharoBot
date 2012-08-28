accessing
robotMethodsInCategory: category

	^self robotClass selectors
		select: [ :sel | (self robotClass >> sel) category == category ]