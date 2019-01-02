Class {
	#name : #BaselineOfTask,
	#superclass : #BaselineOf,
	#category : #'BaselineOfTaskProject '
}

{ #category : #baselines }
BaselineOfTask >> baseline: spec [

	<baseline>

	spec
		for: #common
		do: [ 
			spec
				package: #'Task-Model';
				package: #'Task-Tests' with: [ spec requires: #('Task-Model') ]].
]
