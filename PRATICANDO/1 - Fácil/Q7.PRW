//7?? Concatenação de Strings: Crie uma função que receba nome e sobrenome e retorne "Nome Completo: [nome] [sobrenome]".
#include "protheus.ch"

User Function Q7() // u_Q7()

    Local aPessoa := {}

    AADD(aPessoa, FwInputBox("Digite seu primeiro nome: "))
    AADD(aPessoa, FwInputBox("Digite seu sobrenome: "))

    Alert("Nome Completo: " + aPessoa[1] + " " + aPessoa[2])

Return

