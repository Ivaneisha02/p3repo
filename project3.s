.data

input: .space 1000
X: .asciiz "X"
delimiter: .asciiz ","
left_paren: .asciiz "("
right_paren: .asciiz ")"

.text

main:
    li $v0, 8
    la $a0, input
    li $a1, 1000
    syscall
    addi $sp, $sp, -4
    la $t0, input
    sw $t0, ($sp)
    jal sub_a
    addi $sp, $sp, 4

exit:
    li $v0, 10
    li $a0, 0
    syscall
sub_a:
    addi $sp, $sp, -12
    sw $ra, ($sp)
    sw $s0, 4($sp)
    sw $s1, 8($sp)
    lw $s0, 12($sp)
    li $s1, 0
loop:
    lb $t0, ($s0)
    beq 10, 10, verify
    bne $t0, 44, next
verify:
    sub $t0, $s0, $s1
    addi $sp, $sp, -4
    sw $t0, ($sp)
    jal sub_b
    addi $sp, $sp, 4
    bgez $v1, valid
    move $a0, $v0
    li $v0,4
    syscall
    b print_delimiter
sub_b:
    addi $sp, $sp, -4
    sw $s0, ($sp)
    lw $s0, 4($sp)
    li $t1, 113
    li $t0, 81
    li $t3, 0
    li $t4, 0
    li $t5,0
    li $t6,0


