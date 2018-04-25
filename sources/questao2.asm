ORG 150

str11: STR "-"
str12: STR "1"
str2: STR "0"
str3: STR "1"

var1h: DS 1
var1l: DS 1
var2h: DS 1
var2l: DS 1
mvar1h: DS 1
mvar1l: DS 1
mvar2h: DS 1
mvar2l: DS 1
mreth: DS 1
mretl: DS 1
aux1: DS 1
aux2: DS 1
aux3: DS 1
aux4: DS 1

ORG 0

PREPARE:
    NOP
    NOP
    NOP
    LDA #012h
    PUSH
    LDA #0ABh
    PUSH
    LDA #045h
    PUSH
    LDA #0CDh
    PUSH

SWITCH:
    OUT #3
    JSR ROTINA
    SUB #1
    JZ CASE1
    SUB #1
    JZ CASE2
    SUB #1
    JZ CASE3

CASE1:
    LDA str11
    OUT #2
    LDA str12
    OUT #2
    JMP END

CASE2:
    LDA str2
    OUT #2
    JMP END

CASE3:
    LDA str3
    OUT #2
    JMP END

ROTINA:
    POP
    STA mreth
    POP
    STA mretl
    POP
    STA mvar1h
    POP
    STA mvar1l
    POP
    STA mvar2h
    POP
    STA mvar2l
    LDA mretl
    PUSH
    LDA mreth
    PUSH
    LDA #1
    RET
    
END: 
    HLT
    
