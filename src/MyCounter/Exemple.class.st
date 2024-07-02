Class {
	#name : #Exemple,
	#superclass : #Object,
	#category : #MyCounter
}

{ #category : #accessing }
Exemple class >> m: n [
	(n > 10) ifTrue: [ 
		^ true 
	] ifFalse: [ 
		^ false 
	].
]
