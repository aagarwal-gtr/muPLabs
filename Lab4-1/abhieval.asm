.MODEL TINY
.386
.data
faddress db 'C:\MASM615\BIN\mordor.txt',0
handle dw ?
mem1 dw ?
mem2 dw ?

.code
	mov ah,3DH
	lea dx,faddress
	mov al,2
	int 21H
	mov handle,ax
	
	mov ah,42H	;mov 4 from begining and read to mem1
	mov al,0
	mov bx,handle
	mov dx,4
	int 21h
	mov mem1,[AX]
	
	mov ah,42h	;mov 2 from current and read to mem2
	mov al,1
	mov bx,handle
	mov dx,2
	int 21h	
	mov mem2,[AX]
	;add to mem1
	mov ax,mem2
	add mem1,ax
	
	mov ah,40h	;write mem1 to file
	mov bx,handle
	mov cx,2
	lea dx,mem1
	int 21h

	mov ah,42h
	mov al,1
	mov bx,handle
	mov dx,2
	int 21h



	mov ah,42H
	mov al,0
	mov bx,handle
	mov dx,14
	int 21h
	mov mem1,[AX]
	mov ah,42h
	mov al,1
	mov bx,handle
	mov dx,2
	int 21h	
	mov mem2,[AX]
	mov ax,mem2
	add mem1,ax
	mov ah,40h
	mov bx,handle
	mov cx,1
	lea dx,mem1
	int 21h
	mov ah,42h
	mov al,1
	mov bx,handle
	mov dx,2
	int 21h


	mov ah,42H
	mov al,24
	mov bx,handle
	mov dx,4
	int 21h
	mov mem1,[AX]
	mov ah,42h
	mov al,1
	mov bx,handle
	mov dx,2
	int 21h	
	mov mem2,[AX]
	mov ax,mem2
	add mem1,ax
	mov ah,40h
	mov bx,handle
	mov cx,1
	lea dx,mem1
	int 21h
	mov ah,42h
	mov al,1
	mov bx,handle
	mov dx,2
	int 21h

	mov ah,42H
	mov al,34
	mov bx,handle
	mov dx,4
	int 21h
	mov mem1,[AX]
	mov ah,42h
	mov al,1
	mov bx,handle
	mov dx,2
	int 21h	
	mov mem2,[AX]
	mov ax,mem2
	add mem1,ax
	mov ah,40h
	mov bx,handle
	mov cx,1
	lea dx,mem1
	int 21h
	mov ah,42h
	mov al,1
	mov bx,handle
	mov dx,2
	int 21h


	mov ah,42H
	mov al,44
	mov bx,handle
	mov dx,4
	int 21h
	mov mem1,[AX]
	mov ah,42h
	mov al,1
	mov bx,handle
	mov dx,2
	int 21h	
	mov mem2,[AX]
	mov ax,mem2
	add mem1,ax
	mov ah,40h
	mov bx,handle
	mov cx,1
	lea dx,mem1
	int 21h
	mov ah,42h
	mov al,1
	mov bx,handle
	mov dx,2
	int 21h	
.exit
END	