#include "protheus.ch"
#include "TopConn.ch"

user function BANCO002() // u_BANCO002()

    Local aArea := SB1->(GetArea())
    Local cQuery := ""
    Local aDados := {}
    Local cMsg := ""
    Local nX 

    cQuery := " SELECT TOP 10"
    cQuery += " TRIM(B1_COD) AS CODIGO, "
    cQuery += " TRIM(B1_DESC) AS DESCRICAO "
    cQuery += " FROM "
    cQuery += " "+ RetSQLName("SB1")+" (NOLOCK) SB1"
    cQuery += " WHERE "
    cQuery += " B1_MSBLQL != '1' "

    // Executando a consulta acima
    TCQuery cQuery New Alias "TMP"
    // Enquanto minha tabela não estiver no final
    While ! TMP->(EoF())
        AADD(aDados, {TMP->CODIGO, TMP->DESCRICAO})
        TMP->(DbSkip())
    EndDO

    // Fechando area
    TMP->(DbCloseArea())
    RestArea(aArea)

    // Mensagem de Exibição
    If Len(aDados) > 0
        cMsg := "Lista de Produtos retornados: <br>" 
        For nX := 1 To Len(aDados)
            cMsg += "Código: " + aDados[nX, 1] + " - Descrição: " + aDados[nX, 2] + " <br> "
        Next nX
    Else
        cMsg := "Nenhum produto encontrado."
    EndIf

    FWAlertInfo(cMsg, "Consulta de Produtos")
return
