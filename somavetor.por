/*
Escreva um programa que solicite ao usuario que 
insira 5 mumeros inteiros e em seguida, calcue e exiba a soma desses numeros

*/

programa
{
	
	funcao inicio()
	{
		const inteiro tam=10
			inteiro vetorInteiros[tam]
			inteiro soma = 0
		
		para(inteiro i = 0; i < tam; i++){
			
		
			escreva("Digite um número: ")
			leia(vetorInteiros[i])
			soma = soma + vetorInteiros[i]

			
	}
			escreva("A soma dos números informados é: ",soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 351; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetorInteiros, 13, 11, 13}-{soma, 14, 11, 4}-{i, 16, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */