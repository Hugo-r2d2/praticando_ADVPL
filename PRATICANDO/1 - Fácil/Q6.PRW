// 6?? Uso de If-Else: Crie uma função VerificaPar() que recebe um número e retorna "Par" ou "Ímpar".
#include "protheus.ch"

User Function Q6() // u_Q6()

    Local nNum1 
    
    nNum1:= Val(FWInputBox("Digite um valor: "))

    If nNum1 % 2 == 0
        Alert("O número " + cValToChar(nNum1) + " é Par")
    Else
        Alert("O número " + cValToChar(nNum1) + " é Ímpar")
    EndIf

return

