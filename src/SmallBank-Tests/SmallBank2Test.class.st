Class {
	#name : #SmallBank2Test,
	#superclass : #TestCase,
	#category : #'SmallBank-Tests'
}

{ #category : #tests }
SmallBank2Test >> testDeposit [
	| b |
	b := SmallBank2 with: 10.
	self assert: b balance equals: 10.
	b deposit: 100.
	self assert: b balance equals: 110
]

{ #category : #'as yet unclassified' }
SmallBank2Test >> testDeposit_amp_A1 [
	<smallAmpCoveres:
		'ReplaceIfTrueIfFalseReceiverWithTrueOperator#SmallBank2#withdraw:#19#109'>
	<madeBySmallAmp>
	| b |
	b := SmallBank2 with: 10.
	self should: [ b withdraw: 30 ] raise: Error
]

{ #category : #'as yet unclassified' }
SmallBank2Test >> testDeposit_amp_L11 [
	<smallAmpCoveres: 'ReplaceIfTrueReceiverWithFalseOperator#SmallBank2#deposit:#18#58'>
	<madeBySmallAmp>
	| b |
	b := SmallBank2 with: 10.
	self should: [ b deposit: -100 ] raise: Error
]

{ #category : #tests }
SmallBank2Test >> testInit [
	| b |
	b := SmallBank2 new.
	self assert: b balance equals: 0
]

{ #category : #tests }
SmallBank2Test >> testPercent [
	SmallBank2 calculateRate: 10 amount: 1000
]

{ #category : #'as yet unclassified' }
SmallBank2Test >> testPercent_amp [
	"I test correctness of: 

- `^ (anInt * aPercent / 100) asInteger` in method: `SmallBank2 class >> #calculateRate:amount:` when {#anInt->1000. #aPercent->10}

"

	<smallAmpCoveres: 'RemoveCaretOperator#SmallBank2 class#calculateRate:amount:#116#151'>
	<madeBySmallAmp>
	| anInteger |
	anInteger := SmallBank2 calculateRate: 10 amount: 1000.
	self assert: anInteger equals: 100
]

{ #category : #'as yet unclassified' }
SmallBank2Test >> testPercent_amp_L2 [
	<smallAmpCoveres:
		'ReplaceIfTrueReceiverWithFalseOperator#SmallBank2 class#calculateRate:amount:#65#112'>
	<madeBySmallAmp>
	self
		should: [ SmallBank2 calculateRate: -10 amount: 1000 ]
		raise: Error
]

{ #category : #tests }
SmallBank2Test >> testWithdraw [
	| b |
	b := SmallBank2 new.
	b deposit: 100.
	self assert: b balance equals: 100.
	b withdraw: 30.
	self assert: b balance equals: 70
]
