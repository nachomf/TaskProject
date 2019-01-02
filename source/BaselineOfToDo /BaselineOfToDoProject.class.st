Class {
	#name : #BaselineOfToDoProject,
	#superclass : #BaselineOf,
	#category : #'BaselineOfToDo '
}

{ #category : #baselines }
BaselineOfToDoProject >> baseline: spec [

	<baseline>

	spec
		for: #common
		do: [ 
			spec
				package: #'ToDo';
				package: #'ToDo-Tests' with: [ spec requires: #('ToDo') ]].
]
