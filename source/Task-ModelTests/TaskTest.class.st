Class {
	#name : #TaskTest,
	#superclass : #TestCase,
	#category : #'Task-ModelTests'
}

{ #category : #tests }
TaskTest >> testAccessors [ 

	| task |
	
task := Task named: 'Prueba' describedBy: 'Proceso de prueba'.

self assert: task title equals: 'Prueba';
assert: task description equals: 'Proceso de prueba'
]
