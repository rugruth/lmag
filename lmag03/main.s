
org $8000

main:
	ld hl, msg
loop:
	ld a, (hl)
	or a
	jr z, exit
	rst $10
	inc hl
	jr loop
exit:
	ret
	
msg:
	defm 'Hola ensamblador ZX Spectrum', 0

end $8000
