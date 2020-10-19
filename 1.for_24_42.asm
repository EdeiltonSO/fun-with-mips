.data
	breakline: .ascii "\n"
.text
		addi $t0, $zero, 24  # armazena 24 (que eh x) em $t0
	for:
		bge $t0, 42, end     # pula pro label END se x >= 42
		li $v0, 1            # armazena em $v0 o codigo de ler inteiro
		add $a0, $zero, $t0  # armazena x ($t0) em $a0 pro syscall utilizar
		syscall              # imprime x
		la $t1, breakline    # carrega o endereco do breakline em $t1
		addi $v0, $zero, 4   # armazena em $v0 o codigo para imprimir string
		add $a0, $zero, $t1  # armazena em $a0 o conteudo a ser impresso
		syscall              # imprime a quebra de linha
		addi $t0, $t0, 3     # incrementa 3 no x
		j for                # volta pro inicio do loop
	end:
