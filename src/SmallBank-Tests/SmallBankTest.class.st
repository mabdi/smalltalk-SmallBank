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
		assertObjectState: SmallBank
			varName: 'SmallBank'
			id: 1
			type: #observe;
		assertObjectState: b
			varName: #b
			id: 1
			type: #observeResult.
	b deposit: 10.
	self
		assertObjectState: b
		varName: 'b'
		id: 2
		type: #observe.
	b deposit: 100.
	self
		assertObjectState: b
		varName: 'b'
		id: 3
		type: #observe
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testDeposit_amp_A10 [
	<smallAmpCoveres: 'RemoveCaretOperator#SmallBank#withdraw:#85#90'>
	<madeBySmallAmp>
	| b anUndefinedObject |
	b := SmallBank new.
	self
		assertObjectState: SmallBank
			varName: 'SmallBank'
			id: 1
			type: #observe;
		assertObjectState: b
			varName: #b
			id: 1
			type: #observeResult.
	b deposit: 10.
	self
		assertObjectState: b
		varName: 'b'
		id: 2
		type: #observe.
	b deposit: 100.
	self
		assertObjectState: b
		varName: 'b'
		id: 3
		type: #observe.
	anUndefinedObject := b withdraw: 30.
	self
		assertObjectState: b
			varName: 'b'
			id: 4
			type: #observe;
		assertObjectState: anUndefinedObject
			varName: #tmp_8Qg208uOgn3
			id: 4
			type: #observeResult
]

{ #category : #tests }
SmallBankTest >> testInit [
	| b |
	b := SmallBank new.
	self assert: b balance equals: 0
]

{ #category : #'as yet unclassified' }
SmallBankTest >> testInit_amp_A2 [
	<smallAmpCoveres: 'ReplaceIfTrueReceiverWithTrueOperator#SmallBank#withdraw:#19#92'>
	<smallAmpCoveres: 'RemoveCaretOperator#SmallBank#withdraw:#96#102'>
	<madeBySmallAmp>
	| b anUndefinedObject |
	b := SmallBank new.
	self
		assertObjectState: SmallBank
			varName: 'SmallBank'
			id: 1
			type: #observe;
		assertObjectState: b
			varName: #b
			id: 1
			type: #observeResult.
	anUndefinedObject := b withdraw: 30.
	self
		assertObjectState: b
			varName: 'b'
			id: 2
			type: #observe;
		assertObjectState: anUndefinedObject
			varName: #tmp_d0V43bUbXh1
			id: 2
			type: #observeResult
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
SmallBankTest >> testWithdraw_amp_L8 [
	<smallAmpCoveres:
		'ReplaceGreaterOrEqualWithGreaterMutantOperator#SmallBank#withdraw:#19#35'>
	<madeBySmallAmp>
	| b anUndefinedObject |
	b := SmallBank new.
	self
		assertObjectState: SmallBank
			varName: 'SmallBank'
			id: 1
			type: #observe;
		assertObjectState: b
			varName: #b
			id: 1
			type: #observeResult.
	b deposit: 30.
	self
		assertObjectState: b
		varName: 'b'
		id: 2
		type: #observe.
	anUndefinedObject := b withdraw: 30.
	self
		assertObjectState: b
			varName: 'b'
			id: 3
			type: #observe;
		assertObjectState: anUndefinedObject
			varName: #tmp_7milcRDp6W2
			id: 3
			type: #observeResult
]
