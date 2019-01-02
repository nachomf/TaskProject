Class {
	#name : #TaskSystemTest,
	#superclass : #TestCase,
	#category : #'TaskSystem-ModelTests'
}

{ #category : #tests }
TaskSystemTest >> testAddTasks [

	| taskSystem task |
	
   taskSystem := TaskSystem new.

	self assert: taskSystem tasks isEmpty.
	
	task := Task named: 'Prueba' describedBy: 'Prueba'.
	
	taskSystem addTask: task.
	
	self assert: taskSystem tasks equals: task asOrderedCollection.
]

{ #category : #tests }
TaskSystemTest >> testPendingTaskIsEmpty [

	| taskSystem |
	
   taskSystem := TaskSystem new.

	self assert: taskSystem tasks isEmpty.
]

{ #category : #tests }
TaskSystemTest >> testRemoveTasks [

	| taskSystem task |
	
   taskSystem := TaskSystem new.

	self assert: taskSystem tasks isEmpty.
	
	task := Task named: 'Prueba' describedBy: 'Prueba'.
	
	taskSystem addTask: task.
	
	self assert: taskSystem tasks equals: task asOrderedCollection.
	
	taskSystem removeTask: task.
	
	self assert: taskSystem tasks isEmpty.
	
]

{ #category : #tests }
TaskSystemTest >> testUpdateTasks [

	| taskSystem task anotherTask |
	
   taskSystem := TaskSystem new.

	self assert: taskSystem tasks isEmpty.
	
	task := Task named: 'Prueba' describedBy: 'Prueba'.
	
	taskSystem addTask: task.
	
	self assert: taskSystem tasks equals: task asOrderedCollection.
	
	anotherTask := Task named: 'Otra prueba' describedBy: 'otra descripción'.
	
	taskSystem updateTask: task with: anotherTask.
	
	self assert: taskSystem tasks size equals: 1;
	 assert: taskSystem tasks anyOne title equals: anotherTask title ;
	 assert: taskSystem tasks anyOne description equals: anotherTask description
	
]
