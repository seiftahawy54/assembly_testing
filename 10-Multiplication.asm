.data
	
.text
	addi $s0, $zero, 100
	addi $s1, $zero, 4
	
	mul $t0, $s0, $s1
	
	
	li $v0, 1
	add $a0, $zero, $t0
	syscall
	
	
	# For multiplication we use:
	# mul
	# mult
	# sll => So efficient, but not flexible.