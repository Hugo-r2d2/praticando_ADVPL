#include "protheus.ch"

user function BLOCO()

    // Local bBloco := {|| Alert("Ol� mundo!") }
    //     Eval(bBloco)

    // Passagem por par�metros - Blocos de C�digos
    Local bBloco := {|cMsg| Alert(cMsg)}
        Eval(bBloco, "Ol� Mundo")

return
