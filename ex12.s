.data
    msg1: .asciiz "digite a altura em centimetros: "
    msg2: .asciiz "\na menor altura e: "
    msg3: .asciiz "\na maior altura e: "
.text
main:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    add $t0, $v0, 0
    add $t1, $t0, 0
    add $t2, $t0, 0
    li $t3, 14
ler:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    add $t4, $v0, 0
    bge $t4, $t1, vm
    add $t1, $t4, 0
vm
    ble $t4, $t2, continuar
    add $t2, $t4, 0
continuar:
    sub $t3, $t3, 1
    bgt $t3, 0, ler
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 1
    add $a0, $t1, 0
    syscall
    li $v0, 4
    la $a0, msg3
    syscall
    li $v0, 1
    add $a, $t2, 0
    syscall
    li $v0, 10
    syscall