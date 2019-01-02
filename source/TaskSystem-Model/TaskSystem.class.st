Class {
	#name : #TaskSystem,
	#superclass : #Object,
	#instVars : [
		'tasks'
	],
	#category : #'TaskSystem-Model'
}

{ #category : #processing }
TaskSystem >> addTask: aTask [
 
	tasks add: aTask
]

{ #category : #initialize }
TaskSystem >> initialize [ 

	super initialize.
	tasks := OrderedCollection new
]

{ #category : #accessing }
TaskSystem >> tasks [

	^ tasks
]
