#include "protheus.ch"

user function ESTRUTUR()

    Local nNum1 := 22
    Local nNum2 := 100

    // Estrutura IF 

    If (nNum1 = nNum2)

        MsgInfo("A vari�vel nNum1: " + cValToChar(nNum1) + " � igual � nNum2: " + cValToChar(nNum2))

    // Estrutura ElseIf

    ElseIf(nNum1 > nNum2)

        MsgAlert("A vari�vel � menor")

    ElseIf(nNum1 != nNum2)

        MsgAlert("As vari�veis s�o diferentes!")

    EndIf

return
