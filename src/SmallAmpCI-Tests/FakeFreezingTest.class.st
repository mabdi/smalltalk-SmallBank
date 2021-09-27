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

{ #category : #'as yet unclassified' }
FakeFreezingTest >> testFreezeMe2_amp [

	"I test correctness of: 

- `^ obj` in method: `FakeObjectUnderTest >> #echo:` when {#obj->1}

"

	<smallAmpCoveres:
	'RemoveCaretOperator#FakeObjectUnderTest#echo:#12#16'>
	<smallAmpCoveres:
	'ExtremeTransformationOperator#FakeObjectUnderTest#echo:#12#16'>
	<madeBySmallAmp>
	| f anInteger |
	anInteger := FakeObjectUnderTest new echo: 1.
	self assert: anInteger equals: 1
]

{ #category : #tests }
FakeFreezingTest >> testSomeAction [
	FakeObjectUnderTest new someAction: 1
]

{ #category : #'as yet unclassified' }
FakeFreezingTest >> testSomeAction_amp [

	"I test correctness of: 

- `^ 1` in method: `FakeObjectUnderTest >> #someAction:`

"

	<smallAmpCoveres:
	'RemoveCaretOperator#FakeObjectUnderTest#someAction:#57#59'>
	<smallAmpCoveres:
	'ReplaceEqualWithNotEqualOperator#FakeObjectUnderTest#someAction:#20#28'>
	<smallAmpCoveres:
	'ExtremeTransformationOperator#FakeObjectUnderTest#someAction:#20#61'>
	<smallAmpCoveres:
	'ReplaceIfTrueIfFalseReceiverWithTrueOperator#FakeObjectUnderTest#someAction:#20#61'>
	<madeBySmallAmp>
	| anInteger |
	anInteger := FakeObjectUnderTest new someAction: 1.
	self assert: anInteger equals: 1
]

{ #category : #'as yet unclassified' }
FakeFreezingTest >> testSomeAction_amp_L4 [

	"I test correctness of: 

- `^ 0` in method: `FakeObjectUnderTest >> #someAction:`

"

	<smallAmpCoveres:
	'RemoveCaretOperator#FakeObjectUnderTest#someAction:#40#42'>
	<smallAmpCoveres:
	'ReplaceIfTrueIfFalseReceiverWithFalseOperator#FakeObjectUnderTest#someAction:#20#61'>
	<madeBySmallAmp>
	| anInteger |
	anInteger := FakeObjectUnderTest new someAction: 0.
	self assert: anInteger equals: 0
]
