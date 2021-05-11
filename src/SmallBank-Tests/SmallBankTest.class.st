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
SmallBankTest >> testDeposit_amp_A11_U0 [
	<smallAmpCoveres:
		'ReplaceGreaterOrEqualWithGreaterMutantOperator#SmallBank#withdraw:#19#35'>
	<madeBySmallAmp>
	| b tmp_2IYbSudD4r1 tmp_Ifnb3Kc5DK1 |
	b := SmallBank new.
	self assert: SmallBank asString equals: 'SmallBank'.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 0.
	self assert: b rand class equals: SmallInteger.
	tmp_2IYbSudD4r1 := b deposit: 10.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 10.
	self assert: b rand class equals: SmallInteger.
	tmp_Ifnb3Kc5DK1 := tmp_2IYbSudD4r1 withdraw: 10.
	self assert: tmp_2IYbSudD4r1 class equals: SmallBank.
	self assert: tmp_2IYbSudD4r1 balance equals: 0.
	self assert: tmp_2IYbSudD4r1 rand class equals: SmallInteger.
	self assert: tmp_Ifnb3Kc5DK1.
	b deposit: 10.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 10.
	self assert: b rand class equals: SmallInteger
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testDeposit_amp_A19 [
	<smallAmpCoveres: 'RemoveCaretOperator#SmallBank#withdraw:#85#90'>
	<madeBySmallAmp>
	| b tmp_0rj0q7FRpI2 tmp_Rww3b8kchy1 |
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
	tmp_Rww3b8kchy1 := tmp_0rj0q7FRpI2 withdraw: 30.
	self assert: tmp_0rj0q7FRpI2 class equals: SmallBank.
	self assert: tmp_0rj0q7FRpI2 balance equals: 80.
	self assert: tmp_0rj0q7FRpI2 rand class equals: SmallInteger.
	self assert: tmp_Rww3b8kchy1
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testDeposit_amp_A7 [
	<smallAmpCoveres: 'ReplaceIfTrueReceiverWithTrueOperator#SmallBank#withdraw:#19#92'>
	<madeBySmallAmp>
	| b tmp_gAdqOQB0dx1 |
	b := SmallBank new.
	self assert: SmallBank asString equals: 'SmallBank'.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 0.
	self assert: b rand class equals: SmallInteger.
	b deposit: 10.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 10.
	self assert: b rand class equals: SmallInteger.
	tmp_gAdqOQB0dx1 := b withdraw: 30.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 10.
	self assert: b rand class equals: SmallInteger.
	self deny: tmp_gAdqOQB0dx1.
	b deposit: 100.
	self assert: b class equals: SmallBank.
	self assert: b balance equals: 110.
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
