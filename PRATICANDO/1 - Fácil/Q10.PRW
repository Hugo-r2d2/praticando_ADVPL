// ?? Função com Parâmetros Opcionais: Crie uma função Multiplica(a, b := 2) onde b tem valor padrão 2, e retorne a * b.
#include "protheus.ch"

User Function Q10(a, b)
    
    If Empty(b)
        b := 2
    EndIf

return Alert(a * b)
