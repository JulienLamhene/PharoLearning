Class {
	#name : #BaselineOfDices,
	#superclass : #BaselineOf,
	#category : #BaselineOfDices
}

{ #category : #baselines }
BaselineOfDices >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec packages: (#('Dices' 'MyCounter') asOrderedCollection). spec group: 'default' with: #('Dices' 'MyCounter')]
]
