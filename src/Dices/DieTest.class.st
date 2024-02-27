Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Dices
}

{ #category : #running }
DieTest >> testCreation [
	|d|
	d := Die withFaces: 20.
	self assert: d faces equals: 20
]

{ #category : #running }
DieTest >> testInit [
	|d|
	d := Die new.
	self assert: d faces equals: 6
]

{ #category : #running }
DieTest >> testRolling [
	|d|
	d := Die new.
	10 timesRepeat: 
		[ self assert: [ d roll between: 1 and: 6 ] ] 
]
