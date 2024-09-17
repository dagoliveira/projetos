	addi t0, zero, 5
	addi t1, zero, 0
loop:
	beq t1, t0, fim_loop
	slli t2, t1, 2

	addi t3, t2, A
	lw t3, t3, 0

	addi t4, t2, B
	lw t4, t4, 0

	add t3, t3, t4
	addi t5, t2, C
	sw t5, t3, 0

	addi t1, t1, 1
	jal zero, loop
fim_loop:
	ebreak

A:
.bits32 1 2 3 4 5
B:
.bits32 0x10 0x20 0x30 0x40 0x50
C:
