#include "protheus.ch"

Static cStat := 'Staticaaa'


user function ESCOPO1()

    // Vari�veis Locais
    Local nVar0 := 1
    Local nVar1 := 20

    // Vari�veis Private
    Private cPri := 'Private!'

    // Vari�veis public
    Public __cPublic := 'RCTI'

    TestEscop(nVar0, @nVar1)

return 

// ------------------------ Fun��o Static ----------------------------//

Static Function TestEscop(nValor1, nValor2)

    Local __cPublic := 'Alterei'
    Default nValor1 := 0

    // Alterando conteudo da Vari�vel 
    nValor2 := 10

    // Alterar conteudo da Vari�vel Private
    Alert("Private: " + cPri)

    // Alterar conteudo da Vari�vel Public 
    Alert("Publica: " + __cPublic)

    MsgAlert(nValor2, 'Teste')
    Alert("Vari�vel Static: " + cStat)

Return
