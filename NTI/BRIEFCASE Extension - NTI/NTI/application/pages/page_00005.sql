prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1466964046809863
,p_default_application_id=>101
,p_default_id_offset=>18923207992089920
,p_default_owner=>'XTD'
);
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Transactions'
,p_alias=>'TRANSACTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Transactions'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* #P5_ACTIVITY_TRX{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'    backdrop-filter: blur(10px);',
'',
'    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);',
'} */',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#P5_ACTIVITY_TRX {',
'    position: relative;',
'    color: #1a1a1a;',
'    font-weight: 700;',
'    /* font-size: 2em; */',
'    letter-spacing: -0.02em;',
'    margin: 0 0 16px 0;',
'    padding: 20px 24px;',
'    background: linear-gradient(135deg, ',
'        rgba(255, 255, 255, 0.95) 0%,',
'        rgba(248, 250, 252, 0.9) 100%);',
'    backdrop-filter: blur(25px) saturate(180%);',
'    border-radius: 20px;',
'    border: 1px solid rgba(255, 255, 255, 0.8);',
'    box-shadow: ',
'        0 8px 32px rgba(0, 0, 0, 0.08),',
'        0 2px 8px rgba(0, 0, 0, 0.04),',
'        inset 0 1px 0 rgba(255, 255, 255, 0.9),',
'        inset 0 0 0 1px rgba(255, 255, 255, 0.7);',
'    text-align: center;',
'    overflow: hidden;',
'    transition: all 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94);',
'    transform: translateY(0);',
'}',
'',
'#P5_ACTIVITY_TRX::before {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: 0;',
'    right: 0;',
'    bottom: 0;',
'    background: ',
'        radial-gradient(circle at 20% 30%, rgba(145, 94, 255, 0.1) 0%, transparent 50%),',
'        radial-gradient(circle at 80% 70%, rgba(0, 219, 222, 0.1) 0%, transparent 50%),',
'        radial-gradient(circle at 50% 50%, rgba(255, 255, 255, 0.2) 0%, transparent 60%);',
'    pointer-events: none;',
'    border-radius: 20px;',
'    z-index: 1;',
'    opacity: 0.7;',
'    animation: liquidTitleFloat 6s ease-in-out infinite;',
'}',
'',
'@keyframes liquidTitleFloat {',
'    0%, 100% { transform: translate(0, 0) scale(1); }',
'    33% { transform: translate(-3px, 2px) scale(1.02); }',
'    66% { transform: translate(2px, -1px) scale(0.98); }',
'}',
'',
'#P5_ACTIVITY_TRX::after {',
'    content: '''';',
'    position: absolute;',
'    top: -2px;',
'    left: -2px;',
'    right: -2px;',
'    bottom: -2px;',
'    background: linear-gradient(45deg, ',
'        rgba(145, 94, 255, 0) 0%,',
'        rgba(145, 94, 255, 0.3) 25%,',
'        rgba(0, 219, 222, 0.3) 75%,',
'        rgba(0, 219, 222, 0) 100%);',
'    border-radius: 22px;',
'    z-index: -1;',
'    opacity: 0;',
'    transition: opacity 0.6s ease;',
'    animation: liquidBorderFlow 4s ease-in-out infinite;',
'}',
'',
'@keyframes liquidBorderFlow {',
'    0%, 100% { background-position: 0% 50%; }',
'    50% { background-position: 100% 50%; }',
'}',
'',
'#P5_ACTIVITY_TRX:hover {',
'    transform: translateY(-2px);',
'    box-shadow: ',
'        0 12px 36px rgba(0, 0, 0, 0.1),',
'        0 3px 10px rgba(0, 0, 0, 0.05),',
'        inset 0 1px 0 rgba(255, 255, 255, 0.95),',
'        inset 0 0 0 1px rgba(255, 255, 255, 0.8);',
'    background: linear-gradient(135deg, ',
'        rgba(255, 255, 255, 0.97) 0%,',
'        rgba(250, 252, 255, 0.92) 100%);',
'}',
'',
'#P5_ACTIVITY_TRX:hover::after {',
'    opacity: 0.6;',
'}',
'',
'#P5_ACTIVITY_TRX span {',
'    position: relative;',
'    z-index: 2;',
'    background: linear-gradient(135deg, #1a1a1a 0%, #2d3748 100%);',
'    -webkit-background-clip: text;',
'    -webkit-text-fill-color: transparent;',
'    background-clip: text;',
'    text-shadow: 0 2px 4px rgba(255, 255, 255, 0.5);',
'    display: inline-block;',
'    transition: all 0.4s ease;',
'}',
'',
'#P5_ACTIVITY_TRX:hover span {',
'    background: linear-gradient(135deg, #1a1a1a 0%, #374151 100%);',
'    -webkit-background-clip: text;',
'    -webkit-text-fill-color: transparent;',
'    background-clip: text;',
'    transform: scale(1.02);',
'}',
'',
'#P5_ACTIVITY_TRX {',
'    border-left: 4px solid rgba(0, 219, 222, 0.4);',
'}',
'',
'#P5_ACTIVITY_TRX::before {',
'    background: ',
'        radial-gradient(circle at 10% 20%, rgba(145, 94, 255, 0.06) 0%, transparent 50%),',
'        radial-gradient(circle at 90% 80%, rgba(0, 219, 222, 0.12) 0%, transparent 50%);',
'}',
'',
'@media (prefers-reduced-motion: reduce) {',
'    #P5_ACTIVITY_TRX,',
'    .ui-dialog.ui-corner-all.ui-widget.ui-widget-content.ui-front.ui-dialog--apex.t-Dialog-page--standard {',
'        animation: none;',
'        transition: none;',
'    }',
'    ',
'    #P5_ACTIVITY_TRX::before,',
'    #P5_ACTIVITY_TRX::after {',
'        animation: none;',
'    }',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#P5_ACTIVITY_REV{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    /* padding-top: 25px; */',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'    backdrop-filter: blur(10px);',
'',
'    /* background: rgb(13 13 13 / 21%); */',
'    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);',
'}',
'',
'/* ----------------------------------------------------------------------- */'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18427652897627612)
,p_plug_name=>'Report Commitment'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762673260752988133)
,p_plug_display_sequence=>100
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH params AS (',
'    -- PR_NUMBER(s)',
'    SELECT TRIM(REGEXP_SUBSTR(val, ''[^|]+'', 1, LEVEL)) AS val,',
'           ''PR_NUMBER'' AS fld',
'    FROM (',
'        SELECT REGEXP_SUBSTR(:P5_COMMITMENT_TRX, ''PR_NUMBER~\s*([^~]+)'', 1, 1, NULL, 1) AS val ',
'        FROM dual',
'    )',
'    CONNECT BY LEVEL <= REGEXP_COUNT(val, ''\|'') + 1',
'',
'    UNION ALL',
'',
'    -- PO_NUMBER(s)',
'    SELECT TRIM(REGEXP_SUBSTR(val, ''[^|]+'', 1, LEVEL)) AS val,',
'           ''PO_NUMBER''',
'    FROM (',
'        SELECT REGEXP_SUBSTR(:P5_COMMITMENT_TRX, ''PO_NUMBER~\s*([^~]+)'', 1, 1, NULL, 1) AS val ',
'        FROM dual',
'    )',
'    CONNECT BY LEVEL <= REGEXP_COUNT(val, ''\|'') + 1',
'),',
'filtered AS (',
'    SELECT base.pr_number,',
'           base.po_number,',
'           base.po_status,',
'           base.source,',
'           base.commitment',
'      FROM apx_bf_comm_act_amt base',
'     WHERE base.activity   = :P5_ACTIVITY_TRX',
'       AND base.commitment <> 0',
'       AND base.period     = :P5_PERIOD_TRX',
'       AND EXISTS (',
'           SELECT 1',
'             FROM params p',
'            WHERE (p.fld = ''PR_NUMBER'' AND base.pr_number = p.val)',
'               OR (p.fld = ''PO_NUMBER'' AND base.po_number = p.val)',
'       )',
')',
'SELECT ',
'    MAX(f.pr_number) AS pr_no,',
'    CASE ',
'        WHEN MAX(f.po_number) IS NOT NULL AND MAX(f.po_status) = ''APPROVED''',
'             THEN MAX(f.po_number)',
'        ELSE MAX(f.pr_number)',
'    END AS transaction_number,',
'    CASE ',
'        WHEN MAX(f.po_number) IS NOT NULL AND MAX(f.po_status) = ''APPROVED''',
'             THEN ''PO NUMBER''',
'        ELSE ''PR NUMBER''',
'    END AS type,',
'    MAX(f.source) AS source,',
'    SUM(f.commitment) AS commitment',
'FROM filtered f',
'GROUP BY ',
'    CASE ',
'        WHEN f.po_number IS NOT NULL AND f.po_status = ''APPROVED'' ',
'             THEN f.po_number',
'        ELSE f.pr_number',
'    END,',
'    f.source',
'ORDER BY transaction_number;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P5_COMMITMENT_TRX'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_required_patch=>wwv_flow_imp.id(762579247524987774)
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18427771955627613)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'YEREMIA'
,p_internal_uid=>18427771955627613
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18428647186627622)
,p_db_column_name=>'TRANSACTION_NUMBER'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'Transaction Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18428797279627623)
,p_db_column_name=>'TYPE'
,p_display_order=>20
,p_column_identifier=>'J'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18428847623627624)
,p_db_column_name=>'COMMITMENT'
,p_display_order=>30
,p_column_identifier=>'K'
,p_column_label=>'Commitment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18431192073627647)
,p_db_column_name=>'PR_NO'
,p_display_order=>40
,p_column_identifier=>'L'
,p_column_label=>'Pr No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18431349661627649)
,p_db_column_name=>'SOURCE'
,p_display_order=>50
,p_column_identifier=>'M'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19890482507129342)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'198905'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SOURCE:TYPE:TRANSACTION_NUMBER:COMMITMENT:'
,p_sum_columns_on_break=>'COMMITMENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18429049668627626)
,p_plug_name=>'Report Actual'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762673260752988133)
,p_plug_display_sequence=>130
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH params AS (',
'    ----------------------------------------------------------------',
'    -- RCV_NUMBER',
'    SELECT TRIM(REGEXP_SUBSTR(',
'                 REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~RCV_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                 ''[^|]+'', 1, LEVEL',
'               )) AS val,',
'           ''RCV_NUMBER'' AS fld',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(',
'                           REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~RCV_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                           ''\|''',
'                       ) + 1',
'',
'    UNION ALL',
'    ----------------------------------------------------------------',
'    -- INVOICE_NUMBER',
'    SELECT TRIM(REGEXP_SUBSTR(',
'                 REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~INVOICE_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                 ''[^|]+'', 1, LEVEL',
'               )) AS val,',
'           ''INVOICE_NUMBER'' AS fld',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(',
'                           REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~INVOICE_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                           ''\|''',
'                       ) + 1',
'',
'    UNION ALL',
'    ----------------------------------------------------------------',
'    -- JE_HEADER_ID',
'    SELECT TRIM(REGEXP_SUBSTR(',
'                 REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~JE_HEADER_ID~([^~]+)'', 1, 1, NULL, 1),',
'                 ''[^|]+'', 1, LEVEL',
'               )) AS val,',
'           ''JE_HEADER_ID'' AS fld',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(',
'                           REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~JE_HEADER_ID~([^~]+)'', 1, 1, NULL, 1),',
'                           ''\|''',
'                       ) + 1',
'',
'    UNION ALL',
'    ----------------------------------------------------------------',
'    -- INV_TRX_NUMBER',
'    SELECT TRIM(REGEXP_SUBSTR(',
'                 REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~INV_TRX_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                 ''[^|]+'', 1, LEVEL',
'               )) AS val,',
'           ''INV_TRX_NUMBER'' AS fld',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(',
'                           REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~INV_TRX_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                           ''\|''',
'                       ) + 1',
'',
'    UNION ALL',
'    ----------------------------------------------------------------',
'    -- AR_TRX_NUMBER',
'    SELECT TRIM(REGEXP_SUBSTR(',
'                 REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~AR_TRX_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                 ''[^|]+'', 1, LEVEL',
'               )) AS val,',
'           ''AR_TRX_NUMBER'' AS fld',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(',
'                           REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~AR_TRX_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                           ''\|''',
'                       ) + 1',
'',
'    UNION ALL',
'    ----------------------------------------------------------------',
'    -- AR_MISC_RECEIPT',
'    SELECT TRIM(REGEXP_SUBSTR(',
'                 REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~AR_MISC_RECEIPT~([^~]+)'', 1, 1, NULL, 1),',
'                 ''[^|]+'', 1, LEVEL',
'               )) AS val,',
'           ''AR_MISC_RECEIPT'' AS fld',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(',
'                           REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~AR_MISC_RECEIPT~([^~]+)'', 1, 1, NULL, 1),',
'                           ''\|''',
'                       ) + 1',
'',
'    -- UNION ALL',
'    -- ----------------------------------------------------------------',
'    -- -- FA_ASSET_ID',
'    -- SELECT TRIM(REGEXP_SUBSTR(',
'    --              REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~FA_ASSET_ID~([^~]+)'', 1, 1, NULL, 1),',
'    --              ''[^|]+'', 1, LEVEL',
'    --            )) AS val,',
'    --        ''FA_ASSET_ID'' AS fld',
'    -- FROM dual',
'    -- CONNECT BY LEVEL <= REGEXP_COUNT(',
'    --                        REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~FA_ASSET_ID~([^~]+)'', 1, 1, NULL, 1),',
'    --                        ''\|''',
'    --                    ) + 1',
'',
'    UNION ALL',
'    ----------------------------------------------------------------',
'    -- OPM_ADJ_ID',
'    SELECT TRIM(REGEXP_SUBSTR(',
'                 REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~OPM_ADJ_ID~([^~]+)'', 1, 1, NULL, 1),',
'                 ''[^|]+'', 1, LEVEL',
'               )) AS val,',
'           ''OPM_ADJ_ID'' AS fld',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(',
'                           REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~OPM_ADJ_ID~([^~]+)'', 1, 1, NULL, 1),',
'                           ''\|''',
'                       ) + 1',
')',
'',
'',
'----------------------------------------------------------------',
'-- MAIN QUERY',
'SELECT base.rcv_number AS transaction, ',
'       ''RECEIPT NUMBER'' AS type, ',
'       base.source as source,',
'       SUM(base.actual_amount) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''RCV_NUMBER'' ',
'      AND TRIM(base.rcv_number) = TRIM(p.val)',
'WHERE  base.activity = :P5_ACTIVITY_TRX and base.invoice_number is null',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY base.rcv_number, base.source',
'',
'UNION ALL',
'SELECT CASE',
'        WHEN BASE.FA_ASSET_ID IS NOT NULL THEN',
'            TO_CHAR(BASE.FA_ASSET_ID)',
'        ELSE',
'            base.invoice_number ',
'        END AS transaction, ',
'        CASE WHEN BASE.FA_ASSET_ID IS NOT NULL THEN',
'            ''FA ASSET ID''',
'        ELSE',
'            ''INVOICE NUMBER'' ',
'        END AS type,',
'       base.source as source, ',
'       SUM(base.actual_amount) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''INVOICE_NUMBER'' ',
'      AND UPPER(TRIM(base.invoice_number)) = UPPER(TRIM(p.val))',
'WHERE  base.activity = :P5_ACTIVITY_TRX',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY BASE.FA_ASSET_ID, base.invoice_number, base.source',
'',
'UNION ALL',
'SELECT base.journal_batch || '' | '' || base.journal_name AS transaction, ',
'       ''JOURNAL'' AS type, ',
'       base.source as source,',
'       SUM(base.actual_amount) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''JE_HEADER_ID'' ',
'      AND TO_CHAR(base.je_header_id) = TRIM(p.val)',
'WHERE  base.activity = :P5_ACTIVITY_TRX',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY base.journal_batch, base.journal_name, base.source',
'',
'UNION ALL',
'SELECT base.source_status || '' | '' || base.INV_SOURCE_NAME AS transaction, ',
'       ''INVENTORY SOURCE'' AS type, ',
'       base.source as source,',
'       NVL(SUM(base.actual_amount), 0) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''INV_TRX_NUMBER'' ',
'      AND TRIM(base.inv_trx_number) = TRIM(p.val)',
'WHERE  base.activity = :P5_ACTIVITY_TRX',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY base.source_status || '' | '' || base.INV_SOURCE_NAME, base.source',
'',
'UNION ALL',
'SELECT base.ar_trx_number AS transaction, ',
'       ''RECEIVABLES NUMBER'' AS type, ',
'       base.source as source,',
'       SUM(base.actual_amount) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''AR_TRX_NUMBER'' ',
'      AND TRIM(base.ar_trx_number) = TRIM(p.val)',
'WHERE  base.activity = :P5_ACTIVITY_TRX',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY base.ar_trx_number, base.source',
'',
'UNION ALL',
'SELECT base.ar_misc_receipt AS transaction, ',
'       ''MISC. RECEIPT NUMBER'' AS type, ',
'       base.source as source,',
'       SUM(base.actual_amount) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''AR_MISC_RECEIPT'' ',
'      AND TRIM(base.AR_MISC_TRX_ID) = TRIM(p.val)',
'WHERE  base.activity = :P5_ACTIVITY_TRX',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY base.ar_misc_receipt, base.source',
'',
'UNION ALL',
'SELECT TO_CHAR(base.fa_asset_id) AS transaction, ',
'       ''FA ASSET ID'' AS type, ',
'       base.source as source,',
'       SUM(base.actual_amount) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''FA_ASSET_ID'' ',
'      AND TO_CHAR(base.fa_asset_id) = TRIM(p.val)',
'WHERE  base.activity = :P5_ACTIVITY_TRX',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY TO_CHAR(base.fa_asset_id), base.source',
'',
'UNION ALL',
'SELECT OPM_ITEM || '' | '' || OPM_PERIOD AS transaction, ',
'       base.source_status AS type, ',
'       base.source as source,',
'       SUM(base.actual_amount) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''OPM_ADJ_ID'' ',
'      AND TO_CHAR(base.OPM_ADJ_ID) = TRIM(p.val)',
'WHERE  base.activity = :P5_ACTIVITY_TRX',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY OPM_ITEM || '' | '' || OPM_PERIOD,base.source_status, base.source',
'',
'UNION ALL',
'SELECT ',
'    base.product || '' - '' || base.product_desc AS transaction,',
'    base.CATEGORY AS type,',
'    base.CATEGORY AS source,',
'    SUM(base.amount) AS actual_amount',
'FROM APX_BF_REVENUE_COGS_AMT_V base',
'WHERE (TRIM(UPPER(base.product)) = TRIM(UPPER(:P5_REV_PRODUCT)) OR NVL(:P5_REV_PRODUCT, '''') = '''')',
'  AND (TRIM(UPPER(base.period)) = TRIM(UPPER(:P5_PERIOD_TRX)) OR NVL(:P5_PERIOD_TRX, '''') = '''')',
'  AND (TRIM(UPPER(base.CATEGORY)) = TRIM(UPPER(:P5_REV_CATEGORY)) OR NVL(:P5_REV_CATEGORY, '''') = '''')',
'GROUP BY base.product || '' - '' || base.product_desc, base.CATEGORY',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P5_ACTUAL_TRX,P5_REV_COA,P5_REV_PRODUCT,P5_REV_CATEGORY,P5_ACTIVITY_TRX,P5_PERIOD_TRX'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P5_ACTUAL_TRX IS NOT NULL OR :P5_REV_COA IS NOT NULL'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_required_patch=>wwv_flow_imp.id(762579247524987774)
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18429133093627627)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'YEREMIA'
,p_internal_uid=>18429133093627627
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18429378761627629)
,p_db_column_name=>'TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18429563493627631)
,p_db_column_name=>'ACTUAL_AMOUNT'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Actual Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18430639196627642)
,p_db_column_name=>'TRANSACTION'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Transaction'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20805837885328201)
,p_db_column_name=>'SOURCE'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19905414152320125)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'199055'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SOURCE:TYPE:TRANSACTION:ACTUAL_AMOUNT:'
,p_sum_columns_on_break=>'ACTUAL_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18429909767627635)
,p_plug_name=>'Report Actual'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762673260752988133)
,p_plug_display_sequence=>150
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH params AS (',
'    SELECT',
'        REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''PR_NUMBER~\s*([^~]+)'', 1, 1, NULL, 1)      AS pr_number,',
'        REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''PO_NUMBER~\s*([^~]+)'', 1, 1, NULL, 1)      AS po_number,',
'        REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''RCV_NUMBER~\s*([^~]+)'', 1, 1, NULL, 1)     AS rcv_number,',
'        REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''INVOICE_NUMBER~\s*([^~]+)'', 1, 1, NULL, 1) AS invoice_number,',
'        REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''JE_HEADER_ID~\s*([^~]+)'', 1, 1, NULL, 1)   AS je_header_id,',
'        REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''INV_TRX_NUMBER~\s*([^~]+)'', 1, 1, NULL, 1) AS inv_trx_number,',
'        REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''AR_TRX_NUMBER~\s*([^~]+)'', 1, 1, NULL, 1)  AS ar_trx_number,',
'        REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''FA_ASSET_ID~\s*([^~]+)'', 1, 1, NULL, 1)    AS fa_asset_id',
'    FROM dual',
')',
'SELECT base.pr_number        AS transaction,',
'       ''PR NUMBER''           AS type,',
'       base.actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ON p.pr_number IS NOT NULL AND base.pr_number = p.pr_number',
'',
'UNION ALL',
'SELECT base.po_number, ''PO NUMBER'', base.actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ON p.po_number IS NOT NULL AND base.po_number = p.po_number',
'',
'UNION ALL',
'SELECT base.rcv_number, ''RECEIPT NUMBER'', base.actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ON p.rcv_number IS NOT NULL AND base.rcv_number = p.rcv_number',
'',
'UNION ALL',
'SELECT base.invoice_number, ''INVOICE NUMBER'', base.actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ON p.invoice_number IS NOT NULL AND base.invoice_number = p.invoice_number',
'',
'UNION ALL',
'SELECT base.journal_name, ''Journal Name | '' || base.source_status, base.actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ON p.je_header_id IS NOT NULL AND base.je_header_id = p.je_header_id',
'',
'UNION ALL',
'SELECT base.inv_trx_number, ''INVENTORY NUMBER'', base.actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ON p.inv_trx_number IS NOT NULL AND base.inv_trx_number = p.inv_trx_number',
'',
'UNION ALL',
'SELECT base.ar_trx_number, ''RECEIVEABLE NUMBER'', base.actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ON p.ar_trx_number IS NOT NULL AND base.ar_trx_number = p.ar_trx_number',
'',
'UNION ALL',
'SELECT TO_CHAR(base.fa_asset_id), ''FA ASSET ID'', base.actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ON p.fa_asset_id IS NOT NULL AND base.fa_asset_id = p.fa_asset_id;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P5_ACTUAL_TRX'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_required_patch=>wwv_flow_imp.id(762579247524987774)
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18430080448627636)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'YEREMIA'
,p_internal_uid=>18430080448627636
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18430129910627637)
,p_db_column_name=>'TYPE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18430244790627638)
,p_db_column_name=>'ACTUAL_AMOUNT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Actual Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18430325356627639)
,p_db_column_name=>'TRANSACTION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Transaction'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18430703066627643)
,p_plug_name=>'No Data'
,p_title=>'No Data'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762623504690988104)
,p_plug_display_sequence=>90
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<body>',
'  <style>',
'    body {',
'      margin: 0;',
'      padding: 0;',
'      font-family: Arial, sans-serif;',
'      background-color: #f4f6f8;',
'      display: flex;',
'      align-items: center;',
'      justify-content: center;',
'      height: 100vh;',
'      color: #333;',
'      text-align: center;',
'    }',
'    h1 {',
'      font-size: 20px;',
'      margin-bottom: 10px;',
'      color: #666;',
'    }',
'    p {',
'      font-size: 16px;',
'      color: #666;',
'    }',
'  </style>',
'',
'  <div>',
'    <h1>No Data</h1>',
'    <!-- <p>no data</p> -->',
'  </div>',
'</body>',
''))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P5_ACTUAL_TRX is null and :P5_COMMITMENT_TRX is null and :P5_REV_COA is null'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19879908722736288)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762695407549988140)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(762579795960987796)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(762757871065988245)
,p_required_patch=>wwv_flow_imp.id(762579247524987774)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21449667543786808)
,p_plug_name=>'Report Commitment - old'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762673260752988133)
,p_plug_display_sequence=>120
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH params AS (',
'    -- PR_NUMBER',
'    SELECT TRIM(REGEXP_SUBSTR(val, ''[^|]+'', 1, LEVEL)) AS val,',
'           ''PR_NUMBER'' AS fld',
'    FROM (',
'        SELECT REGEXP_SUBSTR(:P5_COMMITMENT_TRX, ''PR_NUMBER~\s*([^~]+)'', 1, 1, NULL, 1) AS val FROM dual',
'    )',
'    CONNECT BY LEVEL <= REGEXP_COUNT(val, ''\|'') + 1',
'',
'    UNION ALL',
'    -- PO_NUMBER',
'    SELECT TRIM(REGEXP_SUBSTR(val, ''[^|]+'', 1, LEVEL)), ''PO_NUMBER''',
'    FROM (',
'        SELECT REGEXP_SUBSTR(:P5_COMMITMENT_TRX, ''PO_NUMBER~\s*([^~]+)'', 1, 1, NULL, 1) AS val FROM dual',
'    )',
'    CONNECT BY LEVEL <= REGEXP_COUNT(val, ''\|'') + 1',
')',
'SELECT ',
'    base.pr_number AS pr_no,',
'    CASE ',
'        WHEN base.po_number IS NOT NULL AND base.po_status = ''APPROVED'' THEN base.po_number',
'        ELSE base.pr_number ',
'    END AS transaction_number,',
'    CASE ',
'        WHEN base.po_number IS NOT NULL AND base.po_status = ''APPROVED'' THEN ''PO NUMBER''',
'        ELSE ''PR NUMBER''',
'    END AS type,',
'    base.source AS SOURCE,',
'    SUM(base.commitment) AS commitment',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''PR_NUMBER'' ',
'      AND base.pr_number = p.val',
'WHERE  base.activity   = :P5_ACTIVITY_TRX',
'  AND  base.commitment <> 0',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY ',
'    base.pr_number,',
'    base.po_number,',
'    base.po_status,',
'    base.source',
'',
'UNION ALL',
'',
'SELECT ',
'    base.pr_number AS pr_no,',
'    base.po_number AS transaction_number,',
'    ''PO NUMBER''    AS type,',
'    base.source    AS SOURCE,',
'    SUM(base.commitment) AS commitment',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''PO_NUMBER'' ',
'      AND base.po_number = p.val',
'WHERE  base.activity   = :P5_ACTIVITY_TRX',
'  AND  base.pr_number IS NULL   -- avoid duplicates if PO is tied to PR',
'  AND  base.commitment <> 0',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY ',
'    base.pr_number,',
'    base.po_number,',
'    base.po_status,',
'    base.source;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P5_COMMITMENT_TRX'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_required_patch=>wwv_flow_imp.id(762579247524987774)
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(21449788561786809)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'YEREMIA'
,p_internal_uid=>21449788561786809
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21449866607786810)
,p_db_column_name=>'TRANSACTION_NUMBER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Transaction Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21449978252786811)
,p_db_column_name=>'TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21450013078786812)
,p_db_column_name=>'COMMITMENT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Commitment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21450101897786813)
,p_db_column_name=>'PR_NO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Pr No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21450270739786814)
,p_db_column_name=>'SOURCE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22449627660908566)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'224497'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SOURCE:TYPE:TRANSACTION_NUMBER:COMMITMENT:'
,p_sum_columns_on_break=>'COMMITMENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21450944381786821)
,p_plug_name=>'Report Actual new'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762673260752988133)
,p_plug_display_sequence=>140
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH params AS (',
'    ----------------------------------------------------------------',
'    -- RCV_NUMBER',
'    SELECT TRIM(REGEXP_SUBSTR(',
'                 REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~RCV_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                 ''[^|]+'', 1, LEVEL',
'               )) AS val,',
'           ''RCV_NUMBER'' AS fld',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(',
'                           REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~RCV_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                           ''\|''',
'                       ) + 1',
'',
'    UNION ALL',
'    ----------------------------------------------------------------',
'    -- INVOICE_NUMBER',
'    SELECT TRIM(REGEXP_SUBSTR(',
'                 REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~INVOICE_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                 ''[^|]+'', 1, LEVEL',
'               )) AS val,',
'           ''INVOICE_NUMBER'' AS fld',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(',
'                           REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~INVOICE_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                           ''\|''',
'                       ) + 1',
'',
'    UNION ALL',
'    ----------------------------------------------------------------',
'    -- JE_HEADER_ID',
'    SELECT TRIM(REGEXP_SUBSTR(',
'                 REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~JE_HEADER_ID~([^~]+)'', 1, 1, NULL, 1),',
'                 ''[^|]+'', 1, LEVEL',
'               )) AS val,',
'           ''JE_HEADER_ID'' AS fld',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(',
'                           REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~JE_HEADER_ID~([^~]+)'', 1, 1, NULL, 1),',
'                           ''\|''',
'                       ) + 1',
'',
'    UNION ALL',
'    ----------------------------------------------------------------',
'    -- INV_TRX_NUMBER',
'    SELECT TRIM(REGEXP_SUBSTR(',
'                 REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~INV_TRX_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                 ''[^|]+'', 1, LEVEL',
'               )) AS val,',
'           ''INV_TRX_NUMBER'' AS fld',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(',
'                           REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~INV_TRX_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                           ''\|''',
'                       ) + 1',
'',
'    UNION ALL',
'    ----------------------------------------------------------------',
'    -- AR_TRX_NUMBER',
'    SELECT TRIM(REGEXP_SUBSTR(',
'                 REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~AR_TRX_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                 ''[^|]+'', 1, LEVEL',
'               )) AS val,',
'           ''AR_TRX_NUMBER'' AS fld',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(',
'                           REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~AR_TRX_NUMBER~([^~]+)'', 1, 1, NULL, 1),',
'                           ''\|''',
'                       ) + 1',
'',
'    UNION ALL',
'    ----------------------------------------------------------------',
'    -- AR_MISC_RECEIPT',
'    SELECT TRIM(REGEXP_SUBSTR(',
'                 REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~AR_MISC_RECEIPT~([^~]+)'', 1, 1, NULL, 1),',
'                 ''[^|]+'', 1, LEVEL',
'               )) AS val,',
'           ''AR_MISC_RECEIPT'' AS fld',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(',
'                           REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~AR_MISC_RECEIPT~([^~]+)'', 1, 1, NULL, 1),',
'                           ''\|''',
'                       ) + 1',
'',
'    -- UNION ALL',
'    -- ----------------------------------------------------------------',
'    -- -- FA_ASSET_ID',
'    -- SELECT TRIM(REGEXP_SUBSTR(',
'    --              REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~FA_ASSET_ID~([^~]+)'', 1, 1, NULL, 1),',
'    --              ''[^|]+'', 1, LEVEL',
'    --            )) AS val,',
'    --        ''FA_ASSET_ID'' AS fld',
'    -- FROM dual',
'    -- CONNECT BY LEVEL <= REGEXP_COUNT(',
'    --                        REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~FA_ASSET_ID~([^~]+)'', 1, 1, NULL, 1),',
'    --                        ''\|''',
'    --                    ) + 1',
'',
'    UNION ALL',
'    ----------------------------------------------------------------',
'    -- OPM_ADJ_ID',
'    SELECT TRIM(REGEXP_SUBSTR(',
'                 REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~OPM_ADJ_ID~([^~]+)'', 1, 1, NULL, 1),',
'                 ''[^|]+'', 1, LEVEL',
'               )) AS val,',
'           ''OPM_ADJ_ID'' AS fld',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(',
'                           REGEXP_SUBSTR(:P5_ACTUAL_TRX, ''~OPM_ADJ_ID~([^~]+)'', 1, 1, NULL, 1),',
'                           ''\|''',
'                       ) + 1',
')',
'',
'',
'----------------------------------------------------------------',
'-- MAIN QUERY',
'SELECT base.rcv_number AS transaction, ',
'       ''RECEIPT NUMBER'' AS type, ',
'       base.source as source,',
'       SUM(base.actual_amount) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''RCV_NUMBER'' ',
'    --   AND TRIM(base.rcv_number) = TRIM(p.val)',
'       AND base.rcv_number is not null',
'       AND p.val is not null',
'WHERE  base.activity = :P5_ACTIVITY_TRX and base.invoice_number is null',
'  AND  base.period = :P5_PERIOD_TRX',
'--   REST.ACTIVITY = TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1))',
'GROUP BY base.rcv_number, base.source, base.activity, base.period',
'',
'UNION ALL',
'SELECT CASE',
'        WHEN BASE.FA_ASSET_ID IS NOT NULL THEN',
'            TO_CHAR(BASE.FA_ASSET_ID)',
'        ELSE',
'            base.invoice_number ',
'        END AS transaction, ',
'        CASE WHEN BASE.FA_ASSET_ID IS NOT NULL THEN',
'            ''FA ASSET ID''',
'        ELSE',
'            ''INVOICE NUMBER'' ',
'        END AS type,',
'       base.source as source, ',
'       SUM(base.actual_amount) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''INVOICE_NUMBER'' ',
'    --   AND UPPER(TRIM(base.invoice_number)) = UPPER(TRIM(p.val))',
'       AND base.invoice_number is not null',
'           AND p.val is not null',
'WHERE  base.activity = :P5_ACTIVITY_TRX',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY BASE.FA_ASSET_ID, base.invoice_number, base.source, base.activity, base.period',
'',
'',
'UNION ALL',
'SELECT base.journal_batch || '' | '' || base.journal_name AS transaction, ',
'       ''JOURNAL'' AS type, ',
'       base.source as source,',
'       SUM(base.actual_amount) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''JE_HEADER_ID'' ',
'    --   AND TO_CHAR(base.je_header_id) = TRIM(p.val)',
'       AND base.je_header_id is not null',
'           AND p.val is not null',
'WHERE  base.activity = :P5_ACTIVITY_TRX',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY base.journal_batch, base.journal_name, base.source, base.activity, base.period',
'',
'',
'UNION ALL',
'SELECT base.source_status || '' | '' || base.INV_SOURCE_NAME AS transaction, ',
'       ''INVENTORY SOURCE'' AS type, ',
'       base.source as source,',
'       NVL(SUM(base.actual_amount), 0) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''INV_TRX_NUMBER'' ',
'    --   AND TRIM(base.inv_trx_number) = TRIM(p.val)',
'    AND base.inv_trx_number is not null',
'           AND p.val is not null',
'WHERE  base.activity = :P5_ACTIVITY_TRX',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY base.source_status || '' | '' || base.INV_SOURCE_NAME, base.source, base.activity, base.period',
'',
'',
'UNION ALL',
'SELECT base.ar_trx_number AS transaction, ',
'       ''RECEIVABLES NUMBER'' AS type, ',
'       base.source as source,',
'       SUM(base.actual_amount) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''AR_TRX_NUMBER'' ',
'    --   AND TRIM(base.ar_trx_number) = TRIM(p.val)',
'       AND base.ar_trx_number is not null',
'           AND p.val is not null',
'WHERE  base.activity = :P5_ACTIVITY_TRX',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY base.ar_trx_number, base.source, base.activity, base.period',
'',
'',
'UNION ALL',
'SELECT base.ar_misc_receipt AS transaction, ',
'       ''MISC. RECEIPT NUMBER'' AS type, ',
'       base.source as source,',
'       SUM(base.actual_amount) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''AR_MISC_RECEIPT'' ',
'    --   AND TRIM(base.AR_MISC_TRX_ID) = TRIM(p.val)',
'       AND base.AR_MISC_TRX_ID is not null',
'           AND p.val is not null',
'WHERE  base.activity = :P5_ACTIVITY_TRX',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY base.ar_misc_receipt, base.source, base.activity, base.period',
'',
'',
'UNION ALL',
'SELECT TO_CHAR(base.fa_asset_id) AS transaction, ',
'       ''FA ASSET ID'' AS type, ',
'       base.source as source,',
'       SUM(base.actual_amount) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''FA_ASSET_ID'' ',
'    --   AND TO_CHAR(base.fa_asset_id) = TRIM(p.val)',
'       AND base.fa_asset_id is not null',
'             AND p.val is not null',
'WHERE  base.activity = :P5_ACTIVITY_TRX',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY TO_CHAR(base.fa_asset_id), base.source, base.activity, base.period',
'',
'',
'UNION ALL',
'SELECT OPM_ITEM || '' | '' || OPM_PERIOD AS transaction, ',
'       base.source_status AS type, ',
'       base.source as source,',
'       SUM(base.actual_amount) AS actual_amount',
'FROM   apx_bf_comm_act_amt base',
'JOIN   params p ',
'       ON p.fld = ''OPM_ADJ_ID'' ',
'    --   AND TO_CHAR(base.OPM_ADJ_ID) = TRIM(p.val)',
'       AND base.OPM_ADJ_ID is not null',
'           AND p.val is not null',
'WHERE  base.activity = :P5_ACTIVITY_TRX',
'  AND  base.period = :P5_PERIOD_TRX',
'GROUP BY OPM_ITEM || '' | '' || OPM_PERIOD,base.source_status, base.source, base.activity, base.period',
'',
'',
'UNION ALL',
'SELECT ',
'    base.product || '' - '' || base.product_desc AS transaction,',
'    base.CATEGORY AS type,',
'    base.CATEGORY AS source,',
'    SUM(base.amount) AS actual_amount',
'FROM APX_BF_REVENUE_COGS_AMT_V base',
'WHERE (TRIM(UPPER(base.product)) = TRIM(UPPER(:P5_REV_PRODUCT)) OR NVL(:P5_REV_PRODUCT, '''') = '''')',
'  AND (TRIM(UPPER(base.period)) = TRIM(UPPER(:P5_PERIOD_TRX)) OR NVL(:P5_PERIOD_TRX, '''') = '''')',
'  AND (TRIM(UPPER(base.CATEGORY)) = TRIM(UPPER(:P5_REV_CATEGORY)) OR NVL(:P5_REV_CATEGORY, '''') = '''')',
'GROUP BY base.product || '' - '' || base.product_desc, base.CATEGORY',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P5_ACTUAL_TRX,P5_REV_COA,P5_REV_PRODUCT,P5_REV_CATEGORY,P5_ACTIVITY_TRX,P5_PERIOD_TRX'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P5_ACTUAL_TRX IS NOT NULL OR :P5_REV_COA IS NOT NULL'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(21451040653786822)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'YEREMIA'
,p_internal_uid=>21451040653786822
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21451111536786823)
,p_db_column_name=>'TYPE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21451255566786824)
,p_db_column_name=>'ACTUAL_AMOUNT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Actual Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21451305588786825)
,p_db_column_name=>'TRANSACTION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Transaction'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21451413214786826)
,p_db_column_name=>'SOURCE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(27964483780181015)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'279645'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SOURCE:TYPE:TRANSACTION:ACTUAL_AMOUNT:'
,p_sum_columns_on_break=>'ACTUAL_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21451515602786827)
,p_plug_name=>'Report Commitment new'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762673260752988133)
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH params AS (',
'    -- PR_NUMBER(s)',
'    SELECT TRIM(REGEXP_SUBSTR(val, ''[^|]+'', 1, LEVEL)) AS val,',
'           ''PR_NUMBER'' AS fld',
'    FROM (',
'        SELECT REGEXP_SUBSTR(:P5_COMMITMENT_TRX, ''PR_NUMBER~\s*([^~]+)'', 1, 1, NULL, 1) AS val ',
'        FROM dual',
'    )',
'    CONNECT BY LEVEL <= REGEXP_COUNT(val, ''\|'') + 1',
'',
'    UNION ALL',
'',
'    -- PO_NUMBER(s)',
'    SELECT TRIM(REGEXP_SUBSTR(val, ''[^|]+'', 1, LEVEL)) AS val,',
'           ''PO_NUMBER''',
'    FROM (',
'        SELECT REGEXP_SUBSTR(:P5_COMMITMENT_TRX, ''PO_NUMBER~\s*([^~]+)'', 1, 1, NULL, 1) AS val ',
'        FROM dual',
'    )',
'    CONNECT BY LEVEL <= REGEXP_COUNT(val, ''\|'') + 1',
'),',
'filtered AS (',
'    SELECT base.pr_number,',
'           base.po_number,',
'           base.po_status,',
'           base.source,',
'           base.commitment',
'      FROM apx_bf_comm_act_amt base',
'     WHERE base.activity   = :P5_ACTIVITY_TRX',
'       AND base.commitment <> 0',
'       AND base.period     = :P5_PERIOD_TRX',
'       AND EXISTS (',
'           SELECT 1',
'             FROM params p',
'            WHERE (p.fld = ''PR_NUMBER'' ',
'            -- AND base.pr_number = p.val',
'            AND base.pr_number is not null',
'           AND p.val is not null',
'            )',
'               OR (p.fld = ''PO_NUMBER'' ',
'            --    AND base.po_number = p.val',
'               AND base.po_number is not null',
'           AND p.val is not null',
'            )',
'       )',
')',
'SELECT ',
'    MAX(f.pr_number) AS pr_no,',
'    CASE ',
'        WHEN MAX(f.po_number) IS NOT NULL AND MAX(f.po_status) = ''APPROVED''',
'             THEN MAX(f.po_number)',
'        ELSE MAX(f.pr_number)',
'    END AS transaction_number,',
'    CASE ',
'        WHEN MAX(f.po_number) IS NOT NULL AND MAX(f.po_status) = ''APPROVED''',
'             THEN ''PO NUMBER''',
'        ELSE ''PR NUMBER''',
'    END AS type,',
'    MAX(f.source) AS source,',
'    SUM(f.commitment) AS commitment',
'FROM filtered f',
'GROUP BY ',
'    CASE ',
'        WHEN f.po_number IS NOT NULL AND f.po_status = ''APPROVED'' ',
'             THEN f.po_number',
'        ELSE f.pr_number',
'    END,',
'    f.source',
'ORDER BY transaction_number;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P5_COMMITMENT_TRX'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(21451660287786828)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'YEREMIA'
,p_internal_uid=>21451660287786828
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21451795680786829)
,p_db_column_name=>'TRANSACTION_NUMBER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Transaction Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21451848137786830)
,p_db_column_name=>'TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21451962409786831)
,p_db_column_name=>'COMMITMENT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Commitment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21452073692786832)
,p_db_column_name=>'PR_NO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Pr No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21452147581786833)
,p_db_column_name=>'SOURCE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(27974684212806770)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'279747'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SOURCE:TYPE:TRANSACTION_NUMBER:COMMITMENT:'
,p_sum_columns_on_break=>'COMMITMENT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18427469600627610)
,p_name=>'P5_COMMITMENT_TRX'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18427503405627611)
,p_name=>'P5_ACTUAL_TRX'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18431041972627646)
,p_name=>'P5_ACTIVITY_TRX'
,p_item_sequence=>60
,p_prompt=>'Budget Activity'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'(:P5_COMMITMENT_TRX IS NOT NULL OR :P5_ACTUAL_TRX IS NOT NULL) and :P5_REV_COA is null'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18431493130627650)
,p_name=>'P5_PERIOD_TRX'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21450585754786817)
,p_name=>'P5_REV_COA'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21450616886786818)
,p_name=>'P5_REV_PRODUCT'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21450785821786819)
,p_name=>'P5_REV_CATEGORY'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21450827492786820)
,p_name=>'P5_ACTIVITY_REV'
,p_item_sequence=>70
,p_prompt=>'Activity'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>':P5_ACTIVITY_TRX is null and :P5_REV_COA is not null'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
