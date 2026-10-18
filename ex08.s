.data
    msg1: .asciiz "digite um numero: "
    msg2: .asciiz "o resultado e: "
.text
main:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    add $t0, $v0, 0
    blt $t0, 0, negativo
    mul $t1, $t0, 2
    j mostrar
negativo:
    mul $t1, $t0, 3
mostrar:
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 1
    add $a0, $t1, 0
    syscall
    li $v0, 10
    syscall