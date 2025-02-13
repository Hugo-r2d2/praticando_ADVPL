#include "totvs.ch"
#include "protheus.ch"

user Function teste() 
    // PREPARE ENVIRONMENT "01" FILIAL "00" MODULO "FAT"
    // alert("Hello World!")
    // END PREPARE
    // FWAlertError("Hello World")
    // FWAlertExitPage("Hello World")
    // FWAlertHelp("Hello World")
    // FWAlertInfo("Hello World")
    // FWAlertNoYes("Hello World")
    // FWAlertSuccess("Hello World")
    // FWAlertWarning("Hello World")
    
    
    // if FWAlertYesNo("Hello World")
    //     FWAlertSuccess("Parabens")
    // else
    //     FWAlertError("Errou")
    // endif

    // Testando variáveis
    // Local  nPercentual, nResultado
    // nPercentual := 200
    // nResultado := 250 * (1 + (nPercentual /100))
    // alert(nResultado)

    // Atribuição de Variáveis
    //Local xVariavel

    //xVariavel := "Agora é Caractere..."
    //alert("Valor da variável: " + xVariavel)

    //xVariavel := 22 // Agora é numérica
    //alert("Valor da variável: " + cValToChar(xVariavel))

    //xVariavel := .T. // Lógica
    //if xVariavel
    //    alert("A variável tem valor verdadeiro!")
    //else
    //    alert("A variável tem valor falso!")
    //endif

    //xVariavel := Date() // Data
    //alert("Hoje é: " + DtoC(xVariavel))

    //xVariavel := nil // Nulo novamente
    //alert("Valor nulo: " + xVariavel)

    // Operadores ADVPL

    // Local nSalario := 1000, nDesconto := 0.10
    // Local nAumento, nSalarioLiquido
    // nAumento := nSalario * 1.20
    // nSalarioLiquido := nAumento * (1-nDesconto)
    // alert("Salário: " + cValToChar(nSalario))
    // alert("Aumento: " + cValToChar(nAumento))
    // alert("Salário Líquido: " + cValToChar(nSalarioLiquido))
    
    // Comando FOR
    
    // Local nCnt 
    // Local nSomarPar := 0
    // For nCnt := 0 TO 100 Step 2
    //     nSomarPar += nCnt
    //     Next
    //     alert("A soma dos 100 primeiros números pares é: " + cValToChar(nSomarPar))
    
    // Comando While

    Local nAux := 350 
    Local nCnt := 0
    Local nSomarPar := 0
    nAux := Int(nAux / 2)
    while nAux > 0
        nSomarPar += nCnt
        alert(cValToChar(nSomarPar))        
        Exit
    enddo

Return

