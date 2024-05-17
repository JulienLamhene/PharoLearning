Class {
	#name : #BaselineOfMyCounter,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoLearning
}

{ #category : #baselines }
BaselineOfMyCounter >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'MyCounter'. spec group: 'default' with: #('MyCounter') ]
]
