creation
revampClass: aClass
	| class |

	class := aClass duplicateClassWithNewName: 'E', (aClass name allButFirst: 2).

	class := #ELintRule asClass subclass: class name
		instanceVariableNames: (class instVarNames joinUsing: $ )
		classVariableNames: (class classVarNames joinUsing: $ )
		category: packageName.
		
	"class
		compiledMethodAt: #checkClass:
		ifPresent: [ :m |
			ClassRuleFix new checkMethod: m ]
		ifAbsent: [ nil ]"
	