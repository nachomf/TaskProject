Class {
	#name : #TaskSystemTest,
	#superclass : #TestCase,
	#category : #'TaskSystem-ModelTests'
}

{ #category : #tests }
TaskSystemTest >> testPendingTaskIsEmpty [

	| taskSystem |
	
   taskSystem := TaskSystem new.

	self assert: taskSystem tasks equals: OrderedCollection new
]

{ #category : #tests }
TaskSystemTest >> testPendingTaskIsNotEmpty [

	| taskSystem task |
	
   taskSystem := TaskSystem new.

	self assert: taskSystem tasks equals: OrderedCollection new.
	
	task := Task named: 'Prueba' describedBy: 'Prueba'.
	
	taskSystem addTask: task.
	
	self assert: taskSystem tasks equals: task asOrderedCollection.
]
