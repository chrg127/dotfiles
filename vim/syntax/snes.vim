" Vim syntax file
" Language: 65816, spc700 and SuperFX assembly, for ca65, wdc816as, bass
" Version 0.1
" Maintainer: ARM9

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

setlocal iskeyword +=.,_

syn keyword snesTodo    contained todo fixme xxx warning danger note notice bug author date

syn match snesNumericOperator "[:#+-/*<>=&|^~?]"
syn match snesNumbers "\%(\$\x[0-9a-f_]*\|\d[0-9_]*\|%[01][01_]*\|[0-9][0-9a-f_]*h\)\>"
"syn match snesDirective "\.\w\+\>"
syn match snesLabel "\%(@\|[~_]\{0,2\}\)[a-z_]\w*"
syn match snesComment ";.*$" contains=snesTodo
"syn match snesMacro "!\%(@\|[~_]\{0,2\}\)[a-z_]\w*:\?"
syn region snesString start="\""  skip=+\\"+ end="\"\|$"
syn region snesString start="'"   skip=+\\'+ end="'\|$"

syn match asarMacro "![A-Za-z0-9_]*"
syn match asarMacro "%[A-Za-z_\(\)]*"

syn keyword asarCmd macro endmacro autoclean freecode freedata org if else endif read1 read3 sa1rom lorom print

syn keyword asm65Reg x y a s pc db

syn keyword asm65816Ops adc and asl bcc bcs beq bit bmi bne bpl bra brk brl bvc bvs clc cld cli clv cmp cop cpx cpy dea dec dex dey eor ina inc inx iny jml jmp jsl jsr lda ldx ldy lsr mvn mvp nop ora pea pei per pha phb phd phk php phx phy pla plb pld plp plx ply rep rol ror rti rtl rts sbc sec sed sei sep sta stp stx sty stz swa tad tas tax tay tcd tcs tda tdc trb tsa tsb tsc tsx txa txs txy tya tyx wai wdm xba xce

syn keyword asm65816asarOps lda.b lda.w

syn keyword asmSpc700Ops adc addw and and1 asl bbc bbs bcc bcs beq bmi bne bpl bvc bvs bra brk call cbne clr1 clrc clrp clrv cmp cmpw daa das dbnz dec decw di div ei eor eor1 inc incw jmp lsr mov mov1 movw mul nop not1 notc or or1 pcall pop push ret reti rol ror sbc set1 setc setp sleep stop subw tcall tclr1 tset1 xcn

syn keyword asmSpc700Reg x y ya a s sp psw

syn keyword asmGsuOps add adc alt1 alt2 alt3 and asr bcc bcs beq bge bic blt bmi bne bpl bra bvc bvs cache cmode cmp color dec div2 fmult from getb getbh getbl getbs getc hib ibt inc iwt jal jmp ldb ldw lea link ljmp lm lms lmult lob loop lsr merge move moveb moves movew mult nop not or plot pop popb push pushb ramb ret rol romb ror rpix sbc sbk sex sm sms stb stop stw sub swap to umult with xor

syn keyword asmGsuReg r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 sp lr pc

"if version >= 508 || !exists("did_snes_syntax_inits")
  "if version > 508
  "  command -nargs=+ HiLink hi def link <args>
  "else
  "  let did_snes_syntax_inits = 1
  "  command -nargs=+ HiLink hi link <args>
  "endif
hi def link snesNumericOperator Operator
hi def link snesNumbers         Number

"hi def link snesLabel           Label
"hi def link snesDirective       Identifier

" PreProc
hi def link snesString          String
hi def link snesComment         Comment
hi def link snesTodo            Todo

hi def link asarMacro           Macro
hi def link asarCmd             Macro

hi def link asm65Reg            Type
hi def link asm65816Ops         Function
hi def link asm65816asarOps     Function

hi def link asmSpc700Reg        Type
hi def link asmSpc700Ops        Function

hi def link asmGsuReg           Type
hi def link asmGsuOps           Function

  "delcommand HiLink
"endif

let b:current_syntax="snes"

