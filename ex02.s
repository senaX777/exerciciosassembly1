.data
	msg1: .asciiz "digite a quantidade de camisas pequenas: "
	msg2: .asciiz "digite a quantidade de camisas medias: "
	msg3: .asciiz "digite a quantidade de camisas grandes: "
	msg4: .asciiz "o valor é: "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	mul $t3, $t0,10
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, 0
	mul $t4, $t1, 12
	add $t4, $t4, $t3
	li $v0, 4
	la $a0, msg3
	syscall
	li, $v0, 5
	syscall
	add $t2, $v0, 0
	mul $t5, $t2, 15
	add $t4, $t4, $t5
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 1
	add $a0, $t4, 0
	syscall
	