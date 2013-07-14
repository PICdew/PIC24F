//****************************************
// StepMoter_28BYJ48
// 2013.06.19
// Regis Hsu
//****************************************


#ifndef _StepMoter_28BYJ48_
#define _StepMoter_28BYJ48_

#define MOTOR_CCW   0
#define MOTOR_CW    1

void StepMoter_28BYJ48_Speed(INT8 n);
void StepMoter_28BYJ48_Release(void);
void StepMoter_28BYJ48_Move(INT8 dir);
void StepMoter_28BYJ48_Init(void);
void MoterTest(void);
void vTask_StepMoter_28BYJ48 (void *pvParameters );
void StepMoter_28BYJ48_Direction(INT8 dir);
#endif
