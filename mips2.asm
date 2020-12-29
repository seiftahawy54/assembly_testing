.data
     myDouble: .double 15.999999898989
     zeroDouble: .double 0.0
.text
     # double uses pair of registers to load first the decimal part and the part after floating point.
     ldc1 $f2, myDouble
     ldc1 $f0, zeroDouble
     li $v0, 3
     add.d $f12, $f2, $f0
     syscall