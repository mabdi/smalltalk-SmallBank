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
			spec package: 'SmallAmpCI-Tests'.
			spec
				package: 'SmallBank-Tests'
				with: [ spec requires: #('SmallBank') ].
			spec group: 'default' with: #('SmallBank-Tests');
			group: 'full' with: #( 'SmallBank-Tests' 'SmallAmpCI-Tests' ). ]
]
