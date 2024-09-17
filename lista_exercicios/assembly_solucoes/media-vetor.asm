	addi t1, zero, 0
	addi t2, zero, 5
	addi t3, zero, 0
loop:
	bge t1, t2, fim_loop

	slli t4, t1, 2
	addi t4, t4, vetor
	lw t4, t4, 0
	add t3, t3, t4

	addi t1, t1, 1
	jal zero, loop
fim_loop:
	divu a0, t3, t2
	ebreak

vetor:
.bits32 1 2 3 4 5
