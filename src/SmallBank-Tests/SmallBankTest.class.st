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

{ #category : #'as yet unclassified' }
SmallBankTest >> testAmplified_2 [

	"SmallAmp has derived this test from `SmallBankTest>>#testWithdraw` by applying some transformations and regenerating its assertions.
	This test can:
	* It detects the injection of an artificial fault (Negate a literal boolean) in `SmallBank>> #withdraw:`:
		original code snippet: `^ true`
		Mutated code snippet: `^ true`
		Dynamic state: nil
	* It detects the injection of an artificial fault (Replace #ifTrue: receiver with true) in `SmallBank>> #withdraw:`:
		original code snippet: `balance >= amount ifTrue: [ 
	balance := balance - amount.
	^ true ]`
		Mutated code snippet: `true ifTrue: [ 
	balance := balance - amount.
	^ true ]`
		Dynamic state: {#balance->-100. #amount->30}
"

	<madeBySmallAmp>
	| b aBoolean |
	b := SmallBank new.
	aBoolean := b
		            deposit: -100;
		            withdraw: 30.
	self assert: b balance equals: -100.
	self deny: aBoolean
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testAmplified_3 [

	"SmallAmp has derived this test from `SmallBankTest>>#testWithdraw` by regenerating its assertions.
	This test can:
	* It detects the injection of an artificial fault (Negate a literal boolean) in `SmallBank>> #withdraw:`:
		original code snippet: `^ false`
		Mutated code snippet: `^ false`
		Dynamic state: nil
	* It detects the injection of an artificial fault (Remove ^) in `SmallBank>> #withdraw:`:
		original code snippet: `^ true`
		Mutated code snippet: `balance := balance - amount.
true`
		Dynamic state: nil
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
SmallBankTest >> testAmplified_4 [

	<madeBySmallAmp>
	| b |
	'SmallAmp has derived this test from `SmallBankTest>>#testInit` by regenerating its assertions.
	This test can:
	* It detects the injection of an artificial fault (Chnage a message send with #yourself) in `SmallBank>> #rand`:
		original code snippet: `(1 to: 1000) atRandom`
		Mutated code snippet: `^ (1 to: 1000) yourself`
		Dynamic state: nil
	* It detects the injection of an artificial fault (Remove ^) in `SmallBank>> #rand`:
		original code snippet: `^ (1 to: 1000) atRandom`
		Mutated code snippet: `(1 to: 1000) atRandom`
		Dynamic state: nil
	* It detects the injection of an artificial fault (Removing all lines in a method) in `SmallBank>> #rand`:
		original code snippet: `^ (1 to: 1000) atRandom`
		Mutated code snippet: `rand

	" Flaky detection "

	`
		Dynamic state: nil
'.
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
