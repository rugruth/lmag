
org $8000

main:
	ld hl, $4000
	ld (hl), $ff
	ret

end $8000
