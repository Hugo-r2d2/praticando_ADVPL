// 1??4?? Fun��o Recursiva: Crie uma fun��o recursiva para calcular o fibonacci de N.
#include "protheus.ch"

Static Function Fibonacci(n) 

    If n == 0 .or. n == 1
        return n
    else
        return Fibonacci(n - 1) + Fibonacci(n - 2)
    EndIf

return
User Function Q14() // u_Q14()

    Local nNum := Val(FwInputBox("Digite um valor para N: "))
    Local nFibo := Fibonacci(nNum)

    FwAlertInfo("O fibonacci de " + AllTrim(Str(nNum)) + " �: " + AllTrim(Str(nFibo)), "Resultado")

return
