/* We need an interrupt handler to actually use "unsigned long _jiffies" */

.global do_jiffies_irq
.global _jiffies

.comm _jiffies,4,1

do_jiffies_irq:
	push r1
	in r1, 0x3f
	push r24
	/* end of prologue */

	clc
	lds r24, _jiffies
	sbci r24, lo8(255)
	sts _jiffies, r24

	lds r24, _jiffies + 1
	sbci r24, lo8(255)
	sts _jiffies + 1, r24

	lds r24, _jiffies + 2
	sbci r24, lo8(255)
	sts _jiffies + 2, r24

	lds r24, _jiffies + 3
	sbci r24, lo8(255)
	sts _jiffies + 3, r24

	/* epilogue */
	pop r24
	out 0x3f, r1
	pop r1
	reti

	
