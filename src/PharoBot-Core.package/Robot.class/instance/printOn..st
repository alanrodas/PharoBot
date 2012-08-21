printing
printOn: aStream

	aStream
		nextPutAll: self class printString;
		nextPutAll: ' en ';
		nextPutAll: self posicion printString.