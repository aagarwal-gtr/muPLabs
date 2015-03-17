.model tiny
.486
.data
array1	dw	2500h, 560ah, 3605h, 7355h, 330ah, 838fh, 4523h, 4545h, 8534h, 7811h
array2	dw 	10 dup(?)
.code
.startup
	lea si, array1
	lea di, array1+20
	mov cl, 0ah
x1:	mov ax, [si]
	mov [di], ax
	inc si
	inc si
	inc di
	inc di
	dec cl
	jnz x1
.exit
end