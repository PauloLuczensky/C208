#Read

.data

 msg: .asciiz "Forneça um numero decimal"
 x: .double 10.0
 
 pergunta: .asciiz "Qual eh o seu nome?"
 saudacao: .asciiz "Ola"
 space: .space 10
 
  
.text 
 
 #Read Integer
 #li $v0, 5 
 #syscall
 
 #move $s6, $v0
 
 #Read float
 #Imprimir uma msg pro usuario
 #li $v0, 4
 #la $a0, msg 
 #syscall
 
 #Inserindo um valor
 #li $v0, 6
 #syscall
 
 #lwc1 $f1, x
 #add.s $f12, $f1, $f0
 
 #Imprimir o numero
 #li $v0, 2
 #syscall
 
 
 #Read double
 #Imprimir msg pro usuario
 #li $v0,4
 #la $a0, msg
 #syscall
 
 #Lendo um numero double e armazenando $f0
 #li $v0, 7
 #syscall
 
 #ldc1 $f2, x
 #add.d $f12, $f2, $f0
 
 #imprimir o valor
 #li $v0, 3
 #syscall
 
 #Read String
 #Imprimi uma pergunta
 li $v0, 4
 la $a0, pergunta
 syscall
 
 #Leitura do nome
 li $v0, 8
 la $a0, space 
 li $a1, 10
 syscall
 
 #Mostra a saudacao
 li $v0, 4
 la $a0, saudacao
 syscall
 
 #Impressao do nome
 li $v0, 4
 la $a0, space
 syscall
 
   
     
       
           
   
     
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 