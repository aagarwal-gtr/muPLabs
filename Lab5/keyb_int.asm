.model tiny
.data
	max1 db 32
	act1 db ?
	inp1 db 32 dup(0)
.code
.startup
	lea dx,max1
	mov ah,0Ah
	int 21h

.exit
end