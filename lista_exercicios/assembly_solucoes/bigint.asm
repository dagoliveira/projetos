	add t0, a0, a2
	slt t1, t0, a0
	slt t2, t0, a2
	or t1, t1, t2

	add t2, a1, a3
	add t2, t2, t1
	addi a0, t0, 0
	addi a1, t2, 0

	ebreak
