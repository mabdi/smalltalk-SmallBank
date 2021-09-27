Class {
	#name : #FakeCrashingTest,
	#superclass : #TestCase,
	#category : #'SmallAmpCI-Tests'
}

{ #category : #'as yet unclassified' }
FakeCrashingTest class >> smallAmpTargetClasses [
	^ {FakeObjectUnderTest}
]

{ #category : #tests }
FakeCrashingTest >> testCrashMe [
	FakeObjectUnderTest new doCrash:1
]

{ #category : #tests }
FakeCrashingTest >> testSomeAction [
	FakeObjectUnderTest new someAction: 1
]
