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

{ #category : #'as yet unclassified' }
SmallBankTest >> testWithdraw_amp [

	"I test correctness of: 

- `^ (1 to: 1000) atRandom` in method: `SmallBank >> #rand`

- `^ true` in method: `SmallBank >> #withdraw:`

"

	<smallAmpCoveres:
	'ExtremeTransformationOperator#SmallBank#rand#28#50'>
	<smallAmpCoveres: 'RemoveCaretOperator#SmallBank#rand#28#50'>
	<smallAmpCoveres: 'RemoveCaretOperator#SmallBank#withdraw:#85#90'>
	<madeBySmallAmp>
	| b aBoolean |
	b := SmallBank new.
	self assert: b rand class equals: SmallInteger.
	aBoolean := b
		            deposit: 100;
		            withdraw: 30.
	self assert: aBoolean
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testWithdraw_amp_O0 [

	"I test correctness of: 

- `balance >= amount ifTrue: [ 
	balance := balance - amount.
	^ true ]` in method: `SmallBank >> #withdraw:` when {#balance->30. #amount->100}

- `^ false` in method: `SmallBank >> #withdraw:`

"

	<smallAmpCoveres:
	'ReplaceIfTrueReceiverWithTrueOperator#SmallBank#withdraw:#19#92'>
	<madeBySmallAmp>
	| b aBoolean |
	b := SmallBank new.
	aBoolean := b
		            deposit: 30;
		            withdraw: 100.
	self
		assert: b balance equals: 30;
		deny: aBoolean
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testWithdraw_amp_U0 [

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
	self assert: b balance equals: 0
]
