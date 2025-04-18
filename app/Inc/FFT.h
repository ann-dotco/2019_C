#include "stdio.h"
#include "oled.h"
#include "main.h"
#include "arm_math.h"
#include "font.h"
#include "string.h"
#include <stdlib.h>
#include "usart.h"

#define  FFT_Len 512
#define  Half_FFT_Len  256

extern float32_t ADC_Value_V2[512]; 
extern uint16_t ADC_Value2[512]; 
extern float32_t ADC_Value_V[512]; 
extern uint16_t ADC_Value[512]; 
void FFT_test();
void ADC_FFT(uint16_t ADC_Value[512] );
void ADC_FFT2(uint16_t ADC_Value2[512]);
void ApplyHanningWindow(float32_t *data, uint16_t length);