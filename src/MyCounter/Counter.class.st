Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInte [
	^ self new count: anInte
]

{ #category : #accessing }
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: anInteger [
	count:= anInteger 
]

{ #category : #accessing }
Counter >> decrement [
	count := count - 1
]

{ #category : #accessing }
Counter >> increment [
 count := count + 1
]

{ #category : #accessing }
Counter >> initialize [
	super initialize.
	count := 0
]

{ #category : #printing }
Counter >> printOn: asStream [
	super printOn: asStream.
	asStream
		nextPutAll: ' withValue ';
		nextPutAll: count printString.
		(count = 5) ifTrue:[ asStream nextPutAll: ' try again'].
		(count > 5) ifTrue:[ asStream nextPutAll: ' high number'].
		(count < 5) ifTrue: [ asStream nextPutAll: ' low number'].
]
