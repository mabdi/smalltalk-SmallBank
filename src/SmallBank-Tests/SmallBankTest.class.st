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

{ #category : #'as yet unclassified' }
SmallBankTest >> testInit_amp_A2 [

	"SmallAmp has derived this test from `SmallBankTest>>#testInit` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `SmallBank>> #withdraw:` from 19 to 92:
		Operation: ReplaceIfTrueReceiverWithTrueOperator
		Code snippet: `balance >= amount ifTrue: [ 
	balance := balance - amount.
	^ true ]`
		Dynamic state: {#balance->0. #amount->30}
		Mutant id: ReplaceIfTrueReceiverWithTrueOperator#SmallBank#withdraw:#19#92
"

	<madeBySmallAmp>
	| b aBoolean |
	b := SmallBank new.
	aBoolean := b withdraw: 30.
	self
		assert: b balance equals: 0;
		deny: aBoolean
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

	"SmallAmp has derived this test from `SmallBankTest>>#testWithdraw` by regenerating its assertions.
	This test can cover this part:
	*	In `SmallBank>> #withdraw:` from 85 to 90:
		Operation: RemoveCaretOperator
		Code snippet: `^ true`
		Dynamic state: nil
		Mutant id: RemoveCaretOperator#SmallBank#withdraw:#85#90
"

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
SmallBankTest >> testWithdraw_amp_L17 [

	"SmallAmp has derived this test from `SmallBankTest>>#testWithdraw` by applying some transformations and regenerating its assertions.
	This test can cover this part:
	*	In `SmallBank>> #withdraw:` from 19 to 35:
		Operation: ReplaceGreaterOrEqualWithGreaterMutantOperator
		Code snippet: `balance >= amount`
		Dynamic state: {#balance->100. #amount->100}
		Mutant id: ReplaceGreaterOrEqualWithGreaterMutantOperator#SmallBank#withdraw:#19#35
"

	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	b
		deposit: 100;
		withdraw: 100.
	self assert: b balance equals: 0
]
