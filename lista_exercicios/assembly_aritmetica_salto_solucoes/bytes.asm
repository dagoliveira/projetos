	srli t0, a0, 8
	andi t0, t0, 0xff
	srli a1, a0, 24
	andi a1, a1, 0xff
	addi a0, t0, 0
	ebreak
