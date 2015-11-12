/* Some stuff that is not implemented yet */

void __wrong_irq(void)
{
	puts("wrong irq\n");
	if (0)
		asm("jmp 0");
	else
		while (1)
			;
}
