Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dices
}

{ #category : #adding }
DieHandle >> + aDieHandle [
	| h |
	h := DieHandle new.
	self dice do: [ :d | h addDie: d ].
	aDieHandle dice do: [ :d | h addDie: d ].
	^ h
]

{ #category : #adding }
DieHandle >> addDie: aDie [
	dice add: aDie
]

{ #category : #accessing }
DieHandle >> dice [
	^dice
]

{ #category : #accessing }
DieHandle >> diceNumber [
	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [ 
	super initialize.
	dice := OrderedCollection new.
]

{ #category : #initialization }
DieHandle >> maxValue [
	| res |
	res := 0.
	dice do: [ :each | res := res + each faces ].
	^ res
]

{ #category : #initialization }
DieHandle >> roll [
	| res |
	res := 0.
	dice do: [ :each | res := res + each roll ].
	^ res
]
