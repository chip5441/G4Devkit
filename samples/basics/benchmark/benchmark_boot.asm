;*******************************************************************************
;
;*******************************************************************************

.text

; Interrupt vector
.word _interrupt_Reset ; RESET interrupt handler
.word 0 ; Space for the other interrupts

;
; The default CPU context is fixed at address 8
_mainCtx:
.zero 204 ; registers (r0..pc), flags register, rim0/rim1, and floating point registers


;
; Things we need from the C file
extern _appMain

;*******************************************************************************
; Interrupt handlers
;*******************************************************************************

.text
public _interrupt_Reset
_interrupt_Reset:
	bl _appMain
	

;*******************************************************************************
;								Data
;*******************************************************************************
.data
	
