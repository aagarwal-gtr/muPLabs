.model  tiny
.486
.data
cnt     db	03h
cont	db	04h
.code



.startup
        mov     ah,00h
        mov     al,03h
        int     10h


	mov	ah,04h
	mov     cont,ah


;	mov	bp,5Fh

	mov     dl,00
        mov     dh,00





;;;;;;;;;;;;;;;;;;
x1:
	dec     cont
	jnz	x3

	add	dl,5Fh

	
	jnz     x1
;;;;;;;;;;;;;;;;;;


X3:
	mov     ah,02h
        mov     bh,0
        int     10h

	mov	ah,03h
        mov     cnt,ah

        mov     ah,09h
        mov	al," "
        mov     bh,0

        mov     cx,0Ah
        mov     bl,2Bh
        int     10h


;	dec     dl
	inc	dh
;	add	bp,02h
	dec     cnt
	jnz     x2

x2:
	jmp	x3

;;;;;;;;;;;;;;;;;;;;


.exit
end
