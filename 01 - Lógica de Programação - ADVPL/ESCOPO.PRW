#include "protheus.ch"

Static cStat := 'Staticaaa'


user function ESCOPO1()

    // Variáveis Locais
    Local nVar0 := 1
    Local nVar1 := 20

    // Variáveis Private
    Private cPri := 'Private!'

    // Variáveis public
    Public __cPublic := 'RCTI'

    TestEscop(nVar0, @nVar1)

return 

// ------------------------ Função Static ----------------------------//

Static Function TestEscop(nValor1, nValor2)

    Local __cPublic := 'Alterei'
    Default nValor1 := 0

    // Alterando conteudo da Variável 
    nValor2 := 10

    // Alterar conteudo da Variável Private
    Alert("Private: " + cPri)

    // Alterar conteudo da Variável Public 
    Alert("Publica: " + __cPublic)

    MsgAlert(nValor2, 'Teste')
    Alert("Variável Static: " + cStat)

Return
