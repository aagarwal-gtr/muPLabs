.model tiny
.data
ARRAY1 DW 2500h, 560Ah, 3605h, 7355h, 330Ah, 838Fh, 4523h, 4545h, 8534h, 7811h
ARRAY2 DW 10 DUP(?)
.code
.startup
		LEA SI, ARRAY1
		LEA DI, ARRAY2
		MOV CL, 0Ah
X1:		MOV AX, [SI]
		MOV [DI], AX
		INC SI
		INC SI
		INC DI
		INC DI
		DEC CL
		JNZ X1
.exit
end