j label_0
j label_1
add $zero, $zero, $zero
add $zero, $zero, $zero
add $zero, $zero, $zero
add $zero, $zero, $zero
add $zero, $zero, $zero
add $zero, $zero, $zero
label_0:
lui $v1, 61440
lui $a0, 57344
lui $t0, 32768
addi $s4, $zero, 63
lui $a2, 8
nor $at, $zero, $zero
slt $v0, $at, $zero
addi $t2, $at, 65535
sw $a2, 4($v1)
lw $a1, ($v1)
add $a1, $a1, $a1
add $a1, $a1, $a1
sw $a1, ($v1)
addi $t1, $t1, 1
sw $t1, ($a0)
lw $t5, 20($zero)
label_5:
lw $a1, ($v1)
add $a1, $a1, $a1
add $a1, $a1, $a1
sw $a1, ($v1)
lw $a1, ($v1)
and $t3, $a1, $t0
addi $t5, $t5, 1
lw $a1, ($v1)
addi $s2, $zero, 8
add $s6, $s2, $s2
add $s2, $s2, $s6
and $t3, $a1, $s2
beq $t3, $zero, label_2
beq $t3, $s2, label_3
addi $s2, $zero, 8
beq $t3, $s2, label_4
sw $t1, ($a0)
j label_5
label_2:
bne $t2, $at, label_6
nor $t2, $zero, $zero
add $t2, $t2, $t2
label_6:
sw $t2, ($a0)
j label_5
label_3:
lw $t1, 96($s1)
sw $t1, ($a0)
j label_5
label_4:
lw $t1, 32($s1)
sw $t1, ($a0)
j label_5
label_1:
sw $a2, 4($v1)
lw $t5, 20($zero)
add $t2, $t2, $t2
ori $t2, $t2, 1
addi $s1, $s1, 4
and $s1, $s1, $s4
add $t1, $t1, $v0
bne $t1, $at, label_7
addi $t1, $t1, 5
label_7:
lw $a1, ($v1)
add $t3, $a1, $a1
add $t3, $t3, $t3
sw $t3, ($v1)
lw $a1, ($v1)
and $t3, $a1, $t0
beq $t3, $t0, label_7
eret
