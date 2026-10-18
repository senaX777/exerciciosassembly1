.data
    msg1: .asciiz "digite o primeiro cateto: "
    msg2: .asciiz "digite o segundo cateto: "
    msg3: .asciiz "a hipotenusa e: "
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
    mtc1 $t0, $f0
    cvt.s.w $f0, $f0
    mtc1 $t1, $f1
    cvt.s.w $f1, $f1
    mul.s $f2, $f0, $f0
    mul.s $f3, $f1, $f1
    add.s $f4, $f2, $f3
    sqrt.s $f12, $f4
    li $v0, 4
    la $a0, msg3
    syscall
    li $v0, 2
    syscall
    li $v0, 10
    syscall