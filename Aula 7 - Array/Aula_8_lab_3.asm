.data #0x10010000

    a: .word 2, 6, 5, 10, -6, 50, 120
    
.text

    la $s1, a
    
    li $t1, 500
    li $t2, 300
    li $t3, 300
    
    sw $t1, 12($s1)
    sw $t2, 20($s1)