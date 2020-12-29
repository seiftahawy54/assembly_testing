.data
	PI: .float 3.14285714285
.text
	# For integers we load $v0, 1 for floating point $v0, 2
	li $v0, 2
	lwc1 $f12, PI
	syscall