programa
{
	inclua biblioteca Texto
	//5. Contagem de Vogais: Escreva uma função que receba uma string e conte quantas vogais (a, e, i, o, u) ela  possui. 

	funcao inicio()
	{
		inteiro vogais
		cadeia x = ""
		cadeia frase

		vogais = 0
		escreva("Digite uma frase: ")
		leia (frase)


		para (inteiro i = 0; i <= Texto.numero_caracteres(frase) - 1; i++) {
				//vogais = i + 1 
			
			se (x == "a" ou x == "e" ou x == "i" ou x == "o" ou x == "u"){
				vogais = vogais + 1
			}
				
		}
		escreva("a frase contem: ",vogais)
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 528; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */