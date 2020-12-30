.data
	number1: .float 3.14
	number2: .float 3.14
	message: .asciiz "true"
	message2: .asciiz "false"
.text
	main:
		lwc1 $f0, number1
		lwc1 $f2, number2
		
		c.eq.s $f0, $f2
		# In case of the comparison is true
		bc1t printInTrue
		# In case of the comparison is false.
		# bc1f printInFalse
		
		li $v0, 4
		la $a0, message2
		syscall
		
		# exit the program
		li $v0, 10
		syscall

	printInTrue:
	#exit:
		li $v0, 4
		la $a0, message
		syscall
		
	#printInFalse:
		#li $v0, 4
		#la $a0, message2
		#syscall
	
		
