	addi s0, a0, 0
	jal ra, fatorial
	addi t0, zero, 10
	mul t1, s0, t0

	bge t1, a0, else

	addi a7, zero, 3
	addi a0, zero, msgIf
	addi a1, zero, 34
	ecall
	ebreak

else:
	addi a7, zero, 3
	addi a0, zero, msgElse
	addi a1, zero, 35
	ecall
	ebreak

fatorial:
	beq zero, a0, fatorial_zero
	addi sp, sp, -8
	sw sp, ra, 4
	sw sp, a0, 0
	addi a0, a0, -1
	jal ra, fatorial
	lw t0, sp, 0
	lw ra, sp, 4
	addi sp, sp, 8
	mul a0, a0, t0
	jalr zero, ra, 0
fatorial_zero:
	addi a0, zero, 1
	jalr zero, ra, 0

msgIf:
#O fatorial eh mais que 10x maior.%0a
msgElse:
#O fatorial eh menos que 10x maior.%0a
