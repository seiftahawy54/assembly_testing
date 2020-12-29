.data
	prompt: .asciiz "Enter the value of e: "
.text
	# Display message to user.
	li $v0, 4
	la $a0, prompt
	syscall
	
	# Get double number from user
	li $v0, 7
	syscall
	
	# Print user input.
	li 		$v0, 3
	add.d 	$f12, $f0, $f10
	syscall