.model tiny
.386
.data
	countc db 0
	countr db 0
	cntc db 3
	cntr db 80
	random dw 0
	number dw 2
	num db 24
.code
.startup
	MOV AH, 00H
	MOV AL, 03H
	INT 10H
;;;;;;;;;;;;;;;

start:
	
ll:
	MOV DL, countr
lo:	
	MOV DH, countc

li:	MOV AH, 02H
	MOV BH, 0
	INT 10H

	mov ah, 09h
	mov al, ' '
	mov bh, 00h
	mov bl, 01111111b
	mov cx, 10
	int 10h

	inc dh
	cmp dh, cntc
	jnz li
	
	add dl, 20
	cmp dl, cntr
	jnz lo

	add countc, 6
	add cntc, 6
	mov al, countc
	cmp al, num
	jnz ll

	cmp random, 1
	jz n
	mov random, 1
	mov countr, 10
	mov cntr, 90
	mov countc, 3
	add num, 3
	mov cntc, 3
n:
	dec number
	jnz start



;;;;;;;;;;;;;;;blocking function
	mov ah,07h
x1:	int 21h
	cmp al,'%'
	jnz x1
.exit
end