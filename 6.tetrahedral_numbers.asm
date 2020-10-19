.data
	breakline: .asciiz "\n"
.text
	li $v0, 5           # instrui syscall a ler inteiro
	syscall             # le int how_many
	add $t0, $zero, $v0 # int how_many
	li $t1, 1           # int n
	while_0:
		bgt $t1, $t0, end # encerra execucao se n > how_many
		li $t2, 0         # $t2 recebe total
		li $t3, 1         # $t3 recebe j
		while_1:
    		bgt $t3, $t1, endwhile_1 # sai do while_1 se j > n
    		li $t4, 1                # $t4 recebe i valendo 1
    		while_2:
    		    bgt  $t4, $t3, endwhile_2 # ai do while_2 se i > j
    		    add  $t2, $t2, $t4        # incrementa i em total
        		addi $t4, $t4, 1          # incrementa 1 em i
        		j while_2                 # reinicia o loop do while_2
    		endwhile_2:
    		addi $t3, $t3, 1 # incrementa 1 em j
    		j while_1        # reinicia o loop do while_1
		endwhile_1:
		li $v0, 1           # instrui syscall a imprimir inteiro
		add $a0, $zero, $t2 # indica qual inteiro sera impresso (total)
		syscall             # imprime int total
		li $v0, 4           # instrui syscall a imprimir string
		la $a0, breakline   # carrega o endereco da quebra de linha
		syscall             # imprime a quebra de linha
		addi $t1, $t1, 1    # incrementa 1 em n
		j while_0           # reinicia o loop externo
	end:
