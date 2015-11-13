#include <thub.h>

/*
 * Calculations here are based on ideas set forth in
 * http://wp.josh.com/2014/05/13/
 *     ws2812-neopixels-are-not-so-finicky-once-you-get-to-know-them/
 *
 *   Symbol     Parameter                     Min   Typical   Max
 *    T0H     0 code ,high voltage time       200     350      500
 *    T1H     1 code ,high voltage time       550     700     5500
 *    TLD     data, low voltage time          450     600      5000
 *    TLL     latch, low voltage time        6000
 */

void neopix_reset(void)
{
	volatile int i;
	NEOPIX_LOWER();
	for (i = 0; i < 200; i++)
		/* more than 10 micros = 400 cycles, definitely */;
	return;
}

static __attribute__((__noinline__)) void bit_1(void)
{
	NEOPIX_RAISE();
	/*
	 * bit is 1: be 550 min.
	 * We need to take is 5 insns at 8MHz, 9 at 16MHz
	 */
	asm(".rep 9\n\tnop\n\t.endr\n");
	NEOPIX_LOWER();
}

static __attribute__((__noinline__)) void bit_0(void)
{
	NEOPIX_RAISE();
	/*
	 * bit is 0: 200 min, 500 max.
	 * This is 1.6/3.2 min and 4.0/8.0 max.
	 * With 2 nops it should work both at 8MHz and 16MHz.
	 */
	asm(".rep 2\n\tnop\n\t.endr\n");
	NEOPIX_LOWER();
}

static inline void neopix_byte(uint8_t v)
{
	uint8_t i = 0x80;
	do {
		if (v & i)
			bit_1();
		else
			bit_0();
		i >>= 1;
	} while (i);
}

/* please call this with interrupts disabled */
void neopix_rgb(uint8_t r, uint8_t g, uint8_t b)
{
	neopix_byte(g);
	neopix_byte(r);
	neopix_byte(b);
}

