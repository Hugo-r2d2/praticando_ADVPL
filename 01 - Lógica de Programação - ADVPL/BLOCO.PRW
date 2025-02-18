#include "protheus.ch"

user function BLOCO()

    // Local bBloco := {|| Alert("Olá mundo!") }
    //     Eval(bBloco)

    // Passagem por parâmetros - Blocos de Códigos
    Local bBloco := {|cMsg| Alert(cMsg)}
        Eval(bBloco, "Olá Mundo")

return
