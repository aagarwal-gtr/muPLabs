.model tiny
.386
.data
ARRAY1 DB 00h,0Ah,05h,55h,0Ah,8Fh,23h,45h,84h,11h 
VAL EQU 0Ah
.code
.startup
		LEA SI,ARRAY1
		MOV CL,0Ah
X2:		CMP BYTE PTR [SI],VAL
		JNZ X1
		MOV [SI], 45h
X1:		INC SI
		DEC CL
		JNZ X2
.exit
end