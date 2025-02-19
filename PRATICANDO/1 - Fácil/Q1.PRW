// 1?? Função Simples: Crie uma função SomaValores() que receba dois números e retorne a soma.

#include "protheus.ch"

User Function SomaValores() // u_SomaValores()

    Local nNum1 := Val(FWInputBox("Um valor: "))
    Local nNum2 := Val(FWInputBox("Um valor: "))
    
    Local nSoma := nNum1 + nNum2

    Alert(nSoma, 'A soma de é:')

return
