// 1??5?? Leitura e Escrita em Arquivo (FWFile): Crie um arquivo .TXT, escreva "Arquivo criado com sucesso!" e leia seu conteúdo.
#include "protheus.ch"

User Function Q15() // u_Q15()
    
    Local nHandle
    Local cFile := "Arquivo Criado com Sucesso!"

    nHandle := FCreate("C:/Users/hugo.santos/Documents/testes_advpl/PRATICANDO/2.Intermediário/teste1.txt")
    FWrite(nHandle, cFile)
    FClose(nHandle)

return
