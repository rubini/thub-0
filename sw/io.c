#include <hw.h>

static int uart_setup(void)
{
	/* This setup function should configure the uart pins and clock */

	/*
	 * Input clock is 16MHz, divided by 8 (using U2X) makes 2MHz.
	 * To get 2% precision we need 50 ticks per bit, so 40k bits,
	 * so let's try a 38400 rate:
	 *   2000000 / 38400 = 52.08
	 */
	regs[REG_UCSR0C] = 0;
	regs[REG_UBRR0L] = 51;

	/* size is 011 for 8-bit symbols */
	regs[REG_UCSR0C] = REG_UCSR0C_UCSZ1 | REG_UCSR0C_UCSZ0;
	regs[REG_UCSR0A] = REG_UCSR0A_UDRE | REG_UCSR0A_U2X;
	/* Enable interrupts on UART rx, and enable the device */
	regs[REG_UCSR0B] = REG_UCSR0B_RXCIE | REG_UCSR0B_TXEN | REG_UCSR0B_RXEN;
	return 0;
}

/* set up the timer: use 1024 as a prescaler, and overflow irq */
static int timer_setup(void)
{
	/* 16M / 256 / 256 = 244.14 Hz -- or 122.07 at 8MHz... */
	regs[REG_TCCR2B] = REG_TCCR2B_P256;
	regs[REG_TIMSK2] = REG_TIMSK2_TOIE2;

	asm("sei"); /* enable interrupts */
	return 0;
}

void setup(void)
{
	uart_setup();
	timer_setup();
}

void putc(int c)
{
	if (c == '\n')
		putc('\r');
	while ( !(regs[REG_UCSR0A] & REG_UCSR0A_UDRE) )
		;
	regs[REG_UDR0] = c;
}

int puts(const char *s)
{
	while (*s)
		putc (*s++);
	return 0;
}
