	.org $080D
	.segment "STARTUP"
	.segment "INIT"
	.segment "ONCE"
	.segment "CODE"
	
	;; KERNAL
	CHROUT = $FFD2

	;; PETSCII
	NEWLINE = $0D

	;; zero page shenanigans
	;; we'll be loading code to the zero page at $30
	ZP = $0030
	
	
	jmp start

start:
	lda #$A9		; lda immediate mode = op code $A9
	sta ZP
	lda #$01		; immediate mode argument 1
	sta ZP+1
	lda #$60		; rts = op code $60
	sta ZP+2
	jsr ZP
	jsr print_hex

	lda #NEWLINE
	jsr CHROUT
	
	rts

	;; some func is here just in case I want to load the polymorphic code to here instead of the zero page
somefunc:
	nop
	nop
	nop
	
print_hex:
	pha			; push original A to stack
	lsr
	lsr
	lsr
	lsr			; A=A >> 4
	jsr print_hex_digit
	pla			; pull original A back from stack
	and #$0F		; A=A & 0b00001111
	jsr print_hex_digit
	rts

print_hex_digit:
	cmp #$A
	bpl @letter
	ora #$30 		; PETSCII numbers: 1=$31, 2=$32, 3=$33, etc
	bra @print
	@letter:
	clc
	adc #$37		; PETSCII letters: A=$41, B=$42, etc

	@print:
	jsr CHROUT
	rts

