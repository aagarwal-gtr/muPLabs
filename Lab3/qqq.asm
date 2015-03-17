.model tiny
.data
max1 db 32
act1 db ?
inp db 32 dup(0)

.code
.startup
	lea DX, max1
	mov AH, 08h
	INT 21h
	mov DL, 'A'
	mov AH, 02h
	INT 21h
.exit
end