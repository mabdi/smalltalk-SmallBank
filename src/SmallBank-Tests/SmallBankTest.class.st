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
	"I test correctness of: 

- `^ (1 to: 1000) atRandom` in method: `SmallBank >> #rand`

"

	<smallAmpCoveres: 'RemoveCaretOperator#SmallBank#rand#28#50'>
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	self assert: b rand class equals: SmallInteger.
	b
		deposit: 10;
		deposit: 100
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testDeposit_amp_A16 [
	"I test correctness of: 

- `^ true` in method: `SmallBank >> #withdraw:`

"

	<smallAmpCoveres: 'RemoveCaretOperator#SmallBank#withdraw:#85#90'>
	<madeBySmallAmp>
	| b aTrue |
	b := SmallBank new.
	aTrue := (b
		deposit: 10;
		deposit: 100) withdraw: 30.
	self assert: aTrue
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testDeposit_amp_A4 [
	"I test correctness of: 

- `balance >= amount
	ifTrue: [ balance := balance - amount.
		^ true ]` in method: `SmallBank >> #withdraw:` when {#balance->10. #amount->30}

- `^ false` in method: `SmallBank >> #withdraw:`

"

	<smallAmpCoveres: 'ReplaceIfTrueReceiverWithTrueOperator#SmallBank#withdraw:#19#92'>
	<madeBySmallAmp>
	| b aFalse |
	b := SmallBank new.
	aFalse := b
		deposit: 10;
		withdraw: 30.
	self
		assert: b balance equals: 10;
		deny: aFalse.
	b deposit: 100
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testDeposit_amp_A4_L1_U2 [
	"I test correctness of: 

- `balance >= amount` in method: `SmallBank >> #withdraw:` when {#balance->100. #amount->100}

"

	<smallAmpCoveres:
		'ReplaceGreaterOrEqualWithGreaterMutantOperator#SmallBank#withdraw:#19#35'>
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	b
		deposit: 100;
		withdraw: 100.
	self assert: b balance equals: 0.
	b deposit: 100
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
