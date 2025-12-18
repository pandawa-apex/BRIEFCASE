prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'Budget Monitoring'
,p_alias=>'BUDGET-MONITORING'
,p_step_title=>'Budget Monitoring'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function applyLOVStyles() {',
'    var lovItems = document.querySelectorAll(''.a-PopupLOV li'');',
'    ',
'    lovItems.forEach(function(item) {',
'        var text = item.textContent.trim();',
'        ',
'        item.classList.remove(''custom-lov-open'', ''custom-lov-close'');',
'        ',
'        if (text === ''OPEN'') {',
'            item.classList.add(''custom-lov-open'');',
'        } else if (text === ''CLOSE'') {',
'            item.classList.add(''custom-lov-close'');',
'        }',
'    });',
'}',
'',
'$(document).on(''apexpopupafteropen'', function() {',
'    applyLOVStyles();',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'/* -------------------------------------------------------------------------------------------- */',
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
'/* -------------------------------------------------------------------------------------------- */',
'',
'#details_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#status_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#batch_no_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#latest_version_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#company_name_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#year_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#dept_name_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#budget_type_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#amount_type_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'/* #header_search{',
'    background-color: #94949466;',
'} */',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#list_budget_period_ig_toolbar_m1{',
'    display: none !important;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#list_budget_period_ig_toolbar_5{',
'    display: none !important;',
'}',
'',
'#list_budget_period_ig_toolbar_5_6{',
'    display: none !important;',
'}',
'',
'#list_budget_period_ig_toolbar_5_6i{',
'    display: none !important;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'.custom-lov-open {',
'    background-color: green !important;',
'    color: white !important;',
'    padding: 5px;',
'    border-radius: 3px;',
'}',
'',
'.custom-lov-close {',
'    background-color: grey !important;',
'    color: white !important;',
'    padding: 5px;',
'    border-radius: 3px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#reset_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'}',
'',
'#reset_button .t-Icon {',
'    animation: none;',
'    transition: transform 0.3s ease;',
'}',
'',
'#reset_button:hover .t-Icon {',
'    animation: rotate 0.8s linear infinite;',
'}',
'',
'@keyframes rotate {',
'    0% {',
'        transform: rotate(0deg);',
'    }',
'    100% {',
'        transform: rotate(-360deg);',
'    }',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#upload_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'}',
'',
'#upload_button .t-Icon {',
'    position: relative;',
'    animation: none;',
'    transition: transform 0.3s ease;',
'}',
'',
'#upload_button:hover .t-Icon {',
'    animation: moveUp 0.8s ease-in-out infinite;',
'}',
'',
'@keyframes moveUp {',
'    0% {',
'        transform: translateY(3px);',
'    }',
'    50% {',
'        transform: translateY(-3px);',
'    }',
'    100% {',
'        transform: translateY(3px);',
'    }',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#find_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'}',
'',
'#find_button .t-Icon {',
'    opacity: 0;',
'    transform: scale(0);',
'    transition: opacity 0.3s ease, transform 0.3s ease;',
'}',
'',
'#find_button:hover {',
'    background-color: #312d2a;',
'}',
'',
'#find_button:hover .t-Icon {',
'    opacity: 1;',
'    transform: scale(1);',
'}',
'',
'#find_button .t-Button-label {',
'    margin-left: -25px;',
'    transition: margin-left 0.3s ease, opacity 0.3s ease;',
'}',
'',
'#find_button:hover .t-Button-label {',
'    margin-left: 0px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#create_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'}',
'',
'#create_button .t-Icon {',
'    opacity: 0;',
'    transform: translateY(10px);',
'    transition: opacity 0.3s ease, transform 0.3s ease;',
'}',
'',
'#create_button:hover {',
'    background-color: #3A3632;',
'}',
'',
'#create_button:hover .t-Icon {',
'    opacity: 1;',
'    transform: translateY(0);',
'}',
'',
'#create_button .t-Button-label {',
'    margin-left: -25px;',
'    transition: margin-left 0.3s ease, opacity 0.3s ease;',
'}',
'',
'#create_button:hover .t-Button-label {',
'    margin-left: 0px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P6_BATCH_NO_DISPLAY{',
'    font-weight: bold;',
'    border-style: double;',
'}',
'',
'#P6_BATCH_NO_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #000000;',
'    border-style: inherit;',
'}',
'',
'#P6_BATCH_NO_LOV{',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'/* #P6_VERSION_DISPLAY{',
'    font-weight: bold;',
'    border-style: double;',
'}',
'',
'#P6_VERSION_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #000000;',
'    border-style: inherit;',
'}',
'',
'#P6_VERSION_LOV{',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'} */',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P6_COMPANY_DISPLAY{',
'    font-weight: bold;',
'    border-style: double;',
'}',
'',
'#P6_COMPANY_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #000000;',
'    border-style: inherit;',
'}',
'',
'#P6_COMPANY_LOV{',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#P6_YEAR_DISPLAY{',
'    font-weight: bold;',
'    border-style: double;',
'}',
'',
'#P6_YEAR_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #000000;',
'    border-style: inherit;',
'}',
'',
'#P6_YEAR_LOV{',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#P6_DEPARTMENT_DISPLAY{',
'    font-weight: bold;',
'    border-style: double;',
'}',
'',
'#P6_DEPARTMENT_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #000000;',
'    border-style: inherit;',
'}',
'#P6_DEPARTMENT_LOV{',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#P6_BUDGET_TYPE_DISPLAY{',
'    font-weight: bold;',
'    border-style: double;',
'}',
'',
'#P6_BUDGET_TYPE_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #000000;',
'    border-style: inherit;',
'}',
'',
'#P6_BUDGET_TYPE_LOV{',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#P6_AMOUNT_TYPE_DISPLAY{',
'    font-weight: bold;',
'    border-style: double;',
'}',
'',
'#P6_AMOUNT_TYPE_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #000000;',
'    border-style: inherit;',
'}',
'',
'#P6_AMOUNT_TYPE_LOV{',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#P6_STATUS_DISPLAY{',
'    font-weight: bold;',
'    border-style: double;',
'}',
'',
'#P6_STATUS_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #000000;',
'    border-style: inherit;',
'}',
'',
'#P6_STATUS_LOV{',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'}',
'/* -------------------------------------------------------------------------------------------- */',
'',
'.class1{',
'    background-color: #7CFC00;',
'}',
'',
'.class2{',
'    background-color: #A9A9A9;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'.status-APPROVED {',
'  background-color: #00B050;',
'  color: #FFFFFF;',
'  font-weight: bold;',
'  padding: 2px 8px;',
'  border-radius: 5px;',
'  display: inline-block;',
'  min-width: fit-content;',
'  text-align: center;',
'}',
'.status-INACTIVE {',
'  background-color: #D9D9D9;',
'  color: #000000;',
'  font-weight: bold;',
'  padding: 2px 8px;',
'  border-radius: 5px;',
'  display: inline-block;',
'  min-width: fit-content;',
'  text-align: center;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(762912674302076301)
,p_plug_name=>'Header Search'
,p_region_name=>'header_search'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(762683059047988136)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(762912924657076304)
,p_plug_name=>'List Detail Budget Entry'
,p_region_name=>'list_detail_budget_entry'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(762683059047988136)
,p_plug_display_sequence=>40
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26617392200248941)
,p_plug_name=>'List Detail Budget Entry Sources'
,p_region_name=>'budget_monitor_lines'
,p_parent_plug_id=>wwv_flow_imp.id(762912924657076304)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762673260752988133)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(19006166497232005)
,p_use_local_sync_table=>true
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM (',
'    SELECT ID,',
'           YEAR,',
'           STATUS,',
'           DETAILS,',
'           BATCH_NO,',
'           DEPT_NAME,',
'           CREATED_BY,',
'           UPDATED_BY,',
'           AMOUNT_TYPE,',
'           BUDGET_TYPE,',
'           COMPANY_NAME,',
'           CREATED_DATE,',
'           UPDATED_DATE,',
'           LATEST_VERSION,',
'           STATUS_BG_COLOR,',
'           STATUS_TEXT_COLOR,',
'           CASE ',
'               WHEN BUDGET_TYPE = ''OB'' THEN 1 ',
'               WHEN BUDGET_TYPE = ''RF3'' THEN 2 ',
'               WHEN BUDGET_TYPE = ''RF6'' THEN 3 ',
'               WHEN BUDGET_TYPE = ''RF9'' THEN 4 ',
'               ELSE 5 ',
'           END as BUDGET_PRIORITY,',
'           ROW_NUMBER() OVER (',
'               PARTITION BY COMPANY_NAME, YEAR, DEPT_NAME, BUDGET_TYPE ',
'               ORDER BY LATEST_VERSION DESC',
'           ) as version_rank,',
'           ROW_NUMBER() OVER (',
'               PARTITION BY COMPANY_NAME, YEAR, DEPT_NAME ',
'               ORDER BY ',
'                   CASE ',
'                       WHEN BUDGET_TYPE = ''OB'' THEN 1 ',
'                       WHEN BUDGET_TYPE = ''RF3'' THEN 2 ',
'                       WHEN BUDGET_TYPE = ''RF6'' THEN 3 ',
'                       WHEN BUDGET_TYPE = ''RF9'' THEN 4 ',
'                       ELSE 5 ',
'                   END DESC,',
'                   LATEST_VERSION DESC',
'           ) as budget_type_rank',
'    FROM #APEX$SOURCE_DATA#',
'    WHERE ',
'        STATUS IN (''APPROVED'')',
'        AND (:P6_BATCH_NO_LOV IS NULL OR BATCH_NO = :P6_BATCH_NO_LOV)',
'        AND (:P6_YEAR_LOV IS NULL OR YEAR = :P6_YEAR_LOV)',
'        AND (:P6_DEPARTMENT_LOV IS NULL OR DEPT_NAME = :P6_DEPARTMENT_LOV)',
'        AND (:P6_BUDGET_TYPE_LOV IS NULL OR BUDGET_TYPE = :P6_BUDGET_TYPE_LOV)',
'        AND (:P6_USER_DEPTS IS NULL',
'                OR DEPT_NAME IN (',
'                    SELECT trim(column_value)',
'                    FROM TABLE(APEX_STRING.SPLIT(:P6_USER_DEPTS, ''|''))',
'                ))',
'        AND (:P6_USER_ROLE != ''DEPARTMENT''',
'                OR CREATED_BY = :APP_USER',
'                OR DEPT_NAME IN (',
'                    SELECT trim(column_value)',
'                    FROM TABLE(APEX_STRING.SPLIT(:P6_USER_DEPTS, ''|''))',
'                    )',
'                )',
') ',
'WHERE version_rank = 1',
'  AND budget_type_rank = 1'))
,p_source_post_processing=>'SQL'
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P6_BATCH_NO_LOV,P6_YEAR_LOV,P6_DEPARTMENT_LOV,P6_BUDGET_TYPE_LOV,P6_USER_DEPTS,P6_USER_ROLE'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18964349453222416)
,p_name=>'YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'YEAR'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Year'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'year_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18964408499222417)
,p_name=>'DETAILS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Details'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_HEADER_ID,P7_BATCH_NUMBER_VALUE:&ID.,&BATCH_NO.'
,p_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'details_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18964532335222418)
,p_name=>'BATCH_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Batch No.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
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
,p_static_id=>'batch_no_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18964670387222419)
,p_name=>'AMOUNT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Amount Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
,p_static_id=>'amount_type_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18964789410222420)
,p_name=>'BUDGET_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Budget Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
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
,p_static_id=>'budget_type_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18964823264222421)
,p_name=>'LATEST_VERSION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LATEST_VERSION'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Latest Version'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'latest_version_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20725486811713413)
,p_name=>'BUDGET_PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET_PRIORITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20725569395713414)
,p_name=>'VERSION_RANK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERSION_RANK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20725698382713415)
,p_name=>'BUDGET_TYPE_RANK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET_TYPE_RANK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26737858491802759)
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
,p_filter_is_required=>false
,p_static_id=>'id_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26738024827802761)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<!-- <div style="background-color: &ATTRIBUTE1.; color: &ATTRIBUTE2.; text-align: center; min-width: fit-content; font-weight: bold;">&STATUS.</div> -->',
    '',
    '<span class="status-&STATUS."> &STATUS. </span>')))).to_clob
,p_filter_is_required=>false
,p_static_id=>'status_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26738338864802764)
,p_name=>'DEPT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Department'
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
,p_static_id=>'dept_name_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26738434654802765)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(26738602069802766)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(26738843682802769)
,p_name=>'COMPANY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Company'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
,p_static_id=>'company_name_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26738952055802770)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(26771980718507821)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
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
 p_id=>wwv_flow_imp.id(26772146504507823)
,p_name=>'STATUS_BG_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_BG_COLOR'
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
 p_id=>wwv_flow_imp.id(26772268133507824)
,p_name=>'STATUS_TEXT_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_TEXT_COLOR'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(26737800199802758)
,p_internal_uid=>7814592207712838
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
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
 p_id=>wwv_flow_imp.id(26777834620506291)
,p_interactive_grid_id=>wwv_flow_imp.id(26737800199802758)
,p_static_id=>'78547'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(26778039551506291)
,p_report_id=>wwv_flow_imp.id(26777834620506291)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19008106271239700)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(18964349453222416)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19009054158239703)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(18964408499222417)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19009965275239707)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(18964532335222418)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19010841093239710)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(18964670387222419)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19011754237239714)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(18964789410222420)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>117
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19012614083239716)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(18964823264222421)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22463719359704055)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(20725486811713413)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22464642050704044)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(20725569395713414)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22465594562704042)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(20725698382713415)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26778568087506289)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(26737858491802759)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26780358608506281)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(26738024827802761)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26783008790506270)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(26738338864802764)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>296
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26783981477506266)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(26738434654802765)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>152
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26784833015506263)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(26738602069802766)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26787530872506252)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(26738843682802769)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26788454264506249)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(26738952055802770)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26789349637506245)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(26771980718507821)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26791171417506238)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(26772146504507823)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26792050969506235)
,p_view_id=>wwv_flow_imp.id(26778039551506291)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(26772268133507824)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(763011282742414658)
,p_plug_name=>'List Detail Budget Entry'
,p_parent_plug_id=>wwv_flow_imp.id(762912924657076304)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762673260752988133)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,',
'       BATCH_NO,',
'       LATEST_VERSION,',
'       COMPANY_NAME,',
'       YEAR,',
'       DEPT_NAME,',
'       BUDGET_TYPE,',
'       AMOUNT_TYPE,',
'       STATUS,',
'       CASE',
'        WHEN STATUS=''DRAFT'' THEN ''#A9A9A9''',
'        WHEN STATUS=''SUBMITTED'' THEN ''#7CFC00''',
'        WHEN STATUS=''IN PROCESS'' THEN ''#FFFF00''',
'        WHEN STATUS = ''APPROVED'' THEN ''#3FEB50''',
'        WHEN STATUS = ''REJECTED'' THEN ''#FAA0A0''',
'        WHEN STATUS = ''INTERFACED'' THEN ''#1AE7C2''',
'        END AS STATUS_bg_color,',
'       CASE',
'        WHEN STATUS=''DRAFT'' THEN ''#000000'' ',
'        WHEN STATUS=''SUBMITTED'' THEN ''#000000''',
'        WHEN STATUS=''IN PROCESS'' THEN ''#000000''',
'        WHEN STATUS = ''APPROVED'' THEN ''#085C23''',
'        WHEN STATUS = ''REJECTED'' THEN ''#610106''',
'        WHEN STATUS = ''INTERFACED'' THEN ''#002BFF''',
'       END AS STATUS_text_color,',
'       CASE ',
'        WHEN STATUS = ''DRAFT'' THEN '''' ',
'        WHEN STATUS = ''SUBMITTED'' THEN ''''',
'        WHEN STATUS = ''IN PROCESS'' THEN ''''',
'       END AS DETAILS,',
'       CREATED_DATE,',
'       CREATED_BY,',
'       UPDATED_DATE,',
'       UPDATED_BY',
'FROM APX_BF_BUDGET_MONITOR_HDR_V h',
'WHERE ',
'    STATUS IN (''APPROVED'')',
'    AND (:P6_BATCH_NO_LOV IS NULL OR BATCH_NO = :P6_BATCH_NO_LOV)',
'    AND (:P6_VERSION_LOV IS NULL OR LATEST_VERSION = :P6_VERSION_LOV)',
'    AND (:P6_COMPANY_LOV IS NULL OR COMPANY_NAME = :P6_COMPANY_LOV)',
'    AND (:P6_YEAR_LOV IS NULL OR YEAR = :P6_YEAR_LOV)',
'    AND (:P6_DEPARTMENT_LOV IS NULL OR DEPT_NAME = :P6_DEPARTMENT_LOV)',
'    AND (:P6_BUDGET_TYPE_LOV IS NULL OR BUDGET_TYPE = :P6_BUDGET_TYPE_LOV)',
'    AND LATEST_VERSION = (SELECT MAX(LATEST_VERSION) ',
'                          FROM APX_BF_BUDGET_MONITOR_HDR_V ',
'                          WHERE BATCH_NO = h.BATCH_NO',
'                          AND COMPANY_NAME = h.COMPANY_NAME',
'                          AND YEAR = h.YEAR',
'                          AND DEPT_NAME = h.DEPT_NAME',
'                          AND BUDGET_TYPE = h.BUDGET_TYPE)',
'-- ORDER BY',
'--     CREATED_DATE DESC,',
'--     CASE ',
'--         WHEN UPDATED_DATE IS NULL THEN CREATED_DATE',
'--         ELSE UPDATED_DATE ',
'--     END DESC;'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'List Detail Budget Entry'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763012426027414710)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763013419627414718)
,p_name=>'BATCH_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Batch No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763014460139414719)
,p_name=>'LATEST_VERSION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LATEST_VERSION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Latest Version'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763015415405414720)
,p_name=>'COMPANY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Company Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763016462257414722)
,p_name=>'YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'YEAR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Year'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763017455963414723)
,p_name=>'DEPT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dept Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763018499895414724)
,p_name=>'BUDGET_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Budget Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763019432441414726)
,p_name=>'AMOUNT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Amount Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763020418327414726)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', '<div style="background-color: &STATUS_BG_COLOR.; color: &STATUS_TEXT_COLOR.; text-align: center; min-width: fit-content; padding-left: 10px; padding-right: 10px; font-weight: bold;">&STATUS.</div>')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763021489454414727)
,p_name=>'STATUS_BG_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_BG_COLOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763022448882414728)
,p_name=>'STATUS_TEXT_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_TEXT_COLOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763023426320414729)
,p_name=>'DETAILS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Details'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:31,32:P7_HEADER_ID,P7_BATCH_NUMBER_VALUE:&ID.,&BATCH_NO.'
,p_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="Details">'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763024491621414730)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Created Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763025413158414731)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763026452630414732)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Updated Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763027436721414733)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(763011740793414679)
,p_internal_uid=>143132139571387013
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
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(763012039168414688)
,p_interactive_grid_id=>wwv_flow_imp.id(763011740793414679)
,p_static_id=>'1431325'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(763012270463414695)
,p_report_id=>wwv_flow_imp.id(763012039168414688)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763012867238414715)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(763012426027414710)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763013804389414718)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(763013419627414718)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763014843598414720)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(763014460139414719)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763015850174414721)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(763015415405414720)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763016849329414723)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(763016462257414722)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763017881260414724)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(763017455963414723)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763018816215414725)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(763018499895414724)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763019869351414726)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(763019432441414726)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763020805571414727)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(763020418327414726)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763021805452414727)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(763021489454414727)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763022814562414728)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(763022448882414728)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763023892070414729)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(763023426320414729)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763024860068414731)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(763024491621414730)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763025872092414732)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(763025413158414731)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763026868856414733)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(763026452630414732)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763027805391414734)
,p_view_id=>wwv_flow_imp.id(763012270463414695)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(763027436721414733)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(763010580883414638)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762695407549988140)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(762579795960987796)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(762757871065988245)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(763028906211555170)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_button_name=>'Find'
,p_button_static_id=>'find_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(762756307229988239)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Find'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(762914152811076316)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_button_name=>'Reset'
,p_button_static_id=>'reset_button'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(762756307229988239)
,p_button_image_alt=>'Reset'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20725179964713410)
,p_name=>'P6_USER_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20725268650713411)
,p_name=>'P6_USER_DEPTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(762913003563076305)
,p_name=>'P6_COMPANY_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(762913139731076306)
,p_name=>'P6_BUDGET_TYPE_LOV'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_placeholder=>'--Please choose Budget Type--'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:OB;OB,RF3;RF3,RF6;RF6,RF9;RF9'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Budget Type'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(762913375789076308)
,p_name=>'P6_BUDGET_TYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_prompt=>'Budget Type'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(762913434147076309)
,p_name=>'P6_DEPARTMENT_LOV'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_placeholder=>'--Please choose Department--'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT DEPT_NAME AS D, DEPT_NAME AS R',
'FROM APX_BF_BUDGET_MONITOR_HDR',
'WHERE DEPT_NAME != ''ALL''',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Department'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(762913591005076310)
,p_name=>'P6_DEPARTMENT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(762913672540076311)
,p_name=>'P6_YEAR_LOV'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_placeholder=>'--Please select Year--'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT DISTINCT YEAR FROM APX_BF_BUDGET_MONITOR_HDR'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Year'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(762913748609076312)
,p_name=>'P6_YEAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(762913872734076313)
,p_name=>'P6_BATCH_NO_LOV'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_placeholder=>'--Please choose Batch No.--'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT DISTINCT BATCH_NO FROM APX_BF_BUDGET_MONITOR_HDR'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(762913977597076314)
,p_name=>'P6_BATCH_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_prompt=>'Batch Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(762914074430076315)
,p_name=>'P6_LEDGER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(763029953265555180)
,p_name=>'P6_COMPANY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_prompt=>'Company'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(762579247524987774)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(763030054089555181)
,p_name=>'P6_COMPANY_LOV'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_prompt=>'Company Lov'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COMPANY_CODE',
'FROM APX_BF_ENTITY_PROFILES',
'WHERE COMPANY_CODE != ''Virtual Consolidation'';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Budget Type'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_imp.id(762579247524987774)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(763030197782555182)
,p_name=>'P6_STATUS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(762579247524987774)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(763030271824555183)
,p_name=>'P6_STATUS_LOV'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(762912674302076301)
,p_prompt=>'Status Lov'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''DRAFT'' AS DISPLAY_VALUE, ''DRAFT'' AS RETURN_VALUE FROM DUAL',
'UNION ALL',
'SELECT ''SUBMITTED'' AS DISPLAY_VALUE, ''SUBMITTED'' AS RETURN_VALUE FROM DUAL',
'UNION ALL',
'SELECT ''IN PROCESS'' AS DISPLAY_VALUE, ''IN PROCESS'' AS RETURN_VALUE FROM DUAL',
'UNION ALL',
'SELECT ''APPROVED'' AS DISPLAY_VALUE, ''APPROVED'' AS RETURN_VALUE FROM DUAL',
'UNION ALL',
'SELECT ''REJECTED'' AS DISPLAY_VALUE, ''REJECTED'' AS RETURN_VALUE FROM DUAL;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Budget Type'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_imp.id(762579247524987774)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(762912744025076302)
,p_name=>'Refresh Results_1'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(762912674302076301)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(763029007962555171)
,p_event_id=>wwv_flow_imp.id(762912744025076302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(763011282742414658)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28015439202777521)
,p_name=>'Hide ID Column'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28015591444777522)
,p_event_id=>wwv_flow_imp.id(28015439202777521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'gridView = apex.region("budget_monitor_lines").call("getViews").grid;',
'gridView.view$.grid("hideColumn", "ID");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(763029173108555172)
,p_name=>'Refresh List Detail Budget Entry'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(762912674302076301)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(763029240336555173)
,p_event_id=>wwv_flow_imp.id(763029173108555172)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(762912924657076304)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(763029340103555174)
,p_name=>'Refresh Search'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(762912674302076301)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(763029456527555175)
,p_event_id=>wwv_flow_imp.id(763029340103555174)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(762912674302076301)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(763028649108555167)
,p_name=>'Set Null & Submit Page (Reset)'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(762914152811076316)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(763028759189555168)
,p_event_id=>wwv_flow_imp.id(763028649108555167)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_BATCH_NO_LOV,P6_COMPANY_LOV,P6_YEAR_LOV,P6_DEPARTMENT_LOV,P6_BUDGET_TYPE_LOV,P6_STATUS_LOV'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    IF :P6_BATCH_NO_LOV IS NOT NULL THEN        ',
'        :P6_BATCH_NO_LOV := NULL; ',
'    END IF;',
'',
'    IF :P6_COMPANY_LOV IS NOT NULL THEN        ',
'        :P6_COMPANY_LOV := NULL; ',
'    END IF;',
'',
'    IF :P6_YEAR_LOV IS NOT NULL THEN        ',
'        :P6_YEAR_LOV := NULL; ',
'    END IF;',
'',
'    IF :P6_DEPARTMENT_LOV IS NOT NULL THEN        ',
'        :P6_DEPARTMENT_LOV := NULL; ',
'    END IF;',
'',
'    IF :P6_BUDGET_TYPE_LOV IS NOT NULL THEN        ',
'        :P6_BUDGET_TYPE_LOV := NULL; ',
'    END IF;',
'',
'    -- IF :P6_AMOUNT_TYPE_LOV IS NOT NULL THEN        ',
'    --     :P6_AMOUNT_TYPE_LOV := NULL; ',
'    -- END IF;',
'',
'    IF :P6_STATUS_LOV IS NOT NULL THEN        ',
'        :P6_STATUS_LOV := NULL; ',
'    END IF;',
'    ',
'    RETURN NULL;',
'END;',
''))
,p_attribute_07=>'P6_BATCH_NO_LOV,P6_COMPANY_LOV,P6_YEAR_LOV,P6_DEPARTMENT_LOV,P6_BUDGET_TYPE_LOV,P6_STATUS_LOV'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(763028857908555169)
,p_event_id=>wwv_flow_imp.id(763028649108555167)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(763029565701555176)
,p_name=>'Hide CREATED_DATE Column'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(763029608353555177)
,p_event_id=>wwv_flow_imp.id(763029565701555176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'gridView = apex.region("budget_monitor_lines").call("getViews").grid;',
'gridView.view$.grid("hideColumn", "CREATED_DATE");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(763029762027555178)
,p_name=>'Hide UPDATED_DATE Column'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(763029808418555179)
,p_event_id=>wwv_flow_imp.id(763029762027555178)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'gridView = apex.region("budget_monitor_lines").call("getViews").grid;',
'gridView.view$.grid("hideColumn", "UPDATED_DATE");'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20725391186713412)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get User and Depts'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_role_user varchar2(50) := get_user_role(:APP_ID, :APP_USER);',
'BEGIN',
'    :P6_USER_ROLE := v_role_user;',
'',
'    IF v_role_user IS NOT NULL',
'    THEN',
'        -- Get active user''s department list',
'        SELECT LISTAGG(DISTINCT(d.DEPT_NAME), ''|'')',
'        INTO :P6_USER_DEPTS',
'        FROM APX_BF_USER_DEPT_ACCESS d',
'        JOIN APX_BF_USER_COMP_ACCESS u ON d.USER_ID = u.USER_ID',
'        JOIN APX_BF_USER_ACCESS uc ON u.USER_ID = uc.ID',
'        WHERE UPPER(D.STATUS) = ''ACTIVE'' ',
'          AND UPPER(uc.USERNAME) = UPPER(:APP_USER);',
'    ELSE',
'        :P6_USER_DEPTS := NULL;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :P6_USER_DEPTS := NULL;',
'        :P6_USER_ROLE := NULL;',
'    WHEN OTHERS THEN',
'        :P6_USER_DEPTS := NULL;',
'        :P6_USER_ROLE := NULL;',
'        APEX_DEBUG.ERROR(''Error retrieving user access: '' || SQLERRM);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>20725391186713412
);
wwv_flow_imp.component_end;
end;
/
