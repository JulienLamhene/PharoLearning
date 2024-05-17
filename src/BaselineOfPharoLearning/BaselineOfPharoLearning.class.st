Class {
	#name : #BaselineOfPharoLearning,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoLearning
}

{ #category : #baselines }
BaselineOfPharoLearning >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'Dices'. spec group: 'default' with: #('Dices') ]
]
