.data
	breakline: .asciiz "\n"
	asterisk:  .asciiz "*"
.text
	li $t0, 1                             # int i comeca em 1	
	for_i:
		bgt $t0, 10, end                  # pula pro end se i for maior que 10
		li $t1, 0                         # int j comeca em 0
		for_j:
			bge $t1, $t0, print_breakline # pula pra quebra de linha se j for maior ou igual a i
			la $a0, asterisk              # carrega o endereco do asterisco pro syscall
			addi $v0, $zero, 4            # instrui o syscall a imprimir string
			syscall                       # imprime o asterisco
			addi $t1, $t1, 1              # incrementa 1 em j
			j for_j                       # reinicia o loop interno
		print_breakline:
			la $a0, breakline             # carrega o endereco da quebra de linha pro syscall
			syscall                       # imprime a quebra de linha
		addi $t0, $t0, 1                  # incrementa 1 em i
		j for_i                           # reinicia o loop externo
	end:
