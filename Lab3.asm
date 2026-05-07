;=======================================================================
; PRACTICE 3 - EXERCISE 1 : 8-BIT BINARY UP-COUNTER ON PORT 2
; Name: Gaukhar Assyrzhanova
; Group: IIoT-2401
; Target MCU  : Generic 8051 (e.g., AT89C51) @ 12 MHz crystal
; LED wiring  : Active-HIGH ("pull-down" topology)
;               P2.x -> 200O resistor -> LED anode ; LED cathode -> GND
;               Logic '1' on P2.x  =>  LED ON
;               Logic '0' on P2.x  =>  LED OFF
; Behavior    : Continuously counts 00h..FFh on P2, then wraps to 00h
;=======================================================================
       ORG   0000H                 ; 

MAIN:
        MOV   A, #00H               ; 

COUNT_LOOP:
        MOV   P2, A                 ; 

        ACALL DELAY                 ;

        INC   A                     ; 

        SJMP  COUNT_LOOP            
DELAY:
        MOV   R7, #250               ; 

INNER:
        DJNZ  R7, INNER             ;

        RET                         ; 

        END