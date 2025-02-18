#include "protheus.ch"

user function VARIAVEL()
    Local nNum := 66
    Local lLogic := .T.
    Local cCarac := "String"
    Local dData := DATE()
    Local aArrey := {"Joao", "Maria", "Jose"}
    Local bBloco := {||nValor := 2, MsgAlert("O número é: " + cValToChar(nValor) , "Aviso")}
    
    alert( cValToChar(nNum) )
    alert( lLogic )
    alert( cCarac )
    alert( DtoC(dData) )
    alert( aArrey[1] )

    Eval(bBloco)

Return
