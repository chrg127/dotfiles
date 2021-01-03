syntax match javaOperator '[(){}\[\]]'
syntax match javaOperator '[!%^&|+=.<>,:;?-]'
syntax match javaOperator ' *->'
syntax match javaFunction "\<\h\w*\>\(\s\|\n\)*("me=e-1 contains=javaParen
hi def link javaFunction Function
"syntax match Constructor '\(\(public\|protected\|private\)\s\+\)\@<=\([A-Z][a-z0-9]*\)\+\( *(\)\@='

