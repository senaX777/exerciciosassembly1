.data
    msg1: .asciiz "digite um numero entre 0 e 100: "
    msg2: .asciiz "intervalo 0-25: "
    msg3: .asciiz "\nintervalo 26-50: "
    msg4: .asciiz "\nintervalo 51-75: "
    msg5: .asciiz "\nintervalo 76-100: "
.text
main:
    li $t0, 0
    li $t1, 0
    li $t2, 0
    li $t3, 0
ler:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    add $t4, $v0, 0
    blt $t4, 0, mostrar
    bgt $t4, 100, ler
    ble $t4, 25, faixa1
    ble $t4, 50, faixa2
    ble $t4, 75, faixa3
    j faixa4
faixa1:
    add $t0, $t0, 1
    j ler
faixa2:
    add $t1, $t1, 1
    j ler
faixa3:
    add $t2, $t2, 1
    j ler
faixa4:
    add $t3, $t3, 1
    j ler
mostrar:
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 1
    add $a0, $t0, 0
    syscall
    li $v0, 4
    la $a0, msg3
    syscall
    li $v0, 1
    add $a0, $t1, 0
    syscall
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
    add $a0, $t3, 0
    syscall
    li $v0, 10
    syscall