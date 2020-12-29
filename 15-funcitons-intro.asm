.data
	message: .asciiz "Hi everybody.\nMy name is 'Seif Tahawy'\n"
.text
	# Label of the function, procedure, is its name.
	main:
		
		# Jumps to an address and link it to the program.
		jal displayMessage
		
		# Print number 5 to the screen.
		addi $s0, $zero, 5
		li $v0, 1
		add $a0, $zero, $s0
		syscall
	
	
	# This line tells system that the program is done.
	# Like return 0; in C or C++
	# THIS LINE IS MANDATORY
	li $v0, 10
	syscall
	
	displayMessage:
		li $v0, 4
		la $a0, message
		syscall
		# Jumps to the address of starting of calling.
		jr $ra