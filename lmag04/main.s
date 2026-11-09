
org $8000

; Variable sistema: atributos permanentes pantalla 
; Formato: FLASH, BRIGHT, PAPER, INK (FBPPPIII) 
ATTR_S: equ $5c8d 
 
; Variable sistema: atributo actual (FBPPPIII) 
ATTR_T: equ $5c8f 

; ------------------------------------------------ 
; Rutina de la ROM similar al AT de Basic. 
; Posiciona cursor en coordenadas especificadas. 
; Entrada: B -> Coordenada Y. 
;          C -> Coordenada X. 
; En esta rutina, la esquina superior izquierda  
; de la pantalla es (24, 32). 
; Altera el valor de los registros A, DE y HL. 
; ------------------------------------------------ 
LOCATE: equ $0dd9 

; ------------------------------------------------ 
; Rutina de la ROM semejante al CLS de Basic. 
; Borra la pantalla usando los atributos cargados 
; en la variable de sistema ATTR_S. 
; Altera el valor de los registros AF, BC, DE y HL. 
; ------------------------------------------------ 
CLS: equ $0daf 

main:
	ld a, $0e 	; 0000 1110 F=0, B=0, P=1 (blue), I = 110

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
