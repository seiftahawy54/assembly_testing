.data
	message: .asciiz "The numbers are equal"
	message2: .asciiz "Nothing happened"
.text
	main:
		addi $t0, $zero, 20
		addi $t1, $zero, 20
		
		# Branch if the value in t0 == t1
		#beq $t0, $t1, numberEqual
		#bne $t0, $t1, numbersNotEqual
		b numberEqual
		li $v0, 10
		syscall
	
		
	numberEqual:
		li $v0, 4
		la $a0, message
		syscall
		
	#numbersNotEqual:
	#	li $v0, 4
	#	la $a0, message2
	#	syscall