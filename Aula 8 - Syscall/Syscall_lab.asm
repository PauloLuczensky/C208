.data

 PI: .float 3.141592
 
 double: .double 53.602
 zero: .double 10.0
 
 str: .asciiz "boa tarde"
 
.text

 #print inteiros
 #li $v0, 1
 #li $a0, 150
 #syscall
 
 #print float
 #li $v0, 2
 #lwc1 $f12, PI
 #syscall
 
 #print double
 #ldc1 $f2, double
 #ldc1 $f0, zero
 
 #li $v0, 3
 #add.d $f12, $f2, $f0
 #syscall
 
 #print string
 li $v0, 4
 la $a0, str
 syscall
 
 
 
 
 
 
 
 
 
   