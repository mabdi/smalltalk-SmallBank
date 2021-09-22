Class {
	#name : #FakeCrashingTest,
	#superclass : #TestCase,
	#category : #'SmallAmpCI-Tests'
}

{ #category : #tests }
FakeCrashingTest >> testCrashMe [
	FakeObjectUnderTest new doCrash:1
]
