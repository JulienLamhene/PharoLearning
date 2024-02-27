Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #Dices
}

{ #category : #running }
DieHandleTest >> testCreation [
	|h|
	h := DieHandle new
	addDie: (Die withFaces: 6);
	addDie: (Die withFaces: 10);
	yourself.
	self assert: h diceNumber equals: 2
]

{ #category : #running }
DieHandleTest >> testCreationWithTheSameDie [
	|h|
	h := DieHandle new addDie: (Die withFaces: 6).
	self assert: h diceNumber equals: 1.
	h addDie: (Die withFaces: 6).
	self assert: h diceNumber equals: 2
]

{ #category : #running }
DieHandleTest >> testMaxValue [
	|h|
	h := DieHandle new addDie: (Die withFaces: 6).
	h addDie: (Die withFaces: 10).
	self assert: h maxValue equals: 16.
]

{ #category : #running }
DieHandleTest >> testRoll [
	|h|
	h := DieHandle new addDie: (Die withFaces: 6).
	h addDie: (Die withFaces: 10).
	10 timesRepeat: 
		[ self assert: (h roll between: h diceNumber and: h maxValue) ]
]

{ #category : #running }
DieHandleTest >> testSimpleCreation [
	self assert: 2 D20 diceNumber equals: 2.
]

{ #category : #running }
DieHandleTest >> testSumming [
	self assert: (1D4 + 2D20) diceNumber equals: 3
]
