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
SmallBankTest >> testWithdraw_amp_U0 [

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
