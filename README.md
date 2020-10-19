# Indo de C pra MIPS

## O que é isso?

São exercícios de tradução de código C para o assembler MIPS, da disciplina de Organização e Arquitetura de Computadores I. Cada arquivo em C está associado à sua tradução de acordo com o nome do arquivo.

Para abrir tanto os arquivos .c quanto os .asm, é possível utilizar qualquer editor de código — como o [Visual Studio Code](https://code.visualstudio.com/). Para compilar, seguem as instruções:

## Como executar os códigos em C?

1. Baixe e instale o [GCC Compiler](https://sourceforge.net/projects/tdm-gcc/);
2. Abra o cmd e vá até a pasta com o fonte em C;
3. Dê o comando de compilação:
```bash
gcc <filename>.c
```
4. Dê o comando de execução:
```bash
./a
```

Observação:

Se quiser salvar o executável com um nome diferente, complemente o comando do passo 3 com:
```bash
-o <new_filename>
```
Ah; com isso, o passo 4 também muda.

## E os arquivos MIPS? Como posso executar?

1. Baixe e instale o [MARS 4.5](http://courses.missouristate.edu/kenvollmar/mars/);
2. Abra o arquivo .asm (Ctrl+O);
3. Vá em Run > Assemble (ou tecle F3);
4. Vá em Run > Go (ou tecle F5).

Observações:

A. Para executar uma instrução por vez, vá em Run > Step (ou tecle F7 a cada vez);

B. Caso seja necessário reiniciar os registradores na execução passo-a-passo, vá em Run > Reset (ou tecle F12).