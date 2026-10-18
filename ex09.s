.data
    msg1: .asciiz "digite o primeiro numero: "
    msg2: .asciiz "digite o segundo numero: "
    msg3: .asciiz "o segundo numero nao pode ser zero!\n"
    msg4: .asciiz "o resultado da divisao e: "
.text
main:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    add $t0, $v0, 0
ler:
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 5
    syscall
    add $t1, $v0, 0
    bne $t1, 0, calcular
    li $v0, 4
    la $a0, msg3
    syscall
    j ler
calcular:
    div $t0, $t1
    mflo $t2
    li $v0, 4
    la $a0, msg4
    syscall
    li $v0, 1
    add $a0, $t2, 0
    syscall
    li $v0, 10
    syscall