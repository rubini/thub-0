/* We need to provide interrupt vectors here */
.extern _start
.extern __wrong_irq
.extern do_jiffies_irq
.section .vectors, "ax"

	/* Vector 0 is reset (1 for atmel docs, address 0) */
	jmp _start

	.rep 6 /* 2..7 (atmel counts starting at 1) */
	jmp __wrong_irq
	.endr

	/* Lazy: all timer2 interrupts (8, 9, 10) */
	jmp do_jiffies_irq
	jmp do_jiffies_irq
	jmp do_jiffies_irq

	.rep 17 /* 11..27 */
	jmp __wrong_irq
	.endr
