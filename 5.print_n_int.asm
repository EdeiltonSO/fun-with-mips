.data
	breakline: .asciiz "\n"
.text
	li $v0, 5 # instrui syscall a ler inteiro
	syscall   # le o inteiro number
	
	add $t0, $zero, $v0 # $t0 recebe int number
	li  $t1, 1          # $t1 recebe int i
	
	while:
		bgt $t1, $t0, end   # encerra a execucao se i > number
		li  $v0, 1          # instrui syscall a imprimir um inteiro
		add $a0, $zero, $t1 # define qual inteiro syscal vai imprimir
		syscall             # imprime o inteiro
		li $v0, 4           # instrui syscall a imprimir uma string
		la $a0, breakline   # define que syscall vai imprimir uma quebra de linha
		syscall             # imprime a quebra de linha
		add $t1, $t1, 1     # incrementa 1 em i
		j while             # reinicia o loop
	end:
