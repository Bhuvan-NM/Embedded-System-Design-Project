/*

Author: Bhuvan NM
Stduent ID: S4018114
Lab 3: UART Command Interface and Timer-Based LED Control

*/

/* ---------------- Lab Requirements ---------------- */
// 1. Implement a UART command interface to control the LED flashing modes.
// 2. Use TIM6 to generate the timing for the flashing modes.
// 3. Ensure that the system can handle mode changes while flashing is in progress without glitches.
// 4. Validate input commands and provide feedback over UART for valid/invalid commands.
// Command format: 3 ASCII digits (e.g. "100", "090", ..., "000") followed by CR/LF.
// Valid commands and their meanings:
// "100" => all LEDs off
// "090" => flash LED4 at 0.75 Hz
// "080" => flash LED3 at 1.5 Hz
// "070" => flash LED5 at 2.25 Hz
// "060" => flash LED2 at 3.0 Hz
// "050" => flash LED6 at 3.75 Hz
// "040" => flash LED1 at 4.5 Hz
// "030" => flash LED7 at 5.25 Hz
// "020" => flash LED0 at 6.0 Hz
// "010" => flash LED4 and LED5 at 8.0 Hz
// "000" => all LEDs oni
/*----------------------------------------------------*/



#include "stm32f439xx.h"
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

/* ---------------- RCC bit masks ---------------- */
#define GPIOA_EN    (1U << 0)
#define GPIOB_EN    (1U << 1)
#define GPIOF_EN    (1U << 5)

#define TIM6_EN     (1U << 4)    /* RCC_APB1ENR */
#define USART3_EN   (1U << 18)   /* RCC_APB1ENR */

/* ---------------- LED mapping ---------------- */
/* Lab 2 board mapping */
#define LED0_PORT GPIOA
#define LED0_PIN  3

#define LED1_PORT GPIOA
#define LED1_PIN  8

#define LED2_PORT GPIOA
#define LED2_PIN  9

#define LED3_PORT GPIOA
#define LED3_PIN  10

#define LED4_PORT GPIOB
#define LED4_PIN  0

#define LED5_PORT GPIOB
#define LED5_PIN  1

#define LED6_PORT GPIOB
#define LED6_PIN  8

#define LED7_PORT GPIOF
#define LED7_PIN  8

/* ---------------- Timer constants ---------------- */
/* APB1 timer clock = 84 MHz, PSC = 8399 => 10 kHz tick => 0.1 ms */
#define TIM6_PSC_10KHZ   8399U

/* ---------------- UART constants ---------------- */
/* APB1 = 42 MHz, oversampling by 16, baud = 31250 => BRR = 0x540 */
#define USART3_BRR_31250 0x0540U

/* ---------------- Global mode state ---------------- */
static volatile uint8_t currentMode = 100;
static volatile uint16_t currentFlashCount = 0;

static volatile uint8_t pendingMode = 100;
static volatile uint16_t pendingFlashCount = 0;
static volatile uint8_t pendingUpdate = 0;

static volatile uint8_t flashState = 0;   /* 0 = selected flashing LEDs off, 1 = on */

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

/* ---------------- LED GPIO ---------------- */
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

void ledsInit(void)
{
    initOutputPin(LED0_PORT, LED0_PIN);
    initOutputPin(LED1_PORT, LED1_PIN);
    initOutputPin(LED2_PORT, LED2_PIN);
    initOutputPin(LED3_PORT, LED3_PIN);
    initOutputPin(LED4_PORT, LED4_PIN);
    initOutputPin(LED5_PORT, LED5_PIN);
    initOutputPin(LED6_PORT, LED6_PIN);
    initOutputPin(LED7_PORT, LED7_PIN);
}

void ledOn(GPIO_TypeDef *port, uint8_t pin)
{
    port->ODR &= ~(1U << pin);   /* active low */
}

void ledOff(GPIO_TypeDef *port, uint8_t pin)
{
    port->ODR |= (1U << pin);
}

void ledToggle(GPIO_TypeDef *port, uint8_t pin)
{
    port->ODR ^= (1U << pin);
}

void allLedsOff(void)
{
    ledOff(LED0_PORT, LED0_PIN);
    ledOff(LED1_PORT, LED1_PIN);
    ledOff(LED2_PORT, LED2_PIN);
    ledOff(LED3_PORT, LED3_PIN);
    ledOff(LED4_PORT, LED4_PIN);
    ledOff(LED5_PORT, LED5_PIN);
    ledOff(LED6_PORT, LED6_PIN);
    ledOff(LED7_PORT, LED7_PIN);
}

void allLedsOn(void)
{
    ledOn(LED0_PORT, LED0_PIN);
    ledOn(LED1_PORT, LED1_PIN);
    ledOn(LED2_PORT, LED2_PIN);
    ledOn(LED3_PORT, LED3_PIN);
    ledOn(LED4_PORT, LED4_PIN);
    ledOn(LED5_PORT, LED5_PIN);
    ledOn(LED6_PORT, LED6_PIN);
    ledOn(LED7_PORT, LED7_PIN);
}

/* ---------------- Timer TIM6 ---------------- */
void TIM6_stop(void)
{
    TIM6->CR1 &= ~1U;
}

void TIM6_init(uint16_t count)
{
    if (count == 0U)
    {
        count = 1U;
    }

    TIM6->CR1 = 0x0000U;        /* stop during config */
    TIM6->PSC = TIM6_PSC_10KHZ; /* 10 kHz tick => 0.1 ms */
    TIM6->ARR = count - 1U;
    TIM6->EGR = 0x0001U;        /* UG: load PSC/ARR */
    TIM6->SR  = 0x0000U;        /* clear UIF */
    TIM6->CR1 |= 0x0001U;       /* CEN: start */
}

uint8_t TIM6_expired(void)
{
    if (TIM6->SR & 0x0001U)     /* UIF */
    {
        TIM6->SR &= ~0x0001U;
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

    /* 31250 baud, 8 data bits, no parity, 1 stop bit */
    USART3->BRR = USART3_BRR_31250;  /* 0x540 */
    /* CR1 defaults we want:
       OVER8 = 0
       M = 0   => 8 data bits
       PCE = 0 => no parity
       TE = 1
       RE = 1
       UE = 1
    */
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

/* ---------------- Decode and validation ---------------- */
uint8_t isValidCommandString(const char *cmd)
{
    return (
        (strcmp(cmd, "100") == 0) ||
        (strcmp(cmd, "090") == 0) ||
        (strcmp(cmd, "080") == 0) ||
        (strcmp(cmd, "070") == 0) ||
        (strcmp(cmd, "060") == 0) ||
        (strcmp(cmd, "050") == 0) ||
        (strcmp(cmd, "040") == 0) ||
        (strcmp(cmd, "030") == 0) ||
        (strcmp(cmd, "020") == 0) ||
        (strcmp(cmd, "010") == 0) ||
        (strcmp(cmd, "000") == 0)
    );
}

void decodeCommand(const char *cmd, uint8_t *mode, uint16_t *flashCount)
{
    int value = atoi(cmd);

    switch (value)
    {
        case 100: *mode = 100; *flashCount = 0;    break;
        case 90:  *mode = 90;  *flashCount = 6667; break; /* 0.75 Hz */
        case 80:  *mode = 80;  *flashCount = 3333; break; /* 1.5 Hz  */
        case 70:  *mode = 70;  *flashCount = 2222; break; /* 2.25 Hz */
        case 60:  *mode = 60;  *flashCount = 1667; break; /* 3.0 Hz  */
        case 50:  *mode = 50;  *flashCount = 1333; break; /* 3.75 Hz */
        case 40:  *mode = 40;  *flashCount = 1111; break; /* 4.5 Hz  */
        case 30:  *mode = 30;  *flashCount = 952;  break; /* 5.25 Hz */
        case 20:  *mode = 20;  *flashCount = 833;  break; /* 6.0 Hz  */
        case 10:  *mode = 10;  *flashCount = 625;  break; /* 8.0 Hz  */
        case 0:   *mode = 0;   *flashCount = 0;    break;
        default:  *mode = currentMode; *flashCount = currentFlashCount; break;
    }
}

/* Collect 3 digits, accept CR/LF as terminator, reject invalid characters */
void UART3_processInput(void)
{
    static char rxBuf[4];
    static uint8_t idx = 0U;
    static uint8_t discardLine = 0U;

    char c;

    while (USART3_readCharNonBlocking(&c))
    {
        /* Optional echo */
        USART3_writeChar(c);

        if ((c >= '0') && (c <= '9'))
        {
            if ((idx < 3U) && (discardLine == 0U))
            {
                rxBuf[idx++] = c;
            }
            else
            {
                discardLine = 1U;
            }
        }
        else if ((c == '\r') || (c == '\n'))
        {
            if ((idx == 3U) && (discardLine == 0U))
            {
                rxBuf[3] = '\0';

                if (isValidCommandString(rxBuf))
                {
                    decodeCommand(rxBuf, (uint8_t *)&pendingMode, (uint16_t *)&pendingFlashCount);
                    pendingUpdate = 1U;
                    USART3_writeString("\r\nOK\r\n");
                }
                else
                {
                    USART3_writeString("\r\nERR\r\n");
                }
            }
            else if ((idx != 0U) || (discardLine != 0U))
            {
                USART3_writeString("\r\nERR\r\n");
            }

            idx = 0U;
            discardLine = 0U;
        }
        else
        {
            discardLine = 1U;
        }
    }
}

/* ---------------- Output mode handling ---------------- */
void toggleCurrentModeLeds(void)
{
    switch (currentMode)
    {
        case 90:  ledToggle(LED4_PORT, LED4_PIN); break;
        case 80:  ledToggle(LED3_PORT, LED3_PIN); break;
        case 70:  ledToggle(LED5_PORT, LED5_PIN); break;
        case 60:  ledToggle(LED2_PORT, LED2_PIN); break;
        case 50:  ledToggle(LED6_PORT, LED6_PIN); break;
        case 40:  ledToggle(LED1_PORT, LED1_PIN); break;
        case 30:  ledToggle(LED7_PORT, LED7_PIN); break;
        case 20:  ledToggle(LED0_PORT, LED0_PIN); break;
        case 10:
            ledToggle(LED4_PORT, LED4_PIN);
            ledToggle(LED5_PORT, LED5_PIN);
            break;
        default:
            break;
    }
}

void applyMode(uint8_t mode, uint16_t flashCount)
{
    currentMode = mode;
    currentFlashCount = flashCount;
    flashState = 0U;

    if (mode == 0U)
    {
        TIM6_stop();
        allLedsOn();
    }
    else if (mode == 100U)
    {
        TIM6_stop();
        allLedsOff();
    }
    else
    {
        allLedsOff();          /* start flashing modes with selected LEDs off */
        TIM6_init(flashCount); /* half-period count */
    }
}

/* ---------------- main ---------------- */
int main(void)
{
    RCC_init();
    ledsInit();
    USART3_init();

    /* Default startup state: all LEDs on */
    applyMode(0U, 0U);

    USART3_writeString("UART3 ready @ 31250 8N1\r\n");
    USART3_writeString("Send one of: 000 010 020 030 040 050 060 070 080 090 100\r\n");

    while (1)
    {
        UART3_processInput();

        if (TIM6_expired())
        {
            /* Only flashing modes use TIM6 */
            if ((currentMode != 0U) && (currentMode != 100U))
            {
                toggleCurrentModeLeds();

                /* track half-cycle state */
                flashState ^= 1U;

                /* apply pending update only when current cycle is complete
                   i.e. after LEDs have returned to OFF */
                if ((pendingUpdate == 1U) && (flashState == 0U))
                {
                    applyMode(pendingMode, pendingFlashCount);
                    pendingUpdate = 0U;
                }
            }
        }

        /* 000 and 100 may update immediately because there is no flashing cycle */
        if ((pendingUpdate == 1U) && ((pendingMode == 0U) || (pendingMode == 100U)))
        {
            applyMode(pendingMode, pendingFlashCount);
            pendingUpdate = 0U;
        }

        /* If current mode is steady and pending mode is flashing, apply immediately */
        if ((pendingUpdate == 1U) && ((currentMode == 0U) || (currentMode == 100U)))
        {
            applyMode(pendingMode, pendingFlashCount);
            pendingUpdate = 0U;
        }
    }
}