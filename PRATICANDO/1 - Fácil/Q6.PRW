// 6?? Uso de If-Else: Crie uma fun��o VerificaPar() que recebe um n�mero e retorna "Par" ou "�mpar".
#include "protheus.ch"

User Function Q6() // u_Q6()

    Local nNum1 
    
    nNum1:= Val(FWInputBox("Digite um valor: "))

    If nNum1 % 2 == 0
        Alert("O n�mero " + cValToChar(nNum1) + " � Par")
    Else
        Alert("O n�mero " + cValToChar(nNum1) + " � �mpar")
    EndIf

return

