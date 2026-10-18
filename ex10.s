.data
    msg1: .asciiz "digite o primeiro numero: "
    msg2: .asciiz "digite o segundo numero: "
    msg3: .asciiz "o resto da divisao e: "
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
    bge $t0, $t1, calcular
    add $t2, $t0, 0
    add $t0, $t1, 0
    add $t1, $t2, 0
calcular:
    div $t0, $t1
    mflo $t2
    mul $t3, $t2, $t1
    sub $t4, $t0, $t3
    li $v0, 4
    la $a0, msg3
    syscall
    li $v0, 1
    add $a0, $t4, 0
    syscall
    li $v0, 10
    syscall