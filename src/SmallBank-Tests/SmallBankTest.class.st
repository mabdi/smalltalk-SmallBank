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
	self
		assert: b class equals: SmallBank;
		assert: b rand class equals: SmallInteger.
	b
		deposit: 10;
		deposit: 100
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testDeposit_amp_A16 [
	<smallAmpCoveres: 'RemoveCaretOperator#SmallBank#withdraw:#85#90'>
	<madeBySmallAmp>
	| b aTrue |
	b := SmallBank new.
	aTrue := (b
		deposit: 10;
		deposit: 100) withdraw: 30.
	self assert: aTrue
]

{ #category : #tests }
SmallBankTest >> testInit [
	| b |
	b := SmallBank new.
	self assert: b balance equals: 0
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testInit_amp_A0 [
	<smallAmpCoveres: 'RemoveCaretOperator#SmallBank#withdraw:#96#102'>
	<madeBySmallAmp>
	| b aFalse |
	b := SmallBank new.
	aFalse := b withdraw: 30.
	self
		assert: b class equals: SmallBank;
		assert: b balance equals: 0;
		deny: aFalse
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

{ #category : #'as yet unclassified' }
SmallBankTest >> testWithdraw_amp_L17 [
	<smallAmpCoveres:
		'ReplaceGreaterOrEqualWithGreaterMutantOperator#SmallBank#withdraw:#19#35'>
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	b
		deposit: 100;
		withdraw: 100.
	self
		assert: b class equals: SmallBank;
		assert: b balance equals: 0
]
