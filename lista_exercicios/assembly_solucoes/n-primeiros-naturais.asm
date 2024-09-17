	addi t0, zero, 1
	addi t1, zero, vetor
loop:
	blt a0, t0, fim_loop
	sw t1, t0, 0
	addi t0, t0, 1
	addi t1, t1, 4
	jal zero, loop
fim_loop:
	ebreak

vetor:
