programa
{
	
	funcao inicio()
	{
		inteiro opcao = 0
		cadeia Ativos_TI[3]
		Ativos_TI [0] = "Notebooks"
		Ativos_TI [1] = "Monitores"
		Ativos_TI [2] = "Teclados"
		inteiro Estoque[3][2] = {
			{5,10},
			{8,58},
			{9,10}
		}//  os números 10, 8, 9 correspondem a quantidade atual e os 5,5,4 sao o mínimo
		enquanto ( opcao != 3) {
			escreva ("\n=====MENU DE OPCOES=====\n")
			escreva ("\n 1- Emitir relatório de Ativos")
			escreva ("\n 2- Registrar Recebimento de Equipamento")
			escreva ("\n 3- Encerrar Sistema")
			escreva ("\nEscolha uma opção:")
			leia (opcao)
			
		escolha (opcao) {
			caso 1:
			para (inteiro linha = 0; linha < 3; linha++) {
				se (Estoque[linha][0] < Estoque[linha][1]) {
					escreva ("Equipamento ",linha," está abaixo do preco mínimo!\n")
				}
			}
			pare
		}
	}
}
}
