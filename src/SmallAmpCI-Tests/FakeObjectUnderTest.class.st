Class {
	#name : #FakeObjectUnderTest,
	#superclass : #Object,
	#category : #'SmallAmpCI-Tests'
}

{ #category : #'as yet unclassified' }
FakeObjectUnderTest >> doCrash [
	Smalltalk exitFailure
]

{ #category : #'as yet unclassified' }
FakeObjectUnderTest >> doCrash: anInt [
	anInt = 0 ifTrue: [ self doCrash  ]
]

{ #category : #'as yet unclassified' }
FakeObjectUnderTest >> doFreeze [
	Semaphore new wait
]

{ #category : #'as yet unclassified' }
FakeObjectUnderTest >> doFreeze: anInt [
	anInt = 0 ifTrue: [ self doFreeze  ]
]

{ #category : #'as yet unclassified' }
FakeObjectUnderTest >> echo: obj [
	^ obj
]
