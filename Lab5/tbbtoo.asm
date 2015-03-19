.model tiny
.386
.data
	max1	db 32
	act1	db ?
	fname1	db 32 dup(0)

	max2	db 32
	act2	db ?
	fname2	db 32 dup(0)

	handle	dw ?
	readme1	db '$'
	readme2	db '$'

	newl	db 0ah,0dh,'$'

.code
.startup

	lea dx,max1
	mov ah,0Ah
	int 21h

	lea dx,newl
	mov ah,09h
	int 21h
;;;;;;;;;;;;	


	lea dx,max2
	mov ah,0Ah
	int 21h

	lea dx,newl
	mov ah,09h
	int 21h
;;;;;;;;;;;;


	mov ah,3dh
	mov al,2
	lea dx,fname1
	int 21h
	mov handle,ax

	mov ah,42h
	mov al,0h
	mov bx,handle
	mov cx,0h
	mov dx,0h
	int 21h

	mov ah,3fh
	mov bx,handle
	mov cx,01h
	lea dx,readme1
	int 21h

	MOV AH,3EH
	MOV BX,handle
	INT 21H

;;;;;;;;;	

	mov ah,3dh
	mov al,2
	lea dx,fname2
	int 21h
	mov handle,ax

	mov ah,42h
	mov al,0h
	mov bx,handle
	mov cx,0h
	mov dx,0h
	int 21h

	mov ah,3fh
	mov bx,handle
	mov cx,01h
	lea dx,readme2
	int 21h

	MOV AH,3EH
	MOV BX,handle
	INT 21H

;;;;;;;;;	

	mov al,readme1
	mov bl,readme2
	cmp al,bl
	jl x1
	mov dl,'Y'
	mov ah,02h
	int 21h
	jmp x2
x1:	mov dl,'N'
	mov ah,02h
	int 21h

x2:

.exit
end