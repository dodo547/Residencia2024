programa
{
	
	funcao inicio()
	{
		const inteiro tam=3
		inteiro matrizInteiros[tam][tam], num1, num2
		cadeia nome
		
		para(inteiro i = 0; i < tam; i++)
		{
			para(inteiro j = 0; j < tam; j++)
			{
				matrizInteiros[i][j] = i*j
			}

		}
		
		para (inteiro i = 0; i< tam; i++)
		{
			para(inteiro j = 0; j < tam; j++){
			escreva("Vetor[",i, "][", j,  "]: ", matrizInteiros[i][j])
			escreva("\n")
			}
		}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 79; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matrizInteiros, 7, 10, 14};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */