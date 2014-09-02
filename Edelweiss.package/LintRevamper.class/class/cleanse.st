running
cleanse
	|  package |
	package := RPackageOrganizer default
		packageNamed: packageName
		ifAbsent: [ ^ self ].
		
	package classes
		do: #removeFromSystem
		displayingProgress: [ :c | 'Removeing: ', c name ].
	package unregister