	srli t0, a0, 1
	addi t1, zero, 2
loop:
	blt t0, t1, eh_primo
	remu t2, a0, t1
	beq zero, t2, nao_eh_primo

	addi t1, t1, 1
	jal zero, loop
eh_primo:
	addi a0, zero, 1
	ebreak
nao_eh_primo:
	addi a0, zero, 0
	ebreak
