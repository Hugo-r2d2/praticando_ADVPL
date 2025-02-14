#include "protheus.ch"

user function ESTRREP()

    Local nCount
    Local nNum := 0

    For nCount := 0 to 10
        nNum += nCount
    Next
        Alert("Valor: " + cValToChar(nNum))

return
