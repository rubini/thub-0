#include <hw.h>
#include <string.h>

/**********
 * Time management: we have jiffies, and that's it
 */

/* Jiffies is updated at interrupt time */
extern volatile unsigned long _jiffies;

/* But the update is not atomic, so we need to lock */
static inline unsigned long get_jiffies(void)
{
        unsigned long j;

        asm("cli");
        j = _jiffies;
        asm("sei");
        return j;
}

#define jiffies get_jiffies()

/* The following ones come from the kernel, but simplified */
#define time_after(a,b)		\
	((long)(b) - (long)(a) < 0)
#define time_before(a,b)	time_after(b,a)
#define time_after_eq(a,b)	\
	((long)(a) - (long)(b) >= 0)
#define time_before_eq(a,b)	time_after_eq(b,a)

#define time_in_range(a,b,c)	\
	(time_after_eq(a,b) &&	\
	 time_before_eq(a,c))

static inline unsigned long msec_to_jiffies(int msec)
{
	return ((long)HZ * msec + 500) / 1000;
}

/**********
 * Uart management: we receive at interrupt time, to a buffer
 */

extern unsigned char uart_buffer[256];
extern volatile uint8_t uart_rx_index;

extern void putc(int c);
extern int puts(const char *s);


/*********
 * Things to fire stuff
 */
extern void main(void);
extern void setup(void);

/*********
 * Neopixel stuff (on PC1)
 */
#define NEOPIX_RAISE() (regs[REG_PORTC] = 0x02)
#define NEOPIX_LOWER() (regs[REG_PORTC] = 0x00)
#define NEOPIX_SETDIR() (regs[REG_DDRC] |= 0x02)

extern void neopix_reset(void);
/* please call this with interrupts disabled */
extern void neopix_rgb(uint8_t r, uint8_t g, uint8_t b);

