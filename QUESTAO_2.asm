.data
	buffer: .space 20
	str1: .asciiz "\nEscreva a string (max: 20 caracteres): "
	str2: .asciiz "\nNova string: "
	str3: .asciiz "\nDigite um caracter: "

.text
	li $v0, 4
	la $a0, str1
	syscall
	
	li $v0, 8
	la $a0, buffer
	li $a1, 20
	move $t0, $a0
	syscall
	
	li $v0, 4
	la $a0, str3
	syscall
	
	li $v0, 12
	syscall
	addi $t1, $v0, 0
	
	li $v0, 4
	la $a0, str3
	syscall
	
	li $v0, 12
	syscall
	addi $t2, $v0, 0
	
	LOOP:
		