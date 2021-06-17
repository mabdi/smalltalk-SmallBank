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
SmallBankTest >> testDeposit_amp_A1_A24 [
	<smallAmpCoveres: 'RemoveCaretOperator#SmallBank#withdraw:#85#90'>
	<madeBySmallAmp>
	| b aTrue |
	b := SmallBank new.
	aTrue := (b
		deposit: 100;
		deposit: 10;
		deposit: 100) withdraw: 30.
	self assert: aTrue
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testDeposit_amp_L17_A12 [
	<smallAmpCoveres: 'ReplaceIfTrueReceiverWithTrueOperator#SmallBank#withdraw:#19#92'>
	<madeBySmallAmp>
	| b aFalse |
	b := SmallBank new.
	aFalse := b
		deposit: 10;
		deposit: 10;
		withdraw: 30.
	self
		assert: b class equals: SmallBank;
		assert: b balance equals: 20;
		deny: aFalse
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testDeposit_amp_L17_A1_A20 [
	<smallAmpCoveres:
		'ReplaceGreaterOrEqualWithGreaterMutantOperator#SmallBank#withdraw:#19#35'>
	<madeBySmallAmp>
	| b aSmallBank |
	b := SmallBank new.
	aSmallBank := b
		deposit: 10;
		deposit: 10;
		deposit: 10.
	aSmallBank withdraw: 30.
	self
		assert:
			aSmallBank class equals: SmallBank;
		assert:
			aSmallBank balance equals: 0
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testDeposit_amp_L17_A8 [
	<smallAmpCoveres: 'RemoveCaretOperator#SmallBank#withdraw:#96#102'>
	<madeBySmallAmp>
	| b aSmallBank aFalse |
	b := SmallBank new.
	aSmallBank := b deposit: 10.
	aFalse := aSmallBank withdraw: 30.
	self
		assert:
			aSmallBank class equals: SmallBank;
		assert:
			aSmallBank balance equals: 10;
		deny: aFalse.
	b deposit: 10
]

{ #category : #tests }
SmallBankTest >> testInit [
	| b |
	b := SmallBank new.
	self assert: b balance equals: 0
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
