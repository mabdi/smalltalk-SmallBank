Class {
	#name : #FakeFreezingTest,
	#superclass : #TestCase,
	#category : #'SmallAmpCI-Tests'
}

{ #category : #'as yet unclassified' }
FakeFreezingTest class >> smallAmpTargetClasses [
	^ {FakeObjectUnderTest}
]

{ #category : #tests }
FakeFreezingTest >> testFreezeMe [
	FakeObjectUnderTest new doFreeze:1
]

{ #category : #tests }
FakeFreezingTest >> testFreezeMe2 [
	| f |
	f := FakeObjectUnderTest new.
	(f echo: 1) = 0 ifTrue: [ self timeLimit: -1 asSeconds. ]
]
