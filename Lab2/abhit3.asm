.model	tiny
.486
.data
array1	db	88h, 30h, 0ah, 99h, 77h, 30h, 27h, 21h, 87h, 0ah
.code
.startup
	lea	si, array1
	mov	bl, 'E'
	mov	cx, 10
	mov	al, 0ah
x1:	cmp	[si], al
	jne	x2
	mov	[si], bl
x2:	inc	si
	loop	x1		
.exit
end