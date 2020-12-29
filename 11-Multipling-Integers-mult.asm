.data
	
.text
	addi $t0, $zero, 2000
	addi $t1, $zero, 1500
	# Multiply $t0 and $t1 then it will add the values in 'lo' register
	mult $t0, $t1
	# Move the value from low to $s0
	mflo $s0
	# Displaying value to screen
	li $v0, 1
	add $a0, $zero, $s0
	syscall