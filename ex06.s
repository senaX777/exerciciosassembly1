.data
    msg1: .asciiz "digite o valor de A: "
    msg2: .asciiz "digite o valor de B: "
    msg3: .asciiz "o resultado e: "
.text
main:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    add $t0, $v0, 0
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 5
    syscall
    add $t1, $v0, 0
    beq $t0, $t1, iguais
    mul $t2, $t0, $t1
    j mostrar
iguais:
    add $t2, $t0, $t1
mostrar:
    li $v0, 4
    la $a0, msg3
    syscall
    li $v0, 1
    add $a0, $t2, 0
    syscall
    li $v0, 10
    syscall