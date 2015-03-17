.model tiny
.386
.data
	fil1	db	'sparta.txt',0
	handle	dw	?
	data	db	'Abhinav Agarwal 2013A7PS124P'
	nxtline	db	0dh,0ah
.code
.startup
	MOV AH, 3CH
	LEA DX, fil1
	MOV CL, 0
	INT 21H			
	MOV handle, AX

	MOV AH, 40H
	MOV BX,	handle
	mov cx, 1ch
	LEA DX, data
	INT 21h
	
	MOV AH, 40H
	MOV BX,	handle
	mov cx, 02h
	LEA DX, nxtline
	INT 21h

	MOV AH, 40H
	MOV BX,	handle
	MOV cx, 1ch
	LEA DX, data
	INT 21h

	MOV AH, 3EH
	MOV BX, handle
	INT 21H		
.EXIT
END