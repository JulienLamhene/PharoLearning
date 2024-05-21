Class {
	#name : #CoffeeTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #running }
CoffeeTest >> testIsACoffee [
	| coffee |
	coffee := Coffee coffeeName: 'espresso' cup: 2.
	self assert: (coffee at:#espresso) equals: 60.
	coffee := Coffee coffeeName: 'unknown' cup: 0.
	self assert: coffee size equals: 0.
]
