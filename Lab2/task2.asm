.model tiny
.386
.data
N1 DW 53FEh, 95ADh, 1B34h, 2250h, 1C28h, 682Eh, 2342h, 2F9Ah
N2 DW 4A92h, 345Bh, 0B2D9h, 0A03Bh, 2C02h, 21D5h, 684Ah, 0D24Bh
RES DW 8 DUP(?)
CARRY DB 00h
.code
.startup
		LEA BX, N1
		LEA SI, N2
		LEA DI, RES
		MOV CL, 08h
		ADD BX, 000Eh
		ADD SI, 000Eh
		ADD DI, 000Eh
		CLC
X1:		MOV AX, [BX]
		MOV DX, [SI]
		ADC [DI], AX
		DEC SI
		DEC SI
		DEC BX
		DEC BX
		DEC DI
		DEC DI
		DEC CL
		JNZ X1
		JNC X2
		INC CARRY
X2:
.exit
end