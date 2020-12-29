.data

.text

	addi $s0, $zero, 30
	addi $s1, $zero, 6

	# We don't have to stick with 2 values.
	# div $t2, $t0, 10
	
	# The division operation here is done and saved to 'lo' register.
	div $s0, $s1
	
	mflo $s2 # Here we have the Quotient.
	mfhi $s3 # Here we have the Remainder.
	
	li $v0, 1
	add $a0, $zero, $s2
	#add $a1, $zero, $t3
	syscall