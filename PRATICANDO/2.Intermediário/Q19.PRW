// 1??9?? Trabalhando com SubStr(): Crie uma fun��o que receba uma palavra e exiba seus tr�s primeiros caracteres.
#include "protheus.ch"

User Function Q19() // u_Q19()

    Local cText := FwInputBox("Digite algo: ")

    Alert("Os tr�s primeiros digitos s�o: " + SubStr(cText, 1, 3))

return
