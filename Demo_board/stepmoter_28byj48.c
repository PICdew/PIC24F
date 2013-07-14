//****************************************
// StepMoter_28BYJ48
// 2013.06.19
// Regis Hsu
//****************************************

#include "Compiler.h"
#include "HardwareProfile.h"

#include "i2c.h"
#include "i2c_func.h"
#include "stepmoter_28byj48.h"

#include "FreeRTOS.h"
#include "task.h"

static INT8 n_step_position;
static INT8 n_step_speed_ms;

static INT8 task_motot_start;
static INT8 task_direction;


void StepMoter_28BYJ48_Speed(INT8 n)
{
    n_step_speed_ms = n;
}

void StepMoter_28BYJ48_Release(void)
{
    _LATA4 = 0;
    _LATA5 = 0;
    _LATA14 = 0;
    _LATA15 = 0;
}

inline void StepMoter_28BYJ48_Move(INT8 dir)
{
    switch (n_step_position) {
        case 0:
            _LATA15 = 0;
            _LATA4 = 1;
            _LATA5 = 0;
            break;
        case 1:
            _LATA4 = 0;
            _LATA5 = 1;
            _LATA14 = 0;
            break;
        case 2:
            _LATA5 = 0;
            _LATA14 = 1;
            _LATA15 = 0;
            break;
        case 3:
            _LATA14 = 0;
            _LATA15 = 1;
            _LATA4 = 0;
            break;
        default:
            while (1);
            break;
    }
    
    if (dir) {
        n_step_position--;
        if (n_step_position < 0)
            n_step_position = 3;
    }
    else {
        n_step_position++;
        if (n_step_position > 3)
            n_step_position = 0;
    }
}

void StepMoter_28BYJ48_Init(void)
{

   // set the port to be output
    TRISAbits.TRISA4 = 0;       //output
    TRISAbits.TRISA5 = 0;       //output
    TRISAbits.TRISA14 = 0;      //output
    TRISAbits.TRISA15 = 0;      //output

    n_step_position = 0;
    StepMoter_28BYJ48_Speed(8); //8ms is smooth
    StepMoter_28BYJ48_Release();
    StepMoter_28BYJ48_Direction(MOTOR_CCW);
}

void MoterTest(void)
{
 
    int temp, i, j, k;
    int ms;

    StepMoter_28BYJ48_Init();
    ms = 30;
    i = 0;

    for (k=0; k<14; k++){
        StepMoter_28BYJ48_Speed(ms);
        Lcd_1602_DisplayData(ms, 2, 0);
        ms = ms - 2;
        for (j=0; j<2048; j++){
            //Lcd_1602_DisplayData(j, 7, 0);
            StepMoter_28BYJ48_Move(i);
            delay_ms(n_step_speed_ms);
        }
        i = 1 -i;
    }
    StepMoter_28BYJ48_Release();
}

void vTask_StepMoter_28BYJ48(void *pvParameters )
{
    portTickType xLastWakeTime;
    
    StepMoter_28BYJ48_Init();
    StepMoter_28BYJ48_Speed(4);
    xLastWakeTime = xTaskGetTickCount();
    for( ;; )
    {
        vTaskDelayUntil(&xLastWakeTime, n_step_speed_ms);
        StepMoter_28BYJ48_Move(task_direction);
    }
}

// dir: 0:CW, 1:CCW
void StepMoter_28BYJ48_Direction(INT8 dir)
{
    task_direction = dir;
}
