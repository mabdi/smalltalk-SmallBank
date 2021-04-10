Class {
	#name : #BaselineOfSmallBank,
	#superclass : #BaselineOf,
	#category : #BaselineOfSmallBank
}

{ #category : #baselines }
BaselineOfSmallBank >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec package: 'SmallBank'.
			spec
				package: 'SmallBank-Tests'
				with: [ spec requires: #('SmallBank') ] ]
]
