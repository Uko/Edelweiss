as yet unclassified
initialize
	super initialize.
	self rewriteRule
		replace:
			'result addClass: `@sth'
		with: '^ true'