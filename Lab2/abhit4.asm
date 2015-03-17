.model	tiny
.486
.data
array1	dw	0a100h, 2145h, 7810h, 4534h, 900ah, 0312h, 0a110h, 0010h
count	dw	8
neg1	dw	?
.code
.startup
	lea	si,array1
	mov	cx,count
x1:	lodsw
	bt	ax,15
	jnc	x2
	inc	neg1
x2:	loop	x1	
.exit
end		