#include "protheus.ch"

user function ADVINHA()

    Local nNum
    Local nChute := 0
    Local nTent := 0
    Local cDif

    cDif := Val((FWInputBox("Escolha a dificuldade: [ 1 - F�cil ] [ 2 - Normal] [ 3 - Dif�cil]")))

    // Dificuldade - F�cil
    If cDif == 1
        nNum := Randomize(1, 100) 
        
        While nNum != nChute
            nChute := Val(FWInputBox("Escolha um n�mero - [1 - 100]",""))
            If nNum == nChute
                MsgInfo("Voc� acertou: <b>" + cValToChar(nChute) + "</b><b> Erros: " + cValToChar(nTent) + "</b>"," Fim de Jogo")
            Elseif nChute > nNum
                MsgAlert("O valor � alto!")
                nTent++
            Else
                MsgAlert("O valor � menor!")
                nTent++
            Endif
        EndDo

    // Dificuldadee - Normal
    ElseIf cDif == 2
        nNum := Randomize(1, 500)

        While nNum != nChute
            nChute := Val(FWInputBox("Escolha um n�mero - [1 - 500]",""))
            If nNum == nChute
                MsgInfo("Voc� acertou: <b>" + cValToChar(nChute) + "</b><b> Erros: " + cValToChar(nTent) + "</b>"," Fim de Jogo")
            Elseif nChute > nNum
                MsgAlert("O valor � alto!")
                nTent++
            Else
                MsgAlert("O valor � menor!")
                nTent++
            Endif
        EndDo

    // Dificuldade - Dif�cil
    ElseIf cDif == 3
        nNum := Randomize(1, 1000)

        While nNum != nChute
            nChute := Val(FWInputBox("Escolha um n�mero - [1 - 1000]",""))
            If nNum == nChute
                MsgInfo("Voc� acertou: <b>" + cValToChar(nChute) + "</b><b> Erros: " + cValToChar(nTent) + "</b>"," Fim de Jogo")
            Elseif nChute > nNum
                MsgAlert("O valor � alto!")
                nTent++
            Else
                MsgAlert("O valor � menor!")
                nTent++
            Endif
        EndDo
    
    EndIf

return
