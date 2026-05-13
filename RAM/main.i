# 1 "src/main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 412 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "src/main.c" 2
# 22 "src/main.c"
# 1 "./inc\\stm32f439xx.h" 1
# 85 "./inc\\stm32f439xx.h"
 typedef enum
 {

   NonMaskableInt_IRQn = -14,
   MemoryManagement_IRQn = -12,
   BusFault_IRQn = -11,
   UsageFault_IRQn = -10,
   SVCall_IRQn = -5,
   DebugMonitor_IRQn = -4,
   PendSV_IRQn = -2,
   SysTick_IRQn = -1,

   WWDG_IRQn = 0,
   PVD_IRQn = 1,
   TAMP_STAMP_IRQn = 2,
   RTC_WKUP_IRQn = 3,
   FLASH_IRQn = 4,
   RCC_IRQn = 5,
   EXTI0_IRQn = 6,
   EXTI1_IRQn = 7,
   EXTI2_IRQn = 8,
   EXTI3_IRQn = 9,
   EXTI4_IRQn = 10,
   DMA1_Stream0_IRQn = 11,
   DMA1_Stream1_IRQn = 12,
   DMA1_Stream2_IRQn = 13,
   DMA1_Stream3_IRQn = 14,
   DMA1_Stream4_IRQn = 15,
   DMA1_Stream5_IRQn = 16,
   DMA1_Stream6_IRQn = 17,
   ADC_IRQn = 18,
   CAN1_TX_IRQn = 19,
   CAN1_RX0_IRQn = 20,
   CAN1_RX1_IRQn = 21,
   CAN1_SCE_IRQn = 22,
   EXTI9_5_IRQn = 23,
   TIM1_BRK_TIM9_IRQn = 24,
   TIM1_UP_TIM10_IRQn = 25,
   TIM1_TRG_COM_TIM11_IRQn = 26,
   TIM1_CC_IRQn = 27,
   TIM2_IRQn = 28,
   TIM3_IRQn = 29,
   TIM4_IRQn = 30,
   I2C1_EV_IRQn = 31,
   I2C1_ER_IRQn = 32,
   I2C2_EV_IRQn = 33,
   I2C2_ER_IRQn = 34,
   SPI1_IRQn = 35,
   SPI2_IRQn = 36,
   USART1_IRQn = 37,
   USART2_IRQn = 38,
   USART3_IRQn = 39,
   EXTI15_10_IRQn = 40,
   RTC_Alarm_IRQn = 41,
   OTG_FS_WKUP_IRQn = 42,
   TIM8_BRK_TIM12_IRQn = 43,
   TIM8_UP_TIM13_IRQn = 44,
   TIM8_TRG_COM_TIM14_IRQn = 45,
   TIM8_CC_IRQn = 46,
   DMA1_Stream7_IRQn = 47,
   FMC_IRQn = 48,
   SDIO_IRQn = 49,
   TIM5_IRQn = 50,
   SPI3_IRQn = 51,
   UART4_IRQn = 52,
   UART5_IRQn = 53,
   TIM6_DAC_IRQn = 54,
   TIM7_IRQn = 55,
   DMA2_Stream0_IRQn = 56,
   DMA2_Stream1_IRQn = 57,
   DMA2_Stream2_IRQn = 58,
   DMA2_Stream3_IRQn = 59,
   DMA2_Stream4_IRQn = 60,
   ETH_IRQn = 61,
   ETH_WKUP_IRQn = 62,
   CAN2_TX_IRQn = 63,
   CAN2_RX0_IRQn = 64,
   CAN2_RX1_IRQn = 65,
   CAN2_SCE_IRQn = 66,
   OTG_FS_IRQn = 67,
   DMA2_Stream5_IRQn = 68,
   DMA2_Stream6_IRQn = 69,
   DMA2_Stream7_IRQn = 70,
   USART6_IRQn = 71,
   I2C3_EV_IRQn = 72,
   I2C3_ER_IRQn = 73,
   OTG_HS_EP1_OUT_IRQn = 74,
   OTG_HS_EP1_IN_IRQn = 75,
   OTG_HS_WKUP_IRQn = 76,
   OTG_HS_IRQn = 77,
   DCMI_IRQn = 78,
   CRYP_IRQn = 79,
   HASH_RNG_IRQn = 80,
   FPU_IRQn = 81,
   UART7_IRQn = 82,
   UART8_IRQn = 83,
   SPI4_IRQn = 84,
   SPI5_IRQn = 85,
   SPI6_IRQn = 86,
   SAI1_IRQn = 87,
   LTDC_IRQn = 88,
   LTDC_ER_IRQn = 89,
   DMA2D_IRQn = 90
 } IRQn_Type;





# 1 "./inc/CMSIS\\core_cm4.h" 1
# 29 "./inc/CMSIS\\core_cm4.h" 3





# 1 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdint.h" 1 3
# 56 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdint.h" 3
typedef signed char int8_t;
typedef signed short int int16_t;
typedef signed int int32_t;
typedef signed long long int int64_t;


typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long int uint64_t;





typedef signed char int_least8_t;
typedef signed short int int_least16_t;
typedef signed int int_least32_t;
typedef signed long long int int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long int uint_least64_t;




typedef signed int int_fast8_t;
typedef signed int int_fast16_t;
typedef signed int int_fast32_t;
typedef signed long long int int_fast64_t;


typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long int uint_fast64_t;






typedef signed int intptr_t;
typedef unsigned int uintptr_t;



typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
# 35 "./inc/CMSIS\\core_cm4.h" 2 3
# 63 "./inc/CMSIS\\core_cm4.h" 3
# 1 "./inc/CMSIS\\cmsis_version.h" 1 3
# 29 "./inc/CMSIS\\cmsis_version.h" 3
# 64 "./inc/CMSIS\\core_cm4.h" 2 3
# 162 "./inc/CMSIS\\core_cm4.h" 3
# 1 "./inc/CMSIS\\cmsis_compiler.h" 1 3
# 47 "./inc/CMSIS\\cmsis_compiler.h" 3
# 1 "./inc/CMSIS\\cmsis_armclang.h" 1 3
# 31 "./inc/CMSIS\\cmsis_armclang.h" 3
# 64 "./inc/CMSIS\\cmsis_armclang.h" 3
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed)) T_UINT32 { uint32_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT16_WRITE { uint16_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT16_READ { uint16_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT32_WRITE { uint32_t v; };
#pragma clang diagnostic pop



#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpacked"

  struct __attribute__((packed, aligned(1))) T_UINT32_READ { uint32_t v; };
#pragma clang diagnostic pop
# 260 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
  op2 %= 32U;
  if (op2 == 0U)
  {
    return op1;
  }
  return (op1 >> op2) | (op1 << (32U - op2));
}
# 295 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint8_t __CLZ(uint32_t value)
{
# 306 "./inc/CMSIS\\cmsis_armclang.h" 3
  if (value == 0U)
  {
    return 32U;
  }
  return __builtin_clz(value);
}
# 425 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __RRX(uint32_t value)
{
  uint32_t result;

  __asm volatile ("rrx %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 440 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint8_t __LDRBT(volatile uint8_t *ptr)
{
  uint32_t result;

  __asm volatile ("ldrbt %0, %1" : "=r" (result) : "Q" (*ptr) );
  return ((uint8_t) result);
}
# 455 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint16_t __LDRHT(volatile uint16_t *ptr)
{
  uint32_t result;

  __asm volatile ("ldrht %0, %1" : "=r" (result) : "Q" (*ptr) );
  return ((uint16_t) result);
}
# 470 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __LDRT(volatile uint32_t *ptr)
{
  uint32_t result;

  __asm volatile ("ldrt %0, %1" : "=r" (result) : "Q" (*ptr) );
  return(result);
}
# 485 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __STRBT(uint8_t value, volatile uint8_t *ptr)
{
  __asm volatile ("strbt %1, %0" : "=Q" (*ptr) : "r" ((uint32_t)value) );
}
# 497 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __STRHT(uint16_t value, volatile uint16_t *ptr)
{
  __asm volatile ("strht %1, %0" : "=Q" (*ptr) : "r" ((uint32_t)value) );
}
# 509 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __STRT(uint32_t value, volatile uint32_t *ptr)
{
  __asm volatile ("strt %1, %0" : "=Q" (*ptr) : "r" (value) );
}
# 737 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __enable_irq(void)
{
  __asm volatile ("cpsie i" : : : "memory");
}
# 750 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __disable_irq(void)
{
  __asm volatile ("cpsid i" : : : "memory");
}
# 762 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_CONTROL(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, control" : "=r" (result) );
  return(result);
}
# 792 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_CONTROL(uint32_t control)
{
  __asm volatile ("MSR control, %0" : : "r" (control) : "memory");
  __builtin_arm_isb(0xF);
}
# 818 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_IPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, ipsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static __inline uint32_t __get_APSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, apsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static __inline uint32_t __get_xPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, xpsr" : "=r" (result) );
  return(result);
}







__attribute__((always_inline)) static __inline uint32_t __get_PSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, psp" : "=r" (result) );
  return(result);
}
# 890 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_PSP(uint32_t topOfProcStack)
{
  __asm volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
}
# 914 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_MSP(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, msp" : "=r" (result) );
  return(result);
}
# 944 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_MSP(uint32_t topOfMainStack)
{
  __asm volatile ("MSR msp, %0" : : "r" (topOfMainStack) : );
}
# 995 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline uint32_t __get_PRIMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, primask" : "=r" (result) );
  return(result);
}
# 1025 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_PRIMASK(uint32_t priMask)
{
  __asm volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
}
# 1053 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __enable_fault_irq(void)
{
  __asm volatile ("cpsie f" : : : "memory");
}







__attribute__((always_inline)) static __inline void __disable_fault_irq(void)
{
  __asm volatile ("cpsid f" : : : "memory");
}







__attribute__((always_inline)) static __inline uint32_t __get_BASEPRI(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, basepri" : "=r" (result) );
  return(result);
}
# 1105 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_BASEPRI(uint32_t basePri)
{
  __asm volatile ("MSR basepri, %0" : : "r" (basePri) : "memory");
}
# 1130 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  __asm volatile ("MSR basepri_max, %0" : : "r" (basePri) : "memory");
}







__attribute__((always_inline)) static __inline uint32_t __get_FAULTMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, faultmask" : "=r" (result) );
  return(result);
}
# 1171 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  __asm volatile ("MSR faultmask, %0" : : "r" (faultMask) : "memory");
}
# 1491 "./inc/CMSIS\\cmsis_armclang.h" 3
__attribute__((always_inline)) static __inline int32_t __SMMLA (int32_t op1, int32_t op2, int32_t op3)
{
  int32_t result;

  __asm volatile ("smmla %0, %1, %2, %3" : "=r" (result): "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}
# 48 "./inc/CMSIS\\cmsis_compiler.h" 2 3
# 163 "./inc/CMSIS\\core_cm4.h" 2 3
# 264 "./inc/CMSIS\\core_cm4.h" 3
typedef union
{
  struct
  {
    uint32_t _reserved0:16;
    uint32_t GE:4;
    uint32_t _reserved1:7;
    uint32_t Q:1;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} APSR_Type;
# 303 "./inc/CMSIS\\core_cm4.h" 3
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:23;
  } b;
  uint32_t w;
} IPSR_Type;
# 321 "./inc/CMSIS\\core_cm4.h" 3
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:1;
    uint32_t ICI_IT_1:6;
    uint32_t GE:4;
    uint32_t _reserved1:4;
    uint32_t T:1;
    uint32_t ICI_IT_2:2;
    uint32_t Q:1;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} xPSR_Type;
# 376 "./inc/CMSIS\\core_cm4.h" 3
typedef union
{
  struct
  {
    uint32_t nPRIV:1;
    uint32_t SPSEL:1;
    uint32_t FPCA:1;
    uint32_t _reserved0:29;
  } b;
  uint32_t w;
} CONTROL_Type;
# 411 "./inc/CMSIS\\core_cm4.h" 3
typedef struct
{
  volatile uint32_t ISER[8U];
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];
        uint32_t RESERVED1[24U];
  volatile uint32_t ISPR[8U];
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];
        uint32_t RESERVED4[56U];
  volatile uint8_t IP[240U];
        uint32_t RESERVED5[644U];
  volatile uint32_t STIR;
} NVIC_Type;
# 445 "./inc/CMSIS\\core_cm4.h" 3
typedef struct
{
  volatile const uint32_t CPUID;
  volatile uint32_t ICSR;
  volatile uint32_t VTOR;
  volatile uint32_t AIRCR;
  volatile uint32_t SCR;
  volatile uint32_t CCR;
  volatile uint8_t SHP[12U];
  volatile uint32_t SHCSR;
  volatile uint32_t CFSR;
  volatile uint32_t HFSR;
  volatile uint32_t DFSR;
  volatile uint32_t MMFAR;
  volatile uint32_t BFAR;
  volatile uint32_t AFSR;
  volatile const uint32_t PFR[2U];
  volatile const uint32_t DFR;
  volatile const uint32_t ADR;
  volatile const uint32_t MMFR[4U];
  volatile const uint32_t ISAR[5U];
        uint32_t RESERVED0[5U];
  volatile uint32_t CPACR;
} SCB_Type;
# 724 "./inc/CMSIS\\core_cm4.h" 3
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const uint32_t ICTR;
  volatile uint32_t ACTLR;
} SCnSCB_Type;
# 764 "./inc/CMSIS\\core_cm4.h" 3
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t LOAD;
  volatile uint32_t VAL;
  volatile const uint32_t CALIB;
} SysTick_Type;
# 816 "./inc/CMSIS\\core_cm4.h" 3
typedef struct
{
  volatile union
  {
    volatile uint8_t u8;
    volatile uint16_t u16;
    volatile uint32_t u32;
  } PORT [32U];
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;
        uint32_t RESERVED3[32U];
        uint32_t RESERVED4[43U];
  volatile uint32_t LAR;
  volatile const uint32_t LSR;
        uint32_t RESERVED5[6U];
  volatile const uint32_t PID4;
  volatile const uint32_t PID5;
  volatile const uint32_t PID6;
  volatile const uint32_t PID7;
  volatile const uint32_t PID0;
  volatile const uint32_t PID1;
  volatile const uint32_t PID2;
  volatile const uint32_t PID3;
  volatile const uint32_t CID0;
  volatile const uint32_t CID1;
  volatile const uint32_t CID2;
  volatile const uint32_t CID3;
} ITM_Type;
# 904 "./inc/CMSIS\\core_cm4.h" 3
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t CYCCNT;
  volatile uint32_t CPICNT;
  volatile uint32_t EXCCNT;
  volatile uint32_t SLEEPCNT;
  volatile uint32_t LSUCNT;
  volatile uint32_t FOLDCNT;
  volatile const uint32_t PCSR;
  volatile uint32_t COMP0;
  volatile uint32_t MASK0;
  volatile uint32_t FUNCTION0;
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;
  volatile uint32_t MASK1;
  volatile uint32_t FUNCTION1;
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;
  volatile uint32_t MASK2;
  volatile uint32_t FUNCTION2;
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;
  volatile uint32_t MASK3;
  volatile uint32_t FUNCTION3;
} DWT_Type;
# 1051 "./inc/CMSIS\\core_cm4.h" 3
typedef struct
{
  volatile const uint32_t SSPSR;
  volatile uint32_t CSPSR;
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;
        uint32_t RESERVED2[131U];
  volatile const uint32_t FFSR;
  volatile uint32_t FFCR;
  volatile const uint32_t FSCR;
        uint32_t RESERVED3[759U];
  volatile const uint32_t TRIGGER;
  volatile const uint32_t FIFO0;
  volatile const uint32_t ITATBCTR2;
        uint32_t RESERVED4[1U];
  volatile const uint32_t ITATBCTR0;
  volatile const uint32_t FIFO1;
  volatile uint32_t ITCTRL;
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;
  volatile uint32_t CLAIMCLR;
        uint32_t RESERVED7[8U];
  volatile const uint32_t DEVID;
  volatile const uint32_t DEVTYPE;
} TPI_Type;
# 1213 "./inc/CMSIS\\core_cm4.h" 3
typedef struct
{
  volatile const uint32_t TYPE;
  volatile uint32_t CTRL;
  volatile uint32_t RNR;
  volatile uint32_t RBAR;
  volatile uint32_t RASR;
  volatile uint32_t RBAR_A1;
  volatile uint32_t RASR_A1;
  volatile uint32_t RBAR_A2;
  volatile uint32_t RASR_A2;
  volatile uint32_t RBAR_A3;
  volatile uint32_t RASR_A3;
} MPU_Type;
# 1309 "./inc/CMSIS\\core_cm4.h" 3
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile uint32_t FPCCR;
  volatile uint32_t FPCAR;
  volatile uint32_t FPDSCR;
  volatile const uint32_t MVFR0;
  volatile const uint32_t MVFR1;
  volatile const uint32_t MVFR2;
} FPU_Type;
# 1421 "./inc/CMSIS\\core_cm4.h" 3
typedef struct
{
  volatile uint32_t DHCSR;
  volatile uint32_t DCRSR;
  volatile uint32_t DCRDR;
  volatile uint32_t DEMCR;
} CoreDebug_Type;
# 1653 "./inc/CMSIS\\core_cm4.h" 3
static __inline void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);

  reg_value = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));
  reg_value = (reg_value |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U) );
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = reg_value;
}







static __inline uint32_t __NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}
# 1684 "./inc/CMSIS\\core_cm4.h" 3
static __inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    __asm volatile("":::"memory");
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __asm volatile("":::"memory");
  }
}
# 1703 "./inc/CMSIS\\core_cm4.h" 3
static __inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 1722 "./inc/CMSIS\\core_cm4.h" 3
static __inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __builtin_arm_dsb(0xF);
    __builtin_arm_isb(0xF);
  }
}
# 1741 "./inc/CMSIS\\core_cm4.h" 3
static __inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 1760 "./inc/CMSIS\\core_cm4.h" 3
static __inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}
# 1775 "./inc/CMSIS\\core_cm4.h" 3
static __inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}
# 1792 "./inc/CMSIS\\core_cm4.h" 3
static __inline uint32_t __NVIC_GetActive(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}
# 1814 "./inc/CMSIS\\core_cm4.h" 3
static __inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)] = (uint8_t)((priority << (8U - 4U)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 4U)) & (uint32_t)0xFFUL);
  }
}
# 1836 "./inc/CMSIS\\core_cm4.h" 3
static __inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)] >> (8U - 4U)));
  }
  else
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] >> (8U - 4U)));
  }
}
# 1861 "./inc/CMSIS\\core_cm4.h" 3
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4U)) ? (uint32_t)(4U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(4U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4U));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority & (uint32_t)((1UL << (SubPriorityBits )) - 1UL)))
         );
}
# 1888 "./inc/CMSIS\\core_cm4.h" 3
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4U)) ? (uint32_t)(4U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(4U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4U));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority = (Priority ) & (uint32_t)((1UL << (SubPriorityBits )) - 1UL);
}
# 1911 "./inc/CMSIS\\core_cm4.h" 3
static __inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  vectors[(int32_t)IRQn + 16] = vector;

}
# 1927 "./inc/CMSIS\\core_cm4.h" 3
static __inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  return vectors[(int32_t)IRQn + 16];
}






__attribute__((__noreturn__)) static __inline void __NVIC_SystemReset(void)
{
  __builtin_arm_dsb(0xF);

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = (uint32_t)((0x5FAUL << 16U) |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U) );
  __builtin_arm_dsb(0xF);

  for(;;)
  {
    __builtin_arm_nop();
  }
}
# 1960 "./inc/CMSIS\\core_cm4.h" 3
# 1 "./inc/CMSIS\\mpu_armv7.h" 1 3
# 29 "./inc/CMSIS\\mpu_armv7.h" 3
# 183 "./inc/CMSIS\\mpu_armv7.h" 3
typedef struct {
  uint32_t RBAR;
  uint32_t RASR;
} ARM_MPU_Region_t;




static __inline void ARM_MPU_Enable(uint32_t MPU_Control)
{
  __builtin_arm_dmb(0xF);
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL = MPU_Control | (1UL );

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR |= (1UL << 16U);

  __builtin_arm_dsb(0xF);
  __builtin_arm_isb(0xF);
}



static __inline void ARM_MPU_Disable(void)
{
  __builtin_arm_dmb(0xF);

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR &= ~(1UL << 16U);

  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL &= ~(1UL );
  __builtin_arm_dsb(0xF);
  __builtin_arm_isb(0xF);
}




static __inline void ARM_MPU_ClrRegion(uint32_t rnr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = 0U;
}





static __inline void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}






static __inline void ARM_MPU_SetRegionEx(uint32_t rnr, uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}






static __inline void ARM_MPU_OrderedMemcpy(volatile uint32_t* dst, const uint32_t* __restrict src, uint32_t len)
{
  uint32_t i;
  for (i = 0U; i < len; ++i)
  {
    dst[i] = src[i];
  }
}





static __inline void ARM_MPU_Load(ARM_MPU_Region_t const* table, uint32_t cnt)
{
  const uint32_t rowWordSize = sizeof(ARM_MPU_Region_t)/4U;
  while (cnt > 4U) {
    ARM_MPU_OrderedMemcpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), 4U*rowWordSize);
    table += 4U;
    cnt -= 4U;
  }
  ARM_MPU_OrderedMemcpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), cnt*rowWordSize);
}
# 1961 "./inc/CMSIS\\core_cm4.h" 2 3
# 1981 "./inc/CMSIS\\core_cm4.h" 3
static __inline uint32_t SCB_GetFPUType(void)
{
  uint32_t mvfr0;

  mvfr0 = ((FPU_Type *) ((0xE000E000UL) + 0x0F30UL) )->MVFR0;
  if ((mvfr0 & ((0xFUL << 4U) | (0xFUL << 8U))) == 0x020U)
  {
    return 1U;
  }
  else
  {
    return 0U;
  }
}
# 2022 "./inc/CMSIS\\core_cm4.h" 3
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = (uint32_t)(ticks - 1UL);
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 4U) - 1UL);
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL = 0UL;
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2U) |
                   (1UL << 1U) |
                   (1UL );
  return (0UL);
}
# 2052 "./inc/CMSIS\\core_cm4.h" 3
extern volatile int32_t ITM_RxBuffer;
# 2064 "./inc/CMSIS\\core_cm4.h" 3
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL ) != 0UL) )
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __builtin_arm_nop();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}
# 2085 "./inc/CMSIS\\core_cm4.h" 3
static __inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;

  if (ITM_RxBuffer != ((int32_t)0x5AA55AA5U))
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = ((int32_t)0x5AA55AA5U);
  }

  return (ch);
}
# 2105 "./inc/CMSIS\\core_cm4.h" 3
static __inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == ((int32_t)0x5AA55AA5U))
  {
    return (0);
  }
  else
  {
    return (1);
  }
}
# 195 "./inc\\stm32f439xx.h" 2
# 1 "./RTE/Device/STM32F439IIHx\\system_stm32f4xx.h" 1
# 74 "./RTE/Device/STM32F439IIHx\\system_stm32f4xx.h"
extern uint32_t SystemCoreClock;

extern const uint8_t AHBPrescTable[16];
extern const uint8_t APBPrescTable[8];
# 103 "./RTE/Device/STM32F439IIHx\\system_stm32f4xx.h"
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);
# 196 "./inc\\stm32f439xx.h" 2
# 206 "./inc\\stm32f439xx.h"
 typedef struct
 {
   volatile uint32_t SR;
   volatile uint32_t CR1;
   volatile uint32_t CR2;
   volatile uint32_t SMPR1;
   volatile uint32_t SMPR2;
   volatile uint32_t JOFR1;
   volatile uint32_t JOFR2;
   volatile uint32_t JOFR3;
   volatile uint32_t JOFR4;
   volatile uint32_t HTR;
   volatile uint32_t LTR;
   volatile uint32_t SQR1;
   volatile uint32_t SQR2;
   volatile uint32_t SQR3;
   volatile uint32_t JSQR;
   volatile uint32_t JDR1;
   volatile uint32_t JDR2;
   volatile uint32_t JDR3;
   volatile uint32_t JDR4;
   volatile uint32_t DR;
 } ADC_TypeDef;

 typedef struct
 {
   volatile uint32_t CSR;
   volatile uint32_t CCR;
   volatile uint32_t CDR;

 } ADC_Common_TypeDef;






 typedef struct
 {
   volatile uint32_t TIR;
   volatile uint32_t TDTR;
   volatile uint32_t TDLR;
   volatile uint32_t TDHR;
 } CAN_TxMailBox_TypeDef;





 typedef struct
 {
   volatile uint32_t RIR;
   volatile uint32_t RDTR;
   volatile uint32_t RDLR;
   volatile uint32_t RDHR;
 } CAN_FIFOMailBox_TypeDef;





 typedef struct
 {
   volatile uint32_t FR1;
   volatile uint32_t FR2;
 } CAN_FilterRegister_TypeDef;





 typedef struct
 {
   volatile uint32_t MCR;
   volatile uint32_t MSR;
   volatile uint32_t TSR;
   volatile uint32_t RF0R;
   volatile uint32_t RF1R;
   volatile uint32_t IER;
   volatile uint32_t ESR;
   volatile uint32_t BTR;
   uint32_t RESERVED0[88];
   CAN_TxMailBox_TypeDef sTxMailBox[3];
   CAN_FIFOMailBox_TypeDef sFIFOMailBox[2];
   uint32_t RESERVED1[12];
   volatile uint32_t FMR;
   volatile uint32_t FM1R;
   uint32_t RESERVED2;
   volatile uint32_t FS1R;
   uint32_t RESERVED3;
   volatile uint32_t FFA1R;
   uint32_t RESERVED4;
   volatile uint32_t FA1R;
   uint32_t RESERVED5[8];
   CAN_FilterRegister_TypeDef sFilterRegister[28];
 } CAN_TypeDef;





 typedef struct
 {
   volatile uint32_t DR;
   volatile uint8_t IDR;
   uint8_t RESERVED0;
   uint16_t RESERVED1;
   volatile uint32_t CR;
 } CRC_TypeDef;





 typedef struct
 {
   volatile uint32_t CR;
   volatile uint32_t SWTRIGR;
   volatile uint32_t DHR12R1;
   volatile uint32_t DHR12L1;
   volatile uint32_t DHR8R1;
   volatile uint32_t DHR12R2;
   volatile uint32_t DHR12L2;
   volatile uint32_t DHR8R2;
   volatile uint32_t DHR12RD;
   volatile uint32_t DHR12LD;
   volatile uint32_t DHR8RD;
   volatile uint32_t DOR1;
   volatile uint32_t DOR2;
   volatile uint32_t SR;
 } DAC_TypeDef;





 typedef struct
 {
   volatile uint32_t IDCODE;
   volatile uint32_t CR;
   volatile uint32_t APB1FZ;
   volatile uint32_t APB2FZ;
 }DBGMCU_TypeDef;





 typedef struct
 {
   volatile uint32_t CR;
   volatile uint32_t SR;
   volatile uint32_t RISR;
   volatile uint32_t IER;
   volatile uint32_t MISR;
   volatile uint32_t ICR;
   volatile uint32_t ESCR;
   volatile uint32_t ESUR;
   volatile uint32_t CWSTRTR;
   volatile uint32_t CWSIZER;
   volatile uint32_t DR;
 } DCMI_TypeDef;





 typedef struct
 {
   volatile uint32_t CR;
   volatile uint32_t NDTR;
   volatile uint32_t PAR;
   volatile uint32_t M0AR;
   volatile uint32_t M1AR;
   volatile uint32_t FCR;
 } DMA_Stream_TypeDef;

 typedef struct
 {
   volatile uint32_t LISR;
   volatile uint32_t HISR;
   volatile uint32_t LIFCR;
   volatile uint32_t HIFCR;
 } DMA_TypeDef;





 typedef struct
 {
   volatile uint32_t CR;
   volatile uint32_t ISR;
   volatile uint32_t IFCR;
   volatile uint32_t FGMAR;
   volatile uint32_t FGOR;
   volatile uint32_t BGMAR;
   volatile uint32_t BGOR;
   volatile uint32_t FGPFCCR;
   volatile uint32_t FGCOLR;
   volatile uint32_t BGPFCCR;
   volatile uint32_t BGCOLR;
   volatile uint32_t FGCMAR;
   volatile uint32_t BGCMAR;
   volatile uint32_t OPFCCR;
   volatile uint32_t OCOLR;
   volatile uint32_t OMAR;
   volatile uint32_t OOR;
   volatile uint32_t NLR;
   volatile uint32_t LWR;
   volatile uint32_t AMTCR;
   uint32_t RESERVED[236];
   volatile uint32_t FGCLUT[256];
   volatile uint32_t BGCLUT[256];
 } DMA2D_TypeDef;





 typedef struct
 {
   volatile uint32_t MACCR;
   volatile uint32_t MACFFR;
   volatile uint32_t MACHTHR;
   volatile uint32_t MACHTLR;
   volatile uint32_t MACMIIAR;
   volatile uint32_t MACMIIDR;
   volatile uint32_t MACFCR;
   volatile uint32_t MACVLANTR;
   uint32_t RESERVED0[2];
   volatile uint32_t MACRWUFFR;
   volatile uint32_t MACPMTCSR;
   uint32_t RESERVED1;
   volatile uint32_t MACDBGR;
   volatile uint32_t MACSR;
   volatile uint32_t MACIMR;
   volatile uint32_t MACA0HR;
   volatile uint32_t MACA0LR;
   volatile uint32_t MACA1HR;
   volatile uint32_t MACA1LR;
   volatile uint32_t MACA2HR;
   volatile uint32_t MACA2LR;
   volatile uint32_t MACA3HR;
   volatile uint32_t MACA3LR;
   uint32_t RESERVED2[40];
   volatile uint32_t MMCCR;
   volatile uint32_t MMCRIR;
   volatile uint32_t MMCTIR;
   volatile uint32_t MMCRIMR;
   volatile uint32_t MMCTIMR;
   uint32_t RESERVED3[14];
   volatile uint32_t MMCTGFSCCR;
   volatile uint32_t MMCTGFMSCCR;
   uint32_t RESERVED4[5];
   volatile uint32_t MMCTGFCR;
   uint32_t RESERVED5[10];
   volatile uint32_t MMCRFCECR;
   volatile uint32_t MMCRFAECR;
   uint32_t RESERVED6[10];
   volatile uint32_t MMCRGUFCR;
   uint32_t RESERVED7[334];
   volatile uint32_t PTPTSCR;
   volatile uint32_t PTPSSIR;
   volatile uint32_t PTPTSHR;
   volatile uint32_t PTPTSLR;
   volatile uint32_t PTPTSHUR;
   volatile uint32_t PTPTSLUR;
   volatile uint32_t PTPTSAR;
   volatile uint32_t PTPTTHR;
   volatile uint32_t PTPTTLR;
   volatile uint32_t RESERVED8;
   volatile uint32_t PTPTSSR;
   uint32_t RESERVED9[565];
   volatile uint32_t DMABMR;
   volatile uint32_t DMATPDR;
   volatile uint32_t DMARPDR;
   volatile uint32_t DMARDLAR;
   volatile uint32_t DMATDLAR;
   volatile uint32_t DMASR;
   volatile uint32_t DMAOMR;
   volatile uint32_t DMAIER;
   volatile uint32_t DMAMFBOCR;
   volatile uint32_t DMARSWTR;
   uint32_t RESERVED10[8];
   volatile uint32_t DMACHTDR;
   volatile uint32_t DMACHRDR;
   volatile uint32_t DMACHTBAR;
   volatile uint32_t DMACHRBAR;
 } ETH_TypeDef;





 typedef struct
 {
   volatile uint32_t IMR;
   volatile uint32_t EMR;
   volatile uint32_t RTSR;
   volatile uint32_t FTSR;
   volatile uint32_t SWIER;
   volatile uint32_t PR;
 } EXTI_TypeDef;





 typedef struct
 {
   volatile uint32_t ACR;
   volatile uint32_t KEYR;
   volatile uint32_t OPTKEYR;
   volatile uint32_t SR;
   volatile uint32_t CR;
   volatile uint32_t OPTCR;
   volatile uint32_t OPTCR1;
 } FLASH_TypeDef;





 typedef struct
 {
   volatile uint32_t BTCR[8];
 } FMC_Bank1_TypeDef;





 typedef struct
 {
   volatile uint32_t BWTR[7];
 } FMC_Bank1E_TypeDef;




 typedef struct
 {
   volatile uint32_t PCR2;
   volatile uint32_t SR2;
   volatile uint32_t PMEM2;
   volatile uint32_t PATT2;
   uint32_t RESERVED0;
   volatile uint32_t ECCR2;
   uint32_t RESERVED1;
   uint32_t RESERVED2;
   volatile uint32_t PCR3;
   volatile uint32_t SR3;
   volatile uint32_t PMEM3;
   volatile uint32_t PATT3;
   uint32_t RESERVED3;
   volatile uint32_t ECCR3;
 } FMC_Bank2_3_TypeDef;





 typedef struct
 {
   volatile uint32_t PCR4;
   volatile uint32_t SR4;
   volatile uint32_t PMEM4;
   volatile uint32_t PATT4;
   volatile uint32_t PIO4;
 } FMC_Bank4_TypeDef;





 typedef struct
 {
   volatile uint32_t SDCR[2];
   volatile uint32_t SDTR[2];
   volatile uint32_t SDCMR;
   volatile uint32_t SDRTR;
   volatile uint32_t SDSR;
 } FMC_Bank5_6_TypeDef;





 typedef struct
 {
   volatile uint32_t MODER;
   volatile uint32_t OTYPER;
   volatile uint32_t OSPEEDR;
   volatile uint32_t PUPDR;
   volatile uint32_t IDR;
   volatile uint32_t ODR;
   volatile uint32_t BSRR;
   volatile uint32_t LCKR;
   volatile uint32_t AFR[2];
 } GPIO_TypeDef;





 typedef struct
 {
   volatile uint32_t MEMRMP;
   volatile uint32_t PMC;
   volatile uint32_t EXTICR[4];
   uint32_t RESERVED[2];
   volatile uint32_t CMPCR;
 } SYSCFG_TypeDef;





 typedef struct
 {
   volatile uint32_t CR1;
   volatile uint32_t CR2;
   volatile uint32_t OAR1;
   volatile uint32_t OAR2;
   volatile uint32_t DR;
   volatile uint32_t SR1;
   volatile uint32_t SR2;
   volatile uint32_t CCR;
   volatile uint32_t TRISE;
   volatile uint32_t FLTR;
 } I2C_TypeDef;





 typedef struct
 {
   volatile uint32_t KR;
   volatile uint32_t PR;
   volatile uint32_t RLR;
   volatile uint32_t SR;
 } IWDG_TypeDef;





 typedef struct
 {
   uint32_t RESERVED0[2];
   volatile uint32_t SSCR;
   volatile uint32_t BPCR;
   volatile uint32_t AWCR;
   volatile uint32_t TWCR;
   volatile uint32_t GCR;
   uint32_t RESERVED1[2];
   volatile uint32_t SRCR;
   uint32_t RESERVED2[1];
   volatile uint32_t BCCR;
   uint32_t RESERVED3[1];
   volatile uint32_t IER;
   volatile uint32_t ISR;
   volatile uint32_t ICR;
   volatile uint32_t LIPCR;
   volatile uint32_t CPSR;
   volatile uint32_t CDSR;
 } LTDC_TypeDef;





 typedef struct
 {
   volatile uint32_t CR;
   volatile uint32_t WHPCR;
   volatile uint32_t WVPCR;
   volatile uint32_t CKCR;
   volatile uint32_t PFCR;
   volatile uint32_t CACR;
   volatile uint32_t DCCR;
   volatile uint32_t BFCR;
   uint32_t RESERVED0[2];
   volatile uint32_t CFBAR;
   volatile uint32_t CFBLR;
   volatile uint32_t CFBLNR;
   uint32_t RESERVED1[3];
   volatile uint32_t CLUTWR;
 } LTDC_Layer_TypeDef;





 typedef struct
 {
   volatile uint32_t CR;
   volatile uint32_t CSR;
 } PWR_TypeDef;





 typedef struct
 {
   volatile uint32_t CR;
   volatile uint32_t PLLCFGR;
   volatile uint32_t CFGR;
   volatile uint32_t CIR;
   volatile uint32_t AHB1RSTR;
   volatile uint32_t AHB2RSTR;
   volatile uint32_t AHB3RSTR;
   uint32_t RESERVED0;
   volatile uint32_t APB1RSTR;
   volatile uint32_t APB2RSTR;
   uint32_t RESERVED1[2];
   volatile uint32_t AHB1ENR;
   volatile uint32_t AHB2ENR;
   volatile uint32_t AHB3ENR;
   uint32_t RESERVED2;
   volatile uint32_t APB1ENR;
   volatile uint32_t APB2ENR;
   uint32_t RESERVED3[2];
   volatile uint32_t AHB1LPENR;
   volatile uint32_t AHB2LPENR;
   volatile uint32_t AHB3LPENR;
   uint32_t RESERVED4;
   volatile uint32_t APB1LPENR;
   volatile uint32_t APB2LPENR;
   uint32_t RESERVED5[2];
   volatile uint32_t BDCR;
   volatile uint32_t CSR;
   uint32_t RESERVED6[2];
   volatile uint32_t SSCGR;
   volatile uint32_t PLLI2SCFGR;
   volatile uint32_t PLLSAICFGR;
   volatile uint32_t DCKCFGR;
 } RCC_TypeDef;





 typedef struct
 {
   volatile uint32_t TR;
   volatile uint32_t DR;
   volatile uint32_t CR;
   volatile uint32_t ISR;
   volatile uint32_t PRER;
   volatile uint32_t WUTR;
   volatile uint32_t CALIBR;
   volatile uint32_t ALRMAR;
   volatile uint32_t ALRMBR;
   volatile uint32_t WPR;
   volatile uint32_t SSR;
   volatile uint32_t SHIFTR;
   volatile uint32_t TSTR;
   volatile uint32_t TSDR;
   volatile uint32_t TSSSR;
   volatile uint32_t CALR;
   volatile uint32_t TAFCR;
   volatile uint32_t ALRMASSR;
   volatile uint32_t ALRMBSSR;
   uint32_t RESERVED7;
   volatile uint32_t BKP0R;
   volatile uint32_t BKP1R;
   volatile uint32_t BKP2R;
   volatile uint32_t BKP3R;
   volatile uint32_t BKP4R;
   volatile uint32_t BKP5R;
   volatile uint32_t BKP6R;
   volatile uint32_t BKP7R;
   volatile uint32_t BKP8R;
   volatile uint32_t BKP9R;
   volatile uint32_t BKP10R;
   volatile uint32_t BKP11R;
   volatile uint32_t BKP12R;
   volatile uint32_t BKP13R;
   volatile uint32_t BKP14R;
   volatile uint32_t BKP15R;
   volatile uint32_t BKP16R;
   volatile uint32_t BKP17R;
   volatile uint32_t BKP18R;
   volatile uint32_t BKP19R;
 } RTC_TypeDef;





 typedef struct
 {
   volatile uint32_t GCR;
 } SAI_TypeDef;

 typedef struct
 {
   volatile uint32_t CR1;
   volatile uint32_t CR2;
   volatile uint32_t FRCR;
   volatile uint32_t SLOTR;
   volatile uint32_t IMR;
   volatile uint32_t SR;
   volatile uint32_t CLRFR;
   volatile uint32_t DR;
 } SAI_Block_TypeDef;





 typedef struct
 {
   volatile uint32_t POWER;
   volatile uint32_t CLKCR;
   volatile uint32_t ARG;
   volatile uint32_t CMD;
   volatile const uint32_t RESPCMD;
   volatile const uint32_t RESP1;
   volatile const uint32_t RESP2;
   volatile const uint32_t RESP3;
   volatile const uint32_t RESP4;
   volatile uint32_t DTIMER;
   volatile uint32_t DLEN;
   volatile uint32_t DCTRL;
   volatile const uint32_t DCOUNT;
   volatile const uint32_t STA;
   volatile uint32_t ICR;
   volatile uint32_t MASK;
   uint32_t RESERVED0[2];
   volatile const uint32_t FIFOCNT;
   uint32_t RESERVED1[13];
   volatile uint32_t FIFO;
 } SDIO_TypeDef;





 typedef struct
 {
   volatile uint32_t CR1;
   volatile uint32_t CR2;
   volatile uint32_t SR;
   volatile uint32_t DR;
   volatile uint32_t CRCPR;
   volatile uint32_t RXCRCR;
   volatile uint32_t TXCRCR;
   volatile uint32_t I2SCFGR;
   volatile uint32_t I2SPR;
 } SPI_TypeDef;






 typedef struct
 {
   volatile uint32_t CR1;
   volatile uint32_t CR2;
   volatile uint32_t SMCR;
   volatile uint32_t DIER;
   volatile uint32_t SR;
   volatile uint32_t EGR;
   volatile uint32_t CCMR1;
   volatile uint32_t CCMR2;
   volatile uint32_t CCER;
   volatile uint32_t CNT;
   volatile uint32_t PSC;
   volatile uint32_t ARR;
   volatile uint32_t RCR;
   volatile uint32_t CCR1;
   volatile uint32_t CCR2;
   volatile uint32_t CCR3;
   volatile uint32_t CCR4;
   volatile uint32_t BDTR;
   volatile uint32_t DCR;
   volatile uint32_t DMAR;
   volatile uint32_t OR;
 } TIM_TypeDef;





 typedef struct
 {
   volatile uint32_t SR;
   volatile uint32_t DR;
   volatile uint32_t BRR;
   volatile uint32_t CR1;
   volatile uint32_t CR2;
   volatile uint32_t CR3;
   volatile uint32_t GTPR;
 } USART_TypeDef;





 typedef struct
 {
   volatile uint32_t CR;
   volatile uint32_t CFR;
   volatile uint32_t SR;
 } WWDG_TypeDef;





 typedef struct
 {
   volatile uint32_t CR;
   volatile uint32_t SR;
   volatile uint32_t DR;
   volatile uint32_t DOUT;
   volatile uint32_t DMACR;
   volatile uint32_t IMSCR;
   volatile uint32_t RISR;
   volatile uint32_t MISR;
   volatile uint32_t K0LR;
   volatile uint32_t K0RR;
   volatile uint32_t K1LR;
   volatile uint32_t K1RR;
   volatile uint32_t K2LR;
   volatile uint32_t K2RR;
   volatile uint32_t K3LR;
   volatile uint32_t K3RR;
   volatile uint32_t IV0LR;
   volatile uint32_t IV0RR;
   volatile uint32_t IV1LR;
   volatile uint32_t IV1RR;
   volatile uint32_t CSGCMCCM0R;
   volatile uint32_t CSGCMCCM1R;
   volatile uint32_t CSGCMCCM2R;
   volatile uint32_t CSGCMCCM3R;
   volatile uint32_t CSGCMCCM4R;
   volatile uint32_t CSGCMCCM5R;
   volatile uint32_t CSGCMCCM6R;
   volatile uint32_t CSGCMCCM7R;
   volatile uint32_t CSGCM0R;
   volatile uint32_t CSGCM1R;
   volatile uint32_t CSGCM2R;
   volatile uint32_t CSGCM3R;
   volatile uint32_t CSGCM4R;
   volatile uint32_t CSGCM5R;
   volatile uint32_t CSGCM6R;
   volatile uint32_t CSGCM7R;
 } CRYP_TypeDef;





 typedef struct
 {
   volatile uint32_t CR;
   volatile uint32_t DIN;
   volatile uint32_t STR;
   volatile uint32_t HR[5];
   volatile uint32_t IMR;
   volatile uint32_t SR;
     uint32_t RESERVED[52];
   volatile uint32_t CSR[54];
 } HASH_TypeDef;





 typedef struct
 {
   volatile uint32_t HR[8];
 } HASH_DIGEST_TypeDef;





 typedef struct
 {
   volatile uint32_t CR;
   volatile uint32_t SR;
   volatile uint32_t DR;
 } RNG_TypeDef;




 typedef struct
 {
   volatile uint32_t GOTGCTL;
   volatile uint32_t GOTGINT;
   volatile uint32_t GAHBCFG;
   volatile uint32_t GUSBCFG;
   volatile uint32_t GRSTCTL;
   volatile uint32_t GINTSTS;
   volatile uint32_t GINTMSK;
   volatile uint32_t GRXSTSR;
   volatile uint32_t GRXSTSP;
   volatile uint32_t GRXFSIZ;
   volatile uint32_t DIEPTXF0_HNPTXFSIZ;
   volatile uint32_t HNPTXSTS;
   uint32_t Reserved30[2];
   volatile uint32_t GCCFG;
   volatile uint32_t CID;
   uint32_t Reserved40[48];
   volatile uint32_t HPTXFSIZ;
   volatile uint32_t DIEPTXF[0x0F];
 } USB_OTG_GlobalTypeDef;




 typedef struct
 {
   volatile uint32_t DCFG;
   volatile uint32_t DCTL;
   volatile uint32_t DSTS;
   uint32_t Reserved0C;
   volatile uint32_t DIEPMSK;
   volatile uint32_t DOEPMSK;
   volatile uint32_t DAINT;
   volatile uint32_t DAINTMSK;
   uint32_t Reserved20;
   uint32_t Reserved9;
   volatile uint32_t DVBUSDIS;
   volatile uint32_t DVBUSPULSE;
   volatile uint32_t DTHRCTL;
   volatile uint32_t DIEPEMPMSK;
   volatile uint32_t DEACHINT;
   volatile uint32_t DEACHMSK;
   uint32_t Reserved40;
   volatile uint32_t DINEP1MSK;
   uint32_t Reserved44[15];
   volatile uint32_t DOUTEP1MSK;
 } USB_OTG_DeviceTypeDef;




 typedef struct
 {
   volatile uint32_t DIEPCTL;
   uint32_t Reserved04;
   volatile uint32_t DIEPINT;
   uint32_t Reserved0C;
   volatile uint32_t DIEPTSIZ;
   volatile uint32_t DIEPDMA;
   volatile uint32_t DTXFSTS;
   uint32_t Reserved18;
 } USB_OTG_INEndpointTypeDef;




 typedef struct
 {
   volatile uint32_t DOEPCTL;
   uint32_t Reserved04;
   volatile uint32_t DOEPINT;
   uint32_t Reserved0C;
   volatile uint32_t DOEPTSIZ;
   volatile uint32_t DOEPDMA;
   uint32_t Reserved18[2];
 } USB_OTG_OUTEndpointTypeDef;




 typedef struct
 {
   volatile uint32_t HCFG;
   volatile uint32_t HFIR;
   volatile uint32_t HFNUM;
   uint32_t Reserved40C;
   volatile uint32_t HPTXSTS;
   volatile uint32_t HAINT;
   volatile uint32_t HAINTMSK;
 } USB_OTG_HostTypeDef;




 typedef struct
 {
   volatile uint32_t HCCHAR;
   volatile uint32_t HCSPLT;
   volatile uint32_t HCINT;
   volatile uint32_t HCINTMSK;
   volatile uint32_t HCTSIZ;
   volatile uint32_t HCDMA;
   uint32_t Reserved[2];
 } USB_OTG_HostChannelTypeDef;
# 23 "src/main.c" 2

# 1 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 1 3
# 71 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
    typedef unsigned int size_t;
# 89 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
    typedef unsigned int wchar_t;






typedef struct div_t { int quot, rem; } div_t;

typedef struct ldiv_t { long int quot, rem; } ldiv_t;


typedef struct lldiv_t { long long quot, rem; } lldiv_t;
# 139 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int __aeabi_MB_CUR_MAX(void);
# 158 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) double atof(const char * ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) int atoi(const char * ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) long int atol(const char * ) __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) long long atoll(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) double strtod(const char * __restrict , char ** __restrict ) __attribute__((__nonnull__(1)));
# 206 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) float strtof(const char * __restrict , char ** __restrict ) __attribute__((__nonnull__(1)));
extern __attribute__((__nothrow__)) long double strtold(const char * __restrict , char ** __restrict ) __attribute__((__nonnull__(1)));




extern __attribute__((__nothrow__)) long int strtol(const char * __restrict ,
                        char ** __restrict , int ) __attribute__((__nonnull__(1)));
# 243 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) unsigned long int strtoul(const char * __restrict ,
                                       char ** __restrict , int ) __attribute__((__nonnull__(1)));
# 275 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) long long strtoll(const char * __restrict ,
                                  char ** __restrict , int )
                          __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) unsigned long long strtoull(const char * __restrict ,
                                            char ** __restrict , int )
                                   __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) int rand(void);
# 303 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) void srand(unsigned int );
# 313 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
struct _rand_state { int __x[57]; };
extern __attribute__((__nothrow__)) int _rand_r(struct _rand_state *);
extern __attribute__((__nothrow__)) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __attribute__((__nothrow__)) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __attribute__((__nothrow__)) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);





extern __attribute__((__nothrow__)) void *calloc(size_t , size_t );





extern __attribute__((__nothrow__)) void free(void * );







extern __attribute__((__nothrow__)) void *malloc(size_t );





extern __attribute__((__nothrow__)) void *realloc(void * , size_t );
# 374 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
typedef int (*__heapprt)(void *, char const *, ...);
extern __attribute__((__nothrow__)) void __heapstats(int (* )(void * ,
                                           char const * , ...),
                        void * ) __attribute__((__nonnull__(1)));
# 390 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int __heapvalid(int (* )(void * ,
                                           char const * , ...),
                       void * , int ) __attribute__((__nonnull__(1)));
# 411 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__noreturn__)) void abort(void);
# 422 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int atexit(void (* )(void)) __attribute__((__nonnull__(1)));
# 444 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__noreturn__)) void exit(int );
# 460 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__noreturn__)) void _Exit(int );
# 471 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) char *getenv(const char * ) __attribute__((__nonnull__(1)));
# 484 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int system(const char * );
# 497 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern void *bsearch(const void * , const void * ,
              size_t , size_t ,
              int (* )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
# 532 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern void qsort(void * , size_t , size_t ,
           int (* )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
# 560 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) int abs(int );






extern __attribute__((__nothrow__)) __attribute__((__const__)) div_t div(int , int );
# 579 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) long int labs(long int );
# 589 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) ldiv_t ldiv(long int , long int );
# 610 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) long long llabs(long long );
# 620 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) __attribute__((__const__)) lldiv_t lldiv(long long , long long );
# 644 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
typedef struct __sdiv32by16 { long quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned long quot, rem; } __udiv32by16;

typedef struct __sdiv64by32 { long rem, quot; } __sdiv64by32;

__attribute__((__value_in_regs__)) extern __attribute__((__nothrow__)) __attribute__((__const__)) __sdiv32by16 __rt_sdiv32by16(
     int ,
     short int );



__attribute__((__value_in_regs__)) extern __attribute__((__nothrow__)) __attribute__((__const__)) __udiv32by16 __rt_udiv32by16(
     unsigned int ,
     unsigned short );



__attribute__((__value_in_regs__)) extern __attribute__((__nothrow__)) __attribute__((__const__)) __sdiv64by32 __rt_sdiv64by32(
     int , unsigned int ,
     int );







extern __attribute__((__nothrow__)) unsigned int __fp_status(unsigned int , unsigned int );
# 705 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int mblen(const char * , size_t );
# 720 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int mbtowc(wchar_t * __restrict ,
                   const char * __restrict , size_t );
# 739 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) int wctomb(char * , wchar_t );
# 761 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) size_t mbstowcs(wchar_t * __restrict ,
                      const char * __restrict , size_t ) __attribute__((__nonnull__(2)));
# 779 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) size_t wcstombs(char * __restrict ,
                      const wchar_t * __restrict , size_t ) __attribute__((__nonnull__(2)));
# 798 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdlib.h" 3
extern __attribute__((__nothrow__)) void __use_realtime_heap(void);
extern __attribute__((__nothrow__)) void __use_realtime_division(void);
extern __attribute__((__nothrow__)) void __use_two_region_memory(void);
extern __attribute__((__nothrow__)) void __use_no_heap(void);
extern __attribute__((__nothrow__)) void __use_no_heap_region(void);

extern __attribute__((__nothrow__)) char const *__C_library_version_string(void);
extern __attribute__((__nothrow__)) int __C_library_version_number(void);
# 25 "src/main.c" 2
# 1 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 1 3
# 58 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) void *memcpy(void * __restrict ,
                    const void * __restrict , size_t ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) void *memmove(void * ,
                    const void * , size_t ) __attribute__((__nonnull__(1,2)));
# 77 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strcpy(char * __restrict , const char * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) char *strncpy(char * __restrict , const char * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
# 93 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strcat(char * __restrict , const char * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) char *strncat(char * __restrict , const char * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
# 117 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) int memcmp(const void * , const void * , size_t ) __attribute__((__nonnull__(1,2)));







extern __attribute__((__nothrow__)) int strcmp(const char * , const char * ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) int strncmp(const char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 141 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) int strcasecmp(const char * , const char * ) __attribute__((__nonnull__(1,2)));







extern __attribute__((__nothrow__)) int strncasecmp(const char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 158 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) int strcoll(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 169 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) size_t strxfrm(char * __restrict , const char * __restrict , size_t ) __attribute__((__nonnull__(2)));
# 193 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) void *memchr(const void * , int , size_t ) __attribute__((__nonnull__(1)));
# 209 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strchr(const char * , int ) __attribute__((__nonnull__(1)));
# 218 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) size_t strcspn(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 232 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strpbrk(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 247 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strrchr(const char * , int ) __attribute__((__nonnull__(1)));
# 257 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) size_t strspn(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 270 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strstr(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 280 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strtok(char * __restrict , const char * __restrict ) __attribute__((__nonnull__(2)));
extern __attribute__((__nothrow__)) char *_strtok_r(char * , const char * , char ** ) __attribute__((__nonnull__(2,3)));
# 321 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) void *memset(void * , int , size_t ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) char *strerror(int );







extern __attribute__((__nothrow__)) size_t strlen(const char * ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) size_t strnlen(const char * , size_t ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) size_t strlcpy(char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 369 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) size_t strlcat(char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 395 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) void _membitcpybl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpybb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpyhl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpyhb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpywl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpywb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovebl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovebb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovehl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovehb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovewl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovewb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
# 26 "src/main.c" 2
# 1 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 1 3
# 68 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
    typedef __builtin_va_list __va_list;
# 87 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
typedef struct __fpos_t_struct {
    unsigned long long int __pos;





    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
# 108 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
typedef struct __FILE FILE;
# 119 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
struct __FILE {
    union {
        long __FILE_alignment;



        char __FILE_size[84];

    } __FILE_opaque;
};
# 138 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;
# 224 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int remove(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int rename(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 243 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) FILE *tmpfile(void);






extern __attribute__((__nothrow__)) char *tmpnam(char * );
# 265 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fclose(FILE * ) __attribute__((__nonnull__(1)));
# 275 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fflush(FILE * );
# 285 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) FILE *fopen(const char * __restrict ,
                           const char * __restrict ) __attribute__((__nonnull__(1,2)));
# 329 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) FILE *freopen(const char * __restrict ,
                    const char * __restrict ,
                    FILE * __restrict ) __attribute__((__nonnull__(2,3)));
# 342 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) void setbuf(FILE * __restrict ,
                    char * __restrict ) __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) int setvbuf(FILE * __restrict ,
                   char * __restrict ,
                   int , size_t ) __attribute__((__nonnull__(1)));
# 370 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int fprintf(FILE * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 393 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int _fprintf(FILE * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));





#pragma __printf_args
extern __attribute__((__nothrow__)) int printf(const char * __restrict , ...) __attribute__((__nonnull__(1)));






#pragma __printf_args
extern __attribute__((__nothrow__)) int _printf(const char * __restrict , ...) __attribute__((__nonnull__(1)));





#pragma __printf_args
extern __attribute__((__nothrow__)) int sprintf(char * __restrict , const char * __restrict , ...) __attribute__((__nonnull__(1,2)));








#pragma __printf_args
extern __attribute__((__nothrow__)) int _sprintf(char * __restrict , const char * __restrict , ...) __attribute__((__nonnull__(1,2)));






#pragma __printf_args
extern __attribute__((__nothrow__)) int __ARM_snprintf(char * __restrict , size_t ,
                     const char * __restrict , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __attribute__((__nothrow__)) int snprintf(char * __restrict , size_t ,
                     const char * __restrict , ...) __attribute__((__nonnull__(3)));
# 460 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int _snprintf(char * __restrict , size_t ,
                      const char * __restrict , ...) __attribute__((__nonnull__(3)));





#pragma __scanf_args
extern __attribute__((__nothrow__)) int fscanf(FILE * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 503 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __scanf_args
extern __attribute__((__nothrow__)) int _fscanf(FILE * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));





#pragma __scanf_args
extern __attribute__((__nothrow__)) int scanf(const char * __restrict , ...) __attribute__((__nonnull__(1)));








#pragma __scanf_args
extern __attribute__((__nothrow__)) int _scanf(const char * __restrict , ...) __attribute__((__nonnull__(1)));





#pragma __scanf_args
extern __attribute__((__nothrow__)) int sscanf(const char * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 541 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __scanf_args
extern __attribute__((__nothrow__)) int _sscanf(const char * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));







extern __attribute__((__nothrow__)) int vfscanf(FILE * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) int vscanf(const char * __restrict , __va_list) __attribute__((__nonnull__(1)));
extern __attribute__((__nothrow__)) int vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));

extern __attribute__((__nothrow__)) int _vfscanf(FILE * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) int _vscanf(const char * __restrict , __va_list) __attribute__((__nonnull__(1)));
extern __attribute__((__nothrow__)) int _vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) int __ARM_vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));

extern __attribute__((__nothrow__)) int vprintf(const char * __restrict , __va_list ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int _vprintf(const char * __restrict , __va_list ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) int vfprintf(FILE * __restrict ,
                    const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));
# 584 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int vsprintf(char * __restrict ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));
# 594 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int __ARM_vsnprintf(char * __restrict , size_t ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));

extern __attribute__((__nothrow__)) int vsnprintf(char * __restrict , size_t ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));
# 609 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int _vsprintf(char * __restrict ,
                      const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));





extern __attribute__((__nothrow__)) int _vfprintf(FILE * __restrict ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));





extern __attribute__((__nothrow__)) int _vsnprintf(char * __restrict , size_t ,
                      const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));
# 635 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int __ARM_asprintf(char ** , const char * __restrict , ...) __attribute__((__nonnull__(2)));
extern __attribute__((__nothrow__)) int __ARM_vasprintf(char ** , const char * __restrict , __va_list ) __attribute__((__nonnull__(2)));
# 649 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fgetc(FILE * ) __attribute__((__nonnull__(1)));
# 659 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) char *fgets(char * __restrict , int ,
                    FILE * __restrict ) __attribute__((__nonnull__(1,3)));
# 673 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fputc(int , FILE * ) __attribute__((__nonnull__(2)));
# 683 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fputs(const char * __restrict , FILE * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) int getc(FILE * ) __attribute__((__nonnull__(1)));
# 704 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
    extern __attribute__((__nothrow__)) int (getchar)(void);
# 713 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) char *gets(char * ) __attribute__((__nonnull__(1)));
# 725 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int putc(int , FILE * ) __attribute__((__nonnull__(2)));
# 737 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
    extern __attribute__((__nothrow__)) int (putchar)(int );






extern __attribute__((__nothrow__)) int puts(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int ungetc(int , FILE * ) __attribute__((__nonnull__(2)));
# 778 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) size_t fread(void * __restrict ,
                    size_t , size_t , FILE * __restrict ) __attribute__((__nonnull__(1,4)));
# 794 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) size_t __fread_bytes_avail(void * __restrict ,
                    size_t , FILE * __restrict ) __attribute__((__nonnull__(1,3)));
# 810 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) size_t fwrite(const void * __restrict ,
                    size_t , size_t , FILE * __restrict ) __attribute__((__nonnull__(1,4)));
# 822 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fgetpos(FILE * __restrict , fpos_t * __restrict ) __attribute__((__nonnull__(1,2)));
# 833 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fseek(FILE * , long int , int ) __attribute__((__nonnull__(1)));
# 850 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fsetpos(FILE * __restrict , const fpos_t * __restrict ) __attribute__((__nonnull__(1,2)));
# 863 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) long int ftell(FILE * ) __attribute__((__nonnull__(1)));
# 877 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) void rewind(FILE * ) __attribute__((__nonnull__(1)));
# 886 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) void clearerr(FILE * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int feof(FILE * ) __attribute__((__nonnull__(1)));




extern __attribute__((__nothrow__)) int ferror(FILE * ) __attribute__((__nonnull__(1)));




extern __attribute__((__nothrow__)) void perror(const char * );
# 917 "C:\\Users\\bhuva\\AppData\\Local\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int _fisatty(FILE * ) __attribute__((__nonnull__(1)));



extern __attribute__((__nothrow__)) void __use_no_semihosting_swi(void);
extern __attribute__((__nothrow__)) void __use_no_semihosting(void);
# 27 "src/main.c" 2
# 75 "src/main.c"
static volatile uint8_t lightOutput = 0;
static volatile uint8_t heaterOutput = 0;
static volatile uint8_t coolingOutput = 0;
static volatile uint8_t fanOutput = 0;

static volatile uint32_t msTicks = 0;
static volatile uint32_t uartClimateOverrideUntil = 0;

static volatile float currentTemperature = 0.0f;


void delayCycles(volatile uint32_t count)
{
    while (count--)
    {
        __builtin_arm_nop();
    }
}



void RCC_init(void)
{

    ((RCC_TypeDef *) ((0x40000000U + 0x00020000U) + 0x3800U))->AHB1ENR |= ((1U << 0) | (1U << 1) | (1U << 5));


    ((RCC_TypeDef *) ((0x40000000U + 0x00020000U) + 0x3800U))->APB1ENR |= ((1U << 4) | (1U << 18));


    ((RCC_TypeDef *) ((0x40000000U + 0x00020000U) + 0x3800U))->AHB1RSTR |= ((1U << 0) | (1U << 1) | (1U << 5));
    delayCycles(10);
    ((RCC_TypeDef *) ((0x40000000U + 0x00020000U) + 0x3800U))->AHB1RSTR &= ~((1U << 0) | (1U << 1) | (1U << 5));
}


void initOutputPin(GPIO_TypeDef *port, uint8_t pin)
{

    port->MODER &= ~(0x3U << (pin * 2U));
    port->MODER |= (0x1U << (pin * 2U));


    port->OTYPER &= ~(1U << pin);


    port->PUPDR &= ~(0x3U << (pin * 2U));


    port->ODR &= ~(1U << pin);
}

void initInputPin(GPIO_TypeDef *port, uint8_t pin)
{

    port->MODER &= ~(0x3U << (pin * 2U));


    port->PUPDR &= ~(0x3U << (pin * 2U));
}

void initAnalogPin(GPIO_TypeDef *port, uint8_t pin)
{

    port->MODER &= ~(0x3U << (pin * 2U));
    port->MODER |= (0x3U << (pin * 2U));


    port->PUPDR &= ~(0x3U << (pin * 2U));
}

void GPIO_init(void)
{
    initInputPin(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0000U)), 10);
    initInputPin(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0000U)), 8);
    initInputPin(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0400U)), 0);

    initOutputPin(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x1400U)), 8);
    initOutputPin(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0400U)), 8);
    initOutputPin(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0400U)), 1);
    initOutputPin(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0000U)), 9);

    initAnalogPin(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x1400U)), 10);
}

void outputOn(GPIO_TypeDef *port, uint8_t pin)
{
    port->ODR &= ~(1U << pin);
}

void outputOff(GPIO_TypeDef *port, uint8_t pin)
{
    port->ODR |= (1U << pin);
}

void ledToggle(GPIO_TypeDef *port, uint8_t pin)
{
    port->ODR ^= (1U << pin);
}

void updateOutputs(void)
{
    if (lightOutput)
        outputOn(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0000U)), 9);
    else
        outputOff(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0000U)), 9);

    if (heaterOutput)
        outputOn(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x1400U)), 8);
    else
        outputOff(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x1400U)), 8);

    if (coolingOutput)
        outputOn(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0400U)), 8);
    else
        outputOff(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0400U)), 8);

    if (fanOutput)
        outputOn(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0400U)), 1);
    else
        outputOff(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0400U)), 1);
}


void TIM6_stop(void)
{
    ((TIM_TypeDef *) (0x40000000U + 0x1000U))->CR1 &= ~1U;
}

void TIM6_initForStatusLogging(void)
{
    ((TIM_TypeDef *) (0x40000000U + 0x1000U))->CR1 = 0;
    ((TIM_TypeDef *) (0x40000000U + 0x1000U))->PSC = 8399U;
    ((TIM_TypeDef *) (0x40000000U + 0x1000U))->ARR = 39999U;
    ((TIM_TypeDef *) (0x40000000U + 0x1000U))->CNT = 0;

    ((TIM_TypeDef *) (0x40000000U + 0x1000U))->SR &= ~(1U << 0);
    ((TIM_TypeDef *) (0x40000000U + 0x1000U))->CR1 |= 1U;
}

uint8_t TIM6_has4SecondsPassed(void)
{
    if (((TIM_TypeDef *) (0x40000000U + 0x1000U))->SR & 1U)
    {
        ((TIM_TypeDef *) (0x40000000U + 0x1000U))->SR &= ~(1U << 0);
        return 1U;
    }

    return 0U;
}


void USART3_init(void)
{



    ((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0400U))->MODER &= ~((0x3U << (10U * 2U)) | (0x3U << (11U * 2U)));
    ((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0400U))->MODER |= ((0x2U << (10U * 2U)) | (0x2U << (11U * 2U)));


    ((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0400U))->OTYPER &= ~((1U << 10U) | (1U << 11U));


    ((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0400U))->PUPDR &= ~((0x3U << (10U * 2U)) | (0x3U << (11U * 2U)));


    ((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0400U))->AFR[1] &= ~((0xFU << ((10U - 8U) * 4U)) | (0xFU << ((11U - 8U) * 4U)));
    ((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0400U))->AFR[1] |= ((0x7U << ((10U - 8U) * 4U)) | (0x7U << ((11U - 8U) * 4U)));


    ((USART_TypeDef *) (0x40000000U + 0x4800U))->CR1 = 0x0000U;
    ((USART_TypeDef *) (0x40000000U + 0x4800U))->CR2 = 0x0000U;
    ((USART_TypeDef *) (0x40000000U + 0x4800U))->CR3 = 0x0000U;


    ((USART_TypeDef *) (0x40000000U + 0x4800U))->BRR = 0x02D9U;

    ((USART_TypeDef *) (0x40000000U + 0x4800U))->CR1 |= (1U << 12);
    ((USART_TypeDef *) (0x40000000U + 0x4800U))->CR1 |= (1U << 10);
    ((USART_TypeDef *) (0x40000000U + 0x4800U))->CR1 |= (1U << 9);

    ((USART_TypeDef *) (0x40000000U + 0x4800U))->CR1 |= (1U << 3) | (1U << 2);
    ((USART_TypeDef *) (0x40000000U + 0x4800U))->CR2 &= ~(0x3U << 12);
    ((USART_TypeDef *) (0x40000000U + 0x4800U))->CR1 |= (1U << 13);
}

void USART3_writeChar(char c)
{
    while ((((USART_TypeDef *) (0x40000000U + 0x4800U))->SR & (1U << 7)) == 0U)
    {
    }
    ((USART_TypeDef *) (0x40000000U + 0x4800U))->DR = (uint8_t)c;
}

void USART3_writeString(const char *s)
{
    while (*s != '\0')
    {
        USART3_writeChar(*s++);
    }
}

uint8_t USART3_readCharNonBlocking(char *c)
{
    if (((USART_TypeDef *) (0x40000000U + 0x4800U))->SR & (1U << 5))
    {
        *c = (char)(((USART_TypeDef *) (0x40000000U + 0x4800U))->DR & 0xFFU);
        return 1U;
    }
    return 0U;
}



void ADC_init(void)
{

    ((RCC_TypeDef *) ((0x40000000U + 0x00020000U) + 0x3800U))->APB2ENR |= (1U << 10);


    initAnalogPin(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x1400U)), 10);


    ((ADC_Common_TypeDef *) ((0x40000000U + 0x00010000U) + 0x2300U))->CCR &= ~(0x3U << 16);
    ((ADC_Common_TypeDef *) ((0x40000000U + 0x00010000U) + 0x2300U))->CCR |= (0x1U << 16);





    ((ADC_TypeDef *) ((0x40000000U + 0x00010000U) + 0x2200U))->SMPR2 &= ~(0x7U << (8U * 3U));
    ((ADC_TypeDef *) ((0x40000000U + 0x00010000U) + 0x2200U))->SMPR2 |= (0x6U << (8U * 3U));


    ((ADC_TypeDef *) ((0x40000000U + 0x00010000U) + 0x2200U))->SQR1 &= ~(0xFU << 20);


    ((ADC_TypeDef *) ((0x40000000U + 0x00010000U) + 0x2200U))->SQR3 &= ~(0x1FU);
    ((ADC_TypeDef *) ((0x40000000U + 0x00010000U) + 0x2200U))->SQR3 |= 8U;


    ((ADC_TypeDef *) ((0x40000000U + 0x00010000U) + 0x2200U))->CR1 &= ~(0x3U << 24);
    ((ADC_TypeDef *) ((0x40000000U + 0x00010000U) + 0x2200U))->CR2 &= ~(1U << 11);


    ((ADC_TypeDef *) ((0x40000000U + 0x00010000U) + 0x2200U))->CR2 |= (1U << 10);


    ((ADC_TypeDef *) ((0x40000000U + 0x00010000U) + 0x2200U))->CR2 |= 1U;
}

uint16_t ADC_readTemperatureRaw(void)
{

    ((ADC_TypeDef *) ((0x40000000U + 0x00010000U) + 0x2200U))->SR &= ~(1U << 1);


    ((ADC_TypeDef *) ((0x40000000U + 0x00010000U) + 0x2200U))->CR2 |= (1U << 30);


    while ((((ADC_TypeDef *) ((0x40000000U + 0x00010000U) + 0x2200U))->SR & (1U << 1)) == 0U)
    {
    }

    return (uint16_t)(((ADC_TypeDef *) ((0x40000000U + 0x00010000U) + 0x2200U))->DR & 0x0FFFU);
}

float convertAdcToTemperature(uint16_t adcValue)
{







    return 55.0f - ((85.0f * (float)adcValue) / 4095.0f);
}



void processTemperatureControl(void)
{
# 378 "src/main.c"
     if (msTicks < uartClimateOverrideUntil)
    {
        return;
    }

    if (currentTemperature < 22.0f)
    {
        heaterOutput = 1;
        coolingOutput = 0;
        fanOutput = 1;
    }
    else if (currentTemperature > 24.0f)
    {
        heaterOutput = 0;
        coolingOutput = 1;
        fanOutput = 1;
    }
    else
    {
        heaterOutput = 0;
        coolingOutput = 0;
    }
}

void processSwitches(void)
{
# 420 "src/main.c"
}

void SysTick_Handler(void)
{
    msTicks++;
}

void processUartReceive(void)
{
    static uint8_t waitingForControlByte = 0;
    char rxChar;

    while (USART3_readCharNonBlocking(&rxChar))
    {
        uint8_t rxByte = (uint8_t)rxChar;

        if (waitingForControlByte == 0U)
        {
            if (rxByte == 0x26U)
            {
                waitingForControlByte = 1U;
            }
        }
        else
        {
            waitingForControlByte = 0U;
# 457 "src/main.c"
            if ((rxByte & 0xC3U) == 0x40U)
            {
                uint8_t uartLight = (rxByte >> 5) & 1U;
                uint8_t uartHeater = (rxByte >> 4) & 1U;
                uint8_t uartCooling = (rxByte >> 3) & 1U;
                uint8_t uartFan = (rxByte >> 2) & 1U;


                lightOutput = uartLight;





                if ((currentTemperature >= 15.0f) &&
                    (currentTemperature <= 30.0f))
                {




                    if (uartHeater && uartCooling)
                    {
                        heaterOutput = 0;
                        coolingOutput = 0;
                    }
                    else
                    {
                        heaterOutput = uartHeater;
                        coolingOutput = uartCooling;
                    }

                    fanOutput = uartFan;


                    uartClimateOverrideUntil = msTicks + 10000U;
                }
            }
        }
    }
}

void sendHmsStatus(void)
{
    char tempString[8];
    uint8_t statusByte = 0x41U;

    if (lightOutput)
        statusByte |= (1U << 5);

    if (heaterOutput)
        statusByte |= (1U << 4);

    if (coolingOutput)
        statusByte |= (1U << 3);

    if (fanOutput)
        statusByte |= (1U << 2);

    snprintf(tempString, sizeof(tempString), "%+06.2f", currentTemperature);

    USART3_writeChar((char)0x26);
    USART3_writeChar((char)0x7E);

    for (uint8_t i = 0; i < 6U; i++)
    {
        USART3_writeChar(tempString[i]);
    }

    USART3_writeChar((char)0x7E);
    USART3_writeChar((char)statusByte);
    USART3_writeChar('\r');
    USART3_writeChar('\n');
}


int main(void)
{
    RCC_init();
    GPIO_init();
    USART3_init();
  SysTick_Config(SystemCoreClock / 1000U);
    ADC_init();

    outputOff(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0000U)), 9);
    outputOff(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x1400U)), 8);
    outputOff(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0400U)), 8);
    outputOff(((GPIO_TypeDef *) ((0x40000000U + 0x00020000U) + 0x0400U)), 1);

    USART3_writeString("HMS UART3 ready @ 57600 8O1\r\n");

    while (1)
    {
        uint16_t adcRaw = ADC_readTemperatureRaw();
        currentTemperature = convertAdcToTemperature(adcRaw);

        processSwitches();
        processUartReceive();
        processTemperatureControl();

        updateOutputs();

        if (TIM6_has4SecondsPassed())
        {
            sendHmsStatus();
        }
    }
 }
