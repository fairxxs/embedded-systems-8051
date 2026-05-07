;============================================================
; Lab2Ex2.asm
; Author : Gaukhar Assyrzhanova
; Group  : IIoT-2401
;
; Description:
;   Reads the state of the switch connected to P1.0.
;   Sends that state to the LED connected to P2.7.
;   Switch open  (P1.0 = 1) -> P2.7 = 1 -> LED OFF (pull-up)
;   Switch closed (P1.0 = 0) -> P2.7 = 0 -> LED ON  (pull-up)
;
;============================================================

        ORG     0H         ; 
AGAIN:  MOV     C, P1.0   ; 
        MOV     P2.7, C   ; 
        SJMP    AGAIN     ; 
        END
