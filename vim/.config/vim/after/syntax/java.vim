syntax match javaBracket '[(){}\[\]]'
hi def link javaBracket Delimiter
syntax match javaOperator '[!%^&|+=.<>,:;?-]'
syntax match javaOperator ' *->'
syntax match javaFunction "\<\h\w*\>\(\s\|\n\)*("me=e-1 contains=javaParen
hi def link javaFunction Function
