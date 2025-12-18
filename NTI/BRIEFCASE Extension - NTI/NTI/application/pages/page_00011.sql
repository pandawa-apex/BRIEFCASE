prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_name=>'List Hak Akses'
,p_alias=>'LIST-HAK-AKSES'
,p_page_mode=>'MODAL'
,p_step_title=>'List Hak Akses'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P11_SET_APX_ACCESS_RIGHTS_TITLE_DISPLAY{',
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
'    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(763120743325211732)
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
 p_id=>wwv_flow_imp.id(763121405153211752)
,p_plug_name=>'List Hak Akses'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762673260752988133)
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'APX_BF_ACCESS_RIGHTS_LISTS'
,p_query_where=>'apx_access_rights_id = :p11_set_apx_access_rights_id'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'List Hak Akses'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763076828386153394)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763076932355153395)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_required_patch=>wwv_flow_imp.id(762579247524987774)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763122745479211838)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763123669785211856)
,p_name=>'APX_ACCESS_RIGHTS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APX_ACCESS_RIGHTS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P11_SET_APX_ACCESS_RIGHTS_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(763124657443211857)
,p_name=>'DEPT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Dept Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct dept_name from APX_BF_BUDGET_MONITOR_HDR',
'',
'UNION ',
'',
'SELECT ''ADM'' AS dept_name FROM DUAL',
'',
'UNION ',
'',
'SELECT ''INV'' AS dept_name FROM DUAL'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(763121942779211771)
,p_internal_uid=>143242341557184105
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
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
 p_id=>wwv_flow_imp.id(763122392789211782)
,p_interactive_grid_id=>wwv_flow_imp.id(763121942779211771)
,p_static_id=>'1432428'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(763122538336211796)
,p_report_id=>wwv_flow_imp.id(763122392789211782)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763123027544211851)
,p_view_id=>wwv_flow_imp.id(763122538336211796)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(763122745479211838)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763124068636211856)
,p_view_id=>wwv_flow_imp.id(763122538336211796)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(763123669785211856)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763125074993211857)
,p_view_id=>wwv_flow_imp.id(763122538336211796)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(763124657443211857)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(763127596100229264)
,p_view_id=>wwv_flow_imp.id(763122538336211796)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(763076828386153394)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(763077214984153398)
,p_name=>'P11_SET_APX_ACCESS_RIGHTS_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(763077386511153399)
,p_name=>'P11_SET_APX_ACCESS_RIGHTS_TITLE'
,p_item_sequence=>20
,p_item_default=>'SELECT TITLE FROM APX_BF_ACCESS_RIGHTS WHERE ID = :P11_SET_APX_ACCESS_RIGHTS_ID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Title'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(763077044980153396)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(763121405153211752)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'List Hak Akses - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>143197443758125730
);
wwv_flow_imp.component_end;
end;
/
