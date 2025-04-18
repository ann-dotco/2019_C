#include "stdio.h"
#include "oled.h"
#include "main.h"
#include "arm_math.h"
#include "font.h"
#include "string.h"
 #include <stdlib.h>

 #include "usart.h"



 #define PROTECT_BAND 5 // 保护带宽度，单位：FFT索引点数
#define  FFT_Len 1024
#define  Half_FFT_Len  512
extern  float32_t FFT_Outputdata[FFT_Len];
extern  float32_t FFT_Mag_Outputdata[FFT_Len/2];//计算复数的模


extern float32_t ADC_Value_V[1024]; 
extern uint16_t ADC_Value[1024]; 
void FFT_test(float32_t FFT_Inputbuf[ ]);
void ADC_FFT(uint16_t ADC_Value[1024] );
