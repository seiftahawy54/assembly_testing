.data
	newLine: .byte  '\n'
.text
	main:
		# when using $s(n) register we have to save it to the stack.
		addi $s0, $zero, 10
		
		jal increaseMyRegister
		
		# Print new line
		li $v0, 4
		la $a0, newLine
		syscall

		# Print the value
		jal printTheValue
		
	# This line is going to signal end of program.
	li $v0, 10
	syscall
	
	increaseMyRegister:
		# Cut a space from the Stack to use it.
		addi $sp, $sp, -8
		sw $s0, 0($sp)
		sw $ra, 4($sp)
		
		addi $s0, $s0, 30
	
		# Nested Procedure
		jal printTheValue
		
		# Return the taken Stack space to the memory.
		lw $s0, 0($sp)
		lw $ra, 4($sp)
		addi $sp, $sp, 8
		
		jr $ra
		
	printTheValue:
		# Print new value in Function
		li $v0, 1
		move $a0, $s0
		syscall
		jr $ra