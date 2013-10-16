//****************************************
// CN_INTR
// 2013.10.12
// Regis Hsu
//****************************************

#ifndef _CN_INTR_
#define _CN_INTR_

#define CN_FUNC_IR_REMOTE       01
#define CN_FUNC_SONAR           02
#define CN_FUNC_NONE            00

int CN_Function_Enable(int i);
int CN_Function_Release(int i);
void CN_Function_Reset(void);
#endif
