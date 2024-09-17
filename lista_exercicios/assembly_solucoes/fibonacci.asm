	addi t0, zero, 1
	addi t1, zero, 1
	addi t2, zero, 3
loop:
	blt a0, t2, fim_loop
	add t3, t0, t1
	addi t0, t1, 0
	addi t1, t3, 0
	addi a0, a0, -1
	jal zero, loop
fim_loop:
	addi a0, t1, 0
	ebreak
