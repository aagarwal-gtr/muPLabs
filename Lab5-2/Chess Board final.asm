.model  tiny
.486
.data
	cnt	db	00h
	cnt1	db	00h
	cnt2	db	04h
.code
	macro1	macro	;green block print
	mov	ah, 09h
	mov	al, ' '
	mov	bh, 0
	mov	bl, 00000000b
	mov	cx, 10
	int	10h
	endm

	macro2	macro	;red block print
	mov	ah, 09h
	mov	al, ' '
	mov	bh, 0
	mov	bl, 01111111b
	mov	cx, 10
	int	10h
	endm

	macro3	macro	a, b
	mov	ah, 02h
	mov	dl, a
	add	dh, b
	mov	bh, 0h
	int	10h
	endm

	macro4	macro	c, d
	mov	ah, 02h
	add	dl, c
	add	dh, d
	mov	bh, 0h
	int	10h
	endm
.startup
	mov	ah, 00h
	mov	ah, 03h
	int	10h

	mov	dl, 0
	mov	dh, 0
	mov	ah, 02h
	mov	bh, 0h
	int	10h
	
	mov	cnt2, 4
duke:

	mov	cnt1, 3
x2:
	macro3	0,1
	mov	cnt, 4
x1:
	
	macro1
	macro4	10,0
	macro2
	macro4	10,0

	dec	cnt
	jnz	x1

	dec	cnt1
	jnz	x2

	mov	cnt1, 3
x4:
	macro3	0,1
	mov	cnt, 4
x3:
	
	macro2
	macro4	10,0
	macro1
	macro4	10,0

	dec	cnt
	jnz	x3

	dec	cnt1
	jnz	x4

	dec	cnt2
	jnz	duke
.exit
end