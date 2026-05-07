; ==========================================================
; Name: Gaukhar Assyrzhanova
; Group: IIoT-2401
; ==========================================================
; Calculation for 11.0592 MHz crystal:
; Machine Cycle (MC) = 12 / 11.0592 MHz = 1.085 microseconds
;
; DELAY Subroutine calculation:
; Total cycles approx: 255 * 255 * 2 MC = 130,050 MC
; Total time: 130,050 * 1.085 us = 141,104 us ˜ 0.14 seconds
; ==========================================================

ORG 0000H

HERE: SETB P2.7        ; 
      LCALL DELAY      ; 
      CLR P2.7         ; 
      LCALL DELAY      ;
      SJMP HERE        ; 


ORG 0300H
DELAY: MOV R5, #0FFH    ; 
AGAIN: DJNZ R5, AGAIN    ; 
       RET

END