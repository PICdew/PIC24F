//****************************************
// Sonar_HCSR04
// MCU: PIC24F
// 2013.06.23
// Regis Hsu
//****************************************

#include "Compiler.h"
#include "HardwareProfile.h"

#include "i2c.h"
#include "i2c_func.h"
#include "sonar_hcsr04.h"

#include "FreeRTOS.h"
#include "task.h"
#include "cn_intr.h"


int Sonar_HCSR04_Count_up, Sonar_HCSR04_Count_down;

#if 0
 //Interrupt Service Routine for Change Notification
 void _ISRFAST _CNInterrupt (void) {
     _CNIF = 0;    //clear the change notification interrupt bit
     if (_RD9) {
         Sonar_HCSR04_Count_up = TMR2 ;
     }
     else {
         Sonar_HCSR04_Count_down = TMR2;
     }

 }
#endif

void Sonar_HCSR04_Init(void)
{

    TRISDbits.TRISD8 = 0;       // output
    ODCDbits.ODD8 = 1;          // turn-on the Open-Drain feature to control 5v output by pull-high-R
    TRISDbits.TRISD9 = 1;       // input
    ODCDbits.ODD9 = 1;          // turn-on the Open-Drain feature to control 5v output by pull-high-R

    /** Configure Change Notification general interrupt  */
    _CN54IE = 1;        // Enable CN54 interrupt
    _CN54PUE = 1;       // pull-up enable
    _CN54PDE = 1;       // pull-down enable
    _CNIF = 0;         //Clear the interrupt flag
    _CNIP = 2;         //Choose the priority 2
    
    // cleart trigger pin
    _LATD8 = 0;
    
    Sonar_HCSR04_Count_up = Sonar_HCSR04_Count_up = 0;
}

int Sonar_HCSR04_Trigger(void)
{
    int i;
    UINT16 count;

    _CNIE = 1;         //enable the Change Notification general interrupt

    // generate a 10us pulse to trigger the Soner device
    _LATD8 = 1;
    delay_us(Sonar_HCSR04_TRIG);       // the pulse must large then 10us
    _LATD8 = 0;

    T2CON = 0x00; //Stops the Timer2 and reset control reg.
    T2CONbits.TCKPS =0x01; // 1:8 Prescare value, Fcy=8MHz/2=4MHz=0.25us, 1:8= 0.25*8 = 2us
    //T2CONbits.TCKPS =0x00; // 1:1 Prescare value, Fcy=8MHz/2=4MHz=0.25us,
    TMR2 = 0x00; //Clear contents of the timer register
    PR2 = 0xFFFF; //Load the Period register with the value 0xFFFF
    // IPC1bits.T2IP = 0x01; //Setup Timer2 interrupt for desired priority level
    // (this example assigns level 1 priority)
    //IFS0bits.T2IF = 0; //Clear the Timer2 interrupt status flag
    //IEC0bits.T2IE = 1; //Enable Timer2 interrupts
    //T2CONbits.TGATE = 1; //Set up Timer2 for operation in Gated
    //Time Accumulation mode
    T2CONbits.TON = 1; //Start Timer2

#if 0
    T2CONbits.TON = 1; //Start Timer2
    for (i=0; i<1000; i++) Nop();
    count = TMR2;
    T2CONbits.TON = 0; //Start Timer2
    for (i=0; i<1000; i++) Nop();
    count = TMR2;
    T2CONbits.TON = 1; //Start Timer2
    for (i=0; i<1000; i++) Nop();
    count = TMR2;
#endif
}

void Sonar_HCSR04_Test(void)
{
    int distance;
    int a,b;

    Sonar_HCSR04_Init();

    while(1) {
        //if (!Sonar_HCSR04_Count_up && !Sonar_HCSR04_Count_down)
        Sonar_HCSR04_Trigger();

        for (a=0; a<15000; a++) Nop();

        if (Sonar_HCSR04_Count_up >0 && Sonar_HCSR04_Count_down >0)
        {
            distance = (Sonar_HCSR04_Count_down - Sonar_HCSR04_Count_up) / 58 /2;
        }
        else
            b++;

        Sonar_HCSR04_Count_up = 0;
        Sonar_HCSR04_Count_down = 0;
        Lcd_1602_DisplayData(a, 2, 0);
        Lcd_1602_DisplayData(b, 7, 0);

        for (distance=0; distance < 1000; distance++) Nop();
    }
}

void vTask_Sonar_HCSR04(void *pvParameters )
{
    portTickType xLastWakeTime;
    int distance;
    INT8 speed;

    Sonar_HCSR04_Init();
    distance = 0;
    speed = 0;
    xLastWakeTime = xTaskGetTickCount();
    for( ;; )
    {
        vTaskDelayUntil(&xLastWakeTime,3000);

        if (!CN_Function_Enable(CN_FUNC_SONAR))
            return;

        // Trigger the sonar
        Sonar_HCSR04_Trigger();
        vTaskDelay(100);       //spec: 60ms for each detection
        T2CONbits.TON = 0; //Stop Timer2
        _CNIE = 0;         //disable the Change Notification general interrupt
        if (Sonar_HCSR04_Count_down >0 && Sonar_HCSR04_Count_up >0) {
            distance = Sonar_HCSR04_Count_down - Sonar_HCSR04_Count_up;
            distance = distance / (116) ;   // 116 = 58*2, timer is 2us
                                            // 為什麼除以58等於厘米，  Y米=（X秒*344）/2
                                            // X秒=（ 2*Y米）/344 ==》X秒=0.0058*Y米 ==》厘米=微秒/58
            if (distance > 30)
                speed = 30;
            else
                speed = distance+1;

            StepMoter_28BYJ48_Speed(speed);
        }
        Sonar_HCSR04_Count_up = Sonar_HCSR04_Count_down = 0;
        Lcd_1602_DisplayData(distance, 2, 0);

        CN_Function_Release(CN_FUNC_SONAR);
    }
}
