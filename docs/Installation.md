# Installation

## Basic Installation

You can load **toDo Application** evaluating:
```smalltalk
Metacello new
	baseline: 'toDo';
	repository: 'github://nachomf/toDo:master/source';
	load.
```
>  Change `master` to some released version if you want a pinned version

## Using as dependency

In order to include **toDo Application** as part of your project, you should reference the package in your product baseline:

```smalltalk
setUpDependencies: spec

	spec
		baseline: 'toDo'
			with: [ spec
				repository: 'github://nachomf/toDo:v{XX}/source';
				loads: #('Deployment') ];
		import: 'toDo'.
```
> Replace `{XX}` with the version you want to depend on

```smalltalk
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec package: 'My-Package' with: [ spec requires: #('toDo') ] ]
```
