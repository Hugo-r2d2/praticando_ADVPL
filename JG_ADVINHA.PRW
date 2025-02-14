#include "protheus.ch"

user function ADVINHA()

    Local nNum := Randomize(1, 100)
    Local nChute := 0
    Local nTent := 0

    While nNum != nChute
        nChute := Val(FWInputBox("Escolha um número - [1 - 100]",""))
        If nNum == nChute
            MsgInfo("Você acertou: <b>" + cValToChar(nChute) + "</b><b> Erros: " + cValToChar(nTent) + "</b>"," Fim de Jogo")
        Elseif nChute > nNum
            MsgAlert("O valor é alto!")
            nTent++
        Else
            MsgAlert("O valor é menor!")
            nTent++
        Endif
    EndDo



return
