.model tiny
.data
	dat1	db	" "
	cnt	db	07h
.code
.startup
	
	mov     ah,00h
	mov     al,03h
	int     10h
	
	lea     si,dat1
	mov     dl,38
	mov     ah,01
	mov     cnt,ah

x1:	mov     ah,02h
	mov     bh,0
	mov     dh,12
	int     10h
	
	mov     ah,09h
	lodsb
	mov     bh,0
	mov     cx,07
	mov     bl,10101000b
	int     10h
	
	inc     dl
	dec     cnt
	jnz     x1
.exit
end