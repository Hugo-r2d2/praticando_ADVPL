// 1?? Fun��o Simples: Crie uma fun��o SomaValores() que receba dois n�meros e retorne a soma.

#include "protheus.ch"

User Function SomaValores() // u_SomaValores()

    Local nNum1 := Val(FWInputBox("Um valor: "))
    Local nNum2 := Val(FWInputBox("Um valor: "))
    
    Local nSoma := nNum1 + nNum2

    Alert(nSoma, 'A soma de �:')

return
