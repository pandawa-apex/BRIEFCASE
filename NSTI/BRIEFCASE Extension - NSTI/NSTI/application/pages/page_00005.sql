prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1643206756007669
,p_default_application_id=>104
,p_default_id_offset=>17112880843997265
,p_default_owner=>'EXT'
);
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Transactions'
,p_alias=>'TRANSACTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Transactions'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P5_ACTIVITY_TRX{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    /* padding-top: 17px; */',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'    backdrop-filter: blur(10px);',
'',
'    /* background: rgb(13 13 13 / 21%); */',
'    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);',
'}',
'',
'#P5_ACTIVITY_REV{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    /* padding-top: 17px; */',
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
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43545818917155048)
,p_plug_name=>'No Data'
,p_title=>'No Data'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(792797839650816834)
,p_plug_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(50566913508363429)
,p_plug_name=>'Report Commitment Old'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(792847595712816863)
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
,p_prn_page_header=>'Transactions'
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
,p_required_patch=>wwv_flow_imp.id(792753582484816504)
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(50567031121363430)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'YEREMIA'
,p_internal_uid=>16115327250896002
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50567161259363431)
,p_db_column_name=>'TRANSACTION_NUMBER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Transaction Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50567281629363432)
,p_db_column_name=>'TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50567380209363433)
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
 p_id=>wwv_flow_imp.id(50567487943363434)
,p_db_column_name=>'PR_NO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Pr No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50567510675363435)
,p_db_column_name=>'SOURCE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57118797444546373)
,p_plug_name=>'Report Actual'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(792847595712816863)
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
'GROUP BY base.product || '' - '' || base.product_desc, base.CATEGORY'))
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
,p_prn_page_header=>'Transactions'
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
 p_id=>wwv_flow_imp.id(57118856089546374)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'YEREMIA'
,p_internal_uid=>8021313137627724
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49487950053732529)
,p_db_column_name=>'SOURCE'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57119082796546376)
,p_db_column_name=>'TYPE'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57119319921546378)
,p_db_column_name=>'TRANSACTION'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Transaction'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57119395333546379)
,p_db_column_name=>'ACTUAL_AMOUNT'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Actual Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(59818286986572974)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'107208'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SOURCE:TYPE:TRANSACTION:ACTUAL_AMOUNT:'
,p_sum_columns_on_break=>'ACTUAL_AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59811421806621596)
,p_plug_name=>'Report Commitment'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(792847595712816863)
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
,p_prn_page_header=>'Transactions'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(59811524335621596)
,p_name=>'Transactions'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'YEREMIA'
,p_internal_uid=>10713981383702946
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59812230353621529)
,p_db_column_name=>'TRANSACTION_NUMBER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Transaction Number'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59812501119621522)
,p_db_column_name=>'TYPE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57119633485546381)
,p_db_column_name=>'COMMITMENT'
,p_display_order=>12
,p_column_identifier=>'E'
,p_column_label=>'Commitment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57119905927546384)
,p_db_column_name=>'PR_NO'
,p_display_order=>22
,p_column_identifier=>'F'
,p_column_label=>'Pr No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49488032766732530)
,p_db_column_name=>'SOURCE'
,p_display_order=>32
,p_column_identifier=>'G'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(59817807261573003)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'107203'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SOURCE:TYPE:TRANSACTION_NUMBER:COMMITMENT:'
,p_sum_columns_on_break=>'COMMITMENT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49979763703694929)
,p_name=>'P5_PERIOD_TRX'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50974639874659229)
,p_name=>'P5_REV_COA'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50974801667659230)
,p_name=>'P5_REV_PRODUCT'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50974804690659231)
,p_name=>'P5_REV_CATEGORY'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50975099303659233)
,p_name=>'P5_ACTIVITY_REV'
,p_item_sequence=>90
,p_prompt=>'Budget Activity'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>':P5_ACTIVITY_TRX is null and :P5_REV_COA is not null'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(792928068450816952)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57118607717546371)
,p_name=>'P5_COMMITMENT_TRX'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57118649979546372)
,p_name=>'P5_ACTUAL_TRX'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57119826906546383)
,p_name=>'P5_ACTIVITY_TRX'
,p_item_sequence=>80
,p_prompt=>'Budget Activity'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'(:P5_COMMITMENT_TRX IS NOT NULL OR :P5_ACTUAL_TRX IS NOT NULL) and :P5_REV_COA is null'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(792928068450816952)
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
