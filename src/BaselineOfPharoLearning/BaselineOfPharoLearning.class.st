Class {
	#name : #BaselineOfPharoLearning,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoLearning
}

{ #category : #baselines }
BaselineOfPharoLearning >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'MyCounter', 'Dices'. spec group: 'default' with: #('MyProject') ]
]
