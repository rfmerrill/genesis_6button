/*
 * genesis_6button.c
 *
 * Created: 8/24/2022 6:51:32 PM
 * Author : rfm
 */

#include <avr/interrupt.h>
#include <avr/io.h>
#include <stdbool.h>

#define F_CPU_HZ 10000000
#define F_PER_HZ 10000000

#define TIMEOUT_SEC 0.002  // 2 ms
#define TIMEOUT_PER_CLKS (F_PER_HZ * TIMEOUT_SEC)

static volatile bool timeout = false;

static inline void pins_3button(void)
{
    cli();
    PORTB_DIR = 0;          // PBx all set to input
    VPORTA_OUT &= ~_BV(4);  // Select 0
    VPORTA_OUT &= ~_BV(7);  // Output enable
    PORTB_OUT = 0x00;       // PB0-3 low pre-load
    sei();
}

static inline void pins_low(void)
{
    cli();
    VPORTA_OUT |= _BV(7);  // Output disable
    PORTB_DIR = 0x0F;      // PB0-3 output
    VPORTA_OUT |= _BV(4);  // Select 1 (pre-load)
    sei();
}

static inline void pins_xyz(void)
{
    cli();
    PORTB_DIR = 0;          // PBx all set to input
    VPORTA_OUT &= ~_BV(7);  // Output enable
    PORTB_OUT = 0x0F;       // PB0-3 drive high pre-load
    sei();
}

static inline void pins_high(void)
{
    cli();
    VPORTA_OUT |= _BV(7);   // Output disable
    PORTB_DIR = 0x0F;       // PB0-3 output
    VPORTA_OUT &= ~_BV(4);  // Select 0 (pre-load)
    sei();
}

ISR(TCA0_CMP0_vect)
{
    TCA0_SINGLE_INTFLAGS = TCA_SINGLE_CMP0_bm;
    TCA0_SINGLE_CTRLA = 0;  // Disable, no divider
    timeout = true;
    PORTB_DIR = 0;          // PBx all set to input
    VPORTA_OUT &= ~_BV(4);  // Select 0
    VPORTA_OUT &= ~_BV(7);  // Output enable
}

static inline void start_timer(void)
{
    timeout = false;
    TCA0_SINGLE_CTRLA = 0;                     // Disable, no divider
    TCA0_SINGLE_CNT = 0;                       // zero count
    TCA0_SINGLE_CTRLB = TCA_SINGLE_CMP0EN_bm;  // CMP0 enable
    TCA0_SINGLE_CMP0 = TIMEOUT_PER_CLKS;
    TCA0_SINGLE_INTCTRL = TCA_SINGLE_CMP0_bm;
    TCA0_SINGLE_CTRLA = TCA_SINGLE_ENABLE_bm;  // Enable!
}

static inline bool th_high(void)
{
    return (0 != (VPORTA_IN & _BV(1)));
}

static inline bool th_low(void)
{
    return (0 == (VPORTA_IN & _BV(1)));
}

// Wait 0.6 microsecond
static inline void th_wait(void)
{
    asm("nop");
    asm("nop");
    asm("nop");
    asm("nop");
    asm("nop");
    asm("nop");
}

static inline void th_wait_for_high(void)
{
    th_wait();
    while (th_low())
    {
        // wait
    }
}

static inline void th_wait_for_low(void)
{
    th_wait();
    while (th_high())
    {
        // wait
    }
}

int main(void)
{
    CCP = 0xD8;
    CLKCTRL_MCLKCTRLB = 0x0001;  // Prescaler enabled with 1/2.

    PORTA_DIR = _BV(4) | _BV(7);         // PA4 and PA7 as outputs.
    PORTA_PIN5CTRL |= PORT_PULLUPEN_bm;  // Pin 5 pulled up.

    pins_3button();

    // Wait to make sure we give time for MODE to rise
    th_wait();
    th_wait();
    th_wait();
    th_wait();

    if (0 == (PORTA_IN & _BV(5)))
    {
        // MODE button held, stay in 3-button forever
        while (true)
        {
            // loop forever
        }
    }

    while (true)
    {
        pins_3button();

        th_wait_for_low();

        // still in 3-button mode. We start timer on a rising edge

        th_wait_for_high();

        // First rising edge, start timer.
        start_timer();

        // Wait for 2 more cycles, check for timeout.
        th_wait_for_low();
        if (timeout)
        {
            continue;
        }

        th_wait_for_high();
        if (timeout)
        {
            continue;
        }

        th_wait_for_low();
        // Recognition cycle
        pins_low();
        // Check for timeout *after* changing pins.
        // that way we don't end up stuck waiting with
        // pins in the wrong configuration.

        if (timeout)
        {
            continue;
        }

        th_wait_for_high();
        // XYZ cycle
        pins_xyz();
        if (timeout)
        {
            continue;
        }

        th_wait_for_low();
        // Technically undefined here, but some software
        // expects us to output high.
        pins_high();

        while (!timeout)
        {
            // Wait for timeout to start the cycle again.
        }
    }
}
