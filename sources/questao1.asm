val: DS 1
ROTINA:
    ; simula o valor passado no acumulador
    LDA #0F3h
    STA val
    OUT 3
    AND #0F0h
    SHR
    SHR
    SHR
    SHR
    JSR PRINT
    LDA val
    AND #00Fh
    JSR PRINT
    LDA val
    OUT 0
    RET

; printa um caractere ascii na console
aux: DS 1
PRINT:
    STA aux
    SUB #10
    JN ZTON
ATOF:
    LDA aux
    ADD #55
    JMP PRINTEND
ZTON:
    LDA aux
    ADD #48
PRINTEND:
    OUT 2
    RET
