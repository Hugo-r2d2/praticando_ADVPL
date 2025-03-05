#include "TOTVS.CH"
#include "TOPCONN.CH"

User Function PRODUTO() //u_PRODUTO()

    Local aArea  := SD2->(GetArea())
    Local cQuery := ""
    Local aDados := {}
    Local oDlg, oPanelBkg, oLbz, oFnt3, oPanel

    Local cProduto := FwInputBox("Digite o código do produto: ")
    Local cData    := FwInputBox("Digite mês e ano: ")

    cQuery := " SELECT                                                                "
    cQuery += "     TRIM(SB1.B1_COD)                                [CODIGO_PRODUTO], "
    cQuery += "     TRIM(SB1.B1_DESC)                            [DESCRICAO_PRODUTO], "
    cQuery += "     TRIM(SD2.D2_FILIAL)                                     [FILIAL], "
    cQuery += "     SUM(SD2.D2_QUANT)                                   [QUANTIDADE]  "
    cQuery += " FROM       "+ RetSQLName("SD2")+ "(NOLOCK) SD2                        "
    cQuery += " INNER JOIN "+ RetSQLName("SB1")+ "(NOLOCK) SB1 ON SB1.D_E_L_E_T_ = '' "
    cQuery += " AND SB1.B1_COD = SD2.D2_COD                                           "
    cQuery += " AND SB1.B1_COD = "+ cProduto +"                                       "
    cQuery += " WHERE                                                                 "
    cQuery += "     SD2.D_E_L_E_T_ = ''                                               "
    cQuery += "     AND SUBSTRING(SD2.D2_EMISSAO,1,6) = "+ cData +"                   "
    cQuery += " GROUP BY SB1.B1_COD, SB1.B1_DESC, SD2.D2_FILIAL                       "
    cQuery += " ORDER BY SD2.D2_FILIAL                                                " 

    TCQUERY cQuery NEW ALIAS "TMP"

    WHILE ! TMP->(EOF())
        AADD(aDados, {TMP->CODIGO_PRODUTO, TMP->DESCRICAO_PRODUTO, TMP->FILIAL, TMP->QUANTIDADE})
        TMP->(DBSKIP())
    ENDDO

    TMP->(DBCLOSEAREA())
    RESTAREA(aArea)

    IF Len(aDados) > 0

        DEFINE DIALOG oDlg TITLE 'Vendas de Produto por Filial' PIXEL STYLE nOR( WS_VISIBLE, )
        DEFINE FONT oFnt3 NAME "Currier New" SIZE 0, -9 BOLD

        oPanelBkg       := tPanel():New(0,0,"",oDlg)
        oPanelBkg:Align := CONTROL_ALIGN_ALLCLIENT

        @ 035,005 LISTBOX oLbz VAR cVar FIELDS HEADER 'CÓDIGO PRODUTO', 'DESCRIÇÃO PRODUTO', 'FILIAL', 'QUANTIDADE' SIZE 400,200 OF oPanel PIXEL;
        ON dblClick(oLbz:Refresh(.F.))

        oLbz:SetArray( aDados ) 
        oLbz:bLine := {|| { aDados[oLbz:nAt, 1],;
                            aDados[oLbz:nAt, 2],;
                            aDados[oLbz:nAt, 3],;
                            aDados[oLbz:nAt, 4]}}

        ACTIVATE DIALOG oDlg CENTER ON INIT (oLbz:Refresh())

    ENDIF

Return
