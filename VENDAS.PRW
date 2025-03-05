#include "TOTVS.CH"
#include "TOPCONN.CH"

USER FUNCTION VENDAS() // u_VENDAS()

    Local aArea  := SD2->(GetArea())
    Local cQuery := "" 
    Local aDados := {}
    Local oDlg, oPanelBkg, oLbz, oFnt3, oPanel
    
    Local cTitulo := FwInputBox("Digite um título: ")

    cQuery := " SELECT                                               "
    cQuery += "     CONVERT(DATE, F2_EMISSAO, 112)        [EMISSAO], "
    cQuery += "     TRIM(F2_FILIAL)                        [FILIAL], "
    cQuery += "     TRIM(SF2.F2_DOC+SF2.F2_SERIE)          [TITULO], "
    cQuery += "     TRIM(SD2.D2_COD)                       [CODIGO], "
    cQuery += "     TRIM(SB1.B1_DESC)                   [DESCRICAO], "
    cQuery += "     SD2.D2_PRCVEN                     [VL_UNITARIO], "
    cQuery += "     ROUND(SD2.D2_TOTAL,2)                [VL_TOTAL]  "
    cQuery += " FROM       " + RetSQLName("SF2") + "(NOLOCK) SF2     "
    cQuery += " INNER JOIN " + RetSQLName("SD2") + "(NOLOCK) SD2     "
    cQuery += "     ON SD2.D_E_L_E_T_ = ''                           "
    cQuery += "     AND SD2.D2_DOC = SF2.F2_DOC                      "
    cQuery += "     AND SD2.D2_SERIE = SF2.F2_SERIE                  "
    cQuery += "     AND SD2.D2_FILIAL = SF2.F2_FILIAL                "
    cQuery += " INNER JOIN SB1010(NOLOCK) SB1                        "
    cQuery += "     ON SF2.D_E_L_E_T_ = ''                           "
    cQuery += "     AND SB1.B1_COD = SD2.D2_COD                      "
    cQuery += " WHERE                                                " 
    cQuery += "     SF2.D_E_L_E_T_ = ''                              " 
    cQuery += "     AND (SF2.F2_DOC + SF2.F2_SERIE) = '"+ cTitulo +"'"
    cQuery += " ORDER BY SD2.D2_COD                                  "

    TCQUERY cQuery ALIAS 'TMP'

    WHILE ! TMP->(EOF())
        AADD(aDados, {TMP->EMISSAO, TMP->FILIAL, TMP->TITULO, TMP->CODIGO, TMP->DESCRICAO, TMP->VL_UNITARIO, TMP->VL_TOTAL})
        TMP->(DBSKIP())
    ENDDO

    TMP->(DBCLOSEAREA())
    RESTAREA(aArea)
    
    IF Len(aDados) > 0 

        DEFINE DIALOG oDlg TITLE 'VERIFICA NOTAS' PIXEL STYLE nOR( WS_VISIBLE, )
        DEFINE FONT   oFnt3 NAME 'Currier New' SIZE 0, -9 BOLD

        oDlg:nWidth  := 1000
        oDlg:nHeight := 500

        oPanelBkg       := tPanel():New(0,0,"",oDlg)
        oPanelBkg:Align := CONTROL_ALIGN_ALLCLIENT
        
        @ 035,005 LISTBOX oLbz VAR cVar FIELDS HEADER 'EMISSAO', 'FILIAL', 'TITULO', 'CÓDIGO PRODUTO', 'DESCRIÇÃO PRODUTO', 'VALOR (UN)', 'VALOR TOTAL' SIZE 500,300 OF oPanel PIXEL;
        ON dblClick(oLbz:Refresh(.F.))

        oLbz:SetArray( aDados )
        oLbz:bLine := {||{  aDados[oLbz:nAt,1],;
                            aDados[oLbz:nAt,2],;
                            aDados[oLbz:nAt,3],;
                            aDados[oLbz:nAt,4],;
                            aDados[oLbz:nAt,5],;
                            aDados[oLbz:nAt,6],;
                            aDados[oLbz:nAt,7]}}

        ACTIVATE DIALOG oDlg CENTER ON INIT (oLbz:Refresh())
    ENDIF

RETURN
