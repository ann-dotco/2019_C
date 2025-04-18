#include "FFT.H"

char Lcd_Disp_String1[21]; // 显示数组
char Lcd_Disp_String2[21]; // 显示数组
char Lcd_Disp_String3[21]; // 显示数组
float32_t real,real2;
float32_t imag,imag2;
float32_t phase_rad,phase_rad1 ,phase_rad2;  // 相位 (弧度)
float32_t phase_deg,phase_deg1 , phase_deg2;
float32_t FFT_Outputdata[FFT_Len];  
float32_t FFT_Outputdata2[FFT_Len];          // FFT结果输出
float32_t FFT_Inputbuf[FFT_Len];            // FFT数据输入
float32_t FFT_Mag_Outputdata[Half_FFT_Len];
float32_t FFT_Mag_Outputdata2[Half_FFT_Len];  // 计算复数的模
uint16_t ADC_Value[512];
float32_t ADC_Value_V[512];
uint16_t ADC_Value2[512];
float32_t ADC_Value_V2[512];
float32_t phase_degrees1[FFT_Len/ 2];  // 保存每个频率点的相位，频谱长度的一半
float32_t phase_degrees2[FFT_Len/ 2]; 
float32_t x[512];
/////这条编译链专用的串口重构函数
int _write(int file, char *ptr, int len) {
  extern UART_HandleTypeDef huart3;
  HAL_UART_Transmit(&huart3, (uint8_t *)ptr, len, 1000);
  return len;
}


void FFT_test( ) {
  arm_rfft_fast_instance_f32 S;
  uint16_t max_index1 = 0;
  float32_t max_mag1 = 0.0f;
  arm_rfft_fast_init_f32(&S, FFT_Len);
 
  /*测试输入
 
   */
//  for (int n = 0; n < 512; n++) {
//     x[n] = sinf(2 * PI * 97* n / 512 + PI/6); // φ₀ = 69°
//   }
    // arm_rfft_fast_f32(&S, x, FFT_Outputdata, 0);
    arm_rfft_fast_f32(&S, ADC_Value_V, FFT_Outputdata, 0);
    for (int i = 1; i < FFT_Len / 2; i++) 
{
 
      real = FFT_Outputdata[2 * i];
      imag = FFT_Outputdata[2 * i + 1];
      phase_rad1= atan2f(imag, real);
      phase_deg1 = phase_rad1 * 180.0f / PI;
      phase_degrees1[i] = phase_deg1;

}
    arm_cmplx_mag_f32(FFT_Outputdata, FFT_Mag_Outputdata, FFT_Len/2);

    arm_rfft_fast_f32(&S, ADC_Value_V2, FFT_Outputdata2, 0);
    for (int i = 1; i < FFT_Len / 2; i++) 
    {

      real2 = FFT_Outputdata2[2 * i];
      imag2 = FFT_Outputdata2[2 * i + 1];
      phase_rad2 = atan2f(imag2, real2);
      phase_deg2 = phase_rad2 * 180.0f / PI;
      phase_degrees2[i] = phase_deg2;

    }
    arm_cmplx_mag_f32(FFT_Outputdata2, FFT_Mag_Outputdata2, FFT_Len/2);
      for (int i = 40; i < Half_FFT_Len-70; i++) {
        if (FFT_Mag_Outputdata[i] > max_mag1) {
          
            max_mag1 = FFT_Mag_Outputdata[i];
            max_index1 = i;
        }
    }
    phase_deg1=phase_degrees1[max_index1];
    phase_deg2=phase_degrees2[max_index1];
    phase_deg=phase_deg2-phase_deg1;
    if (phase_deg > 180) phase_deg = phase_deg - 180.0f;

    if (phase_deg< -180) 
    {
      phase_deg = phase_deg + 180.0f;
      if ( phase_deg<0)
      {
        phase_deg=phase_deg+180;
      }
    }
  int a=phase_deg*10;
  printf("x0.val=%d\xff\xff\xff",a);

  OLED_NewFrame();
	  sprintf((char *)Lcd_Disp_String1, "Ph:%4.2f ", phase_deg);	
    sprintf((char *)Lcd_Disp_String2, "Ph:%4.2f", phase_deg1);	
    sprintf((char *)Lcd_Disp_String3, "Ph:%4.2f ", phase_deg2);	
    
    OLED_PrintString(0, 0, Lcd_Disp_String1, &font16x16, OLED_COLOR_NORMAL);			
    OLED_PrintString(0, 16, Lcd_Disp_String2, &font16x16, OLED_COLOR_NORMAL);	
    OLED_PrintString(0, 32, Lcd_Disp_String3, &font16x16, OLED_COLOR_NORMAL);						  
   OLED_ShowFrame();  
 
}

void ADC_FFT(uint16_t ADC_Value[512]) {
  uint16_t i = 0;
  // ADC转换值转换为浮点数（电压值）
  for (i = 0; i < 512; i++) {
    ADC_Value_V[i] = ((float32_t)ADC_Value[i] * 3.30f) / 4095.0f;
  }

}

void ADC_FFT2(uint16_t ADC_Value2[512]) {
  uint16_t i = 0;
  // ADC转换值转换为浮点数（电压值）
  for (i = 0; i < 512; i++) {
    ADC_Value_V2[i] = ((float32_t)ADC_Value2[i] * 3.30f) / 4095.0f;
  }

}


void ApplyHanningWindow(float32_t *data, uint16_t length) {
  for (uint16_t i = 0; i < length; i++) {
      float32_t window = 0.5f * (1.0f - cosf(2.0f * PI * i / (length - 1)));
      data[i] *= window;
  }
}
