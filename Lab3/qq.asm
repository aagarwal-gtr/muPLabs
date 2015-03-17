.model tiny
.data
str1 db 'hel$lo 1'
.code
.startup
	lea dx, str1
	mov AH, 09h
	int 21h
.exit
end