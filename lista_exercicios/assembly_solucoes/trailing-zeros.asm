	addi t1, zero, 0
loop:
	andi t0, a0, 1
	blt zero, t0, fim_loop
	addi t1, t1, 1
	srli a0, a0, 1
	jal zero, loop
fim_loop:
	addi a0, t1, 0
	ebreak
