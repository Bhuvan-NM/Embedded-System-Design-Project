/**********************************************************
*			STM32F439 Board Support Package	 									  *
*			Developed for the STM32						  								*
*			Author: Dr. Glenn Matthews					  							*
*			Source File								      										*
***********************************************************/

#include <stdint.h>
#include "stm32f439xx.h"
#include "ioMapping.h"
#include "boardSupport.h"
#include "gpioControl.h"


// Local function prototypes - These are all board specific.
static void boardSupport_initGPIO(void);

//******************************************************************************//
// Function: boardSupport_init()
// Input:
// Output:
// Description: Perform the basic board initialisation requests for the RMIT SOM
// *****************************************************************************//
void boardSupport_init(void)
{

	// STM32F439II Daughter Board Configuration
	// The clocks for the various GPIO should be brought up here.
	boardSupport_initGPIO();

}


//******************************************************************************//
// Function: boardSupport_initGPIO()
// Input:
// Output:
// Description: Perform the basic board initialisation requests for the RMIT SOM
// *****************************************************************************//
void boardSupport_initGPIO(void)
{
	// Create an instance of the GPIO Configuration Struct.
	GPIO_Config portConfig;

	// The GPIO clocks for the power management have alredy been configured by the 
	// RAM sub-system. For other GPIO and peripherals they will need to be enabled.

	// Configure PH4 as output - 1.2V rail.
	portConfig.port = GPIOH;
	portConfig.pin = Pin4;	
	portConfig.mode = GPIO_Output;
	portConfig.pullUpDown = GPIO_No_Pull;
	portConfig.outputType = GPIO_Output_PushPull;
	portConfig.speed = GPIO_2MHz;
	
	// Configure the I/O Port.
	gpio_configureGPIO(&portConfig);
	
	// Enable the 1.2VA rail.
	gpio_setGPIO(GPIOH, Pin4);
	
	// Configure Port PH6 as output - 3.3V rail.
	portConfig.pin = Pin7;
	gpio_configureGPIO(&portConfig);
	gpio_setGPIO(GPIOH, Pin7);

	/*portConfig.port = GPIOG;
	portConfig.pin = Pin12;	
	gpio_configureGPIO(&portConfig);
	gpio_setGPIO(GPIOG, Pin12);
	*/
	return;
}


//******************************************************************************//
// Function: delay_software_ms()
// Input: Delay time (in milliseconds)
// Output: None
// Description: Software driven delay loop.
// *****************************************************************************//
void delay_software_ms(uint32_t millisecondDelay)
{
	// If optimisation is off, then the delay should be set at 14000
	// In this function a basic software delay is utilised.
	uint32_t i = 0;
	for(i = 0; i < (millisecondDelay * 21000); i++);
}


//******************************************************************************//
// Function: delay_software_us()
// Input: Delay time (in microseconds)
// Output: None
// Description: Software driven delay loop.
// *****************************************************************************//
void delay_software_us( uint32_t usec )
{
    // To avoid delaying for less than usec, always round up.;
		uint32_t i = 0;
    for(i = 0; i < (usec * 21); i++);

}



