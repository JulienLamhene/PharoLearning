Class {
	#name : #Coffee,
	#superclass : #Object,
	#category : #MyCounter
}

{ #category : #'as yet unclassified' }
Coffee class >> coffeeName: coffeeName cup: cup [
	| espresso water dict|
	dict := Dictionary new.
	(coffeeName = 'espresso') ifTrue: [ 
			espresso := 30 * cup.
			dict at: #espresso put: espresso.
	].
	(coffeeName = 'americano') ifTrue: [ 
			espresso := 30 * cup. 
			water := 70 * cup.
			dict 
				at: #espresso put: espresso;
				at: #water put: water.
	].
	^ dict
]

{ #category : #testing }
Coffee class >> isACooffee: aCoffee [
	| array |
	array := #('espresso' 'americano' 'mocha').
	^ array includes: [ :elt | elt = aCoffee ].
]
