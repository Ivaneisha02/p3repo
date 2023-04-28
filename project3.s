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

