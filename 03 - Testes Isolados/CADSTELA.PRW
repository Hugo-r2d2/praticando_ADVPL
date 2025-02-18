#include "protheus.ch"

user function CADSTELA() // u_CADSTELA()

    Local aArea := FWGetArea()
    Local cDelOK := ".T."
    Local cFuntOK := ".T."
    Local cAlias := 'Z32'


    AxCadastro(cAlias, 'Grupo de Produtos', cDelOK, cFuntOK)

    FwRestArea(aArea)
    
return
