.model  tiny
.data
prt1	db	"Enter user name", 0Ah,0Dh,'$'
prt2	db	0Ah,0Dh,"Enter Password", 0Ah,0Dh, '$'
prt4	db	0Ah,0Dh,"Hello "
dat3	db	12 dup('$')
dat4	db	10 dup('$')
str1	db	"agentsmith"
str2	db	"password"
prt3	db	'*'
dat5	db	0Ah, 0Dh, "$"
.code
.startup
	LEA dx,prt1
	MOV AH,09h
	INT 21h
	
	CLD
	LEA DI,dat3
	MOV CX,0Ah
t1: MOV AH,01h
	INT 21h
	STOSB
	LOOP t1

	MOV CX,0Ah
	LEA SI,dat3
	LEA DI,str1
	REPE CMPSB
	CMP CX,00
	JNE last
	
	LEA dx,prt2
	MOV AH,09h
	INT 21h
	
	LEA DI,dat4
	MOV CX,08
t2: MOV AH,08h
	INT 21h
	STOSB
	MOV DL,prt3
	MOV AH,02h
	INT 21h
	LOOP t2
	
	LEA SI,dat4
	LEA DI,str2
	MOV CX,8
	REPE CMPSB
	CMP CX,00
	JNE last
	
	LEA dx,prt4
	MOV AH,09h
	INT 21h
last:
.exit
end
