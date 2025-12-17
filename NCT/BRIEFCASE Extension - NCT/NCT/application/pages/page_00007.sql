prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1475951226492231
,p_default_application_id=>102
,p_default_id_offset=>28679468460710035
,p_default_owner=>'EXT'
);
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Detail Budget Monitoring'
,p_alias=>'DETAIL-BUDGET-MONITORING'
,p_step_title=>'Detail Budget Monitoring'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'$(''#P7_DEPARTMENT_VALUE'').attr(''title'', $(''#P7_DEPARTMENT_VALUE'').text());'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-rds-selected{',
'    background-color: darkgray;',
'    padding: 0px 10px 0px 10px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'.a-IRR-header, .u-tC{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'.t-Report-report {',
'    width: 100%;',
'    border-collapse: collapse;',
'    overflow: hidden;',
'}',
'',
'.t-Report-report td,',
'.t-Report-report th {',
'    border: 1px solid #ddd;',
'    padding: 8px;',
'    text-align: center;',
'}',
'',
'.t-Report-report th {',
'    background-color: #f2f2f2;',
'    font-weight: bold;',
'    border-bottom: 2px solid #bbb;',
'}',
'',
'.t-Report-report th:last-child,',
'.t-Report-report td:last-child {',
'    position: sticky;',
'    right: 0;',
'    background: #fff;',
'    z-index: 2;',
'    box-shadow: -1px 0 0 #ddd; ',
'}',
'.t-Report-report th:last-child {',
'    background: #f2f2f2;',
'}',
'',
'.t-Report-report tr:nth-child(even) {',
'    background-color: #f9f9f9;',
'}',
'',
'.t-Report-report tr:hover {',
'    background-color: #f1f1f1;',
'}',
'',
'.t-Report-report thead tr {',
'    border-bottom: 2px solid #bbb;',
'}',
'',
'.t-Report-report tbody tr {',
'    border-bottom: 1px solid #ddd;',
'}',
'',
'.t-Report-report thead th {',
'    border-bottom: 2px solid #777 !important;',
'    position: relative;',
'}',
'',
'.t-Report-report tbody tr:first-child td {',
'    border-top: 1px solid #ddd;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#rows_counter {',
'    font-weight: bold;',
'    font-size: 16px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'td[role="gridcell"].u-tS {',
'    position: relative;',
'    max-width: 329px;',
'    white-space: nowrap;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'}',
'',
'td[role="gridcell"].u-tS:hover {',
'    overflow: visible;',
'    white-space: normal;',
'    word-break: break-word;',
'    background-color: white;',
'    z-index: 1000;',
'    position: relative;',
'    box-shadow: 0 0 10px rgba(0,0,0,0.2);',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#line_number_col_HDR, #line_number_sum_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#cost_center_col_HDR, #cost_center_sum_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#budget_category_col_HDR, #budget_category_sum_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#activity_col_HDR, #activity_sum_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#coa_col_HDR, #coa_sum_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#location_col_HDR, #location_sum_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#original_amount_col_HDR, #sum_original_amount_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#commitment_col_HDR, #sum_commitment_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#final_amount_col_HDR, #sum_final_amount_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#actual_amount_col_HDR, #sum_actual_amount_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#fund_available_col_HDR, #sum_fund_available_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#period_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#budget_header{',
'    background-color: #94949466;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#sum_original_amount_region{',
'    background-color: #94949466;',
'    width: 100%; ',
'    height: auto;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_SUM_ORIGINAL_AMOUNT_VALUE_DISPLAY {',
'    text-align: right;',
'    display: inline-block;',
'    width: 100%;',
'    padding-right: 5px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'#budget_lines{',
'    background-color: #94949466;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_SUM_ORIGINAL_AMOUNT_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #767474;',
'}',
'',
'#P7_SUM_ORIGINAL_AMOUNT_DISPLAY{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'#P7_SUM_ORIGINAL_AMOUNT_VALUE_DISPLAY{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    padding-top: 15px;',
'    padding-bottom: 15px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'.apex_disabled {',
'    pointer-events: none;',
'    opacity: 0.5;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#record_history {',
'    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3);',
'    transition: box-shadow 0.3s ease;',
'}',
'',
'#record_history:hover {',
'    box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.4);',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'/* Button */',
'#back_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    border-color: #000000;',
'    color: #000000;',
'}',
'',
'#back_button .t-Icon {',
'    opacity: 0;',
'    transform: scale(0);',
'    transition: opacity 0.3s ease, transform 0.3s ease;',
'}',
'',
'#back_button:hover {',
'    background-color: #bfbfbf;',
'}',
'',
'#back_button:hover .t-Icon {',
'    opacity: 1;',
'    transform: scale(1);',
'}',
'',
'#back_button .t-Button-label {',
'    margin-left: -25px;',
'    transition: margin-left 0.3s ease, opacity 0.3s ease;',
'}',
'',
'#back_button:hover .t-Button-label {',
'    margin-left: 0px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_BATCH_NUMBER_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #121212;',
'}',
'',
'#P7_BATCH_NUMBER{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'',
'#P7_BATCH_NUMBER_VALUE{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_LATEST_VERSION_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #121212;',
'    border-style: inherit;',
'}',
'',
'#P7_LATEST_VERSION{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'#P7_LATEST_VERSION_VALUE{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_COMPANY_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #121212;',
'    border-style: inherit;',
'}',
'',
'#P7_COMPANY{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'#P7_COMPANY_VALUE{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_YEAR_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #121212;',
'    border-style: inherit;',
'}',
'',
'#P7_YEAR{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'#P7_YEAR_VALUE{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_DEPARTMENT_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #121212;',
'    border-style: inherit;',
'}',
'',
'#P7_DEPARTMENT{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'#P7_DEPARTMENT_VALUE {',
'    font-weight: bold;',
'    border-style: double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'    white-space: nowrap;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'    min-width: 0;',
'    display: block;',
'    width: 100%;',
'}',
'',
'#P7_DEPARTMENT_VALUE:hover {',
'    overflow: visible;',
'    white-space: normal;',
'    z-index: 1000;',
'    background-color: #dbd5d5;',
'}',
'',
'#P7_DEPARTMENT_VALUE.show-full-text {',
'    overflow: visible;',
'    white-space: normal;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_BUDGET_TYPE_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #121212;',
'    border-style: inherit;',
'}',
'',
'#P7_BUDGET_TYPE{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'#P7_BUDGET_TYPE_VALUE{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#TOTAL_COL{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'#TOTAL_NON_ROKOK_COL{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#COA_COL{',
'    pointer-events: none !important;',
'    background-color: #f0f0f0 !important;',
'    color: #888888;',
'    display: none;',
'    opacity: 0.8 !important; ',
'}',
'',
'#COA_NON_ROKOK_COL{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'/* ----------------------------------------------------------------------- */'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30633568711103938)
,p_plug_name=>'Row(s) Counter'
,p_region_name=>'rows_counter'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(774638277445624820)
,p_plug_display_sequence=>140
,p_plug_display_column=>11
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_count NUMBER;',
'',
'BEGIN',
'    SELECT COUNT(l.ID)',
'    INTO l_count',
'    FROM XTD_BRF_BUDGET_MKT_MOTR_V v',
'    JOIN APX_BF_BUDGET_MONITOR_HDR h ON (',
'        v.COMPANY = h.COMPANY_NAME',
'        AND v.YEAR = h.YEAR',
'        AND v.BUDGET_TYPE = h.BUDGET_TYPE',
'        AND v.DEPARTMENT = h.DEPT_NAME',
'    )',
'    JOIN APX_BF_BUDGET_MONITOR_LNS l ON (',
'        h.ID = l.HEADER_ID',
'        AND v.COA = l.COA',
'        AND v.ACTIVITY = l.ACTIVITY',
'        AND v.LOCATION = l.LOCATION',
'        AND v.COST_CENTER = l.COST_CENTER',
'        AND v.BUDGET_CATEGORY = l.BUDGET_CATEGORY',
'        AND v.PERIOD = TO_NUMBER(l.PERIOD)',
'        -- AND v.ORIGINAL_AMOUNT = l.ORIGINAL_AMOUNT',
'        -- AND v.FINAL_AMOUNT = l.FINAL_AMOUNT',
'    )',
'    WHERE h.ID = :P7_HEADER_ID',
'    AND l.HEADER_ID = :P7_HEADER_ID;',
'',
'    HTP.PRINT(''Row Counts: '' || l_count);',
'    ',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_department VARCHAR2(100);',
'BEGIN',
'    v_department := :P7_DEPARTMENT_VALUE;',
'    ',
'    IF v_department IS NOT NULL AND v_department LIKE ''%Marketing%Activity%'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE; ',
'    END IF;',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31027814981003338)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(774574468998624786)
,p_plug_display_sequence=>110
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(774986215531191874)
,p_plug_name=>'Detail Budget Header'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(774638277445624820)
,p_plug_display_sequence=>100
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(774987549997191888)
,p_plug_name=>'Sum Original Amount Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(774638277445624820)
,p_plug_display_sequence=>130
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(774987696720191889)
,p_plug_name=>'Sum Original Amount'
,p_parent_plug_id=>wwv_flow_imp.id(774987549997191888)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(774638277445624820)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(774987944447191892)
,p_plug_name=>'Detail Budget Lines'
,p_region_name=>'budget_lines'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(774638277445624820)
,p_plug_display_sequence=>160
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2350191346293321)
,p_plug_name=>'Budget Monitoring Lines'
,p_region_name=>'monitoring_lines_ma'
,p_parent_plug_id=>wwv_flow_imp.id(774987944447191892)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(774628479150624817)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(31144666568445075)
,p_use_local_sync_table=>true
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    COMPANY,',
'    YEAR,',
'    COST_CENTER,',
'    DEPARTMENT,',
'    BUDGET_TYPE,',
'    BUDGET_CATEGORY,',
'    ACTIVITY,',
'    COA,',
'    PRODUCT,',
'    DESCRIPTION,',
'    QTY,',
'    UOM,',
'    PRICE_UOM,',
'    ORIGINAL_AMOUNT,',
'    LOCATION,',
'    PERIOD,',
'    COMMITMENT_AMOUNT,',
'    ACTUAL_AMMOUNT AS ACTUAL_AMOUNT,',
'    FINAL_AMOUNT',
'FROM XTD_BRF_BUDGET_MKT_MOTR_V',
'WHERE DEPARTMENT = :P7_DEPARTMENT_VALUE'))
,p_source_post_processing=>'SQL'
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_department VARCHAR2(100);',
'BEGIN',
'    v_department := :P7_DEPARTMENT_VALUE;',
'    ',
'    IF v_department IS NOT NULL AND v_department LIKE ''%Marketing%Activity%'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE; ',
'    END IF;',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
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
,p_required_patch=>wwv_flow_imp.id(774534465922624458)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2350988266293329)
,p_name=>'COST_CENTER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST_CENTER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cost Center'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'cost_center_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2351036928293330)
,p_name=>'BUDGET_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET_CATEGORY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Budget Category'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'budget_category_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2351165232293331)
,p_name=>'COA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'COA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'coa_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2351336824293333)
,p_name=>'PERIOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIOD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Period'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'period_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2351439659293334)
,p_name=>'ACTIVITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVITY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Activity'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'activity_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2351574769293335)
,p_name=>'LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'location_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2351760992293337)
,p_name=>'FINAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FINAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Final Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'final_amount_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2352007479293340)
,p_name=>'ORIGINAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORIGINAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Original Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'original_amount_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2353071873293350)
,p_name=>'COMPANY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29378176687875701)
,p_name=>'YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'YEAR'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29378280523875702)
,p_name=>'DEPARTMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPARTMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29378355737875703)
,p_name=>'BUDGET_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29378457465875704)
,p_name=>'PRODUCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Product'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'product_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29378593729875705)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'description_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29378642223875706)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'quantity_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29378771689875707)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'uom_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29378892663875708)
,p_name=>'PRICE_UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE_UOM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'price_uom_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29378956691875709)
,p_name=>'COMMITMENT_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMITMENT_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Commitment'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'commitment_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29379175265875711)
,p_name=>'ACTUAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Actual Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'actual_amount_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2350393796293323)
,p_internal_uid=>2350393796293323
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        tooltip: {',
'            content: function(callback, model, recordMeta, colMeta, columnDef ) {',
'                var text = null;',
'                if (recordMeta && $(this).hasClass( "a-GV-rowHeader" ) ) {',
'                    if ( recordMeta.deleted ) {',
'                        text = "This record has been deleted";',
'                    } else if ( recordMeta.inserted ) {',
'                        text = "This record has been added";',
'                    } else if ( recordMeta.updated ) {',
'                        text = "This record has been changed";',
'                    }',
'                } else {',
'                    if ( columnDef && recordMeta) {',
'                        if ( columnDef.property === "COST_CENTER" ) {',
'                            text = model.getValue( recordMeta.record, "COST_CENTER" );',
'                        } else if ( columnDef.property === "BUDGET_CATEGORY" ) {',
'                            text = model.getValue( recordMeta.record, "BUDGET_CATEGORY" );',
'                        } else if ( columnDef.property === "ACTIVITY" ) {',
'                            text = model.getValue( recordMeta.record, "ACTIVITY" );',
'                        } else if ( columnDef.property === "COA" ) {',
'                            text = model.getValue( recordMeta.record, "COA" );',
'                        } else if ( columnDef.property === "LOCATION" ) {',
'                            text = model.getValue( recordMeta.record, "LOCATION" );',
'                        } else if ( columnDef.property === "ORIGINAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "ORIGINAL_AMOUNT" );',
'                        } else if ( columnDef.property === "FINAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "FINAL_AMOUNT" );',
'                        } else if ( columnDef.property === "COMMITMENT" ) {',
'                            text = model.getValue( recordMeta.record, "COMMITMENT" );',
'                        } else if ( columnDef.property === "ACTUAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "ACTUAL_AMOUNT" );',
'                        } else if ( columnDef.property === "FUND_AVAILABLE" ) {',
'                            text = model.getValue( recordMeta.record, "FUND_AVAILABLE" );',
'                        } else if ( columnDef.property === "PERIOD" ) {',
'                            text = model.getValue( recordMeta.record, "PERIOD" );',
'                        }',
'                    }',
'                    if ( colMeta && colMeta.changed ) {',
'                        if ( text !== null) {',
'                            text += "<br>";',
'                        } else {',
'                            text = "";',
'                        }',
'                        text += "This cell has been changed";',
'                    }',
'                }',
'                return text;',
'            }',
'        }',
'    };',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(29384330433886854)
,p_interactive_grid_id=>wwv_flow_imp.id(2350393796293323)
,p_static_id=>'293844'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(29384582339886858)
,p_report_id=>wwv_flow_imp.id(29384330433886854)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7510050102748)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(29379175265875711)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29385051093886881)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2350988266293329)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>189
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29385997319886891)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2351036928293330)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29386804021886895)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2351165232293331)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>254
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29387759272886899)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2351336824293333)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29388615343886903)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2351439659293334)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>164
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29389566961886911)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(2351574769293335)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>176
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29390401451886915)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2351760992293337)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>133
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29391342297886920)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2352007479293340)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29392170762886924)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2353071873293350)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29393055896886928)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(29378176687875701)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29393939673886934)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(29378280523875702)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29394875026886938)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(29378355737875703)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29395767905886943)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(29378457465875704)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>264
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29396635336886947)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(29378593729875705)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29397533477886949)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(29378642223875706)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29398407594886952)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(29378771689875707)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29399301252886954)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(29378892663875708)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29400241242886956)
,p_view_id=>wwv_flow_imp.id(29384582339886858)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(29378956691875709)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>151
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30581412889912206)
,p_plug_name=>'Budget Monitoring Lines'
,p_region_name=>'monitoring_lines_ma_copy'
,p_parent_plug_id=>wwv_flow_imp.id(774987944447191892)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(774628479150624817)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(31144666568445075)
,p_use_local_sync_table=>true
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- =====================================================',
'-- AUTHOR      : Manuel',
'-- LAST EDIT   : 24-Oct-2025 14:40:49',
'-- DESCRIPTION : Budget Monitoring Lines',
'-- CHANGES     : ',
'-- =====================================================',
'',
'SELECT ',
'    l.ID,',
'    v.COMPANY,',
'    v.YEAR,',
'    TRIM(v.COST_CENTER) AS COST_CENTER,',
'    v.DEPARTMENT,',
'    v.BUDGET_TYPE,',
'    TRIM(v.BUDGET_CATEGORY) AS BUDGET_CATEGORY,',
'    v.ACTIVITY,',
'    v.COA,',
'    v.PRODUCT,',
'    v.DESCRIPTION,',
'    v.QTY,',
'    v.UOM,',
'    v.PRICE_UOM,',
'    v.ORIGINAL_AMOUNT,',
'    v.LOCATION,',
'    v.PERIOD,',
'    v.COMMITMENT_AMOUNT,',
'    v.ACTUAL_AMMOUNT AS ACTUAL_AMOUNT,',
'    v.FUND_AVAILABLE,',
'    v.FINAL_AMOUNT,',
'    h.ID AS HEADER_ID',
'FROM XTD_BRF_BUDGET_MKT_MOTR_V v',
'JOIN APX_BF_BUDGET_MONITOR_HDR h ON (',
'    v.COMPANY = h.COMPANY_NAME',
'    AND v.YEAR = h.YEAR',
'    AND v.BUDGET_TYPE = h.BUDGET_TYPE',
'    AND v.DEPARTMENT = h.DEPT_NAME',
')',
'JOIN APX_BF_BUDGET_MONITOR_LNS l ON (',
'    h.ID = l.HEADER_ID',
'    AND v.COA = l.COA',
'    AND v.ACTIVITY = l.ACTIVITY',
'    AND v.LOCATION = l.LOCATION',
'    AND TRIM(v.COST_CENTER) = TRIM(l.COST_CENTER)',
'    AND v.BUDGET_CATEGORY = l.BUDGET_CATEGORY',
'    AND v.PERIOD = TO_NUMBER(l.PERIOD)',
'    -- AND v.ORIGINAL_AMOUNT = l.ORIGINAL_AMOUNT',
'    -- AND v.FINAL_AMOUNT = l.FINAL_AMOUNT',
')',
'WHERE h.ID = :P7_HEADER_ID',
'AND l.HEADER_ID = :P7_HEADER_ID'))
,p_source_post_processing=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_department VARCHAR2(100);',
'BEGIN',
'    v_department := :P7_DEPARTMENT_VALUE;',
'    ',
'    IF v_department IS NOT NULL AND v_department LIKE ''%Marketing%Activity%'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE; ',
'    END IF;',
'END;'))
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
 p_id=>wwv_flow_imp.id(30631384867103916)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MANUEL'
,p_internal_uid=>30631384867103916
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30631497024103917)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30633481128103937)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>20
,p_column_identifier=>'U'
,p_column_label=>'Header ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30631520934103918)
,p_db_column_name=>'COMPANY'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Company'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30631662329103919)
,p_db_column_name=>'YEAR'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30631864323103921)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30631937832103922)
,p_db_column_name=>'BUDGET_TYPE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Budget Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30631706962103920)
,p_db_column_name=>'COST_CENTER'
,p_display_order=>80
,p_column_identifier=>'D'
,p_column_label=>'Cost Center'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30632062341103923)
,p_db_column_name=>'BUDGET_CATEGORY'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Budget Category'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30632179089103924)
,p_db_column_name=>'ACTIVITY'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Activity'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30632212246103925)
,p_db_column_name=>'COA'
,p_display_order=>110
,p_column_identifier=>'I'
,p_column_label=>'COA'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30632312972103926)
,p_db_column_name=>'PRODUCT'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30632466076103927)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30632572691103928)
,p_db_column_name=>'QTY'
,p_display_order=>140
,p_column_identifier=>'L'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30632639286103929)
,p_db_column_name=>'UOM'
,p_display_order=>150
,p_column_identifier=>'M'
,p_column_label=>'UOM'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30632740301103930)
,p_db_column_name=>'PRICE_UOM'
,p_display_order=>160
,p_column_identifier=>'N'
,p_column_label=>'Price/UOM'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30632913574103932)
,p_db_column_name=>'LOCATION'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30632804244103931)
,p_db_column_name=>'ORIGINAL_AMOUNT'
,p_display_order=>180
,p_column_identifier=>'O'
,p_column_label=>'Original Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30633303415103936)
,p_db_column_name=>'FINAL_AMOUNT'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Final Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30633211922103935)
,p_db_column_name=>'ACTUAL_AMOUNT'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>'Actual Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30633191213103934)
,p_db_column_name=>'COMMITMENT_AMOUNT'
,p_display_order=>210
,p_column_identifier=>'R'
,p_column_label=>'Commitment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30633685473103939)
,p_db_column_name=>'FUND_AVAILABLE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Fund Available'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30633034098103933)
,p_db_column_name=>'PERIOD'
,p_display_order=>230
,p_column_identifier=>'Q'
,p_column_label=>'Period'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30775101718996245)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'307752'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COST_CENTER:BUDGET_CATEGORY:ACTIVITY:COA:PRODUCT:LOCATION:ORIGINAL_AMOUNT:FINAL_AMOUNT:ACTUAL_AMOUNT:COMMITMENT_AMOUNT:FUND_AVAILABLE:PERIOD:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32717321620805812)
,p_plug_name=>'Region Display Selector'
,p_parent_plug_id=>wwv_flow_imp.id(774987944447191892)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(774638277445624820)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32717483661805813)
,p_plug_name=>'Budget Monitoring Lines non MA [Summary]'
,p_title=>'Summary'
,p_parent_plug_id=>wwv_flow_imp.id(774987944447191892)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(774628479150624817)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(31144666568445075)
,p_use_local_sync_table=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    MIN(LINK_KEY) AS LINK_KEY,',
'    MIN(ID) AS ID,',
'    COA,',
'    AVG(PRICE) AS PRICE,',
'    ACTIVITY,',
'    LOCATION,',
'    MIN(HEADER_ID) AS HEADER_ID,',
'    SUM(COMMITMENT) AS SUM_OF_COMMITMENT,',
'    LISTAGG(CREATED_BY, ''; '') WITHIN GROUP (ORDER BY CREATED_BY) AS CREATED_BY,',
'    LISTAGG(UPDATED_BY, ''; '') WITHIN GROUP (ORDER BY UPDATED_BY) AS UPDATED_BY,',
'    MIN(VERSION_NO) AS VERSION_NO,',
'    COST_CENTER,',
'    MIN(LINE_NUMBER) AS LINE_NUMBER,',
'    LISTAGG(LINE_SOURCE, ''; '') WITHIN GROUP (ORDER BY LINE_SOURCE) AS LINE_SOURCE,',
'    MIN(COMPANY_NAME) AS COMPANY_NAME,',
'    MAX(CREATED_DATE) AS CREATED_DATE,',
'    SUM(FINAL_AMOUNT) AS SUM_OF_FINAL_AMOUNT,',
'    LISTAGG(REJECT_NOTES, ''; '') WITHIN GROUP (ORDER BY REJECT_NOTES) AS REJECT_NOTES,',
'    MAX(UPDATED_DATE) AS UPDATED_DATE,',
'    SUM(ACTUAL_AMOUNT) AS SUM_OF_ACTUAL_AMOUNT,',
'    SUM(FUND_AVAILABLE) AS SUM_OF_FUND_AVAILABLE,',
'    BUDGET_CATEGORY,',
'    SUM(ORIGINAL_AMOUNT) AS SUM_OF_ORIGINAL_AMOUNT,',
'    LISTAGG(TRX_COMMITMENT_NUMBER, ''; '') WITHIN GROUP (ORDER BY TRX_COMMITMENT_NUMBER) AS TRX_COMMITMENT_NUMBER,',
'    LISTAGG(TRX_ACTUAL_NUMBER, ''; '') WITHIN GROUP (ORDER BY TRX_ACTUAL_NUMBER) AS TRX_ACTUAL_NUMBER,',
'    LISTAGG(TRX_ACTIVITY, ''; '') WITHIN GROUP (ORDER BY TRX_ACTIVITY) AS TRX_ACTIVITY,',
'    LISTAGG(REV_COA, ''; '') WITHIN GROUP (ORDER BY REV_COA) AS REV_COA,',
'    LISTAGG(REV_PRODUCT, ''; '') WITHIN GROUP (ORDER BY REV_PRODUCT) AS REV_PRODUCT',
'FROM (',
'    SELECT ',
'        NVL(TO_CHAR(REST.ID), ''REST_'' || ROWNUM) AS LINK_KEY, ',
'        REST.ID,',
'        REST.COA,',
'        REST.PRICE,',
'        REST.ACTIVITY,',
'        REST.LOCATION,',
'        REST.HEADER_ID,',
'        NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'        REST.CREATED_BY,',
'        REST.UPDATED_BY,',
'        REST.VERSION_NO,',
'        REST.COST_CENTER,',
'        REST.LINE_NUMBER,',
'        REST.LINE_SOURCE,',
'        REST.COMPANY_NAME,',
'        REST.CREATED_DATE,',
'        REST.FINAL_AMOUNT,',
'        REST.REJECT_NOTES,',
'        REST.UPDATED_DATE,',
'        NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) + NVL(REV.AMOUNT, 0) AS ACTUAL_AMOUNT,',
'        NVL((REST.FINAL_AMOUNT - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) - NVL(REV.AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'        REST.BUDGET_CATEGORY,',
'        NVL((',
'            SELECT MAX(orig.ORIGINAL_AMOUNT)',
'            FROM APX_BF_BUDGET_MONITOR_LNS_V orig',
'            WHERE orig.COST_CENTER     = REST.COST_CENTER',
'            AND orig.BUDGET_CATEGORY = REST.BUDGET_CATEGORY',
'            AND orig.ACTIVITY        = REST.ACTIVITY',
'            AND orig.COA             = REST.COA',
'            AND orig.PERIOD          = REST.PERIOD',
'            AND orig.VERSION_NO      = 0',
'            AND ROWNUM = 1',
'        ), REST.ORIGINAL_AMOUNT) AS ORIGINAL_AMOUNT,',
'        CA.TRX_COMMITMENT_NUMBER,',
'        CA.TRX_ACTUAL_NUMBER,',
'        ca.activity as TRX_ACTIVITY,',
'        REV.CATEGORY AS REV_COA,',
'        REV.PRODUCT AS REV_PRODUCT',
'    FROM #APEX$SOURCE_DATA# REST',
'    JOIN APX_BF_BUDGET_MONITOR_HDR H',
'            on H.ID = :P7_HEADER_ID',
'    LEFT JOIN APX_BF_COMM_ACT_SUM_V CA',
'    ON REST.ACTIVITY = TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1))',
'        AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = H.DEPT_NAME',
'        AND SUBSTR(CA.PERIOD, 1, 3) = SUBSTR(REST.PERIOD, 1, 3)',
'        AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
'    LEFT JOIN APX_BF_REVENUE_COGS_AMT_V REV',
'        ON  REGEXP_SUBSTR(REST.PRODUCT, ''^\d+'') = REV.PRODUCT',
'            AND REST.BUDGET_CATEGORY = REV.CATEGORY',
'            AND TRIM(REV.PERIOD) = TRIM(REST.PERIOD)',
'    WHERE REST.HEADER_ID = :P7_HEADER_ID',
'',
'    UNION ALL',
'',
'    SELECT ',
'        ''UNB_'' || ROWNUM AS LINK_KEY,',
'        NULL ID,',
'        NULL COA,',
'        NULL PRICE,',
'        TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) AS ACTIVITY,',
'        NULL LOCATION,',
'        NULL HEADER_ID,',
'        NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'        NULL CREATED_BY,',
'        NULL UPDATED_BY,',
'        NULL VERSION_NO,',
'        NULL COST_CENTER,',
'        CASE ',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JAN'' THEN 1',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''FEB'' THEN 2',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAR'' THEN 3',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''APR'' THEN 4',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAY'' THEN 5',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUN'' THEN 6',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUL'' THEN 7',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''AUG'' THEN 8',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''SEP'' THEN 9',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''OCT'' THEN 10',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''NOV'' THEN 11',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''DEC'' THEN 12',
'            ELSE 0',
'        END LINE_NUMBER,',
'        NULL LINE_SOURCE,',
'        NULL COMPANY_NAME,',
'        NULL CREATED_DATE,',
'        0 FINAL_AMOUNT,',
'        NULL REJECT_NOTES,',
'        NULL UPDATED_DATE,',
'        NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) AS ACTUAL_AMOUNT,',
'        NVL((0 - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'        NULL BUDGET_CATEGORY,',
'        0 ORIGINAL_AMOUNT,',
'        CA.TRX_COMMITMENT_NUMBER,',
'        CA.TRX_ACTUAL_NUMBER,',
'        ca.activity as TRX_ACTIVITY,',
'        NULL AS REV_COA,',
'        NULL AS REV_PRODUCT',
'    FROM APX_BF_COMM_ACT_SUM_V CA ',
'    WHERE 1=1',
'    AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) = ''Unbudgeted''',
'    AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = (',
'            SELECT ',
'            DEPT_NAME',
'        FROM ',
'            APX_BF_BUDGET_MONITOR_HDR',
'        WHERE',
'            ID = :P7_HEADER_ID',
'    )',
'    AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
'',
'    UNION ALL',
'',
'    SELECT ',
'        ''INV_'' || ROWNUM AS LINK_KEY,',
'        NULL ID,',
'        NULL COA,',
'        NULL PRICE,',
'        TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) AS ACTIVITY,',
'        NULL LOCATION,',
'        NULL HEADER_ID,',
'        NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'        NULL CREATED_BY,',
'        NULL UPDATED_BY,',
'        NULL VERSION_NO,',
'        NULL COST_CENTER,',
'        CASE ',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JAN'' THEN 1',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''FEB'' THEN 2',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAR'' THEN 3',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''APR'' THEN 4',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAY'' THEN 5',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUN'' THEN 6',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUL'' THEN 7',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''AUG'' THEN 8',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''SEP'' THEN 9',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''OCT'' THEN 10',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''NOV'' THEN 11',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''DEC'' THEN 12',
'            ELSE 0',
'        END LINE_NUMBER,',
'        NULL LINE_SOURCE,',
'        NULL COMPANY_NAME,',
'        NULL CREATED_DATE,',
'        0 FINAL_AMOUNT,',
'        NULL REJECT_NOTES,',
'        NULL UPDATED_DATE,',
'        NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) AS ACTUAL_AMOUNT,',
'        NVL((0 - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'        NULL BUDGET_CATEGORY,',
'        0 ORIGINAL_AMOUNT,',
'        CA.TRX_COMMITMENT_NUMBER,',
'        CA.TRX_ACTUAL_NUMBER,',
'        ca.activity as TRX_ACTIVITY,',
'        NULL AS REV_COA,',
'        NULL AS REV_PRODUCT',
'    FROM APX_BF_COMM_ACT_SUM_V CA ',
'    WHERE 1=1',
'    AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) = ''Inventory''',
'    AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = (',
'            SELECT ',
'            DEPT_NAME',
'        FROM ',
'            APX_BF_BUDGET_MONITOR_HDR',
'        WHERE',
'            ID = :P7_HEADER_ID',
'    )',
'    AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
'',
'    UNION ALL',
'',
'    SELECT ',
'        ''ADM_'' || ROWNUM AS LINK_KEY,',
'        NULL ID,',
'        NULL COA,',
'        NULL PRICE,',
'        TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) AS ACTIVITY,',
'        NULL LOCATION,',
'        NULL HEADER_ID,',
'        NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'        NULL CREATED_BY,',
'        NULL UPDATED_BY,',
'        NULL VERSION_NO,',
'        NULL COST_CENTER,',
'        CASE ',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JAN'' THEN 1',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''FEB'' THEN 2',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAR'' THEN 3',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''APR'' THEN 4',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAY'' THEN 5',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUN'' THEN 6',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUL'' THEN 7',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''AUG'' THEN 8',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''SEP'' THEN 9',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''OCT'' THEN 10',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''NOV'' THEN 11',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''DEC'' THEN 12',
'            ELSE 0',
'        END LINE_NUMBER,',
'        NULL LINE_SOURCE,',
'        NULL COMPANY_NAME,',
'        NULL CREATED_DATE,',
'        0 FINAL_AMOUNT,',
'        NULL REJECT_NOTES,',
'        NULL UPDATED_DATE,',
'        NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) AS ACTUAL_AMOUNT,',
'        NVL((0 - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'        NULL BUDGET_CATEGORY,',
'        0 ORIGINAL_AMOUNT,',
'        CA.TRX_COMMITMENT_NUMBER,',
'        CA.TRX_ACTUAL_NUMBER,',
'        ca.activity as TRX_ACTIVITY,',
'        NULL AS REV_COA,',
'        NULL AS REV_PRODUCT',
'    FROM APX_BF_COMM_ACT_SUM_V CA ',
'    WHERE 1=1',
'    AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) = ''FA Administratif''',
'    AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = (',
'            SELECT ',
'            DEPT_NAME',
'        FROM ',
'            APX_BF_BUDGET_MONITOR_HDR',
'        WHERE',
'            ID = :P7_HEADER_ID',
'    )',
'    AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
') subquery',
'WHERE (COST_CENTER IS NOT NULL OR ACTIVITY = ''Unbudgeted'')',
'    AND (BUDGET_CATEGORY IS NOT NULL OR ACTIVITY = ''Unbudgeted'')',
'    AND (ACTIVITY IS NOT NULL OR ACTIVITY = ''Unbudgeted'')',
'    AND (COA IS NOT NULL OR ACTIVITY = ''Unbudgeted'')',
'    AND (LOCATION IS NOT NULL OR ACTIVITY = ''Unbudgeted'')',
'GROUP BY ',
'    COST_CENTER, ',
'    BUDGET_CATEGORY, ',
'    ACTIVITY, ',
'    COA, ',
'    LOCATION'))
,p_source_post_processing=>'SQL'
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P7_HEADER_ID,P7_YEAR_VALUE'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_department VARCHAR2(100);',
'BEGIN',
'    v_department := :P7_DEPARTMENT_VALUE;',
'    ',
'    IF v_department IS NOT NULL AND v_department NOT LIKE ''%Marketing%Activity%'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE; ',
'    END IF;',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Summary'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32717789700805816)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'id_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32717830889805817)
,p_name=>'HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HEADER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'header_id_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32717967535805818)
,p_name=>'VERSION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERSION_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'version_no_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32718013109805819)
,p_name=>'LINE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NUMBER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'line_number_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32718140924805820)
,p_name=>'COMPANY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'company_name_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32718234386805821)
,p_name=>'COST_CENTER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST_CENTER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cost Center'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'cost_center_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32718347279805822)
,p_name=>'BUDGET_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET_CATEGORY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Budget Category'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'budget_category_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32718446950805823)
,p_name=>'COA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'COA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'coa_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32718564319805824)
,p_name=>'PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'price_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32718751687805826)
,p_name=>'ACTIVITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVITY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Activity'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'activity_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32718865753805827)
,p_name=>'LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'location_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32719464099805833)
,p_name=>'TRX_COMMITMENT_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRX_COMMITMENT_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32719511721805834)
,p_name=>'TRX_ACTUAL_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRX_ACTUAL_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32719683382805835)
,p_name=>'TRX_ACTIVITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRX_ACTIVITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32719795139805836)
,p_name=>'LINE_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_SOURCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'line_source_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32719842029805837)
,p_name=>'REJECT_NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REJECT_NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'reject_notes_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32719929036805838)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'updated_date_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32720031598805839)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'updated_by_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32720168306805840)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'created_date_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32720264220805841)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'created_by_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32720373889805842)
,p_name=>'LINK_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_KEY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32720460023805843)
,p_name=>'REV_COA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REV_COA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32720577669805844)
,p_name=>'REV_PRODUCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REV_PRODUCT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32720670707805845)
,p_name=>'SUM_OF_COMMITMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUM_OF_COMMITMENT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Commitment'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FM999G999G999G999G999'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'sum_commitment_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32720711549805846)
,p_name=>'SUM_OF_FINAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUM_OF_FINAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Final Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FM999G999G999G999G999'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'sum_final_amount_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32720808326805847)
,p_name=>'SUM_OF_ACTUAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUM_OF_ACTUAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Actual Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FM999G999G999G999G999'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'sum_actual_amount_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32720913164805848)
,p_name=>'SUM_OF_FUND_AVAILABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUM_OF_FUND_AVAILABLE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fund Available'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FM999G999G999G999G999'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'sum_fund_available_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32721026977805849)
,p_name=>'SUM_OF_ORIGINAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUM_OF_ORIGINAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Original Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FM999G999G999G999G999'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'sum_original_amount_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(32717615710805815)
,p_internal_uid=>32717615710805815
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        tooltip: {',
'            content: function(callback, model, recordMeta, colMeta, columnDef ) {',
'                var text = null;',
'                if (recordMeta && $(this).hasClass( "a-GV-rowHeader" ) ) {',
'                    if ( recordMeta.deleted ) {',
'                        text = "This record has been deleted";',
'                    } else if ( recordMeta.inserted ) {',
'                        text = "This record has been added";',
'                    } else if ( recordMeta.updated ) {',
'                        text = "This record has been changed";',
'                    }',
'                } else {',
'                    if ( columnDef && recordMeta) {',
'                        if ( columnDef.property === "COST_CENTER" ) {',
'                            text = model.getValue( recordMeta.record, "COST_CENTER" );',
'                        } else if ( columnDef.property === "BUDGET_CATEGORY" ) {',
'                            text = model.getValue( recordMeta.record, "BUDGET_CATEGORY" );',
'                        } else if ( columnDef.property === "ACTIVITY" ) {',
'                            text = model.getValue( recordMeta.record, "ACTIVITY" );',
'                        } else if ( columnDef.property === "COA" ) {',
'                            text = model.getValue( recordMeta.record, "COA" );',
'                        } else if ( columnDef.property === "LOCATION" ) {',
'                            text = model.getValue( recordMeta.record, "LOCATION" );',
'                        } else if ( columnDef.property === "ORIGINAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "ORIGINAL_AMOUNT" );',
'                        } else if ( columnDef.property === "FINAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "FINAL_AMOUNT" );',
'                        } else if ( columnDef.property === "COMMITMENT" ) {',
'                            text = model.getValue( recordMeta.record, "COMMITMENT" );',
'                        } else if ( columnDef.property === "ACTUAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "ACTUAL_AMOUNT" );',
'                        } else if ( columnDef.property === "FUND_AVAILABLE" ) {',
'                            text = model.getValue( recordMeta.record, "FUND_AVAILABLE" );',
'                        } else if ( columnDef.property === "PERIOD" ) {',
'                            text = model.getValue( recordMeta.record, "PERIOD" );',
'                        }',
'                    }',
'                    if ( colMeta && colMeta.changed ) {',
'                        if ( text !== null) {',
'                            text += "<br>";',
'                        } else {',
'                            text = "";',
'                        }',
'                        text += "This cell has been changed";',
'                    }',
'                }',
'                return text;',
'            }',
'        }',
'    };',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(32992488435462884)
,p_interactive_grid_id=>wwv_flow_imp.id(32717615710805815)
,p_static_id=>'329925'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(32992668695462909)
,p_report_id=>wwv_flow_imp.id(32992488435462884)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32993064722462980)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(32717789700805816)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32993917301463005)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(32717830889805817)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32994812190463015)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(32717967535805818)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32995708357463020)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(32718013109805819)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32996543837463025)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(32718140924805820)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32997488246463037)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(32718234386805821)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32998340535463043)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(32718347279805822)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32999268171463047)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(32718446950805823)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>194
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33000157569463051)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(32718564319805824)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33001975984463073)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(32718751687805826)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>224
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33002846091463077)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(32718865753805827)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33008245687463118)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(32719464099805833)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33009086876463122)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(32719511721805834)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33009962461463134)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(32719683382805835)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33010891990463141)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(32719795139805836)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33011708159463165)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(32719842029805837)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33012690303463174)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(32719929036805838)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33013526061463181)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(32720031598805839)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33014466410463190)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(32720168306805840)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33015323434463194)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(32720264220805841)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33016275121463200)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(32720373889805842)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33017178954463210)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(32720460023805843)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33017921192463239)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(32720577669805844)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33020150443498501)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(32720670707805845)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33021064915498506)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(32720711549805846)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>164
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33021903375498511)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(32720808326805847)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>171
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33022861888498514)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(32720913164805848)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>170
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33023701984498519)
,p_view_id=>wwv_flow_imp.id(32992668695462909)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(32721026977805849)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>180
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(32717559765805814)
,p_page_id=>7
,p_web_src_param_id=>wwv_flow_imp.id(31145171738445076)
,p_page_plug_id=>wwv_flow_imp.id(32717483661805813)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38728001913144513)
,p_plug_name=>'Budget Monitoring Lines non MA'
,p_title=>'Detail'
,p_region_name=>'monitoring_lines_non_ma'
,p_parent_plug_id=>wwv_flow_imp.id(774987944447191892)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(774628479150624817)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(31144666568445075)
,p_use_local_sync_table=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM (',
'SELECT ',
'              -- Use ID if exists, otherwise generate surrogate for linking',
'       NVL(TO_CHAR(REST.ID), ''REST_'' || ROWNUM) AS LINK_KEY, ',
'       REST.ID,',
'       REST.COA,',
'       REST.PRICE,',
'       REST.PERIOD,',
'       REST.ACTIVITY,',
'       REST.LOCATION,',
'       REST.HEADER_ID,',
'       NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'       REST.CREATED_BY,',
'       REST.UPDATED_BY,',
'       REST.VERSION_NO,',
'       REST.COST_CENTER,',
'       REST.LINE_NUMBER,',
'       REST.LINE_SOURCE,',
'       REST.COMPANY_NAME,',
'       REST.CREATED_DATE,',
'       REST.FINAL_AMOUNT,',
'       REST.REJECT_NOTES,',
'       REST.UPDATED_DATE,',
'       NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) + NVL(REV.AMOUNT, 0) AS ACTUAL_AMOUNT,',
'       NVL((REST.FINAL_AMOUNT - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) - NVL(REV.AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'       REST.BUDGET_CATEGORY,',
'       NVL((',
'           SELECT MAX(orig.ORIGINAL_AMOUNT)',
'             FROM APX_BF_BUDGET_MONITOR_LNS_V orig',
'            WHERE orig.COST_CENTER     = REST.COST_CENTER',
'              AND orig.BUDGET_CATEGORY = REST.BUDGET_CATEGORY',
'              AND orig.ACTIVITY        = REST.ACTIVITY',
'              AND orig.COA             = REST.COA',
'              AND orig.PERIOD          = REST.PERIOD',
'              AND orig.VERSION_NO      = 0',
'              AND ROWNUM = 1',
'       ), REST.ORIGINAL_AMOUNT) AS ORIGINAL_AMOUNT,',
'       CA.TRX_COMMITMENT_NUMBER,',
'       CA.TRX_ACTUAL_NUMBER,',
'       ca.activity as TRX_ACTIVITY,',
'       REV.CATEGORY AS REV_COA,',
'       REV.PRODUCT AS REV_PRODUCT',
'  FROM #APEX$SOURCE_DATA# REST',
'  JOIN APX_BF_BUDGET_MONITOR_HDR H',
'         on H.ID = :P7_HEADER_ID',
'  LEFT JOIN APX_BF_COMM_ACT_SUM_V CA',
'  ON REST.ACTIVITY = TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1))--UPPER(TRIM(REST.ACTIVITY)) = UPPER(TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)))',
'--  AND UPPER(TRIM(REGEXP_REPLACE(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2), ''[^A-Z0-9]'', '''')))',
'--      = UPPER(TRIM(REGEXP_REPLACE(H.DEPT_NAME, ''[^A-Z0-9]'', '''')))',
'     AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = H.DEPT_NAME',
'     AND SUBSTR(CA.PERIOD, 1, 3) = SUBSTR(REST.PERIOD, 1, 3)',
'     AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
' LEFT JOIN APX_BF_REVENUE_COGS_AMT_V REV',
'    ON  REGEXP_SUBSTR(REST.PRODUCT, ''^\d+'') = REV.PRODUCT',
'        AND REST.BUDGET_CATEGORY = REV.CATEGORY',
'        AND TRIM(REV.PERIOD) = TRIM(REST.PERIOD)',
' WHERE REST.HEADER_ID = :P7_HEADER_ID',
'',
' UNION ALL',
'',
' SELECT ',
'        -- Generate a unique link key for unbudgeted rows',
'       ''UNB_'' || ROWNUM AS LINK_KEY,',
'       NULL ID,',
'       NULL COA,',
'       NULL PRICE,',
'       CA.PERIOD AS PERIOD,',
'       TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) AS ACTIVITY,',
'       NULL LOCATION,',
'       NULL HEADER_ID,',
'       NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'       NULL CREATED_BY,',
'       NULL UPDATED_BY,',
'       NULL VERSION_NO,',
'       NULL COST_CENTER,',
'       CASE ',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JAN'' THEN 1',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''FEB'' THEN 2',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAR'' THEN 3',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''APR'' THEN 4',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAY'' THEN 5',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUN'' THEN 6',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUL'' THEN 7',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''AUG'' THEN 8',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''SEP'' THEN 9',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''OCT'' THEN 10',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''NOV'' THEN 11',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''DEC'' THEN 12',
'           ELSE 0',
'       END LINE_NUMBER,',
'       NULL LINE_SOURCE,',
'       NULL COMPANY_NAME,',
'       NULL CREATED_DATE,',
'       0 FINAL_AMOUNT,',
'       NULL REJECT_NOTES,',
'       NULL UPDATED_DATE,',
'       NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) AS ACTUAL_AMOUNT,',
'       NVL((0 - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'       NULL BUDGET_CATEGORY,',
'       0 ORIGINAL_AMOUNT,',
'       CA.TRX_COMMITMENT_NUMBER,',
'       CA.TRX_ACTUAL_NUMBER,',
'       ca.activity as TRX_ACTIVITY,',
'       NULL AS REV_COA,',
'       NULL AS REV_PRODUCT',
'  FROM APX_BF_COMM_ACT_SUM_V CA ',
'  WHERE 1=1',
'   AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) = ''Unbudgeted''',
'   AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = (',
'        SELECT ',
'        DEPT_NAME',
'    FROM ',
'        APX_BF_BUDGET_MONITOR_HDR',
'    WHERE',
'        ID = :P7_HEADER_ID',
'   )',
'   AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
'',
' UNION ALL',
'',
' SELECT ',
'        -- Generate a unique link key for unbudgeted rows',
'       ''INV_'' || ROWNUM AS LINK_KEY,',
'       NULL ID,',
'       NULL COA,',
'       NULL PRICE,',
'       CA.PERIOD AS PERIOD,',
'       TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) AS ACTIVITY,',
'       NULL LOCATION,',
'       NULL HEADER_ID,',
'       NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'       NULL CREATED_BY,',
'       NULL UPDATED_BY,',
'       NULL VERSION_NO,',
'       NULL COST_CENTER,',
'       CASE ',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JAN'' THEN 1',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''FEB'' THEN 2',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAR'' THEN 3',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''APR'' THEN 4',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAY'' THEN 5',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUN'' THEN 6',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUL'' THEN 7',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''AUG'' THEN 8',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''SEP'' THEN 9',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''OCT'' THEN 10',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''NOV'' THEN 11',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''DEC'' THEN 12',
'           ELSE 0',
'       END LINE_NUMBER,',
'       NULL LINE_SOURCE,',
'       NULL COMPANY_NAME,',
'       NULL CREATED_DATE,',
'       0 FINAL_AMOUNT,',
'       NULL REJECT_NOTES,',
'       NULL UPDATED_DATE,',
'       NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) AS ACTUAL_AMOUNT,',
'       NVL((0 - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'       NULL BUDGET_CATEGORY,',
'       0 ORIGINAL_AMOUNT,',
'       CA.TRX_COMMITMENT_NUMBER,',
'       CA.TRX_ACTUAL_NUMBER,',
'       ca.activity as TRX_ACTIVITY,',
'       NULL AS REV_COA,',
'       NULL AS REV_PRODUCT',
'  FROM APX_BF_COMM_ACT_SUM_V CA ',
'  WHERE 1=1',
'   AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) = ''Inventory''',
'   AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = (',
'        SELECT ',
'        DEPT_NAME',
'    FROM ',
'        APX_BF_BUDGET_MONITOR_HDR',
'    WHERE',
'        ID = :P7_HEADER_ID',
'   )',
'   AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
'',
' UNION ALL',
'',
' SELECT ',
'        -- Generate a unique link key for unbudgeted rows',
'       ''ADM_'' || ROWNUM AS LINK_KEY,',
'       NULL ID,',
'       NULL COA,',
'       NULL PRICE,',
'       CA.PERIOD AS PERIOD,',
'       TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) AS ACTIVITY,',
'       NULL LOCATION,',
'       NULL HEADER_ID,',
'       NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'       NULL CREATED_BY,',
'       NULL UPDATED_BY,',
'       NULL VERSION_NO,',
'       NULL COST_CENTER,',
'       CASE ',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JAN'' THEN 1',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''FEB'' THEN 2',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAR'' THEN 3',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''APR'' THEN 4',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAY'' THEN 5',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUN'' THEN 6',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUL'' THEN 7',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''AUG'' THEN 8',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''SEP'' THEN 9',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''OCT'' THEN 10',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''NOV'' THEN 11',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''DEC'' THEN 12',
'           ELSE 0',
'       END LINE_NUMBER,',
'       NULL LINE_SOURCE,',
'       NULL COMPANY_NAME,',
'       NULL CREATED_DATE,',
'       0 FINAL_AMOUNT,',
'       NULL REJECT_NOTES,',
'       NULL UPDATED_DATE,',
'       NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) AS ACTUAL_AMOUNT,',
'       NVL((0 - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'       NULL BUDGET_CATEGORY,',
'       0 ORIGINAL_AMOUNT,',
'       CA.TRX_COMMITMENT_NUMBER,',
'       CA.TRX_ACTUAL_NUMBER,',
'       ca.activity as TRX_ACTIVITY,',
'       NULL AS REV_COA,',
'       NULL AS REV_PRODUCT',
'  FROM APX_BF_COMM_ACT_SUM_V CA ',
'  WHERE 1=1',
'   AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) = ''FA Administratif''',
'   AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = (',
'        SELECT ',
'        DEPT_NAME',
'    FROM ',
'        APX_BF_BUDGET_MONITOR_HDR',
'    WHERE',
'        ID = :P7_HEADER_ID',
'   )',
'   AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
' ORDER BY LINE_NUMBER ASC',
'',
' )',
' ORDER BY ',
'    ACTIVITY,',
'    TO_NUMBER(',
'        CASE ',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''JAN'' THEN 1',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''FEB'' THEN 2',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''MAR'' THEN 3',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''APR'' THEN 4',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''MAY'' THEN 5',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''JUN'' THEN 6',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''JUL'' THEN 7',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''AUG'' THEN 8',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''SEP'' THEN 9',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''OCT'' THEN 10',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''NOV'' THEN 11',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''DEC'' THEN 12',
'            ELSE 0',
'        END',
'    ),',
'    SUBSTR(PERIOD, -2)  -- ensures proper year order (e.g., 24, 25, 26)'))
,p_source_post_processing=>'SQL'
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P7_HEADER_ID,P7_YEAR_VALUE'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_department VARCHAR2(100);',
'BEGIN',
'    v_department := :P7_DEPARTMENT_VALUE;',
'    ',
'    IF v_department IS NOT NULL AND v_department NOT LIKE ''%Marketing%Activity%'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE; ',
'    END IF;',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detail'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2415105718721222)
,p_name=>'TRX_COMMITMENT_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRX_COMMITMENT_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2415229509721223)
,p_name=>'TRX_ACTUAL_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRX_ACTUAL_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2415364025721224)
,p_name=>'TRX_ACTIVITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRX_ACTIVITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29988823510541101)
,p_name=>'LINK_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_KEY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29990651509541119)
,p_name=>'REV_COA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REV_COA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29990774409541120)
,p_name=>'REV_PRODUCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REV_PRODUCT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31093197375431243)
,p_name=>'PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'price_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31093358237431244)
,p_name=>'PERIOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIOD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Period'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'period_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31093380528431245)
,p_name=>'ACTIVITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVITY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Activity'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'activity_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31093566492431246)
,p_name=>'LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'location_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31093597414431247)
,p_name=>'HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HEADER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'header_id_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31093676167431248)
,p_name=>'COMMITMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMITMENT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Commitment'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_ACTIVITY_TRX,P5_ACTUAL_TRX,P5_COMMITMENT_TRX,P5_PERIOD_TRX,P5_REV_COA:\&TRX_ACTIVITY.\,,&TRX_COMMITMENT_NUMBER.,&PERIOD.,'
,p_link_text=>'&COMMITMENT.'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'commitment_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31093850421431249)
,p_name=>'COST_CENTER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST_CENTER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cost Center'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'cost_center_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31093887869431250)
,p_name=>'LINE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NUMBER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'line_number_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31094011527431251)
,p_name=>'FINAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FINAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Final Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'final_amount_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31094080090431252)
,p_name=>'ACTUAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Actual Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_ACTIVITY_TRX,P5_ACTUAL_TRX,P5_COMMITMENT_TRX,P5_PERIOD_TRX,P5_REV_COA,P5_REV_PRODUCT,P5_REV_CATEGORY,P5_ACTIVITY_REV:\&TRX_ACTIVITY.\,&TRX_ACTUAL_NUMBER.,,&PERIOD.,&REV_COA.,&REV_PRODUCT.,&BUDGET_CATEGORY.,&ACTIV'
||'ITY.'
,p_link_text=>'&ACTUAL_AMOUNT.'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'actual_amount_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31094193012431253)
,p_name=>'FUND_AVAILABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FUND_AVAILABLE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fund Available'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'fund_available_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31094318526431254)
,p_name=>'BUDGET_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET_CATEGORY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Budget Category'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'budget_category_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31094390839431255)
,p_name=>'ORIGINAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORIGINAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Original Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'original_amount_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38728168773144515)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'id_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38728933884144523)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'created_by_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38729044888144524)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'updated_by_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38729583489144529)
,p_name=>'COMPANY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'company_name_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38729697241144530)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'created_date_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38729929534144533)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'updated_date_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(39494681957236323)
,p_name=>'COA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'COA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'coa_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(39495359495236330)
,p_name=>'VERSION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERSION_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'version_no_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(39495641994236333)
,p_name=>'LINE_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_SOURCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'line_source_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(39495911771236335)
,p_name=>'REJECT_NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REJECT_NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'reject_notes_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(38728062870144514)
,p_internal_uid=>7849636480417910
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        tooltip: {',
'            content: function(callback, model, recordMeta, colMeta, columnDef ) {',
'                var text = null;',
'                if (recordMeta && $(this).hasClass( "a-GV-rowHeader" ) ) {',
'                    if ( recordMeta.deleted ) {',
'                        text = "This record has been deleted";',
'                    } else if ( recordMeta.inserted ) {',
'                        text = "This record has been added";',
'                    } else if ( recordMeta.updated ) {',
'                        text = "This record has been changed";',
'                    }',
'                } else {',
'                    if ( columnDef && recordMeta) {',
'                        if ( columnDef.property === "COST_CENTER" ) {',
'                            text = model.getValue( recordMeta.record, "COST_CENTER" );',
'                        } else if ( columnDef.property === "BUDGET_CATEGORY" ) {',
'                            text = model.getValue( recordMeta.record, "BUDGET_CATEGORY" );',
'                        } else if ( columnDef.property === "ACTIVITY" ) {',
'                            text = model.getValue( recordMeta.record, "ACTIVITY" );',
'                        } else if ( columnDef.property === "COA" ) {',
'                            text = model.getValue( recordMeta.record, "COA" );',
'                        } else if ( columnDef.property === "LOCATION" ) {',
'                            text = model.getValue( recordMeta.record, "LOCATION" );',
'                        } else if ( columnDef.property === "ORIGINAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "ORIGINAL_AMOUNT" );',
'                        } else if ( columnDef.property === "FINAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "FINAL_AMOUNT" );',
'                        } else if ( columnDef.property === "COMMITMENT" ) {',
'                            text = model.getValue( recordMeta.record, "COMMITMENT" );',
'                        } else if ( columnDef.property === "ACTUAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "ACTUAL_AMOUNT" );',
'                        } else if ( columnDef.property === "FUND_AVAILABLE" ) {',
'                            text = model.getValue( recordMeta.record, "FUND_AVAILABLE" );',
'                        } else if ( columnDef.property === "PERIOD" ) {',
'                            text = model.getValue( recordMeta.record, "PERIOD" );',
'                        }',
'                    }',
'                    if ( colMeta && colMeta.changed ) {',
'                        if ( text !== null) {',
'                            text += "<br>";',
'                        } else {',
'                            text = "";',
'                        }',
'                        text += "This cell has been changed";',
'                    }',
'                }',
'                return text;',
'            }',
'        }',
'    };',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(38798263665781919)
,p_interactive_grid_id=>wwv_flow_imp.id(38728062870144514)
,p_static_id=>'79199'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(38798517743781919)
,p_report_id=>wwv_flow_imp.id(38798263665781919)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29030230021002468)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(2415105718721222)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29031193569002488)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(2415229509721223)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29032014248002490)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(2415364025721224)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29994547161545699)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(29988823510541101)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31085246566391326)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(29990651509541119)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31086025360391341)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(29990774409541120)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31147224798468896)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(31093197375431243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31148167243468899)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(31093358237431244)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31148989933468903)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(31093380528431245)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>224
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31149949398468909)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(31093566492431246)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>167
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31150835957468914)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(31093597414431247)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31151670564468920)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(31093676167431248)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31152657511468926)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(31093850421431249)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31153519865468932)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(31093887869431250)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31154425379468938)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(31094011527431251)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31155302167468944)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(31094080090431252)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>127.333
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31156181885468949)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(31094193012431253)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>135.323
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31157146087468954)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(31094318526431254)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31157950524468960)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(31094390839431255)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38799021901781917)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(38728168773144515)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38806093461781888)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(38728933884144523)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>164.5625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38806968888781884)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(38729044888144524)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122.5625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38811433885781867)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(38729583489144529)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107.5625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38812417288781863)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(38729697241144530)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116.5625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38815087353781853)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(38729929534144533)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>133.562
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39547059599999897)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(39494681957236323)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>179
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39553276406999840)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(39495359495236330)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39555950181999823)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(39495641994236333)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>254.66665649414062
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39557775189999811)
,p_view_id=>wwv_flow_imp.id(38798517743781919)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(39495911771236335)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(31094533756431256)
,p_page_id=>7
,p_web_src_param_id=>wwv_flow_imp.id(31145171738445076)
,p_page_plug_id=>wwv_flow_imp.id(38728001913144513)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(775030839066790066)
,p_plug_name=>'Budget Lines'
,p_parent_plug_id=>wwv_flow_imp.id(774987944447191892)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(774628479150624817)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ROW_NUMBER() OVER (ORDER BY m.ID) AS LINE_NUMBER,',
'    m.ID,',
'    m.HEADER_ID,',
'    m.VERSION_NO,',
'    m.COST_CENTER,',
'    m.BUDGET_CATEGORY,',
'    m.ACTIVITY,',
'    m.COA,',
'    m.LOCATION,',
'    ',
'    NVL((',
'        SELECT MAX(orig.ORIGINAL_AMOUNT)',
'        FROM APX_BF_BUDGET_MONITOR_LNS_V orig',
'        WHERE orig.COST_CENTER = m.COST_CENTER',
'          AND orig.BUDGET_CATEGORY = m.BUDGET_CATEGORY',
'          AND orig.ACTIVITY = m.ACTIVITY',
'          AND orig.COA = m.COA',
'          AND orig.PERIOD = m.PERIOD',
'          AND orig.VERSION_NO = 0',
'          AND ROWNUM = 1',
'    ), m.ORIGINAL_AMOUNT) AS ORIGINAL_AMOUNT,',
'',
'    -- Ambil dari view jika ada',
'    NVL(v.COMMITMENT, m.COMMITMENT) AS COMMITMENT,',
'    COALESCE(a.FINAL_AMOUNT, m.FINAL_AMOUNT) AS FINAL_AMOUNT,',
'',
'    -- Ambil dari view jika ada',
'    NVL(v.ACTUAL_AMOUNT, m.ACTUAL_USAGE) AS ACTUAL_USAGE,',
'',
'    -- Perhitungan manual Fund Available',
'    (',
'        COALESCE(a.FINAL_AMOUNT, m.FINAL_AMOUNT)',
'        - NVL(v.COMMITMENT, m.COMMITMENT)',
'        - NVL(v.ACTUAL_AMOUNT, m.ACTUAL_USAGE)',
'    ) AS FUND_AVAILABLE,',
'',
'    SUBSTR(m.PERIOD, 1, 3) || ''-'' || SUBSTR(m.PERIOD, -2) AS PERIOD,',
'    m.REJECT_NOTES,',
'    m.UPDATED_DATE,',
'    m.UPDATED_BY,',
'    m.CREATED_DATE,',
'    m.CREATED_BY,',
'    m.LINE_SOURCE,',
'    m.ACTIVITY_CODE',
'',
'FROM ',
'    APX_BF_BUDGET_MONITOR_LNS_V m',
'',
'LEFT JOIN ',
'    APX_BF_BUDGET_ALLOCATE a ON m.HEADER_ID = a.HEADER_ID',
'                            AND m.COST_CENTER = a.COST_CENTER',
'                            AND m.BUDGET_CATEGORY = a.BUDGET_CATEGORY',
'                            AND m.ACTIVITY = a.ACTIVITY',
'                            AND m.COA = a.COA',
'                            AND m.PERIOD = a.PERIOD_ORIGINAL',
'',
'LEFT JOIN ',
'    APX_BF_BUDGET_ENTRY_LNS l ON m.HEADER_ID = l.HEADER_ID',
'                            AND m.COST_CENTER = l.COST_CENTER',
'                            AND m.BUDGET_CATEGORY = a.BUDGET_CATEGORY',
'                            AND m.ACTIVITY = l.ACTIVITY',
'                            AND m.COA = l.COA',
'                            AND m.PERIOD = l.PERIOD',
'',
'-- JOIN ke View yang menampilkan nilai Commitment dan Actual',
'LEFT JOIN ',
'    XTD_BRF_BUDGET_MON_V v ON v.ACTIVITY = m.ACTIVITY_CODE',
'',
'WHERE ',
'    m.HEADER_ID = :P7_HEADER_ID',
'    AND m.VERSION_NO = (',
'        SELECT MAX(VERSION_NO) ',
'        FROM APX_BF_BUDGET_MONITOR_LNS_V ',
'        WHERE HEADER_ID = :P7_HEADER_ID',
'    )',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Budget Lines'
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
,p_required_patch=>wwv_flow_imp.id(774534465922624458)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631839704220756660)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631839948143756663)
,p_name=>'VERSION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERSION_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Version No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631840054515756664)
,p_name=>'ACTIVITY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVITY_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Activity Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631840502243756668)
,p_name=>'COA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Coa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>512
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631840917753756673)
,p_name=>'REJECT_NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REJECT_NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reject Notes'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>512
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631842518232756689)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Created Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631842690651756690)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631842757431756691)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Updated Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631842823116756692)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>330
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631843192227756695)
,p_name=>'LINE_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_SOURCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Line Source'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>360
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631844088261756704)
,p_name=>'LINE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NUMBER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Line Number'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>370
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631844126262756705)
,p_name=>'HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HEADER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Header Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>380
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631844228867756706)
,p_name=>'COST_CENTER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST_CENTER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cost Center'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>390
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631844407802756707)
,p_name=>'BUDGET_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET_CATEGORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Budget Category'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>400
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631844427527756708)
,p_name=>'ACTIVITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Activity'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>410
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631890074990925659)
,p_name=>'LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>420
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631890127394925660)
,p_name=>'ORIGINAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORIGINAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Original Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>430
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631890246483925661)
,p_name=>'COMMITMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMITMENT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Commitment'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>440
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631890319480925662)
,p_name=>'FINAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FINAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Final Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>450
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631890466638925663)
,p_name=>'ACTUAL_USAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_USAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Actual Usage'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>460
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631890533650925664)
,p_name=>'FUND_AVAILABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FUND_AVAILABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fund Available'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>470
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(631890687519925665)
,p_name=>'PERIOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIOD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Period'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>480
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>6
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(631839585587756659)
,p_internal_uid=>593340277184116101
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(631845916353793921)
,p_interactive_grid_id=>wwv_flow_imp.id(631839585587756659)
,p_static_id=>'5933467'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(631846111328793921)
,p_report_id=>wwv_flow_imp.id(631845916353793921)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631846644252793930)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(631839704220756660)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631849308521793940)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(631839948143756663)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631850241187793943)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(631840054515756664)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631853864101793953)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(631840502243756668)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631858374923793969)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(631840917753756673)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631872696531794016)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(631842518232756689)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631873510926794019)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(631842690651756690)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631874463991794023)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(631842757431756691)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631875339421794026)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(631842823116756692)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631878092944794034)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(631843192227756695)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631896061693926031)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(631844088261756704)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631896938797926039)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(631844126262756705)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631897870801926043)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(631844228867756706)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631898746847926046)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(631844407802756707)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631899694536926050)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>42
,p_column_id=>wwv_flow_imp.id(631844427527756708)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631900530907926054)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(631890074990925659)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631901464577926057)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>44
,p_column_id=>wwv_flow_imp.id(631890127394925660)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631902403452926061)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>45
,p_column_id=>wwv_flow_imp.id(631890246483925661)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631903240203926064)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(631890319480925662)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631904158979926068)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(631890466638925663)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631905098194926071)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>48
,p_column_id=>wwv_flow_imp.id(631890533650925664)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(631905899982926074)
,p_view_id=>wwv_flow_imp.id(631846111328793921)
,p_display_seq=>49
,p_column_id=>wwv_flow_imp.id(631890687519925665)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(775028646594570295)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(774650625947624824)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(774535014358624480)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(774713089463624929)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29989103389541104)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(775028646594570295)
,p_button_name=>'LAST_SYNC'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(774711513981624922)
,p_button_image_alt=>'Last refresh: &P7_LAST_SYNC_TIME.'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_department VARCHAR2(100);',
'BEGIN',
'    begin',
'        SELECT ',
'            DEPT_NAME into v_department',
'        FROM ',
'            APX_BF_BUDGET_MONITOR_HDR',
'        WHERE',
'            ID = :P7_HEADER_ID;',
'        ',
'        exception when others then null;',
'    end;',
'    ',
'    IF v_department IS NOT NULL and :P7_LAST_SYNC_TIME is not null AND v_department NOT LIKE ''%Marketing%Activity%'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE; ',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'apex_disabled'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31027894914003339)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31027814981003338)
,p_button_name=>'Back'
,p_button_static_id=>'back_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(774711525627624923)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:7,6::'
,p_icon_css_classes=>'fa-arrow-circle-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29989063458541103)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(775028646594570295)
,p_button_name=>'BUTTON_SYNC'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(774711525627624923)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'NEXT'
,p_show_processing=>'Y'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_department VARCHAR2(100);',
'BEGIN',
'    begin',
'        SELECT ',
'            DEPT_NAME into v_department',
'        FROM ',
'            APX_BF_BUDGET_MONITOR_HDR',
'        WHERE',
'            ID = :P7_HEADER_ID;',
'        ',
'        exception when others then null;',
'    end;',
'    ',
'    IF v_department IS NOT NULL AND v_department NOT LIKE ''%Marketing%Activity%'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE; ',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29989290805541105)
,p_name=>'P7_LAST_SYNC_TIME'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774985534775191868)
,p_name=>'P7_HEADER_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774985671958191869)
,p_name=>'P7_COMPANY_ID'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774985808822191870)
,p_name=>'P7_LEDGER_ID'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774985845167191871)
,p_name=>'P7_CHART_OF_ACCOUNTS_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774985932877191872)
,p_name=>'P7_TEXT_COLOR'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774986098648191873)
,p_name=>'P7_BACKGROUND_COLOR'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774986309056191875)
,p_name=>'P7_BATCH_NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(774986215531191874)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Batch Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(774708951888624906)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774986379182191876)
,p_name=>'P7_BUDGET_TYPE_VALUE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(774986215531191874)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    BUDGET_TYPE',
'FROM ',
'    APX_BF_BUDGET_MONITOR_HDR',
'WHERE',
'    ID = :P7_HEADER_ID',
';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(774708951888624906)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774986487540191877)
,p_name=>'P7_BUDGET_TYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(774986215531191874)
,p_prompt=>'Budget Type'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(774708951888624906)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774986529353191878)
,p_name=>'P7_DEPARTMENT_VALUE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(774986215531191874)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    DEPT_NAME',
'FROM ',
'    APX_BF_BUDGET_MONITOR_HDR',
'WHERE',
'    ID = :P7_HEADER_ID',
';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(774708951888624906)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774986677015191879)
,p_name=>'P7_DEPARTMENT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(774986215531191874)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(774708951888624906)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774986749014191880)
,p_name=>'P7_YEAR_VALUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(774986215531191874)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    YEAR',
'FROM ',
'    APX_BF_BUDGET_MONITOR_HDR',
'WHERE',
'    ID = :P7_HEADER_ID',
';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(774708951888624906)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774986826551191881)
,p_name=>'P7_YEAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(774986215531191874)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(774708951888624906)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774986984336191882)
,p_name=>'P7_COMPANY_VALUE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(774986215531191874)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    COMPANY_NAME',
'FROM ',
'    APX_BF_BUDGET_MONITOR_HDR',
'WHERE',
'    ID = :P7_HEADER_ID',
'And BATCH_NO = :P7_BATCH_NUMBER_VALUE',
';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(774708951888624906)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774987113897191883)
,p_name=>'P7_COMPANY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(774986215531191874)
,p_prompt=>'Company'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(774708951888624906)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774987138924191884)
,p_name=>'P7_LATEST_VERSION_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(774986215531191874)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    LATEST_VERSION',
'FROM ',
'    APX_BF_BUDGET_MONITOR_HDR',
'WHERE',
'    ID = :P7_HEADER_ID',
';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(774708951888624906)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774987235626191885)
,p_name=>'P7_LATEST_VERSION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(774986215531191874)
,p_prompt=>'Latest Version'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(774708951888624906)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774987390747191886)
,p_name=>'P7_BATCH_NUMBER_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(774986215531191874)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    BATCH_NO',
'FROM ',
'    APX_BF_BUDGET_MONITOR_HDR',
'WHERE',
'    ID = :P7_HEADER_ID',
';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(774708951888624906)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774987512167191887)
,p_name=>'P7_SEGMENT_ACCOUNT_V'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774987775980191890)
,p_name=>'P7_SUM_ORIGINAL_AMOUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(774987696720191889)
,p_prompt=>'Total Budget'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(774708951888624906)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774987855186191891)
,p_name=>'P7_SUM_ORIGINAL_AMOUNT_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(774987696720191889)
,p_prompt=>'&P7_SUM_ORIGINAL_AMOUNT.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(774708951888624906)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(774988101864191893)
,p_name=>'P7_DELETE_SELECTED_ROWS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(774987944447191892)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29989439536541107)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Synchronize Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 10/20/2025 3:47:25 AM (QP5 v5.362) */',
'DECLARE',
'    v_dept_name    APX_BF_BUDGET_MONITOR_HDR.DEPT_NAME%TYPE;',
'    v_header_id    NUMBER := :P7_HEADER_ID;',
'    v_year_value   VARCHAR2 (50);',
'    v_count        NUMBER;',
'BEGIN',
'    -------------------------------------------------------------------------',
'    -- STEP 0: Get department name',
'    -------------------------------------------------------------------------',
'    BEGIN',
'        SELECT DEPT_NAME, YEAR',
'          INTO v_dept_name, v_year_value',
'          FROM APX_BF_BUDGET_MONITOR_HDR',
'         WHERE ID = v_header_id;',
'',
'        apex_debug.MESSAGE (',
'            ''Step 0: Department name fetched successfully: %s | Year: %s'',',
'            v_dept_name,',
'            v_year_value);',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND',
'        THEN',
'            apex_debug.MESSAGE (',
'                ''Step 0: No department found for HEADER_ID = %s'',',
'                v_header_id);',
'            RAISE;',
'        WHEN OTHERS',
'        THEN',
'            apex_debug.MESSAGE (''Step 0: Error fetching department name: %s'',',
'                                SQLERRM);',
'            RAISE;',
'    END;',
'',
'    -------------------------------------------------------------------------',
'    -- STEP 1: Mark existing records in main table as ''Sync''',
'    -------------------------------------------------------------------------',
'    BEGIN',
'        UPDATE APX_BF_COMM_ACT_AMT',
'           SET SYNC_STATUS = ''Sync''',
'         WHERE     DEPT_NAME_SYNC = v_dept_name',
'               AND SUBSTR (PERIOD, -2) = SUBSTR (v_year_value, -2);',
'',
'        apex_debug.MESSAGE (''Step 1: Updated main table to Sync: %s row(s)'',',
'                            SQL%ROWCOUNT);',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            apex_debug.MESSAGE (''Step 1: Error updating Sync status: %s'',',
'                                SQLERRM);',
'            RAISE;',
'    END;',
'',
'    -------------------------------------------------------------------------',
'    -- STEP 2: Clean up old staging data',
'    -------------------------------------------------------------------------',
'    BEGIN',
'        DELETE APX_BF_COMM_ACT_AMT_STG',
'         WHERE     DEPT_NAME_SYNC = v_dept_name',
'               AND SUBSTR (PERIOD, -2) = SUBSTR (v_year_value, -2);',
'',
'        apex_debug.MESSAGE (''Step 2: Deleted old staging data: %s row(s)'',',
'                            SQL%ROWCOUNT);',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            apex_debug.MESSAGE (',
'                ''Step 2: Error deleting old staging data: %s'',',
'                SQLERRM);',
'            RAISE;',
'    END;',
'',
'    -------------------------------------------------------------------------',
'    -- STEP 3: Insert new data into staging table',
'    -------------------------------------------------------------------------',
'    BEGIN',
'        INSERT INTO APX_BF_COMM_ACT_AMT_STG (COMPANY,',
'                                             SOURCE,',
'                                             SOURCE_STATUS,',
'                                             ACTIVITY,',
'                                             COMMITMENT,',
'                                             ACTUAL_AMOUNT,',
'                                             PERIOD,',
'                                             PR_QUANTITY,',
'                                             PO_QUANTITY,',
'                                             RECEIPT_QUANTITY,',
'                                             INVOICED_QUANTITY,',
'                                             PR_COMMITMENT,',
'                                             PO_COMMITMENT,',
'                                             RCV_ACTUAL,',
'                                             INVOICE_ACTUAL,',
'                                             GL_MANUAL_ACTUAL,',
'                                             AR_INVOICE_ACTUAL,',
'                                             AR_MISC_ACTUAL,',
'                                             INVENTORY_ACTUAL,',
'                                             PR_NUMBER,',
'                                             PO_NUMBER,',
'                                             RCV_NUMBER,',
'                                             INVOICE_NUMBER,',
'                                             INVENTORY_NUMBER,',
'                                             JOURNAL_NAME,',
'                                             JOURNAL_BATCH,',
'                                             JOURNAL_LINE_DESC,',
'                                             AR_INVOICE_NUM,',
'                                             AR_MISC_RECEIPT,',
'                                             REQ_HEADER_ID,',
'                                             REQ_LINE_ID,',
'                                             REQ_DISTRIBUTION_ID,',
'                                             PO_HEADER_ID,',
'                                             PO_LINE_ID,',
'                                             PO_DISTRIBUTION_ID,',
'                                             PO_STATUS,',
'                                             RCV_ID,',
'                                             TRANSACTION_ID,',
'                                             INVOICE_ID,',
'                                             INVOICE_LINE_NUM,',
'                                             INVOICE_DISTRIBUTION_ID,',
'                                             JE_HEADER_ID,',
'                                             INVENTORY_TRX_ID,',
'                                             INV_ACTUAL_COST,',
'                                             INV_QUANTITY,',
'                                             INV_TRX_NUMBER,',
'                                             INV_DESC,',
'                                             INV_TRX_TYPE,',
'                                             INV_SOURCE_NAME,',
'                                             AR_TRX_NUMBER,',
'                                             AR_UNIT_PRICE,',
'                                             AR_UNIT_QUANTITY,',
'                                             AR_TOTAL_AMOUNT,',
'                                             AR_MISC_TRX_ID,',
'                                             AR_MISC_STATUS,',
'                                             AR_MISC_COMMENT,',
'                                             FA_DEPRN_AMOUNT,',
'                                             FA_ASSET_ID,',
'                                             FA_DISTRIBUTION_ID,',
'                                             FA_INVOICE_ID,',
'                                             FA_ITEM_DESC,',
'                                             OPM_ADJ_ID,',
'                                             OPM_ADJUST_QTY,',
'                                             OPM_ADJUST_COST,',
'                                             OPM_COST_TYPE_ID,',
'                                             OPM_DESCRIPTION,',
'                                             OPM_ITEM,',
'                                             OPM_PERIOD,',
'                                             LAST_SYNCHRONIZED,',
'                                             DEPT_NAME_SYNC,',
'                                             SYNC_STATUS)',
'            SELECT base.company,',
'                   base.source,',
'                   base.source_status,',
'                   base.activity,',
'                   base.commitment,',
'                   base.actual_amount,',
'                   base.period,',
'                   base.pr_quantity,',
'                   base.po_quantity,',
'                   base.receipt_quantity,',
'                   base.invoiced_quantity,',
'                   base.pr_commitment,',
'                   base.po_commitment,',
'                   base.rcv_actual,',
'                   base.invoice_actual,',
'                   base.gl_manual_actual,',
'                   base.ar_invoice_actual,',
'                   base.ar_misc_actual,',
'                   base.inventory_actual,',
'                   base.pr_number,',
'                   base.po_number,',
'                   base.rcv_number,',
'                   base.invoice_number,',
'                   base.inventory_number,',
'                   base.journal_name,',
'                   base.journal_batch,',
'                   base.journal_line_desc,',
'                   base.ar_invoice_num,',
'                   base.ar_misc_receipt,',
'                   base.req_header_id,',
'                   base.req_line_id,',
'                   base.req_distribution_id,',
'                   base.po_header_id,',
'                   base.po_line_id,',
'                   base.po_distribution_id,',
'                   base.po_status,',
'                   base.rcv_id,',
'                   base.transaction_id,',
'                   base.invoice_id,',
'                   base.invoice_line_num,',
'                   base.invoice_distribution_id,',
'                   base.je_header_id,',
'                   base.inventory_trx_id,',
'                   base.inv_actual_cost,',
'                   base.inv_quantity,',
'                   base.inv_trx_number,',
'                   base.inv_desc,',
'                   base.inv_trx_type,',
'                   base.inv_source_name,',
'                   base.ar_trx_number,',
'                   base.ar_unit_price,',
'                   base.ar_unit_quantity,',
'                   base.ar_total_amount,',
'                   base.ar_misc_trx_id,',
'                   base.ar_misc_status,',
'                   base.ar_misc_comment,',
'                   base.fa_deprn_amount,',
'                   base.fa_asset_id,',
'                   base.fa_distribution_id,',
'                   base.fa_invoice_id,',
'                   base.fa_item_desc,',
'                   base.opm_adj_id,',
'                   base.opm_adjust_qty,',
'                   base.opm_adjust_cost,',
'                   base.opm_cost_type_id,',
'                   base.opm_description,',
'                   base.opm_item,',
'                   base.opm_period,',
'                   SYSTIMESTAMP,',
'                   TRIM (REGEXP_SUBSTR (base.ACTIVITY,',
'                                        ''[^|]+'',',
'                                        1,',
'                                        2))    AS dept_name_sync,',
'                   ''Ready''',
'              FROM apps.xtd_bf_comm_act_amt_v base',
'             WHERE     UPPER (TRIM (REGEXP_SUBSTR (base.ACTIVITY,',
'                                                   ''[^|]+'',',
'                                                   1,',
'                                                   2))) =',
'                       UPPER (TRIM (v_dept_name))',
'                   AND SUBSTR (base.PERIOD, -2) = SUBSTR (v_year_value, -2);',
'',
'        v_count := SQL%ROWCOUNT;',
'        apex_debug.MESSAGE (',
'            ''Step 3: Inserted into STG: %s row(s) for dept %s, period %s'',',
'            v_count,',
'            v_dept_name,',
'            v_year_value);',
'',
'        IF v_count = 0',
'        THEN',
'            apex_debug.MESSAGE (',
'                ''Step 3 WARNING: No data found for dept=%s period=%s'',',
'                v_dept_name,',
'                v_year_value);',
'        END IF;',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            apex_debug.MESSAGE (''Step 3 ERROR: Insert into STG failed: %s'',',
'                                SQLERRM);',
'            RAISE;',
'    END;',
'',
'    -------------------------------------------------------------------------',
'    -- STEP 4: Delete old main data marked as ''Sync''',
'    -------------------------------------------------------------------------',
'    BEGIN',
'        DELETE APX_BF_COMM_ACT_AMT',
'         WHERE     SYNC_STATUS = ''Sync''',
'               AND DEPT_NAME_SYNC = v_dept_name',
'               AND SUBSTR (PERIOD, -2) = SUBSTR (v_year_value, -2);',
'',
'        apex_debug.MESSAGE (''Step 4: Deleted old main table data: %s row(s)'',',
'                            SQL%ROWCOUNT);',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            apex_debug.MESSAGE (''Step 4: Error deleting old main data: %s'',',
'                                SQLERRM);',
'            RAISE;',
'    END;',
'',
'    -------------------------------------------------------------------------',
'    -- STEP 5: Insert from staging to main table',
'    -------------------------------------------------------------------------',
'    BEGIN',
'        INSERT INTO APX_BF_COMM_ACT_AMT (COMPANY,',
'                                         SOURCE,',
'                                         SOURCE_STATUS,',
'                                         ACTIVITY,',
'                                         COMMITMENT,',
'                                         ACTUAL_AMOUNT,',
'                                         PERIOD,',
'                                         PR_QUANTITY,',
'                                         PO_QUANTITY,',
'                                         RECEIPT_QUANTITY,',
'                                         INVOICED_QUANTITY,',
'                                         PR_COMMITMENT,',
'                                         PO_COMMITMENT,',
'                                         RCV_ACTUAL,',
'                                         INVOICE_ACTUAL,',
'                                         GL_MANUAL_ACTUAL,',
'                                         AR_INVOICE_ACTUAL,',
'                                         AR_MISC_ACTUAL,',
'                                         INVENTORY_ACTUAL,',
'                                         PR_NUMBER,',
'                                         PO_NUMBER,',
'                                         RCV_NUMBER,',
'                                         INVOICE_NUMBER,',
'                                         INVENTORY_NUMBER,',
'                                         JOURNAL_NAME,',
'                                         JOURNAL_BATCH,',
'                                         JOURNAL_LINE_DESC,',
'                                         AR_INVOICE_NUM,',
'                                         AR_MISC_RECEIPT,',
'                                         REQ_HEADER_ID,',
'                                         REQ_LINE_ID,',
'                                         REQ_DISTRIBUTION_ID,',
'                                         PO_HEADER_ID,',
'                                         PO_LINE_ID,',
'                                         PO_DISTRIBUTION_ID,',
'                                         PO_STATUS,',
'                                         RCV_ID,',
'                                         TRANSACTION_ID,',
'                                         INVOICE_ID,',
'                                         INVOICE_LINE_NUM,',
'                                         INVOICE_DISTRIBUTION_ID,',
'                                         JE_HEADER_ID,',
'                                         INVENTORY_TRX_ID,',
'                                         INV_ACTUAL_COST,',
'                                         INV_QUANTITY,',
'                                         INV_TRX_NUMBER,',
'                                         INV_DESC,',
'                                         INV_TRX_TYPE,',
'                                         INV_SOURCE_NAME,',
'                                         AR_TRX_NUMBER,',
'                                         AR_UNIT_PRICE,',
'                                         AR_UNIT_QUANTITY,',
'                                         AR_TOTAL_AMOUNT,',
'                                         AR_MISC_TRX_ID,',
'                                         AR_MISC_STATUS,',
'                                         AR_MISC_COMMENT,',
'                                         FA_DEPRN_AMOUNT,',
'                                         FA_ASSET_ID,',
'                                         FA_DISTRIBUTION_ID,',
'                                         FA_INVOICE_ID,',
'                                         FA_ITEM_DESC,',
'                                         OPM_ADJ_ID,',
'                                         OPM_ADJUST_QTY,',
'                                         OPM_ADJUST_COST,',
'                                         OPM_COST_TYPE_ID,',
'                                         OPM_DESCRIPTION,',
'                                         OPM_ITEM,',
'                                         OPM_PERIOD,',
'                                         LAST_SYNCHRONIZED,',
'                                         DEPT_NAME_SYNC,',
'                                         STAGE_ID_SYNC,',
'                                         SYNC_STATUS)',
'            SELECT base.company,',
'                   base.source,',
'                   base.source_status,',
'                   base.activity,',
'                   base.commitment,',
'                   base.actual_amount,',
'                   base.period,',
'                   base.pr_quantity,',
'                   base.po_quantity,',
'                   base.receipt_quantity,',
'                   base.invoiced_quantity,',
'                   base.pr_commitment,',
'                   base.po_commitment,',
'                   base.rcv_actual,',
'                   base.invoice_actual,',
'                   base.gl_manual_actual,',
'                   base.ar_invoice_actual,',
'                   base.ar_misc_actual,',
'                   base.inventory_actual,',
'                   base.pr_number,',
'                   base.po_number,',
'                   base.rcv_number,',
'                   base.invoice_number,',
'                   base.inventory_number,',
'                   base.journal_name,',
'                   base.journal_batch,',
'                   base.journal_line_desc,',
'                   base.ar_invoice_num,',
'                   base.ar_misc_receipt,',
'                   base.req_header_id,',
'                   base.req_line_id,',
'                   base.req_distribution_id,',
'                   base.po_header_id,',
'                   base.po_line_id,',
'                   base.po_distribution_id,',
'                   base.po_status,',
'                   base.rcv_id,',
'                   base.transaction_id,',
'                   base.invoice_id,',
'                   base.invoice_line_num,',
'                   base.invoice_distribution_id,',
'                   base.je_header_id,',
'                   base.inventory_trx_id,',
'                   base.inv_actual_cost,',
'                   base.inv_quantity,',
'                   base.inv_trx_number,',
'                   base.inv_desc,',
'                   base.inv_trx_type,',
'                   base.inv_source_name,',
'                   base.ar_trx_number,',
'                   base.ar_unit_price,',
'                   base.ar_unit_quantity,',
'                   base.ar_total_amount,',
'                   base.ar_misc_trx_id,',
'                   base.ar_misc_status,',
'                   base.ar_misc_comment,',
'                   base.fa_deprn_amount,',
'                   base.fa_asset_id,',
'                   base.fa_distribution_id,',
'                   base.fa_invoice_id,',
'                   base.fa_item_desc,',
'                   base.opm_adj_id,',
'                   base.opm_adjust_qty,',
'                   base.opm_adjust_cost,',
'                   base.opm_cost_type_id,',
'                   base.opm_description,',
'                   base.opm_item,',
'                   base.opm_period,',
'                   SYSTIMESTAMP,',
'                   base.dept_name_sync,',
'                   base.id,',
'                   ''Done''',
'              FROM APX_BF_COMM_ACT_AMT_STG base',
'             WHERE     base.dept_name_sync = v_dept_name',
'                   AND SUBSTR (base.PERIOD, -2) = SUBSTR (v_year_value, -2);',
'',
'        v_count := SQL%ROWCOUNT;',
'        apex_debug.MESSAGE (''Step 5: Inserted into MAIN: %s row(s)'', v_count);',
'',
'        IF v_count = 0',
'        THEN',
'            apex_debug.MESSAGE (',
'                ''Step 5 WARNING: No data inserted into main for dept=%s period=%s'',',
'                v_dept_name,',
'                v_year_value);',
'        END IF;',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            apex_debug.MESSAGE (''Step 5 ERROR: Insert into main failed: %s'',',
'                                SQLERRM);',
'            RAISE;',
'    END;',
'',
'    -------------------------------------------------------------------------',
'    -- STEP 6: Update staging to ''Done''',
'    -------------------------------------------------------------------------',
'    BEGIN',
'        UPDATE APX_BF_COMM_ACT_AMT_STG',
'           SET SYNC_STATUS = ''Done''',
'         WHERE     DEPT_NAME_SYNC = v_dept_name',
'               AND SUBSTR (PERIOD, -2) = SUBSTR (v_year_value, -2);',
'',
'        apex_debug.MESSAGE (''Step 6: Updated staging to Done: %s row(s)'',',
'                            SQL%ROWCOUNT);',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            apex_debug.MESSAGE (''Step 6: Error updating staging status: %s'',',
'                                SQLERRM);',
'            RAISE;',
'    END;',
'',
'    COMMIT;',
'    apex_debug.MESSAGE (',
'        ''Synchronization completed successfully for dept=%s, period=%s'',',
'        v_dept_name,',
'        v_year_value);',
'EXCEPTION',
'    WHEN OTHERS',
'    THEN',
'        ROLLBACK;',
'        apex_debug.MESSAGE (''Unexpected error: %s'', SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Refresh not succcessful'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(29989063458541103)
,p_process_success_message=>'Refresh Done'
,p_internal_uid=>29989439536541107
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38899139914354322)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Value Total Budget'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ',
'     TO_CHAR(SUM(REST.FINAL_AMOUNT), ''999G999G999G999G999'') AS FORMATTED_DEBET',
'           INTO',
'           :P7_SUM_ORIGINAL_AMOUNT_VALUE',
'      FROM APX_BF_BUDGET_MONITOR_LNS REST',
'    --   LEFT JOIN APX_BF_DELTA_COMM_ACT_AMT_V CA',
'      LEFT JOIN APX_COMM_ACT_SUM_V CA ',
'        ON REST.ACTIVITY = CA.ACTIVITY',
'       AND REST.PERIOD   = SUBSTR(CA.PERIOD, 1, 3) || ''-26''',
'    WHERE REST.HEADER_ID = :P7_HEADER_ID;',
'',
'    EXCEPTION WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8020713524627718
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29989390461541106)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Last sync time'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT TO_CHAR(MAX(LAST_SYNCHRONIZED), ''DD-MON-YYYY HH24:MI:SS'') AS LAST_SYNC_TIME',
'    INTO :P7_LAST_SYNC_TIME',
'    FROM APX_BF_COMM_ACT_AMT',
'    WHERE DEPT_NAME_SYNC = (',
'              SELECT DEPT_NAME',
'              FROM APX_BF_BUDGET_MONITOR_HDR',
'              WHERE ID = :P7_HEADER_ID',
'          )',
'      AND SUBSTR(PERIOD, -2) = SUBSTR((SELECT ',
'                                YEAR',
'                            FROM ',
'                                APX_BF_BUDGET_MONITOR_HDR',
'                            WHERE',
'                                ID = :P7_HEADER_ID), -2)',
'      AND STAGE_ID_SYNC IS NOT NULL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P7_LAST_SYNC_TIME := NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>29989390461541106
);
wwv_flow_imp.component_end;
end;
/
