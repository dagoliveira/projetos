	addi t1, zero, 0
	addi t2, zero, 5
	addi t3, zero, 0
	addi t4, zero, 0
loop:
	bge t1, t2, fim_loop

	slli t5, t1, 2
	addi t6, t5, vetor
	lw t6, t6, 0
	addi s0, t5, pesos
	lw s0, s0, 0
	mul t6, t6, s0
	add t3, t3, t6
	add t4, t4, s0

	addi t1, t1, 1
	jal zero, loop
fim_loop:
	divu a0, t3, t4
	ebreak

vetor:
.bits32 1 2 3 4 5
pesos:
.bits32 5 4 3 2 1
