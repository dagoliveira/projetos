	slt t1, a0, zero
	xori t0, t1, 1
	addi t0, t0, -1
	xor t0, a0, t0
	add t0, t0, t1
	slli t1, t1, 31
	or a0, t0, t1

	ebreak
