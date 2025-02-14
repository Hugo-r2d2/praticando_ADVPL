#include "protheus.ch"

user function BANCO001() //: u_BANCO001()

    Local aArea := SB1->(GetArea())
    Local cBusca

    DbSelectArea("SB1")
    SB1->(DbSetOrder(1)) // Posiciona no Indice 1 || B1_FILIAL+B1_COD

    // Realiza Busca de Produto no banco
    cBusca := FWInputBox("Digite um código de produto: ", "")
    
    // Posiciona o produto de código digitado
    If SB1->(dbSeek(XFilial("SB1") + cBusca))
        Alert(SB1->B1_DESC)
    EndIf   

    RestArea(aArea)

return
