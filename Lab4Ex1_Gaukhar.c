/*===========================================================================
 * File    : Lab4Ex1_Gaukhar.c
 * Target  : AT89S52 (8051 family), 11 MHz Crystal
 * Purpose : Reads a 4-bit binary value from DIP switches on Port 1 (P1.0-P1.3)
 *           and drives a Common Anode 7-Segment Display connected to Port 2.
 *
 * PORT 2 WIRING (Common Anode - LOW = ON, HIGH = OFF):
 *   P2.7 -> 200O -> Segment A (top horizontal)
 *   P2.6 -> 200O -> Segment B (top-right vertical)
 *   P2.5 -> 200O -> Segment C (bottom-right vertical)
 *   P2.4 -> 200O -> Segment D (bottom horizontal)
 *   P2.3 -> 200O -> Segment E (bottom-left vertical)
 *   P2.2 -> 200O -> Segment F (top-left vertical)
 *   P2.1 -> 200O -> Segment G (middle horizontal)
 *   P2.0 -> 200O -> Segment DP (decimal point - unused, always OFF)
 *
 * PORT 1 WIRING (Switch Input):
 *   P1.0 = Switch 0 (LSB) ... P1.3 = Switch 3 (MSB)
 *   Switch closed = Logic HIGH (1) via pull-down 200O + VCC connection
 *===========================================================================*/

#include <reg51.h>  

void main(void)
{
    unsigned char SW;  
 
    P1 = 0xFF;

    while(1)  
    {
              SW = P1 & 0x0F;

               switch(SW)
        {
            case 0:  
                P2 = 0x03;  
                break;

            case 1: 
                P2 = 0x9F;  
                break;

            case 2:  
                P2 = 0x25;  
                break;

            case 3:  
                P2 = 0x0D;  
                break;

            case 4:  
                P2 = 0x99;  
                break;

            case 5:  
                P2 = 0x49; 
                break;

            case 6:
                P2 = 0x41; 
                break;

            case 7:  
                P2 = 0x1F;  
                break;

            case 8:  
                P2 = 0x01;  
                break;

            case 9:  
                P2 = 0x09;  
                break;

            case 10: 
                P2 = 0x11;  
                break;

            case 11: 
                P2 = 0xC1;  
                break;

            case 12: 
                P2 = 0x63;  
                break;

            case 13: 
                P2 = 0x85;  
                break;

            case 14: 
                P2 = 0x61;  
                break;

            case 15: 
                P2 = 0x71;  
                break;

            default: 
                P2 = 0xFF;  
                break;
        }
    } 
} 