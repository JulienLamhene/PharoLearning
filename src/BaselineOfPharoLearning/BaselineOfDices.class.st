Class {
	#name : #BaselineOfDices,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoLearning
}

{ #category : #baselines }
BaselineOfDices >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'Dices'. spec group: 'default' with: #('Dices') ]
]
