#include "PROTHEUS.CH"
#include "TOPCONN.CH"

User Function TESTE1() // u_TESTE1()

    Local aArea  := SLJ->(GetArea())
    Local cQuery := ""
    Local aDados := {}
    Local oDlg, oPanelBkg, oLbz, oFnt3, oPanel

    cQuery := " SELECT "
    cQuery += "     TRIM(SLJ.LJ_RPCFIL)       [COD_FILIAL],"
    cQuery += "     TRIM(SLJ.LJ_NOME)         [NOME_FILIAL],"
    cQuery += "     TRIM(SA1.A1_CGC)                 [CNPJ],"
    cQuery += "     COUNT(SLJ.LJ_RPCFIL)       [QUANTIDADE],"
    cQuery += "     ROUND(SUM(SF2.F2_VALBRUT),2)    [TOTAL] "
    cQuery += " FROM       "+ RetSQLName("SLJ")+"(NOLOCK) SLJ "
    cQuery += " INNER JOIN "+ RetSQLName("SF2")+"(NOLOCK) SF2 ON SF2.D_E_L_E_T_ = '' AND SF2.F2_FILIAL = SLJ.LJ_RPCFIL "
    cQuery += " INNER JOIN "+ RetSQLName("SA1")+"(NOLOCK) SA1 ON SA1.D_E_L_E_T_ = '' AND SA1.A1_COD = '000800' AND SA1.A1_LOJA = LJ_RPCFIL "
    cQuery += " WHERE "
    cQuery += "     SLJ.D_E_L_E_T_ = '' "
    cQuery += "     AND SF2.F2_TIPO = 'N' "
    cQuery += "     AND SA1.A1_MSBLQL = '2' "
    cQuery += "     AND SUBSTRING(SF2.F2_EMISSAO,1,6) = '202501' " 
    cQuery += " GROUP BY SLJ.LJ_RPCFIL, SLJ.LJ_NOME, SA1.A1_CGC "
    cQuery += " ORDER BY SLJ.LJ_RPCFIL "

    TCQUERY cQuery NEW ALIAS "TMP"

    WHILE ! TMP->(EOF())
        AADD(aDados, {TMP->COD_FILIAL, TMP->NOME_FILIAL, TMP->CNPJ, TMP->QUANTIDADE, TMP->TOTAL})
        TMP->(DBSKIP())
    ENDDO

    TMP->(DBCLOSEAREA())
    RESTAREA(aArea)

    IF Len(aDados) > 0

        DEFINE DIALOG oDlg TITLE 'Faturamento De Filiais' PIXEL STYLE nOR( WS_VISIBLE, )
        DEFINE FONT oFnt3 NAME "Courier New" SIZE 0, -9 BOLD

        oDlg:nWidth  := 850
        oDlg:nHeight := 500

        oPanelBkg       := tPanel():New(0,0,"",oDlg)
        oPanelBkg:Align := CONTROL_ALIGN_ALLCLIENT

        @ 035,005 LISTBOX oLbz VAR cVar FIELDS HEADER 'CÓDIGO FILIAL', 'NOME FILIAL', 'CNPJ', 'QUANTIDADE', 'TOTAL R$' SIZE 400,300 OF oPanel PIXEL;
        ON dblClick(oLbz:Refresh(.F.))

        oLbz:SetArray( aDados ) 
        oLbz:bLine := {|| { aDados[oLbz:nAt, 1],;
                            aDados[oLbz:nAt, 2],;
                            aDados[oLbz:nAt, 3],;
                            PADL(ALLTRIM(Transform(aDados[oLbz:nAt, 4], "@E 999,999,999")), 30),;
                            PADL(Transform(aDados[oLbz:nAt, 5], "@E R$ 999,999,999.99"), 20) }}

        ACTIVATE DIALOG oDlg CENTER ON INIT (oLbz:Refresh())

    ENDIF

Return
