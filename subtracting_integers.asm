.data
	number1: .word 15
	number2: .word 5
.text
	lw $s0, number1($zero)
	lw $s1, number2($zero)
	# subtracting S0 from S1
	# t0 = s0 - s1
	sub $t0, $s0, $s1
	
	li $v0, 1
	# add $a0, $zero, $s2
	# Moving the value from t0 to v0
	move $a0, $t0
	syscall 