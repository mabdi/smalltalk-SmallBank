Class {
	#name : #SmallBankTest,
	#superclass : #TestCase,
	#category : #'SmallBank-Tests'
}

{ #category : #tests }
SmallBankTest >> testDeposit [
	| b |
	b := SmallBank new.
	b deposit: 10.
	self assert: b balance equals: 10.
	b deposit: 100.
	self assert: b balance equals: 110
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testDeposit_amp [
	<smallAmpCoveres: 'RemoveCaretOperator#SmallBank#rand#28#50'>
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	self assert: SmallBank asString equals: 'SmallBank'.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 0.
	self assert: b rand class equals: SmallInteger.
	b deposit: 10.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 10.
	self assert: b rand class equals: SmallInteger.
	b deposit: 100.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 110.
	self assert: b rand class equals: SmallInteger
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testDeposit_amp_A19 [
	<smallAmpCoveres: 'RemoveCaretOperator#SmallBank#withdraw:#85#90'>
	<madeBySmallAmp>
	| b tmp_0rj0q7FRpI2 tmp_UGBIAVROZ11 |
	b := SmallBank new.
	self assert: SmallBank asString equals: 'SmallBank'.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 0.
	self assert: b rand class equals: SmallInteger.
	b deposit: 10.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 10.
	self assert: b rand class equals: SmallInteger.
	tmp_0rj0q7FRpI2 := b deposit: 100.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 110.
	self assert: b rand class equals: SmallInteger.
	tmp_UGBIAVROZ11 := tmp_0rj0q7FRpI2 withdraw: 30.
	self assert: tmp_0rj0q7FRpI2 class equals: SmallBank.
	self assert: tmp_0rj0q7FRpI2 balance equals: 80.
	self assert: tmp_0rj0q7FRpI2 rand class equals: SmallInteger.
	self assert: tmp_UGBIAVROZ11
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testDeposit_amp_A7 [
	<smallAmpCoveres: 'ReplaceIfTrueReceiverWithTrueOperator#SmallBank#withdraw:#19#92'>
	<madeBySmallAmp>
	| b tmp_EHMlM914E92 |
	b := SmallBank new.
	self assert: SmallBank asString equals: 'SmallBank'.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 0.
	self assert: b rand class equals: SmallInteger.
	b deposit: 10.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 10.
	self assert: b rand class equals: SmallInteger.
	tmp_EHMlM914E92 := b withdraw: 30.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 10.
	self assert: b rand class equals: SmallInteger.
	self deny: tmp_EHMlM914E92.
	b deposit: 100.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 110.
	self assert: b rand class equals: SmallInteger
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testDeposit_amp_A7_U0 [
	<smallAmpCoveres:
		'ReplaceGreaterOrEqualWithGreaterMutantOperator#SmallBank#withdraw:#19#35'>
	<madeBySmallAmp>
	| b tmp_ZVE0YSw0wk2 |
	b := SmallBank new.
	self assert: SmallBank asString equals: 'SmallBank'.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 0.
	self assert: b rand class equals: SmallInteger.
	b deposit: 10.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 10.
	self assert: b rand class equals: SmallInteger.
	tmp_ZVE0YSw0wk2 := b withdraw: 10.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 0.
	self assert: b rand class equals: SmallInteger.
	self assert: tmp_ZVE0YSw0wk2.
	b deposit: 10.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 10.
	self assert: b rand class equals: SmallInteger
]

{ #category : #tests }
SmallBankTest >> testInit [
	| b |
	b := SmallBank new .self assert: b balance equals: 0
]

{ #category : #tests }
SmallBankTest >> testWithdraw [
	| b |
	b := SmallBank new.
	b deposit: 100.
	self assert: b balance equals: 100.
	b withdraw: 30.
	self assert: b balance equals: 70
]
