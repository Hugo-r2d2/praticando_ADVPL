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

    // Testando vari�veis
    // Local  nPercentual, nResultado
    // nPercentual := 200
    // nResultado := 250 * (1 + (nPercentual /100))
    // alert(nResultado)

    // Atribui��o de Vari�veis
    //Local xVariavel

    //xVariavel := "Agora � Caractere..."
    //alert("Valor da vari�vel: " + xVariavel)

    //xVariavel := 22 // Agora � num�rica
    //alert("Valor da vari�vel: " + cValToChar(xVariavel))

    //xVariavel := .T. // L�gica
    //if xVariavel
    //    alert("A vari�vel tem valor verdadeiro!")
    //else
    //    alert("A vari�vel tem valor falso!")
    //endif

    //xVariavel := Date() // Data
    //alert("Hoje �: " + DtoC(xVariavel))

    //xVariavel := nil // Nulo novamente
    //alert("Valor nulo: " + xVariavel)

    // Operadores ADVPL

    // Local nSalario := 1000, nDesconto := 0.10
    // Local nAumento, nSalarioLiquido
    // nAumento := nSalario * 1.20
    // nSalarioLiquido := nAumento * (1-nDesconto)
    // alert("Sal�rio: " + cValToChar(nSalario))
    // alert("Aumento: " + cValToChar(nAumento))
    // alert("Sal�rio L�quido: " + cValToChar(nSalarioLiquido))
    
    // Comando FOR
    
    // Local nCnt 
    // Local nSomarPar := 0
    // For nCnt := 0 TO 100 Step 2
    //     nSomarPar += nCnt
    //     Next
    //     alert("A soma dos 100 primeiros n�meros pares �: " + cValToChar(nSomarPar))
    
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

