creation
copyAllGoodClasses

	(RBCompositeLintRule allGoodRules leaves collect: #class)
		do: [ :ruleClass | self revampClass: ruleClass ]
		displayingProgress: [ :ruleClass | 'Revamping: ', ruleClass name ]