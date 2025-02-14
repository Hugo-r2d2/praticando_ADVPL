#include "protheus.ch"

user function WHILES()

    // Local nNum1 := 0
    // Local nNum2 := 10

    // While nNum1 < nNum2
    //     nNum1++
    // EndDo
 
    // Alert(cValToChar(nNum1))

    Local nNum1 := 1
    Local cNome := "RCTI"

    While nNum1 != 10 .AND. cNome != "PROTHEUS"

        nNum1++
        If nNum1 == 10
            cNome := "PROTHEUS"
        EndIf

    EndDo
    Alert("Número: " + cValToChar(nNum1))
    Alert("Nome: " + cValToChar(cNome))

return
