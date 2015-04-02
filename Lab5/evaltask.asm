.model  tiny
.486
.data
	cnt	db	04h
.code
.startup
        mov     ah,00h
        mov     al,03h
        int     10h

	mov	ah,04h
        mov     cnt,ah
	mov	bp,01h
	mov     dl,40
        mov     dh,15
x1:	
	mov     ah,02h
        mov     bh,0
        int     10h

        mov     ah,09h
        mov	al," "
        mov     bh,0

        mov     cx,bp
        mov     bl,10101000b
        int     10h

        dec     dl
	inc	dh
	add	bp,02h
        dec     cnt
        jnz     x1
        
.exit
end
