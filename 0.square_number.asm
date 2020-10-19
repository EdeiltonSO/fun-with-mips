.data
	breakline: .ascii "\n"
	
.text
	li $v0, 5            # codigo 5 no $v0 pro syscall saber que eh p/ ler int
	syscall              # le o x e armazenar em $v0
	add $t0, $zero, $v0  # armazena o x em $t0, conforme pedido
	mult $t0, $t0        # multiplica $t0 por $t0 e salva em $lo
	mflo $t1             # move o y (que eh x^2) de $lo pra $t1
	add $a0, $zero, $t1  # salva y em $a0, porque eh ali que o syscall vai buscar o valor que ele vai usar
	addi $v0, $zero, 1   # armazena em $v0 o codigo de imprimir inteiro
	syscall              # imprime o y 
	la $a0, breakline    # carrega o endereco do breakline no $a0 pro syscall pegar 
	addi $v0, $zero, 4   # armazena em $v0 o codigo de imprimir string
	syscall              # imprime a quebra de linha do printf
