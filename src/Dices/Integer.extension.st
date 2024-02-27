Extension { #name : #Integer }

{ #category : #'*Dices' }
Integer >> D10 [
	^ self D:10
]

{ #category : #'*Dices' }
Integer >> D12 [
	^ self D:12
]

{ #category : #'*Dices' }
Integer >> D20 [
	^ self D:20
]

{ #category : #'*Dices' }
Integer >> D4 [
	^ self D:4
]

{ #category : #'*Dices' }
Integer >> D6 [
	^ self D:6
]

{ #category : #'*Dices' }
Integer >> D: aNb [
	| h |
	h := DieHandle new.
	self timesRepeat: [ h addDie: (Die withFaces: aNb) ].
	^ h
]
