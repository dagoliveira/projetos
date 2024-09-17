	addi t0, zero, 0
loop:
	slti t1, t0, 4
	addi t1, t1, -1

	andi t2, t1, fim_loop

	xori t1, t1, -1
	andi ra, t1, loop

	or ra, ra, t2
	addi t0, t0, 1
	jalr zero, ra, 0
fim_loop:
	ebreak
