.globl main
.text
main:
	li t0, 0
	li t1, 1
	li t2, 100
loop:
	add t0, t0, t1
	addi t1, t1, 1
	bne t1, t2, loop
	bne t0, x0, success
failure:
	li a0, 0
	li a7, 93
	ecall
success:
	li a0, 42
	li a7, 93
	ecall