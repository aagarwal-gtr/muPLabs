.model tiny
.386
.data
faddress db 'C:\MASM615\BIN\mordor.txt', 0
handle	 dw ?
next	 db 0dH, 0AH
dat	 db 10
dat1	 db '$$$'
dat2	 db '$$'
dat3	 db '$$'
dat4	 db ?
dat5	 db 10 dup('$')
tot db ?
.code
.startup
	
	MOV AH, 3dH
	MOV AL, 2
	LEA DX, faddress
	INT 21H
	MOV handle, AX
	
	MOV AH, 42H	;compute first
	MOV AL, 0H
	MOV BX, handle
	MOV CX, 0H
	MOV DX, 04H
	INT 21H

	MOV AH, 3fH
	MOV BX, handle
	MOV CX, 01H
	LEA DX, dat2
	INT 21H

	MOV AH, 42H
	MOV AL, 0H
	MOV BX, handle
	MOV CX, 0H
	MOV DX, 06H
	INT 21H

	MOV AH, 3fH
	MOV BX, handle
	MOV CX, 01H
	LEA DX, dat3
	INT 21H
	
	MOV AL, dat2
	MOV BL, dat3
	SUB AL, 30H
	SUB BL, 30H
	add AL , BL
	add AL, 30H
	MOV tot, AL
	
	MOV AH, 42H
	MOV AL, 0H
	MOV BX, handle
	MOV CX, 0H
	MOV DX, 08H
	INT 21H

	MOV AH, 40H
	MOV BX, handle
	MOV CX, 01H
	LEA DX, tot
	INT 21H

	MOV AH, 42H	;compute second
	MOV AL, 0H
	MOV BX, handle
	MOV CX, 0H
	MOV DX, 0fH
	INT 21H

	MOV AH, 3fH
	MOV BX, handle
	MOV CX, 01H
	LEA DX, dat2
	INT 21H

	MOV AH, 42H
	MOV AL, 0H
	MOV BX, handle
	MOV CX, 0H
	MOV DX, 11H
	INT 21H

	MOV AH, 3fH
	MOV BX, handle
	MOV CX, 01H
	LEA DX, dat3
	INT 21H
	
	MOV AL, dat2
	MOV BL, dat3
	SUB AL, 30H
	SUB BL, 30H
	add AL , BL
	add AL, 30H
	MOV tot, AL
	
	MOV AH, 42H
	MOV AL, 0H
	MOV BX, handle
	MOV CX, 0H
	MOV DX, 013H
	INT 21H

	MOV AH, 40H
	MOV BX, handle
	MOV CX, 01H
	LEA DX, tot
	INT 21H

	MOV AH, 42H	;compute third
	MOV AL, 0H
	MOV BX, handle
	MOV CX, 0H
	MOV DX, 1AH
	INT 21H

	MOV AH, 3fH
	MOV BX, handle
	MOV CX, 01H
	LEA DX, dat2
	INT 21H

	MOV AH, 42H
	MOV AL, 0H
	MOV BX, handle
	MOV CX, 0H
	MOV DX, 1cH
	INT 21H

	MOV AH, 3fH
	MOV BX, handle
	MOV CX, 01H
	LEA DX, dat3
	INT 21H
	
	MOV AL, dat2
	MOV BL, dat3
	SUB AL, 30H
	SUB BL, 30H
	add AL , BL
	add AL, 30H
	MOV tot, AL
	
	MOV AH, 42H
	MOV AL, 0H
	MOV BX, handle
	MOV CX, 0H
	MOV DX, 1eH
	INT 21H

	MOV AH, 40H
	MOV BX, handle
	MOV CX, 01H
	LEA DX, tot
	INT 21H

	MOV AH, 3EH	;close file
	MOV BX, handle
	INT 21H
.exit 
end