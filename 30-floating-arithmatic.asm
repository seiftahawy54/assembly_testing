.data
	number1: .float 3.14
	number2: .float 2.71

.text
	#ldc1 $f2, number1
	#ldc1 $f4, number2
	
	#add.d $f12, $f2, $f4
	
	#li $v0, 3
	#syscall
	
	lwc1 $f2, number1
	lwc1 $f4, number2
	
	add.s $f12, $f2, $f4
	
	li $v0, 2
	syscall