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
			escreva ("\n===== RELATORIO DE ATIVOS =====\n")
			para (inteiro linha = 0; linha < 3; linha++) 
			{ 
				escreva("ID: ", linha)
					escreva(" | Nome: ", Ativos_TI[linha])
					escreva(" | Quantidade atual: ", Estoque[linha][0])
					escreva(" | Quantidade minima: ", Estoque[linha][1])
					escreva("\n")
				
				se (Estoque[linha][0] < Estoque[linha][1]) {
					escreva ("Equipamento ",linha," está abaixo do preco mínimo!\n")
				}
			}
			pare
			caso 2:
			      inteiro id
                    inteiro quantidade

                    escreva("\n===== RECEBIMENTO DE EQUIPAMENTO =====\n")
                    escreva("Digite o ID do equipamento (0 a 2): ")
                    leia(id)

                    se (id >= 0 e id <= 2)
                    {
                        escreva("Equipamento: ", Ativos_TI[id], "\n")
                        escreva("Digite a quantidade recebida: ")
                        leia(quantidade)

                        Estoque[id][0] = Estoque[id][0] + quantidade

                        escreva("\nRecebimento registrado com sucesso!\n")
                        escreva("Novo estoque: ", Ativos_TI[id], ": ",
                                Estoque[id][0], "\n")
                                
		}
		  caso 3:
		   escreva ("\nsistema encerrado.\n")
		    pare
		  caso contrario:
		   escreva ("\nOpcao invalida!! Digite 1, 2 ou 3.\n")
		   pare
	}
}
	}
}
