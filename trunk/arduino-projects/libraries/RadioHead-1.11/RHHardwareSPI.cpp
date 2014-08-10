// RHHardwareSPI.h
// Author: Mike McCauley (mikem@airspayce.com)
// Copyright (C) 2011 Mike McCauley
// Contributed by Joanna Rutkowska
// $Id: RHHardwareSPI.cpp,v 1.7 2014/04/28 23:07:14 mikem Exp $

#include <RHHardwareSPI.h>

#if (RH_PLATFORM == RH_PLATFORM_STM32) // Maple etc
// Declare an SPI interface to use
HardwareSPI SPI(1);
#endif

// Declare a single default instance of the hardware SPI interface class
RHHardwareSPI hardware_spi;

RHHardwareSPI::RHHardwareSPI(Frequency frequency, BitOrder bitOrder, DataMode dataMode)
    :
    RHGenericSPI(frequency, bitOrder, dataMode)
{
}

uint8_t RHHardwareSPI::transfer(uint8_t data) 
{
    return SPI.transfer(data);
}

void RHHardwareSPI::attachInterrupt() 
{
#if (RH_PLATFORM == RH_PLATFORM_ARDUINO)
    SPI.attachInterrupt();
#endif
}

void RHHardwareSPI::detachInterrupt() 
{
#if (RH_PLATFORM == RH_PLATFORM_ARDUINO)
    SPI.detachInterrupt();
#endif
}
    
void RHHardwareSPI::begin() 
{
#if (RH_PLATFORM == RH_PLATFORM_ARDUINO) || (RH_PLATFORM == RH_PLATFORM_UNO32)
    uint8_t dataMode;
    if (_dataMode == DataMode0)
	dataMode = SPI_MODE0;
    else if (_dataMode == DataMode1)
	dataMode = SPI_MODE1;
    else if (_dataMode == DataMode2)
	dataMode = SPI_MODE2;
    else if (_dataMode == DataMode3)
	dataMode = SPI_MODE3;
    else
	dataMode = SPI_MODE0;
#if defined(__arm__) && defined(CORE_TEENSY)
    // Temporary work-around due to problem where avr_emulation.h does not work properly for the setDataMode() cal
    SPCR &= ~SPI_MODE_MASK;
#else
    SPI.setDataMode(dataMode);
#endif

    uint8_t bitOrder;
    if (_bitOrder == BitOrderLSBFirst)
	bitOrder = LSBFIRST;
    else
	bitOrder = MSBFIRST;
    SPI.setBitOrder(bitOrder);

    uint8_t divider;
    switch (_frequency)
    {
	case Frequency1MHz:
	default:
	    divider = SPI_CLOCK_DIV16;
	    break;

	case Frequency2MHz:
	    divider = SPI_CLOCK_DIV8;
	    break;

	case Frequency4MHz:
	    divider = SPI_CLOCK_DIV4;
	    break;

	case Frequency8MHz:
	    divider = SPI_CLOCK_DIV2;
	    break;

	case Frequency16MHz:
	    divider = SPI_CLOCK_DIV2;
	    break;

    }
    SPI.setClockDivider(divider);
    SPI.begin();

#elif (RH_PLATFORM == RH_PLATFORM_STM32) // Maple etc
    spi_mode dataMode;
    // Hmmm, if we do this as a switch, GCC on maple gets v confused!
    if (_dataMode == DataMode0)
	dataMode = SPI_MODE_0;
    else if (_dataMode == DataMode1)
	dataMode = SPI_MODE_1;
    else if (_dataMode == DataMode2)
	dataMode = SPI_MODE_2;
    else if (_dataMode == DataMode3)
	dataMode = SPI_MODE_3;
    else
	dataMode = SPI_MODE_0;

    uint32 bitOrder;
    if (_bitOrder == BitOrderLSBFirst)
	bitOrder = LSBFIRST;
    else
	bitOrder = MSBFIRST;

    SPIFrequency frequency; // Yes, I know these are not exact equivalents.
    switch (_frequency)
    {
	case Frequency1MHz:
	default:
	    frequency = SPI_1_125MHZ;
	    break;

	case Frequency2MHz:
	    frequency = SPI_2_25MHZ;
	    break;

	case Frequency4MHz:
	    frequency = SPI_4_5MHZ;
	    break;

	case Frequency8MHz:
	    frequency = SPI_9MHZ;
	    break;

	case Frequency16MHz:
	    frequency = SPI_18MHZ;
	    break;

    }
    SPI.begin(frequency, bitOrder, dataMode);

#else
 #warning RHHardwareSPI does not support this platform yet. Consider adding it and contributing a patch.
#endif
}

void RHHardwareSPI::end() 
{
    return SPI.end();
}

