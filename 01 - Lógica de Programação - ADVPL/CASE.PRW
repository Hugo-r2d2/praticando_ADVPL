#include "protheus.ch"

user function DoCase()

    Local cData := "15/12/2018"

    Do Case

        Case cData == "20/12/2017"
            Alert("N�o � natal: " + cData)
        Case cData == "25/12/2017"
            Alert("� Natal!!!")
        OtherWise
            MsgAlert("N�o sei qual dia � hoje!")
            
    EndCase

return
