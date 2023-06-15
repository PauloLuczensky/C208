#Read 
.data

msg: .asciiz "Forneça um numero decimal"
x: .float 10.0

pergunta: .asciiz "Qual o seu nome?"
saudacao: .asciiz "Ola, "
space: .space 10

.text


#Read integer

#li $v0, 5
#syscall

#move $s6, $v0, não dara conflito

#--------------------

#Read float
#Imprimindo mensagem para o usuario
#li $v0, 4
#la $a0, msg
#syscall

#Lendo o numero float e armazenando em $f0
#li $v0, 6
#syscall

#lwc1  $f1, x #armazenando x em $f1
#add.s $f12, $f1, $f0

#Imprimindo o numero
#li $v0, 2
#syscall

#--------------------

#Read double

#Imprimindo mensagem para o usuario
#li $v0, 4
#la $a0, msg
#syscall

#Lendo o numero Double e armazenando em $f0
#li $v0, 7
#syscall

#ldc1  $f2, x
#add.d $f12, $f2, $f0

#Imprimindo o numero
#li $v0, 3
#syscall

#--------------------

#Read String

#Imprime a pergunta
li $v0, 4
la $a0, pergunta
syscall

#Leitura do nome
li $v0, 8
la $a0, space
li $a1, 10
syscall

#Mostra a saudação
li $v0, 4
la $a0, saudacao
syscall

#Impressao do Nome
li $v0, 4
la $a0, space
syscall
