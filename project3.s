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


