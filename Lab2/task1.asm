.model tiny
.386
.data
ARRAY DD 11111111h,12121212h,11111254h
RES   DD ?
.code
.startup
		LEA  EBX, ARRAY
		MOV  CL, 03h
		MOV  EAX,[EBX]
		DEC  CL
		ADD  EBX,4h
X2:		CMP  EAX,[EBX]
		JGE  X1
		MOV  EAX,[EBX]
X1:		ADD  EBX,4h
		DEC  CL
		JNZ  X2
		MOV RES, EAX
.exit
end