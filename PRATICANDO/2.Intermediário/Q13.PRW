// 1??3?? C�lculo de Fatorial: Crie uma fun��o que calcule o fatorial de um n�mero.
#include "protheus.ch"

User Function Q13() // u_Q13()

    Local nNum := Val(FwInputBox("Digite um valor: "))
    Local nFat := 1
    Local nCount
    
    For nCount := 1 To nNum
        nFat *= nCount
    Next

    Alert("O fatorial de " + cValToChar(nNum) + " �: " + cValToChar(nFat), "Resultado")

return
