.data
	s: .word 1
	i: .word 14          #exp
	f: .word 805306368
.text

main:
	lw $t0,s
	lw $t1,i
	lw $t2,f
	addi $t3,$t3,32
	addi $s0,$s0,0
	addi $s1,$s1,1
	sll $s2,$s1,31
	addi $s3,$s3,0
L1:
	slt $t4,$s0,$t3
	beq $t4,$s0,E
	and $t6,$s2,$t1
	sub $s6,$t3,$s1
	srl $t6,$t6,$s6
	beq $t6,$s0,L2
	beq $t6,$s1,L3
L2:
	srl $s2,$s2,1
	sub $t3,$t3,$s1
	add $t7,$t3,$s0
	add $t8,$t3,$s0
	sub $t7,$t7,$s1
	sub $t8,$t8,$s1
	add $s4,$t8,$s0
	j L1
L3:
	slt $t4,$s0,$t7
	beq $t4,$s0,L4
	sub $t7,$t7,$s1
	and $t6,$t1,$s1
	add $s3,$s3,$t6
	sll $s3,$s3,1
	srl $t1,$t1,1
	j L3
L4:
	slt $t4,$s0,$t8
	beq $t4,$s0,E
	srl $t2,$t2,1
	and $t5,$s3,1
	sll $t5,$t5,31
	add $t2,$t2,$t5
	srl $s3,$s3,1
	addi $t8,$t8,-1
	j L4
E:
	sw $t0,s
	sw $s4,i
	sw $t2,f
	j $ra
