/********************************************************************
 FileName:     	HardwareProfile - PIC24FJ256GB210 PIM.h
 Dependencies:  See INCLUDES section
 Processor:     PIC24FJ256GB210
 Hardware:      PIC24FJ256GB210 PIM
 Compiler:      Microchip C30
 Company:       Microchip Technology, Inc.

 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the �Company�) for its PIC� Microcontroller is intended and
 supplied to you, the Company�s customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN �AS IS� CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

********************************************************************
 File Description:

 Change History:
  Rev   Description
  2.6a  Initial revision
********************************************************************/

#ifndef HARDWARE_PROFILE_PIC24FJ256GB210_PIM_H
#define HARDWARE_PROFILE_PIC24FJ256GB210_PIM_H


    /*******************************************************************/
    /*******************************************************************/
    /*******************************************************************/
    /******** Application specific definitions *************************/
    /*******************************************************************/
    /*******************************************************************/
    /*******************************************************************/

    /** Board definition ***********************************************/
    //These defintions will tell the main() function which board is
    //  currently selected.  This will allow the application to add
    //  the correct configuration bits as wells use the correct
    //  initialization functions for the board.  These defitions are only
    //  required in the stack provided demos.  They are not required in
    //  final application design.
    #define DEMO_BOARD PIC24FJ256GB210_PIM
    #define PIC24FJ256GB210_PIM
    #define CLOCK_FREQ 32000000

    #define DEMO_BOARD_NAME_STRING "PIC24FJ256GB210 PIM"
    
    /** LED ************************************************************/
    #define InitAllLEDs()      LATA &= 0x00; TRISA &= 0x00;  
    
    #define LED0_On()           LATAbits.LATA0 = 1;
    #define LED1_On()           LATAbits.LATA1 = 1;
    #define LED2_On()           LATAbits.LATA2 = 1;
    #define LED3_On()           LATAbits.LATA3 = 1;
    #define LED4_On()           LATAbits.LATA4 = 1;
    #define LED5_On()           LATAbits.LATA5 = 1;
    #define LED6_On()           LATAbits.LATA6 = 1;
    #define LED7_On()           LATAbits.LATA7 = 1;
     
    #define LED0_Off()          LATAbits.LATA0 = 0;
    #define LED1_Off()          LATAbits.LATA1 = 0;
    #define LED2_Off()          LATAbits.LATA2 = 0;
    #define LED3_Off()          LATAbits.LATA3 = 0;
    #define LED4_Off()          LATAbits.LATA4 = 0;
    #define LED5_Off()          LATAbits.LATA5 = 0;
    #define LED6_Off()          LATAbits.LATA6 = 0;
    #define LED7_Off()          LATAbits.LATA7 = 0;
    
    /** SWITCH *********************************************************/
    #define InitAllSwitches()  TRISDbits.TRISD6=1; TRISDbits.TRISD7=1; TRISAbits.TRISA7=1; TRISDbits.TRISD13=1; ANSDbits.ANSD6=0; ANSDbits.ANSD7=0; ANSAbits.ANSA7=0;

    #define Switch1Pressed()    ((PORTDbits.RD13  == 0)? TRUE : FALSE)
    #define Switch2Pressed()    ((PORTAbits.RA7  == 0)? TRUE : FALSE)
    #define Switch3Pressed()    ((PORTDbits.RD7  == 0)? TRUE : FALSE)
    #define Switch4Pressed()    ((PORTDbits.RD6 == 0)? TRUE : FALSE)

    /** POT ************************************************************/
    #define mInitPOT()  {ANSBbits.ANSB5 = 0;    AD1CON2bits.VCFG = 0x0;    AD1CON3bits.ADCS = 0xFF;    AD1CON1bits.SSRC = 0x0;    AD1CON3bits.SAMC = 0b10000;    AD1CON1bits.FORM = 0b00;    AD1CON2bits.SMPI = 0x0;    AD1CON1bits.ADON = 1;}

    /** I/O pin definitions ********************************************/
    #define INPUT_PIN 1
    #define OUTPUT_PIN 0

    /** Debug print interface ******************************************/
    #define DEBUG_Init(a)
    #define DEBUG_Error(a)          
    #define DEBUG_PrintString(a)    
    #define DEBUG_PrintHex(a)

#endif  //HARDWARE_PROFILE_PIC24FJ256GB210_PIM_H
