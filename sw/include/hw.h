#include <stdint.h>

#define HZ 244 /* see timer_setup() */

extern volatile uint8_t regs[];

/* uart */
#define REG_UBRR0L      0xc4
#define REG_UCSR0B      0xc1
#define REG_UCSR0B_RXCIE         0x80
#define REG_UCSR0B_RXEN          0x10
#define REG_UCSR0B_TXEN          0x08
#define REG_UCSR0B_UCSZ2         0x04
#define REG_UCSR0A      0xc0
#define REG_UCSR0A_UDRE          0x20
#define REG_UCSR0A_RXC           0x80
#define REG_UCSR0A_TXC           0x40
#define REG_UCSR0A_U2X           0x02
#define REG_UDR0        0xc6
#define REG_UCSR0C      0xc2
#define REG_UCSR0C_UMSEL1        0x80    /* Keep at 0 for sync uart */
#define REG_UCSR0C_UMSEL0        0x40
#define REG_UCSR0C_UCSZ1         0x04
#define REG_UCSR0C_UCSZ0         0x02

/* timer 2 */
#define REG_TCNT2       0xb2
#define REG_TCCR2B      0xb1
#define REG_TCCR2B_P256         0x06
#define REG_TCCR2B_P1024        0x07
#define REG_TIMSK2      0x70
#define REG_TIMSK2_TOIE2        0x01

/* ports */
#define REG_PINB        0x23
#define REG_DDRB        0x24
#define REG_PORTB       0x25
#define REG_PINC        0x26
#define REG_DDRC        0x27
#define REG_PORTC       0x28
#define REG_PIND        0x29
#define REG_DDRD        0x2a
#define REG_PORTD       0x2b
#define REG_PINE        0x2c
#define REG_DDRE        0x2d
#define REG_PORTE       0x2e

/* Analog */
#define REG_ADMUX       0x7c
#define REG_ADCSRA      0x7a
#define REG_ADCL        0x78
#define REG_ADCH        0x79
#define REG_ADCSRB      0x7b
#define REG_DIDR0       0x7e
#define REG_DIDR1       0x7f
