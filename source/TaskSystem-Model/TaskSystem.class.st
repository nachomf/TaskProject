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

{ #category : #processing }
TaskSystem >> removeTask: aTask [ 

	tasks remove: aTask
]

{ #category : #accessing }
TaskSystem >> tasks [

	^ tasks
]

{ #category : #processing }
TaskSystem >> updateTask: anOldTask with: aNewTask [ 
	
	(tasks detect: [ :task | task == anOldTask]) synchronizeContentWith: aNewTask 
]
