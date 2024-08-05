;;Jubran Khoury 1201264 

;;; Directives
 PRESERVE8
 THUMB 
 
; Vector Table Mapped to Address 0 at Reset
; Linker requires __Vectors to be exported
	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors DCD INITIAL_MSP 
	DCD Reset_Handler ; reset vector
	ALIGN
; The program
; Linker requires Reset_Handler
	AREA MYCODE, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
	ALIGN
		
;;; Define Procedures

FACTORIAL PROC
	
LOOP
    MUL R0,R0,R1
    SUB R1, R1, #1
    CMP R1, #0
    BEQ ENDD
    B LOOP
 

ZEROFACTORIAL
    MOV R0, #1 ; the result is 1
	
    ENDP
		
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Reset_Handler
    MOV R1, #5 ; the input number
    MOV R0, #1 ; to contain the result

    MOV R2, #0 ; to compare the input number with 0 if equal then the result is 1
    CMP R1, R2
    BEQ ZEROFACTORIAL
    BL FACTORIAL




ENDD

STOP
    B STOP

    END
