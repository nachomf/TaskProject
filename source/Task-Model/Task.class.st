Class {
	#name : #Task,
	#superclass : #Object,
	#instVars : [
		'title',
		'description'
	],
	#category : #'Task-Model'
}

{ #category : #'as yet unclassified' }
Task class >> named: aTitle describedBy: aDescription [ 
	
	^self new initializeNamed: aTitle describedBy: aDescription 
]

{ #category : #accessing }
Task >> description [

	^ description
]

{ #category : #initalize }
Task >> initializeNamed: aTitle describedBy: aDescription [ 
	
	title := aTitle.
	description := aDescription
]

{ #category : #accessing }
Task >> title [

	^ title
]
