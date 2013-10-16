//****************************************
// UART1_Test
// MCU: PIC24F
// 2013.10.10
// Regis Hsu
//
// Assign U1RX To Pin RP16 (PIN51, F3)
// Assign U1TX To Pin RP30 (PIN52, F2)
// Link these 2 pins together for test, the LCD will show "LOVE"
//****************************************

#include "Compiler.h"
#include "HardwareProfile.h"

#include "FreeRTOS.h"
#include "task.h"
#include "uart1_test.h"

static unsigned char rx[4];
static int uart_buf_cnt;
static int uart_bufferfull;

//void __attribute__((__interrupt__, auto_psv)) _U1TXInterrupt(void)
void _ISRFAST _U1TXInterrupt(void)
{
    IFS0bits.U1TXIF = 0;
    mLED_7 = 1;
}

//void __attribute__((__interrupt__, auto_psv)) _U1RXInterrupt(void)
void _ISRFAST _U1RXInterrupt(void)
{
    IFS0bits.U1RXIF = 0;
    mLED_5 = 1;

    while(U1STAbits.URXDA)
    {
        rx[uart_buf_cnt] = U1RXREG;
        uart_buf_cnt++;
        if(uart_buf_cnt == 4)
        {
            uart_buf_cnt = 0;
            uart_bufferfull = 1;
            break;   // Note any extra chars received will overite the begining of the buffer again
        }
    }
 }

void UART1_Init(void)
{
    uart_buf_cnt = 0;
    uart_bufferfull = 0;

    AD1PCFGL = 0xFFFF; //All Digital pins

    TRISFbits.TRISF3 = 1;
    // Assign U1RX To Pin RP16 (PIN51, F3)
    RPINR18bits.U1RXR = 16;

    TRISFbits.TRISF2 = 0;
    // Assign U1TX To Pin RP30 (PIN52, F2)
    RPOR15bits.RP30R = 3;   // The U1TX id is 3

    //U1BRG = 50;  //set baud speed
    U1BRG = 2272;         //set baud speed 110 at 4MHz FCY(8MHz OSC)
    //U1BRG = 25;             //set baud speed 9600 at 4MHz FCY(8MHz OSC)
    U1MODEbits.UARTEN = 1;		// UART1 is Enabled
    U1MODEbits.USIDL = 0;		// Continue operation at Idlestate
    U1MODEbits.IREN = 0;		// IrDA En/Decoder is disabled
    U1MODEbits.RTSMD = 0; 		// flow control mode
    //U1MODEbits.UEN = 0b10;		// UTX, RTX, U2CTS, U2RTS are enable and on use.
    U1MODEbits.UEN = 0;                 // UTX, RTX are enable and on use.
    //U1MODEbits.WAKE = 1;		// Wake-up on start bit is enabled
    U1MODEbits.WAKE = 0;		// Wake-up on start bit is disabled
    U1MODEbits.LPBACK = 0;		// Loop-back is disabled
    U1MODEbits.ABAUD = 0;		// auto baud is disabled
    U1MODEbits.RXINV = 0;		// No RX inversion
    U1MODEbits.BRGH = 0;		// low boud rate
    U1MODEbits.PDSEL = 0;               // 8bit no parity
    U1MODEbits.STSEL = 0;		// one stop bit

    U1STAbits.UTXISEL1 = 1;         //Interrupt when a character is transferred to the Transmit Shift Register (TSR) and as a result, the transmit buffer becomes empty
    U1STAbits.UTXISEL0 = 0;
    U1STAbits.UTXINV = 0;
    U1STAbits.UTXBRK = 0;
    U1STAbits.UTXEN = 1;
    U1STAbits.URXISEL1 = 0;        //Interrupt is set when any character is received and transferred from the RSR to the receive buffer.Receive buffer has one or more characters.
    U1STAbits.URXISEL0 = 0;         // Interrupt flag bit is set when a character is received
    U1STAbits.ADDEN = 0;
    U1STAbits.RIDLE = 0;
    //reset RX TX interrupt flag
    IFS0bits.U1RXIF = 0;
    IFS0bits.U1TXIF = 0;
    //set up interrupt for UART1, receive and transmit
    //IFS0bits.U1RXIF = 0;

    // U1RX interrup priority
    IPC2bits.U1RXIP2=1;
    IPC2bits.U1RXIP1=0;
    IPC2bits.U1RXIP0=1;

    IPC3bits.U1TXIP2 = 1;
    IPC3bits.U1TXIP1 = 0;
    IPC3bits.U1TXIP0 = 1;

    //IEC0bits.U1RXIE = 0;
    _U1RXIE = 1;            // enable U1RX interrupt
    _U1TXIE = 1;            // enable U1TX interrupt

}
//UART transmit function, parameter Ch is the character to send
void UART1PutChar (unsigned char Ch) //I have the missing ( in my code, the forum is not letting me post it!.
{
    //transmit ONLY if TX buffer is empty
    while (U1STAbits.UTXBF == 1);
    U1TXREG = Ch;
}

 //UART receive function, returns the value received.
char UART1GetChar() //I have the missing ( in my code, the forum is not letting me post it!.
{
    char Temp;
    //wait for buffer to fill up, wait for interrupt
    if (IFS0bits.U1RXIF == 1)
        Temp = U1RXREG;
    else
        Temp = 0xFF;
    //reset interrupt
    //IFS0bits.U1RXIF = 0;
    //return my received byte
    return Temp;
}

#if 1
void vTask_Uart1_Test(void *pvParameters )
{
    portTickType xLastWakeTime;
    unsigned char i, j;

    i = j = 0;

    UART1_Init();
    xLastWakeTime = xTaskGetTickCount();
    for( ;; )
    {
        vTaskDelayUntil(&xLastWakeTime,2000);

        i = 1 - i;
        mLED_6 = i;

        if (i)
        {
            UART1PutChar ('L');
            UART1PutChar ('O');
            UART1PutChar ('V');
            UART1PutChar ('E');
            //vTaskDelay(100);       //100ms
            Lcd_1602_clear();

        }
        else
        {
            mLED_5 = 0;
            mLED_7 = 0;

            Lcd_1602_DisplayOneChar(2,1,rx[0]);
            Lcd_1602_DisplayOneChar(3,1,rx[1]);
            Lcd_1602_DisplayOneChar(4,1,rx[2]);
            Lcd_1602_DisplayOneChar(5,1,rx[3]);
            rx[0] = rx[1] = rx[2] = rx[3] = 0;

        }
    }
}

#endif

#if 0
void vTask_IR_Remote(void *pvParameters )
{
    portTickType xLastWakeTime;
    unsigned char i, j;

    i = j = 0;

    IR_Remote_Init();
    xLastWakeTime = xTaskGetTickCount();
    for( ;; )
    {
        vTaskDelayUntil(&xLastWakeTime,2000);

        i = 1 - i;
        mLED_6 = i;

        if (j == 0)
        {
            rx[0] = rx[1] = rx[2] = rx[3] = 0;
            UART1PutChar ('L');
            UART1PutChar ('O');
            UART1PutChar ('V');
            UART1PutChar ('E');
            vTaskDelay(100);       //100ms
        }

       //if (uart_bufferfull)
        {
            Lcd_1602_DisplayOneChar(2,1,rx[j]);

            mLED_5 = 0;
            mLED_7 = 0;
            //uart_bufferfull = 0;
            j++;
            if (j == 4)
            {
                j = 0;
                //rx[0] = rx[1] = rx[2] = rx[3] = 0;
            }
        }
    }
}
#endif
