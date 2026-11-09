# lmag

Micro syntax file

`.config/micro/syntax/z80.yaml:`

```filetype: 'z80'
name: 'z80'
comment: ';'
comment_start: ';'
comment_end: ''

file_extensions:
  - z80
  - asm
  - s

rules:
  - match: '(?i)\b(LD|ADD|SUB|INC|DEC|JP|JR|CALL|RET|PUSH|POP|EX|EXX|EXDE|HL|NOP|DI|EI|HALT|IM|IN|OUT|CPI|CP|BIT|SET|RES|RLC|RL|RLA|RRC|RR|RRA|SLA|SRA|SRL|DAA|NEG|SCF|CCF|OR|XOR|AND|CP|NOP|HALT|INIR|OTIR|OTDR|TII|TIO|OTIR|OTDR|LDIR|LDDE|LDI|LDD|CPI|CPD|INIR|OTIR|OTDR|TII|TIO)\b'
    type: 'keyword'
  - match: '(?i)\b(A|B|C|D|E|H|L|IX|IY|SP|PC|AF|BC|DE|HL|IXH|IXL|IYH|IYL|A''|F''|AF'')\b'
    type: 'variable'
  - match: '(?i)\b(SECTION|GLOBAL|EXTERN|PUBLIC|DEFB|DEFW|DEFQ|DEFS|DEFM|DEFM|ORG|END|INCLUDE|MACRO|ENDM|IF|ELSE|ELSEIF|ENDIF|REPT|ENDR|EQU|PRINT|PRINTLN)\b'
    type: 'preproc'
  - match: '[0-9]+h\b'
    type: 'constant'
  - match: '0x[0-9A-Fa-f]+'
    type: 'constant'
  - match: '#[0-9A-Fa-f]+'
    type: 'constant'
  - match: '"[^"]*"'
    type: 'string'
  - match: "'[^']*'"
    type: 'string'
  - match: '[A-Za-z_][A-Za-z0-9_]*:'
    type: 'label'
```
