.Model Tiny
.386
.data
COUNT	EQU	32h
VAL1	EQU	0030h
DAT1	DB	45h
WRD	DW	10h, 3500h, 0910h
DAT2	DD	0902h
DAT3	DW	2 DUP(0)
DAT4	DB	56h
RES	DB	10 DUP(?)
DWRD	DD	01020304h
.CODE
.STARTUP
	MOV	SI, DAT3
	MOV	AL, DAT1+1
	MOV	BX, WORD PTR DAT1+4
	ADD	BX, 20h
	MOV	AL, [BX]
	LEA	BX, DAT4
	MOV	AL, [BX]
	MOV	BX, VAL1
	MOV	Al, FS:[BX]
	MOV	EBX, DWRD
.EXIT
END