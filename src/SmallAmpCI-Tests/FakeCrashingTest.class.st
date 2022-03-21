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

	"SmallAmp has derived this test from `FakeCrashingTest>>#testSomeAction` by regenerating its assertions.
	This test can cover these parts:
	*	In `FakeObjectUnderTest>> #someAction:` from 20 to 61:
		Operation: ReplaceIfTrueIfFalseReceiverWithTrueOperator
		Code snippet: `anInt = 0
	ifTrue: [ ^ 0 ]
	ifFalse: [ ^ 1 ]`
		Dynamic state: {#anInt->1}
		Mutant id: ReplaceIfTrueIfFalseReceiverWithTrueOperator#FakeObjectUnderTest#someAction:#20#61
	*	In `FakeObjectUnderTest>> #someAction:` from 57 to 59:
		Operation: RemoveCaretOperator
		Code snippet: `^ 1`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#FakeObjectUnderTest#someAction:#57#59
	*	In `FakeObjectUnderTest>> #someAction:` from 20 to 28:
		Operation: ReplaceEqualWithNotEqualOperator
		Code snippet: `anInt = 0`
		Dynamic state: {#anInt->1}
		Mutant id: ReplaceEqualWithNotEqualOperator#FakeObjectUnderTest#someAction:#20#28
"

	<madeBySmallAmp>
	| anInteger |
	anInteger := FakeObjectUnderTest new someAction: 1.
	self assert: anInteger equals: 1
]

{ #category : #'as yet unclassified' }
FakeCrashingTest >> testSomeAction_amp_L5 [

	"SmallAmp has derived this test from `FakeCrashingTest>>#testSomeAction` by applying some transformations and regenerating its assertions.
	This test can cover these parts:
	*	In `FakeObjectUnderTest>> #someAction:` from 20 to 61:
		Operation: ReplaceIfTrueIfFalseReceiverWithFalseOperator
		Code snippet: `anInt = 0
	ifTrue: [ ^ 0 ]
	ifFalse: [ ^ 1 ]`
		Dynamic state: {#anInt->0}
		Mutant id: ReplaceIfTrueIfFalseReceiverWithFalseOperator#FakeObjectUnderTest#someAction:#20#61
	*	In `FakeObjectUnderTest>> #someAction:` from 40 to 42:
		Operation: RemoveCaretOperator
		Code snippet: `^ 0`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#FakeObjectUnderTest#someAction:#40#42
"

	<madeBySmallAmp>
	| anInteger |
	anInteger := FakeObjectUnderTest new someAction: 0.
	self assert: anInteger equals: 0
]
