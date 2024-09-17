	srli t0, a0, 8
	srli t1, t0, 8
	slli t1, t1, 8
	xor t0, t0, t1

	srli a1, a0, 24
	srli t1, a1, 8
	slli t1, t1, 8
	xor a1, a1, t1

	addi a0, t0, 0
	ebreak
