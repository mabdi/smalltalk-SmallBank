Class {
	#name : #SmallBankTest,
	#superclass : #TestCase,
	#category : #'SmallBank-Tests'
}

{ #category : #'as yet unclassified' }
SmallBankTest >> testAmplified_1 [

	"SmallAmp has derived this test from `SmallBankTest>>#testWithdraw` by applying some transformations and regenerating its assertions.
	This test can:
	* It detects the injection of an artificial fault (Replace #'>=' with #>) in `SmallBank>> #withdraw:`:
		original code snippet: `balance >= amount`
		Mutated code snippet: `balance > amount`
		Dynamic state: {#balance->30. #amount->30}
"

	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	b
		deposit: 30;
		withdraw: 30.
	self assert: b balance equals: 0
]

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
