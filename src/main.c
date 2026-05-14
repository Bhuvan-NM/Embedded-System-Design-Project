/*

Author: Bhuvan NM, Alec Christov
Stduent ID: S4018114, S3896384

*/

/* ---------------- Project Requirements ---------------- */
// Home Management System using STM32F439
// UART3: 57600 bps, 8 data bits, odd parity, 1 stop bit
// ADC input: PF10 temperature sensor
// Digital inputs:
// PA10 = Light Switch
// PA8  = Light Intensity Sensor
// PB0  = Fan Switch
// Digital outputs:
// PF8 = Heater Output
// PB8 = Cooling Output
// PB1 = Fan Control Output
// PA9 = Light Control Output

#include "stm32f439xx.h"
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

/* ---------------- RCC bit masks ---------------- */
#define GPIOA_EN    (1U << 0)
#define GPIOB_EN    (1U << 1)
#define GPIOF_EN    (1U << 5)

#define TIM6_EN     (1U << 4)    /* RCC_APB1ENR */
#define USART3_EN   (1U << 18)   /* RCC_APB1ENR */

#define ADC3_EN     (1U << 10)   /* RCC_APB2ENR */
#define TIM6_4S_ARR 39999U      /* 10 kHz tick, 40000 ticks = 4 seconds */

/* ---------------- HMS I/O mapping ---------------- */
#define LIGHT_SWITCH_PORT      GPIOA
#define LIGHT_SWITCH_PIN       10

#define LIGHT_SENSOR_PORT      GPIOA
#define LIGHT_SENSOR_PIN       8

#define FAN_SWITCH_PORT        GPIOB
#define FAN_SWITCH_PIN         0

#define HEATER_PORT            GPIOF
#define HEATER_PIN             8

#define COOLING_PORT           GPIOB
#define COOLING_PIN            8

#define FAN_PORT               GPIOB
#define FAN_PIN                1

#define LIGHT_PORT             GPIOA
#define LIGHT_PIN              9

#define TEMP_SENSOR_PORT       GPIOF
#define TEMP_SENSOR_PIN        10

/* ---------------- Switch FSM states ---------------- */
#define SWITCH_IDLE       0U
#define SWITCH_DEBOUNCE   1U
#define SWITCH_HELD       2U
#define SWITCH_LOCKOUT    3U


/* ---------------- Timer constants ---------------- */
/* APB1 timer clock = 84 MHz, PSC = 8399 => 10 kHz tick => 0.1 ms */
#define TIM6_PSC_10KHZ   8399U

/* ---------------- UART constants ---------------- */
/* APB1 = 42 MHz, oversampling by 16, baud = 57600 => BRR = 0x02D9 */
#define USART3_BRR_57600 0x02D9U

/* ---------------- Global HMS state ---------------- */
static volatile uint8_t lightOutput = 0;
static volatile uint8_t heaterOutput = 0;
static volatile uint8_t coolingOutput = 0;
static volatile uint8_t fanOutput = 0;

static volatile uint32_t msTicks = 0;
static volatile uint32_t uartClimateOverrideUntil = 0;
static volatile uint32_t fanAutoOffUntil = 0;

static volatile float currentTemperature = 0.0f;


/* ---------------- Switch FSM state ---------------- */

  static volatile uint8_t  lightSwitchState = SWITCH_IDLE;
  static volatile uint8_t  fanSwitchState    = SWITCH_IDLE;
  static volatile uint32_t lightSwitchTick  = 0;
  static volatile uint32_t fanSwitchTick    = 0;

/* ---------------- Utility ---------------- */
void delayCycles(volatile uint32_t count)
{
    while (count--)
    {
        __NOP();
    }
}


/* ---------------- RCC ---------------- */
void RCC_init(void)
{
    /* Enable GPIO clocks */
    RCC->AHB1ENR |= (GPIOA_EN | GPIOB_EN | GPIOF_EN);

    /* Enable TIM6 and USART3 clocks on APB1 */
    RCC->APB1ENR |= (TIM6_EN | USART3_EN);

    /* Reset GPIO peripherals */
    RCC->AHB1RSTR |= (GPIOA_EN | GPIOB_EN | GPIOF_EN);
    delayCycles(10);
    RCC->AHB1RSTR &= ~(GPIOA_EN | GPIOB_EN | GPIOF_EN);
}

/* ---------------- GPIO ---------------- */
void initOutputPin(GPIO_TypeDef *port, uint8_t pin)
{
    /* MODER = 01 => output */
    port->MODER &= ~(0x3U << (pin * 2U));
    port->MODER |=  (0x1U << (pin * 2U));

    /* Push-pull */
    port->OTYPER &= ~(1U << pin);

    /* No pull-up / pull-down */
    port->PUPDR &= ~(0x3U << (pin * 2U));

    /* Active-low LEDs: drive low => ON */
    port->ODR &= ~(1U << pin);
}

void initInputPin(GPIO_TypeDef *port, uint8_t pin)
{
    /* MODER = 00 => input */
    port->MODER &= ~(0x3U << (pin * 2U));

    /* No pull-up / pull-down */
    port->PUPDR &= ~(0x3U << (pin * 2U));
}

void initAnalogPin(GPIO_TypeDef *port, uint8_t pin)
{
    /* MODER = 11 => analogue */
    port->MODER &= ~(0x3U << (pin * 2U));
    port->MODER |=  (0x3U << (pin * 2U));

    /* No pull-up / pull-down */
    port->PUPDR &= ~(0x3U << (pin * 2U));
}

void GPIO_init(void)
{
    initInputPin(LIGHT_SWITCH_PORT, LIGHT_SWITCH_PIN);
    initInputPin(LIGHT_SENSOR_PORT, LIGHT_SENSOR_PIN);
    initInputPin(FAN_SWITCH_PORT, FAN_SWITCH_PIN);

    initOutputPin(HEATER_PORT, HEATER_PIN);
    initOutputPin(COOLING_PORT, COOLING_PIN);
    initOutputPin(FAN_PORT, FAN_PIN);
    initOutputPin(LIGHT_PORT, LIGHT_PIN);

    initAnalogPin(TEMP_SENSOR_PORT, TEMP_SENSOR_PIN);
}

void outputOn(GPIO_TypeDef *port, uint8_t pin)
{
    port->ODR &= ~(1U << pin);   /* active low */
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
    if (msTicks < fanAutoOffUntil)
     {
         fanOutput = 0;
     }

    if (lightOutput)
        outputOn(LIGHT_PORT, LIGHT_PIN);
    else
        outputOff(LIGHT_PORT, LIGHT_PIN);

    if (heaterOutput)
        outputOn(HEATER_PORT, HEATER_PIN);
    else
        outputOff(HEATER_PORT, HEATER_PIN);

    if (coolingOutput)
        outputOn(COOLING_PORT, COOLING_PIN);
    else
        outputOff(COOLING_PORT, COOLING_PIN);

    if (fanOutput)
        outputOn(FAN_PORT, FAN_PIN);
    else
        outputOff(FAN_PORT, FAN_PIN);
}

/* ---------------- Timer TIM6 ---------------- */
void TIM6_stop(void)
{
    TIM6->CR1 &= ~1U;
}

void TIM6_initForStatusLogging(void)
{
    TIM6->CR1 = 0;
    TIM6->PSC = TIM6_PSC_10KHZ;
    TIM6->ARR = TIM6_4S_ARR;
    TIM6->CNT = 0;

    TIM6->SR &= ~(1U << 0);   /* clear update flag */
    TIM6->CR1 |= 1U;          /* enable timer */
}

uint8_t TIM6_has4SecondsPassed(void)
{
    if (TIM6->SR & 1U)
    {
        TIM6->SR &= ~(1U << 0);
        return 1U;
    }

    return 0U;
}

/* ---------------- UART3 ---------------- */
void USART3_init(void)
{
    /* PB10 = USART3_TX, PB11 = USART3_RX, both AF7 */

    /* MODER: alternate function mode = 10 */
    GPIOB->MODER &= ~((0x3U << (10U * 2U)) | (0x3U << (11U * 2U)));
    GPIOB->MODER |=  ((0x2U << (10U * 2U)) | (0x2U << (11U * 2U)));

    /* Push-pull */
    GPIOB->OTYPER &= ~((1U << 10U) | (1U << 11U));

    /* Optional: no pull-ups */
    GPIOB->PUPDR &= ~((0x3U << (10U * 2U)) | (0x3U << (11U * 2U)));

    /* AFRH: PB10/PB11 = AF7 */
    GPIOB->AFR[1] &= ~((0xFU << ((10U - 8U) * 4U)) | (0xFU << ((11U - 8U) * 4U)));
    GPIOB->AFR[1] |=  ((0x7U << ((10U - 8U) * 4U)) | (0x7U << ((11U - 8U) * 4U)));

    /* Disable USART before configuration */
    USART3->CR1 = 0x0000U;
    USART3->CR2 = 0x0000U;
    USART3->CR3 = 0x0000U;

    /* 57600 baud, 8 data bits, odd parity, 1 stop bit */
    USART3->BRR = USART3_BRR_57600;

    USART3->CR1 |= (1U << 12);  /* M = 1: 9-bit word length, parity uses MSB */
    USART3->CR1 |= (1U << 10);  /* PCE = 1: parity enable */
    USART3->CR1 |= (1U << 9);   /* PS = 1: odd parity */

    USART3->CR1 |= (1U << 3) | (1U << 2); /* TE | RE */
    USART3->CR2 &= ~(0x3U << 12);         /* STOP = 00 => 1 stop bit */
    USART3->CR1 |= (1U << 13);            /* UE */
}

void USART3_writeChar(char c)
{
    while ((USART3->SR & (1U << 7)) == 0U)   /* TXE */
    {
    }
    USART3->DR = (uint8_t)c;
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
    if (USART3->SR & (1U << 5))            /* RXNE */
    {
        *c = (char)(USART3->DR & 0xFFU);
        return 1U;
    }
    return 0U;
}


/* ---------------- ADC ---------------- */
void ADC_init(void)
{
    /* Enable ADC3 clock */
    RCC->APB2ENR |= ADC3_EN;

    /* Configure PF10 as analogue input */
    initAnalogPin(TEMP_SENSOR_PORT, TEMP_SENSOR_PIN);

    /* ADC common prescaler: PCLK2 / 4 */
    ADC->CCR &= ~(0x3U << 16);
    ADC->CCR |=  (0x1U << 16);

    /* ADC3 channel 8 sample time.
       Channel 8 uses SMPR2 bits [26:24].
       144 cycles gives stable reading.
    */
    ADC3->SMPR2 &= ~(0x7U << (8U * 3U));
    ADC3->SMPR2 |=  (0x6U << (8U * 3U));

    /* One conversion in regular sequence */
    ADC3->SQR1 &= ~(0xFU << 20);

    /* First conversion = channel 8 */
    ADC3->SQR3 &= ~(0x1FU);
    ADC3->SQR3 |= 8U;

    /* 12-bit resolution, right aligned */
    ADC3->CR1 &= ~(0x3U << 24);
    ADC3->CR2 &= ~(1U << 11);

    /* End of conversion after each conversion */
    ADC3->CR2 |= (1U << 10);

    /* Turn ADC3 ON */
    ADC3->CR2 |= 1U;
}

uint16_t ADC_readTemperatureRaw(void)
{
    /* Clear EOC flag */
    ADC3->SR &= ~(1U << 1);

    /* Start regular conversion */
    ADC3->CR2 |= (1U << 30);

    /* Wait until conversion complete */
    while ((ADC3->SR & (1U << 1)) == 0U)
    {
    }

    return (uint16_t)(ADC3->DR & 0x0FFFU);
}

float convertAdcToTemperature(uint16_t adcValue)
{
    /*
       ADC = 0    => 55 degrees C
       ADC = 4095 => -30 degrees C

       Temperature = 55 - ((85 * ADC) / 4095)
    */

    return 55.0f - ((85.0f * (float)adcValue) / 4095.0f);
}


/* ---------------- HMS control logic ---------------- */
void processTemperatureControl(void)
{
    /*
       Target temperature = 23 degrees C

       If temperature < 22:
       - heater ON
       - cooling OFF
       - fan ON

       If temperature > 24:
       - heater OFF
       - cooling ON
       - fan ON

       If 22 <= temperature <= 24:
       - heater OFF
       - cooling OFF
       - fan remains active
    */

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
        //fanOutput     = 1;

    }
}


void processSwitches(void)

        /*  processSwitches — debounce and dispatch the two physical switches.
            Called every main-loop iteration. Each switch runs an independent
            four-state FSM keyed off msTicks (1 ms tick): 
         */ 

{
    uint8_t lightSwitch     = (LIGHT_SWITCH_PORT->IDR >> LIGHT_SWITCH_PIN) & 1U;
    uint8_t fanSwitch       = (FAN_SWITCH_PORT->IDR   >> FAN_SWITCH_PIN)   & 1U;
    uint8_t lightSensor     = (LIGHT_SENSOR_PORT->IDR >> LIGHT_SENSOR_PIN) & 1U;
    
    /* ---------------- Light switch (PA10) ---------------- */

    /*   
         - toggles lightOutput on rising edge 
         - ON blocked if PA8 reads low (room already lit)
         - OFF always allowed
         - 2 second lockout after press
    */
    
    switch (lightSwitchState)
    {
        case SWITCH_IDLE:
            if (lightSwitch == 0U)
            {
                lightSwitchTick  = msTicks;
                lightSwitchState = SWITCH_DEBOUNCE;
            }
        break;
    
        case SWITCH_DEBOUNCE:
            if (lightSwitch == 1U)
            {
                lightSwitchState = SWITCH_IDLE;
            }
            else if ((msTicks - lightSwitchTick) >= 10U)
            {
                lightSwitchState = SWITCH_HELD;
            }
        break;

        case SWITCH_HELD:
            if (lightSwitch == 1U)
            {
                if (lightOutput)
                {
                    lightOutput = 0;
                }
                else if (lightSensor == 1U)
                {
                    lightOutput = 1;
                }
    
                lightSwitchTick  = msTicks;
                lightSwitchState = SWITCH_LOCKOUT;
            }
        break;

        case SWITCH_LOCKOUT:
            if ((msTicks - lightSwitchTick) >= 2000U)
            {
                lightSwitchState = SWITCH_IDLE;
            }
        break;
    }

    /* ---------------- Fan switch (PB0) ---------------- */

    /*
         - forces fanOutput OFF for 10 seconds
         - heater/cooling logic runs normally
         - rising edge detection 
         - 2 second lockout after press

    */

    switch (fanSwitchState)
    {
        case SWITCH_IDLE:
            if (fanSwitch == 0U)
            {
                fanSwitchTick  = msTicks;
                fanSwitchState = SWITCH_DEBOUNCE;
            }
        break;

        case SWITCH_DEBOUNCE:
            if (fanSwitch == 1U)
            {
                fanSwitchState = SWITCH_IDLE;
            }
            else if ((msTicks - fanSwitchTick) >= 10U)
            {
                fanSwitchState = SWITCH_HELD;
            }
        break;

        case SWITCH_HELD:
            if (fanSwitch == 1U)
            {
                fanAutoOffUntil = msTicks + 10000U;         /* force fan OFF for 10 s */
                fanSwitchTick  = msTicks;
                fanSwitchState = SWITCH_LOCKOUT;
            }
        break;

        case SWITCH_LOCKOUT:
            if ((msTicks - fanSwitchTick) >= 2000U)
            {
                fanSwitchState = SWITCH_IDLE;
            }
        break;
    }
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

            /*
               Expected format:
               0 1 a b c d 0 0

               Mask fixed bits:
               bit 6 = 1
               bit 7 = 0
               bit 1 = 0
               bit 0 = 0
            */
            if ((rxByte & 0xC3U) == 0x40U)
            {
                uint8_t uartLight   = (rxByte >> 5) & 1U;
                uint8_t uartHeater  = (rxByte >> 4) & 1U;
                uint8_t uartCooling = (rxByte >> 3) & 1U;
                uint8_t uartFan     = (rxByte >> 2) & 1U;

                /* Light UART command overrides light sensor */
                lightOutput = uartLight;

                /*
                   Heating/cooling/fan UART commands only accepted
                   if temperature is between 15 and 30 degrees C.
                */
                if ((currentTemperature >= 15.0f) &&
                    (currentTemperature <= 30.0f))
                {
                    /*
                       Heater and cooling must never be ON at the same time.
                       If both are requested, ignore both.
                    */
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

                    /* Keep UART climate override active for 10 seconds */
                    uartClimateOverrideUntil = msTicks + 10000U;
                }
            }
        }
    }
}

void sendHmsStatus(void)
{
    char tempString[8];
    uint8_t statusByte = 0x41U;   /* 0 1 0 0 0 0 0 1 */

    if (lightOutput)
        statusByte |= (1U << 5);  /* a */

    if (heaterOutput)
        statusByte |= (1U << 4);  /* b */

    if (coolingOutput)
        statusByte |= (1U << 3);  /* c */

    if (fanOutput)
        statusByte |= (1U << 2);  /* d */

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

/* ---------------- main ---------------- */
int main(void)
{
    RCC_init();
    GPIO_init();
    USART3_init();
		SysTick_Config(SystemCoreClock / 1000U);
    ADC_init();

    outputOff(LIGHT_PORT, LIGHT_PIN);
    outputOff(HEATER_PORT, HEATER_PIN);
    outputOff(COOLING_PORT, COOLING_PIN);
    outputOff(FAN_PORT, FAN_PIN);

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
