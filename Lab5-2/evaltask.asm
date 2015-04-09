.model  tiny
.486
.data
	cnt	db	19h
	cnt1	db	08h
.code
.startup
	mov     ah,00h
	mov     al,03h
	int     10h

	mov	ah,04h
        mov     cnt,ah
	mov	bp,01h
	mov     dl,0	;x starting cursor 0 for leftmost
	mov     dh,0	;y starting cursor 0 for topmost

;divide 80 to 10 each
;divide 25 to 3 each

		
x1:	
	mov     ah,02h
	mov     bh,0
	int     10h

	mov	ah, 08h
	mov	cnt1,ah
x2:	mov     ah,09h
	mov	al," "
	mov     bh,0

	mov     cx,bp
	mov     bl,11111000b
	int     10h
	dec	cnt1
	jnz	x2

	mov	ah, 08h
	mov	cnt1,ah
x3:	mov     ah,09h
	mov	al," "
	mov     bh,0

	mov     cx,bp
	mov     bl,10001000b
	int     10h
	dec	cnt1
	jnz	x3

	add     dl,10h
	add	dh,01h
	add	bp,02h

	dec     cnt
	jnz     x1
.exit
end