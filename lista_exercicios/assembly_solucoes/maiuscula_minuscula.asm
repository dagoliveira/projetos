	addi a7, zero, 3
	addi a0, zero, texto
	addi a1, zero, 13 ; tamanho do texto
	ecall

	addi t0, zero, 13
	addi t1, zero, 0
loop:
	bge t1, t0, fim_loop
	addi t2, t1, texto
	lb t3, t2, 0
	addi t4, zero, 0x60
	blt t3, t4, pula
	addi t3, t3, -0x20
	sb t2, t3, 0
pula:
	addi t1, t1, 1
	jal zero, loop

fim_loop:
	addi a7, zero, 3
	addi a0, zero, texto
	addi a1, zero, 13 ; tamanho do texto
	ecall

	ebreak

texto:
#isso eh texto
