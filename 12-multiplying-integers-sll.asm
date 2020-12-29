.data

.text
	
	addi $s0, $zero, 400
	
	# This where we add the value to the power of two.
	# If the passed like here is 2, so it will be 2 to the power of 2.
	# And if the passed value is 1, so the value will be 2 to the power of 1.
	sll $t0, $s0, 2
	
	li $v0, 1
	add $a0, $zero, $t0
	syscall