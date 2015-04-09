.model  tiny
.486
.data
c1     db	03h
c2	db	04h
.code
.startup

        mov     ah,00h
        mov     al,03h
        int     10h

	mov	ah,04h
	mov     c1,ah


	mov	ah,04h
	mov     c2,ah

	mov     dl,00
        mov     dh,00
	mov	nbp,03h

;;;;;;;;;;;;;;;;;;


X3:
	mov     ah,02h
        mov     bh,0
        int     10h


        mov     ah,09h
        mov	al," "
        mov     bh,0

        mov     cx,0Ah
        mov     bl,2Bh
        int     10h


	add	dl,10h
	dec     c2
	jnz     x3
;;;;;;;;;;;;;;;;;;

	inc	dh
	cmp	dh,bp
	jle	x3


	add	dh,03h
	add	bp,03h

	dec	c1
	jnz	x3

;;;;;;;

	mov	ah,04h
	mov     c1,ah

	mov	ah,04h
	mov     c2,ah

	mov     dl,0Ah
        mov     dh,03h
	mov	bp,06h


;;;;;


X4:
	mov     ah,02h
        mov     bh,0
        int     10h


        mov     ah,09h
        mov	al," "
        mov     bh,0

        mov     cx,0Ah
        mov     bl,2Bh
        int     10h


	add	dl,10h
	dec     c2
	jnz     x4
;;;;;;;;;;;;;;;;;;

	inc	dh
	cmp	dx,bp
	jle	x4


	add	dh,03h
	add	bp,03h

	dec	c1
	jnz	x4



.exit
end
