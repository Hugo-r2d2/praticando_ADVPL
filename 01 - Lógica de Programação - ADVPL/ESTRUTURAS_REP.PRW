#include "protheus.ch"

user function ESTRUTUR()

    Local nNum1 := 22
    Local nNum2 := 100

    // Estrutura IF 

    If (nNum1 = nNum2)

        MsgInfo("A variável nNum1: " + cValToChar(nNum1) + " é igual à nNum2: " + cValToChar(nNum2))

    // Estrutura ElseIf

    ElseIf(nNum1 > nNum2)

        MsgAlert("A variável é menor")

    ElseIf(nNum1 != nNum2)

        MsgAlert("As variáveis são diferentes!")

    EndIf

return
