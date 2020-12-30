.data
	message: .asciiz "After while loop is done"
	space: .asciiz ", "
.text

	main:
		# i = 0
		add $t0, $zero, 0
	
		while:
			bgt $t0, 10, exit
			
			jal printNumber
			
			# This is the updating condition.
			# This is equivalent: i = i + 1
			addi $t0, $t0, 1
			
			j while
			
		exit:
			li $v0, 4
			la $a0, message
			syscall
	
	
		# End of the program
	
		li $v0, 10
		syscall
	printNumber:
		# print number
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		
		li $v0, 4
		la $a0, space
		syscall
		
		jr $ra