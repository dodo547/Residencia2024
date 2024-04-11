
programa
{
	//01 - Crie um programa que preencha um vetor com 10 números inteiros informados pelo  usuário e depois os exiba na tela em ordem inversa da leitura 
	funcao inicio()
	{
			inteiro vetorInteiros[10]
		
		para(inteiro a = 0; a < 10; a ++){
			
		
			escreva("Digite um número: ")
			leia(vetorInteiros[a])
		}

		escreva("\nOrdem digitada: \n")
		
		para(inteiro b = 0; b < 10; b ++){
			escreva(vetorInteiros[b]," - ")
		}
		
		escreva("\nOrdem inversa: \n")
		
		para(inteiro b = 9; b >= 0; b ++){
			escreva(vetorInteiros[b]," - ")
		}
		
		}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 501; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetorInteiros, 7, 11, 13}-{a, 9, 15, 1}-{b, 18, 15, 1}-{b, 24, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */