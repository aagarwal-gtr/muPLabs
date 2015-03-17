.model tiny
.data
ARRAY1 DW 2500h, 560Ah, 3605h, 7355h, 330Ah, 838Fh, 4523h, 4545h, 8534h, 7811h 
VAL COUNT 0Ah
NEG1 DB 00h
.code
.startup
		LEA BX, ARRAY1
		MOV CL, COUNT
X1:		MOV AX, [BX]
		AND AX, 8000h
		JZ X2
		INC NEG1
X2:		INC BX
		INC BX
		DEC CL
		JNZ X1
.exit
end