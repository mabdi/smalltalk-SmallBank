Class {
	#name : #FakeCrashingTest,
	#superclass : #TestCase,
	#category : #'SmallAmpCI-Tests'
}

{ #category : #'as yet unclassified' }
FakeCrashingTest class >> smallAmpTargetClasses [
	^ {FakeObjectUnderTest}
]

{ #category : #tests }
FakeCrashingTest >> testCrashMe [
	FakeObjectUnderTest new doCrash:1
]

{ #category : #tests }
FakeCrashingTest >> testSomeAction [
	FakeObjectUnderTest new someAction: 1
]

{ #category : #'as yet unclassified' }
FakeCrashingTest >> testSomeAction_amp [

	"I test correctness of: 

- `^ 1` in method: `FakeObjectUnderTest >> #someAction:`

"

	<smallAmpCoveres:
	'ReplaceEqualWithNotEqualOperator#FakeObjectUnderTest#someAction:#20#28'>
	<smallAmpCoveres:
	'RemoveCaretOperator#FakeObjectUnderTest#someAction:#57#59'>
	<smallAmpCoveres:
	'ReplaceIfTrueIfFalseReceiverWithTrueOperator#FakeObjectUnderTest#someAction:#20#61'>
	<madeBySmallAmp>
	| anInteger |
	anInteger := FakeObjectUnderTest new someAction: 1.
	self assert: anInteger equals: 1
]

{ #category : #'as yet unclassified' }
FakeCrashingTest >> testSomeAction_amp_L1 [

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
