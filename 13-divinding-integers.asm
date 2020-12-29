.data

.text

	addi $t0, $zero, 30
	addi $t1, $zero, 5
	
	# Divide t0 / t1
	# Assign s0 to that operation
	div $t2, $t0, $t1 # s0 = t0 / t1

	li $v0, 1
	add $a0, $zero, $t2
	syscall