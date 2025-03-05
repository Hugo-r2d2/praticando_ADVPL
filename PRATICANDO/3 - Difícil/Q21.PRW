// 2??1?? Manipulação de Tabelas (SA1 - Clientes):Crie um programa que leia os primeiros 5 clientes e exiba A1_COD e A1_NOME.
#include "protheus.ch"
#include "TopConn.ch"
User Function Q21() // u_Q21()

    Local aArea  := SA1->(GetArea())
    Local cQuery := ""
    Local aDados := {}
    Local oDlg, oPanelBkg, oLbz, oFnt3, oPanel


    cQuery := " SELECT TOP 100                     " 
    cQuery += " TRIM(A1_COD)              [CODIGO],"
    cQuery += " TRIM(A1_NOME)                [NOME]"
    cQuery += " FROM                               "
    cQuery += " "+ RetSQLName("SA1")+"(NOLOCK) SA1 "
    cQuery += " WHERE SA1.D_E_L_E_T_ = ''          "
 
    TCQUERY cQuery NEW ALIAS "TMP"
   
    WHILE ! TMP->(EOF())
        AADD(aDados, {TMP->CODIGO, TMP->NOME})
        TMP->(DBSKIP())
    ENDDO

    TMP->(DBCLOSEAREA())
    RESTAREA(aArea)

    If Len(aDados) > 0

        DEFINE DIALOG oDlg TITLE 'Visualização de Clientes' PIXEL STYLE nOR(  WS_VISIBLE,  )
        DEFINE FONT oFnt3 NAME "MS Sans Serif" SIZE 0, -9 BOLD

        oDlg:nWidth := 850
        oDlg:nHeight := 500

            oPanelBkg:= tPanel():New(0,0,"",oDlg)
            oPanelBkg:Align := CONTROL_ALIGN_ALLCLIENT

            @ 035,005 LISTBOX oLbz VAR cVar FIELDS HEADER 'CÓDIGO', 'NOME CLIENTE' SIZE 400,150 OF oPanel PIXEL ;
            ON dblClick(oLbz:Refresh(.F.))
            oLbz:SetArray( aDados )
            oLbz:bLine := {|| {	aDados[oLbz:nAt, 1],;
                                aDados[oLbz:nAt, 2]}}
                                oLbz:Refresh()

        ACTIVATE DIALOG oDlg CENTER
    Else
        cMsg := "Nenhum produto encontrado."
    EndIf

    FWAlertInfo(cMsg, "Consulta de Produtos")    

Return
