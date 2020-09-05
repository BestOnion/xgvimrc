syn keyword IndexKey ISBN Doi

syn match Comment			"#.*$"	contains=Todo,Tab

syn match Statement			"@.*$"	contains=Todo,Tab

hi def link IndexKey Special
