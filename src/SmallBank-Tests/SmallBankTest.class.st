Class {
	#name : #SmallBankTest,
	#superclass : #TestCase,
	#category : #'SmallBank-Tests'
}

{ #category : #'as yet unclassified' }
SmallBankTest >> testAmplified_0_1 [

	"SmallAmp has derived this test from `SmallBankTest>>#testInit` by regenerating its assertions.
	This test can:
nil	* It detects the injection of an artificial fault (Remove ^) in `SmallBank>> #rand`:
		original code snippet: `^ (1 to: 1000) atRandom`
		Mutated code snippet: `(1 to: 1000) atRandom`
		Dynamic state: nil
	* It detects the injection of an artificial fault (Chnage a message send with #yourself) in `SmallBank>> #rand`:
		original code snippet: `(1 to: 1000) atRandom`
		Mutated code snippet: `^ (1 to: 1000) yourself`
		Dynamic state: nil
"

	<madeBySmallAmp: 'Amplified_0_1'>
	| b |
	b := SmallBank new.
	self assert: b rand class equals: SmallInteger
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
