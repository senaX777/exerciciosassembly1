.data
	mnsg1: .asciiz "digite o valor de um lado "
	mnsg2: .asciiz "digite o valor do outro lado "
	mnsg3: .asciiz "a area do retangulo é "
.text
main:
	#exibir a mensagem
	li $v0, 4
	la $a0, mnsg1
	syscall
	
	#ler numero
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0, 4
	la $a0, mnsg2
	syscall
	
	 li $v0, 5
	 syscall
	 add $t1, $v0, 0
	 mul $t2, $t0,$t1
	 
	 li $v0, 4
	 la $a0, mnsg3
	 syscall
	 li $v0, 1
	 add $a0, $t2, 0
	 syscall  