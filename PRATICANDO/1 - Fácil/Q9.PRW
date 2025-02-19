// 9?? Trabalhando com StrZero(): Crie uma função que recebe um número e retorna ele com 5 dígitos (exemplo: 7 ? 00007).
#include "protheus.ch"

User Function Q9() // u_Q9()

    Local nNum := Val(FwInputBox("Digite um valor: "))

    nNum := StrZero(nNum, 5)
    Alert(nNum)
    
return
