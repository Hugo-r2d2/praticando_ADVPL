#include "protheus.ch"

user function ADVINHA()

    Local nNum
    Local nChute := 0
    Local nTent := 0
    Local cDif

    cDif := Val((FWInputBox("Escolha a dificuldade: [ 1 - Fácil ] [ 2 - Normal] [ 3 - Difícil]")))

    // Dificuldade - Fácil
    If cDif == 1
        nNum := Randomize(1, 100) 
        
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

    // Dificuldadee - Normal
    ElseIf cDif == 2
        nNum := Randomize(1, 500)

        While nNum != nChute
            nChute := Val(FWInputBox("Escolha um número - [1 - 500]",""))
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

    // Dificuldade - Difícil
    ElseIf cDif == 3
        nNum := Randomize(1, 1000)

        While nNum != nChute
            nChute := Val(FWInputBox("Escolha um número - [1 - 1000]",""))
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
    
    EndIf

return
