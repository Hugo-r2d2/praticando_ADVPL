#include "protheus.ch"

user function DoCase()

    Local cData := "15/12/2018"

    Do Case

        Case cData == "20/12/2017"
            Alert("Não é natal: " + cData)
        Case cData == "25/12/2017"
            Alert("É Natal!!!")
        OtherWise
            MsgAlert("Não sei qual dia é hoje!")
            
    EndCase

return
