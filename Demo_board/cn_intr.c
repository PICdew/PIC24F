//****************************************
// CN_Intr
// MCU: PIC24F
// 2013.10.12
// Regis Hsu
//
// For the interrupt routine of CHANGE NOTIFICATION (CN) PINS
//****************************************

#include "Compiler.h"
#include "HardwareProfile.h"

#include "FreeRTOS.h"
#include "task.h"
#include "ir_remote.h"
#include "sonar_hcsr04.h"
#include "cn_intr.h"

static int _cn_func, _cn_ir_stage;

void CN_Function_Reset(void)
{
    _cn_func = CN_FUNC_NONE;
    _CNIE = 0;         //disable the Change Notification general interrupt
}


int CN_Function_Enable(int i)
{
    if (_cn_func != CN_FUNC_NONE)
        return 0;

    _cn_func = i;
    _CNIE = 1;         //enable the Change Notification general interrupt
    return 1;
}

int CN_Function_Release(int i)
{
    if (_cn_func != i)
        return 0;

    _CNIE = 0;         //disable the Change Notification general interrupt
    _cn_func = CN_FUNC_NONE;
    return 1;

}

/*  Ensure that the CN pin is configured as a digital input by setting the associated bit in the
TRISx register.
2. Enable interrupts for the selected CN pins by setting the appropriate bits in the CNENx
registers.
3. Turn on the weak pull-up devices (if desired) for the selected CN pins by setting the
appropriate bits in the CNPUx registers.
4. Clear the CNxIF interrupt flag.
5. Select the desired interrupt priority for CN interrupts using the CNxIP<2:0> control bits.
6. Enable CN interrupts using the CNxIE control bit.
*/

// 前導碼(9ms) High+ (4.5ms) Low + 用戶識別碼(8 bits) +用戶識別碼(8 bits) +操作碼(8 bits) +操作碼反碼(8 bts) + High(100ms)
// 以脈寬為0.565ms 、間隔0.56ms 、週期為1.125ms的組合表示二進位的“ 0 ”；以脈寬為0.565ms 、間隔1.685ms 、週期為2.25ms的組合表示二進位的“ 1 ”。
#define IR_REMOTE_LEAD_CODE 01
#define IR_REMOTE_USER_CODE 02
#define IR_REMOTE_END_CODE  03

#if 1
//Interrupt Service Routine for Change Notification
void _ISRFAST _CNInterrupt (void)
{
     _CNIF = 0;    //clear the change notification interrupt bit

     switch (_cn_func)
     {
         case CN_FUNC_IR_REMOTE:
             switch (_cn_ir_stage)
             {
                 case IR_REMOTE_LEAD_CODE:
                     break;
                 case IR_REMOTE_USER_CODE:
                     break;
                 case IR_REMOTE_END_CODE:
                     break;
                 default:
                     break;

             }

             break;

         case CN_FUNC_SONAR:
            if (_RD9) {
                Sonar_HCSR04_Count_up = TMR2 ;
            }
            else {
                Sonar_HCSR04_Count_down = TMR2;
            }
            break;

           default:
             _cn_func = CN_FUNC_NONE;
             break;
     }
}
#endif


