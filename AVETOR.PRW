#include "protheus.ch"

user function AVETOR()

    Local cData := DtoC(Date())
    Local aValores := {"João", cData, 100}

    Alert(aValores[1])
    Alert(aValores[2])
    Alert(aValores[3])

return

user function AVETOR2()

    /*
        AADD() => Permite a inserção de um item em um Array já existente
        AINS() => Permite a inserção de um item em qualquer posição de um Array
        ACLONE() => Realiza a cópia de um Array para outro
        ADEL() => Permite a exclusão de um elemento do Array, tornando o último valor NULL
        ASIZE() => Redefine a estrutura de um Array pré-existente, adicionando ou removendo items
        LEN() => Retorna a quantidade de elementos de um Array   
    */

    Local aVetor := {10, 20, 30}

        // AaDd(aVetor, 40)
        // Alert(Len(aVetor))

        // AIns(aVetor, 2)
        // aVetor[2] := 200
        // Alert(aVetor[2])

        /*
        
           Local nCount
                aVetor2 := AClone(aVetor)
           For nCount := 1 To Len(aVetor2)
                Alert(aVetor2[nCount])
           Next nCount 
        
        */

        // ADel(aVetor, 2)
        // Alert(aVetor[3])
        // Alert(Len(aVetor))

        ASize(aVetor, 2)
        Alert(Len(aVetor))



return
