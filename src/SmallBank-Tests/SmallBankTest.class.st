Class {
	#name : #SmallBankTest,
	#superclass : #TestCase,
	#category : #'SmallBank-Tests'
}

{ #category : #'as yet unclassified' }
SmallBankTest >> testAmplified_0_1 [

	"SmallAmp has derived this test from `SmallBankTest>>#testWithdraw` by applying some transformations and regenerating its assertions.
	This test can:
	* It detects the injection of an artificial fault (Replace #ifTrue: receiver with true) in `SmallBank>> #withdraw:`:
		original code snippet: `balance >= amount ifTrue: [ 
	balance := balance - amount.
	^ true ]`
		Mutated code snippet: `true ifTrue: [ 
	balance := balance - amount.
	^ true ]`
		Dynamic state: {#balance->0. #amount->30}
	* It detects the injection of an artificial fault (Negate a literal boolean) in `SmallBank>> #withdraw:`:
		original code snippet: `^ true`
		Mutated code snippet: `^ true`
		Dynamic state: nil
"

	<madeBySmallAmp: 'Amplified_0_1'>
	| b aBoolean |
	b := SmallBank new.
	aBoolean := b withdraw: 30.
	self assert: b balance equals: 0.
	self deny: aBoolean
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
