	addi t0, zero, 1
	addi t1, zero, 1
loop:
	blt a0, t1, fim_loop
	mul t0, t0, t1
	addi t1, t1, 1
	jal zero, loop
fim_loop:
	addi a0, t0, 0
	ebreak
