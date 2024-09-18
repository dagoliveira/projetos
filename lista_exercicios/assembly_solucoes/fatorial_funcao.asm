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
	addi t0, zero, 1
	addi t1, zero, 2
for:
	blt a0, t1, fora_for
	mul t0, t0, t1
	addi t1, t1, 1
	jal zero, for
fora_for:
	addi a0, t0, 0
	jalr zero, ra, 0

msgIf:
#O fatorial eh mais que 10x maior.%0a
msgElse:
#O fatorial eh menos que 10x maior.%0a
