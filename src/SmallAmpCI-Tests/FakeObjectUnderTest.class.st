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
	anInt isZero ifTrue: [ self doCrash  ]
]

{ #category : #'as yet unclassified' }
FakeObjectUnderTest >> doFreeze [
	Semaphore new wait
]

{ #category : #'as yet unclassified' }
FakeObjectUnderTest >> doFreeze: anInt [
	anInt isZero ifTrue: [ self doFreeze  ]
]

{ #category : #'as yet unclassified' }
FakeObjectUnderTest >> echo: obj [
	^ obj
]
