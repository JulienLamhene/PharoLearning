Class {
	#name : #CoffeeTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #running }
CoffeeTest >> testCoffeeNameCup [
	| coffee |
	coffee := Coffee coffeeName: 'espresso' cup: 2.
	self assert: coffee equals: 'espresso : 60'.
	coffee := Coffee coffeeName: 'unknown' cup: 0.
	self assert: coffee equals: ''.
]

{ #category : #tests }
CoffeeTest >> testM [
	self assert: (Exemple m: 15) equals: true.
	self assert: (Exemple m: 12) equals: true.
]

{ #category : #tests }
CoffeeTest >> testM2 [
	self assert: (Exemple m: 11) equals: true.
	self assert: (Exemple m: 1) equals: false.
]

{ #category : #tests }
CoffeeTest >> testM3 [
	self assert: (Exemple m: 5) equals: false.
	self assert: (Exemple m: 7) equals: false.
]
