.data
    msg1: .asciiz "digite a base maior: "
    msg2: .asciiz "digite a base menor: "
    msg3: .asciiz "digite a altura: "
    msg4: .asciiz "a area do trapezio e: "
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
    li $v0, 4
    la $a0, msg3
    syscall
    li $v0, 5
    syscall
    add $t2, $v0, 0
    add $t3, $t0, $t1
    mul $t3, $t3, $t2
    div $t3, $t3, 2
    li $v0, 4
    la $a0, msg4
    syscall
    li $v0, 1
    add $a0, $t3, 0
    syscall
    li $v0, 10
    syscall