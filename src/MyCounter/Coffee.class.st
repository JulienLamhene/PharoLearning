Class {
	#name : #Coffee,
	#superclass : #Object,
	#category : #MyCounter
}

{ #category : #testing }
Coffee class >> coffeeName: coffeeName cup: cup [
	| espresso water |
	(coffeeName = 'espresso') ifTrue: [ 
			espresso := 30 * cup.
			^ 'espresso : ',espresso asString.
	].
	(coffeeName = 'americano') ifTrue: [ 
			espresso := (30 * cup) asString. water := (70 * cup) asString.
			^ 'espresso : ', espresso, ' water : ', water.
	].
	^ ''.
]

{ #category : #testing }
Coffee class >> isACooffee: aCoffee [
	^ #('espresso' 'americano' 'mocha') includes: [ :elt | elt = aCoffee ].
]
