.data
	prompt: .asciiz "Enter ur name: "
	message: .asciiz "Hello, "
	userInput: .space 20
.text
	main:
		# Prompt user for input
		li $v0, 4
		la $a0, prompt
		syscall
		
		# Get user input
		li $v0, 8
		la $a0, userInput  
		li $a1, 20
		syscall
		
		# Display user final message
		li $v0, 4
		la $a0, message
		syscall
		
		# Display user input
		li $v0, 4
		la $a0, userInput
		syscall
		
	
	# end of main
	li $v0, 10
	syscall