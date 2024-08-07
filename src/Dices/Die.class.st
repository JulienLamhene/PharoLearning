Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dices
}

{ #category : #'instance creation' }
Die class >> withFaces: anInteger [ 
	| d |
	d := Die new.
	d faces: anInteger.
	^ d
]

{ #category : #accessing }
Die >> faces [
	^ faces
]

{ #category : #accessing }
Die >> faces: anInteger [ 
	faces := anInteger
]

{ #category : #initialization }
Die >> initialize [ 
	super initialize.
	faces := 6
]

{ #category : #printing }
Die >> printOn: aStream [
	" a Die (faces number) "

	super printOn: aStream.
	aStream
		nextPutAll: ' (' ;
		nextPutAll: faces asString;
		nextPutAll: ')'
]

{ #category : #accessing }
Die >> roll [
	^ faces atRandom
]
