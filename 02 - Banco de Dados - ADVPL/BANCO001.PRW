#include "protheus.ch"

user function BANCO001() //: u_BANCO001()

    Local aArea := SB1->(GetArea())
    Local cBusca
    Local cMsg

    DbSelectArea("SB1")
    SB1->(DbSetOrder(1)) // Posiciona no Indice 1 || B1_FILIAL+B1_COD

    // Realiza Busca de Produto no banco
    cBusca := FWInputBox("Digite um código de produto: ", "")
    
    If !Empty(cBusca)
        // Posiciona o produto de código digitado
        If SB1->(dbSeek(XFilial("SB1") + cBusca))
            cMsg := "Descrição do Produto: " + SB1->B1_DESC
        Else
            cMsg := "Produto não encontrado!"
        EndIf   
    Else
        cMsg := "Nenhum código informado!"
    EndIf

    Alert(cMsg, "Aviso")
    RestArea(aArea)

return
