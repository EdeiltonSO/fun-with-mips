.data
	fl: .asciiz "FL\n"
	ps: .asciiz "PS\n"
	cr: .asciiz "CR\n"
	dn: .asciiz "DN\n"
	hd: .asciiz "HD\n"
.text
	li $v0, 5             # instrui syscall a ler inteiro
	syscall               # le um inteiro
	add $t0, $zero, $v0   # move a entrada para um reg temporario
	li $v0, 4             # instrui syscall a imprimir string
	if_0:
		bge $t0, 50, if_1 # pula pra condicao seguinte se entrada >= 50
		la $a0, fl        # define a string a ser impressa ("FL\n")
		syscall           # imprime a string
		j end             # finaliza a execucao
		                  
	# as instrucoes nas condicoes seguintes sao identicas,
	# apenas os valores sao diferentes
	
	if_1:
		bge $t0, 65, if_2
		la $a0, ps
		syscall
		j end
	if_2:
		bge $t0, 75, if_3
		la $a0, cr
		syscall
		j end
	if_3:
		bge $t0, 85, else
		la $a0, dn
		syscall
		j end
	else:
		la $a0, hd
		syscall
	end:
