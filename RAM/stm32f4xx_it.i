# 1 "src/stm32f4xx_it.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 412 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "src/stm32f4xx_it.c" 2
# 25 "src/stm32f4xx_it.c"
# 1 "./inc\\stm32f4xx_it.h" 1
# 38 "./inc\\stm32f4xx_it.h"
void NMI_Handler(void);
void HardFault_Handler(void) __attribute__((noreturn));
void MemManage_Handler(void ) __attribute__((noreturn));
void BusFault_Handler(void) __attribute__((noreturn));
void UsageFault_Handler(void) __attribute__((noreturn));
void SVC_Handler(void);
void DebugMon_Handler(void);
void PendSV_Handler(void);
void SysTick_Handler(void);
# 26 "src/stm32f4xx_it.c" 2
# 47 "src/stm32f4xx_it.c"
void NMI_Handler(void)
{
}
# 69 "src/stm32f4xx_it.c"
void MemManage_Handler(void)
{

  while (1)
  {
  }
}






void BusFault_Handler(void)
{

  while (1)
  {
  }
}






void UsageFault_Handler(void)
{

  while (1)
  {
  }
}
# 117 "src/stm32f4xx_it.c"
void DebugMon_Handler(void)
{
}
