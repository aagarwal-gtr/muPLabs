.model tiny
.386
.data
	fname1	db 'abcde.txt',0
	fname2	db 'pqrst.txt',0
	handle	dw ?
	readme1	db '$'
	readme2	db '$'
	total 	db ?

.code
.startup


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
	lea dx,readme1
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



;;;;;;;;;;;;;;;;;;;;;;;;



	mov ah,3dh
	mov al,2
	lea dx,fname1
	int 21h
	mov handle,ax

	mov ah,42h
	mov al,0h
	mov bx,handle
	mov cx,0h
	mov dx,02h
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
	mov dx,02h
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

	mov al,readme1
	mov bl,readme2
	cmp al,bl
	jl p1
	mov dl,'Y'
	mov ah,02h
	int 21h
	jmp p2
p1:	mov dl,'N'
	mov ah,02h
	int 21h

p2:


;;;;;;;;;;;;;;;;;;;;;;;;;;



	mov ah,3dh
	mov al,2
	lea dx,fname1
	int 21h
	mov handle,ax

	mov ah,42h
	mov al,0h
	mov bx,handle
	mov cx,0h
	mov dx,04h
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
	mov dx,04h
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

	mov al,readme1
	mov bl,readme2
	cmp al,bl
	jl y1
	mov dl,'Y'
	mov ah,02h
	int 21h
	jmp y2
y1:	mov dl,'N'
	mov ah,02h
	int 21h

y2:


;;;;;;;;;;;;;;;;;;;



	mov ah,3dh
	mov al,2
	lea dx,fname1
	int 21h
	mov handle,ax

	mov ah,42h
	mov al,0h
	mov bx,handle
	mov cx,0h
	mov dx,06h
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
	mov dx,06h
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

	mov al,readme1
	mov bl,readme2
	cmp al,bl
	jl r1
	mov dl,'Y'
	mov ah,02h
	int 21h
	jmp r2
r1:	mov dl,'N'
	mov ah,02h
	int 21h

r2:

;;;;;;;;;;;;;;;


	mov ah,3dh
	mov al,2
	lea dx,fname1
	int 21h
	mov handle,ax

	mov ah,42h
	mov al,0h
	mov bx,handle
	mov cx,0h
	mov dx,08h
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
	mov dx,08h
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

	mov al,readme1
	mov bl,readme2
	cmp al,bl
	jl q1
	mov dl,'Y'
	mov ah,02h
	int 21h
	jmp q2
q1:	mov dl,'N'
	mov ah,02h
	int 21h

q2:
.exit
end