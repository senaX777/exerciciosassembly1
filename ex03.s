.data
    msg1: .asciiz "digite as horas normais: "
    msg2: .asciiz "digite as horas extras: "
    msg3: .asciiz "digite o desconto: "
    msg4: .asciiz "salario bruto: "
    msg5: .asciiz "\nsalario liquido: "
.text
main:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    add $t0, $v0, 0
    mul $t0, $t0, 10
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 5
    syscall
    add $t1, $v0, 0
    mul $t1, $t1, 15
    add $t2, $t0, $t1
    li $v0, 4
    la $a0, msg3
    syscall
    li $v0, 5
    syscall
    add $t3, $v0, 0
    sub $t4, $t2, $t3
    li $v0, 4
    la $a0, msg4
    syscall
    li $v0, 1
    add $a0, $t2, 0
    syscall
    li $v0, 4
    la $a0, msg5
    syscall
    li $v0, 1
    add $a0, $t4, 0
    syscall
    li $v0, 10
    syscall