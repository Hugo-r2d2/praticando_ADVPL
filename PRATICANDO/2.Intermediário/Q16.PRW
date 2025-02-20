// 1??6?? Uso de AAdd() para Arrays: Crie um array vazio e insira os números 1 a 5 dinamicamente usando AAdd().
#include "protheus.ch"

User Function Q16() // u_Q16()

    Local aArray := {}
    
    AADD(aArray, 1)
    AADD(aArray, 2)
    AADD(aArray, 3)
    AADD(aArray, 4)
    AADD(aArray, 5)
    
    Alert("O array alinhado de 1 a 5: " + cValToChar(aArray[1]) + " | " + cValToChar(aArray[2]) + " | "  + cValToChar(aArray[3]) + " | " + cValToChar(aArray[4]) + " | "  + cValToChar(aArray[5]))

return
