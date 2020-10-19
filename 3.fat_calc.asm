.data
	breakline: .asciiz "\n"
	in:        .asciiz "n = "
	out:       .asciiz "n! = "
.text
	li $v0, 4                # define que o syscall imprima string
	la $a0, in               # define que o syscall imprima "n = "
	syscall                  # imprime a string
	li $v0, 5                # define que o syscall leia um inteiro
	syscall                  # le um inteiro
	
	li $t0, 1                # definicao de fac
	li $t1, 1                # definicao de i
	add $t2, $zero, $v0      # definicao de n
	for:
		bgt $t1, $t2, result # pula para o resultado se i > n
		mult $t0, $t1        # multiplica fac por i e armazena em $lo
		mflo $t0             # move o produto pra fac
		addi $t1, $t1, 1     # incrementa 1 em i
		j for                # reinicia o loop
	result:
		li $v0, 4            # define que o syscall imprima string
		la $a0, out          # define que o syscall imprima "n! = "
		syscall              # imprime a string
		li $v0, 1            # define que o syscall imprima um inteiro
		add $a0, $zero, $t0  # define o inteiro a ser impresso
		syscall              # imprime o inteiro com o resultado