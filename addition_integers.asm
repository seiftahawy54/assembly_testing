.data
	number1: .word 5
	number2: .word 10

.text
	# Moving data from RAM to registers.
	lw $t0, number1($zero)
	lw $t1, number2($zero)
	
	# This means move the data from register t0 and t1 add them together and put the result in t2.
	# t2 = t0 + t1
	add $t2, $t0, $t1
	
	li $v0, 1
	add $a0, $zero, $t2
	syscall