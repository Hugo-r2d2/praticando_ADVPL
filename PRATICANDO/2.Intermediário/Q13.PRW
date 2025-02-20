// 1??3?? Cálculo de Fatorial: Crie uma função que calcule o fatorial de um número.
#include "protheus.ch"

User Function Q13() // u_Q13()

    Local nNum := Val(FwInputBox("Digite um valor: "))
    Local nFat := 1
    Local nCount
    
    For nCount := 1 To nNum
        nFat *= nCount
    Next

    Alert("O fatorial de " + cValToChar(nNum) + " é: " + cValToChar(nFat), "Resultado")

return
