.data #0x10010000

    a: .word 2, 6, 5, 10, -6, 50, 120
    
.text

    la $s1, a # $s1=0x10010000
    li $t2, 0
    li $s0, 0
    
    while: ble $s0, 2, LOOP
    j EXIT
    
    LOOP:
    
        sll $t3, $t2, 2 # $t2 * 2^n 
        add $t5, $t3, $s1  #0 + 0x10010000
        lw $t1, 0($t5) 
        addi $s0, $s0, 1
        addi $t2, $t2, 1
        
        j while
        
    EXIT:
        