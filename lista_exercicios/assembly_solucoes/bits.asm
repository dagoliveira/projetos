	addi t0, a0, 0
	addi a0, zero, 0
loop:
	beq t0, zero, fim_loop
	andi t1, t0, 1
	add a0, a0, t1
	srli t0, t0, 1
	jal zero, loop
fim_loop:
	ebreak
