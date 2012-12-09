printing
printOn: aStream

	aStream
		nextPutAll: 'Robot at ';
		nextPutAll: self position printString;
		nextPutAll: ', direction ';
		nextPutAll: self direction printString.