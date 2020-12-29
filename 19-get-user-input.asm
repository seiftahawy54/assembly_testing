.data
	prompt: .asciiz "Enter your age: "
	message: .asciiz "Your age is: "
.text
	# Prompt user to enter his age.
	li $v0, 4
	la $a0, prompt
	syscall
	
	# Get the user's age.
	li $v0, 5
	syscall
	
	# Store user's input.
	move $t0, $v0
	
	# Display message.
	li $v0, 4
	la $a0, message
	syscall
	
	# Display user's age.
	li $v0, 1
	move $a0, $t0
	syscall