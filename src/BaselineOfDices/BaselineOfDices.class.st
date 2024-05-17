Class {
	#name : #BaselineOfDices,
	#superclass : #BaselineOf,
	#category : #BaselineOfDices
}

{ #category : #baselines }
BaselineOfDices >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'Dices'. spec group: 'default' with: #('Dices') ]
]
