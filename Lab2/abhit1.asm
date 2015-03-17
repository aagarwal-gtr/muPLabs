.model tiny
.486
.data
dat1	dd	12345678h, 12222222h, 345678abh, 78076788h
max1	dd	?
.code
.startup
	lea	si, dat1
	mov	cx, 4
	lodsd
x1:	cmp	eax, [si]
	jae	x2
	mov	eax, [si]
x2:	add	si, 4
	loop	x1
	mov	max1, eax
.exit
end