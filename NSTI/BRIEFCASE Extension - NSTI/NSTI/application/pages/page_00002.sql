prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'Data Load Budget Entry'
,p_alias=>'DATA-LOAD-BUDGET-ENTRY'
,p_step_title=>'Data Load Budget Entry'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(793067109625899686)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(792869742509816870)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(792754130920816526)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(792932206025816975)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(793067742433899711)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(792793585560816832)
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(793069683116899730)
,p_plug_name=>'Data Source'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(792857394007816866)
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(793070106387899731)
,p_plug_name=>'Upload a File'
,p_parent_plug_id=>wwv_flow_imp.id(793069683116899730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(792790815895816831)
,p_plug_display_sequence=>30
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P2_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(793072160195899769)
,p_plug_name=>'Loaded File'
,p_parent_plug_id=>wwv_flow_imp.id(793069683116899730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(792790815895816831)
,p_plug_display_sequence=>40
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(793075113430899788)
,p_name=>'Preview'
,p_template=>wwv_flow_imp.id(792857394007816866)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--horizontalBorders:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.line_number,',
'       p.col001, p.col002, p.col003, p.col004, p.col005, p.col006, p.col007, p.col008, p.col009, p.col010',
'       -- add more columns (col011 to col300) here.',
'  from apex_application_temp_files f, ',
'       table( apex_data_parser.parse(',
'                  p_content           => f.blob_content,',
'                  p_file_name         => f.filename,',
'                  p_xlsx_sheet_name   => case when :P2_XLSX_WORKSHEET is not null then :P2_XLSX_WORKSHEET end,',
'                  p_file_profile      => apex_data_loading.get_file_profile( p_static_id => ''data_load_budget_entry_full'' ),',
'                  p_max_rows          => 100 ) ) p',
' where f.name = :P2_FILE',
' order by id desc'))
,p_display_when_condition=>'P2_FILE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(792895569314816896)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(793075416957899866)
,p_query_column_id=>1
,p_column_alias=>'LINE_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Line Number'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(793075823797899869)
,p_query_column_id=>2
,p_column_alias=>'COL001'
,p_column_display_sequence=>2
,p_column_heading=>'Col001'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(793076226724899869)
,p_query_column_id=>3
,p_column_alias=>'COL002'
,p_column_display_sequence=>3
,p_column_heading=>'Col002'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(793076561709899870)
,p_query_column_id=>4
,p_column_alias=>'COL003'
,p_column_display_sequence=>4
,p_column_heading=>'Col003'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(793076967693899870)
,p_query_column_id=>5
,p_column_alias=>'COL004'
,p_column_display_sequence=>5
,p_column_heading=>'Col004'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(793077400723899870)
,p_query_column_id=>6
,p_column_alias=>'COL005'
,p_column_display_sequence=>6
,p_column_heading=>'Col005'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(793077795736899871)
,p_query_column_id=>7
,p_column_alias=>'COL006'
,p_column_display_sequence=>7
,p_column_heading=>'Col006'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(793078190397899871)
,p_query_column_id=>8
,p_column_alias=>'COL007'
,p_column_display_sequence=>8
,p_column_heading=>'Col007'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(793078572230899871)
,p_query_column_id=>9
,p_column_alias=>'COL008'
,p_column_display_sequence=>9
,p_column_heading=>'Col008'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(793078960849899871)
,p_query_column_id=>10
,p_column_alias=>'COL009'
,p_column_display_sequence=>10
,p_column_heading=>'Col009'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(793079385269899872)
,p_query_column_id=>11
,p_column_alias=>'COL010'
,p_column_display_sequence=>11
,p_column_heading=>'Col010'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(793083572787904997)
,p_plug_name=>'View'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(792847595712816863)
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    DISTINCT BATCH_ID, ',
'    FILENAME_BATCH, ',
'    CASE ',
'        WHEN FLAG_BATCH = ''N'' THEN ''IN PROCESS''',
'        WHEN FLAG_BATCH = ''Y'' THEN ''UPLOADED''',
'        ELSE ''UNKNOWN'' ',
'    END AS STATUS_BATCH,',
'    null as Actions,',
'    FLAG_BATCH',
'FROM APX_BUDGET_ENTRY_FULL_TBL',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'View'
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
 p_id=>wwv_flow_imp.id(793083638590904998)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_BATCH_ID,P4_FILENAME:#BATCH_ID#,#FILENAME_BATCH#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'CHESAR.BUDIPRAKOSO@LIMAMAIL.NET'
,p_internal_uid=>143029702409048602
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(793083778466904999)
,p_db_column_name=>'BATCH_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Batch Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(793083870658905000)
,p_db_column_name=>'FILENAME_BATCH'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Filename Batch'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(793083993863905001)
,p_db_column_name=>'STATUS_BATCH'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Status Batch'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(793084211757905003)
,p_db_column_name=>'FLAG_BATCH'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Flag Batch'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(793084073522905002)
,p_db_column_name=>'ACTIONS'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Actions'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_required_patch=>wwv_flow_imp.id(792753582484816504)
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(793137570630064368)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1430837'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BATCH_ID:FILENAME_BATCH:STATUS_BATCH:FLAG_BATCH:ACTIONS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(793068200518899718)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(793067742433899711)
,p_button_name=>'CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(792930630543816968)
,p_button_image_alt=>'Clear'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(793068523726899719)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(793067742433899711)
,p_button_name=>'LOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(792930630543816968)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load Data'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(793070494578899737)
,p_name=>'P2_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(793070106387899731)
,p_prompt=>'Upload a File'
,p_display_as=>'NATIVE_FILE'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(792927759931816944)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'content_disposition', 'attachment',
  'display_as', 'DROPZONE_BLOCK',
  'display_download_link', 'Y',
  'dropzone_description', 'Supported formats XLSX',
  'max_file_size', '20000',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(793070869160899740)
,p_name=>'P2_ERROR_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(793070106387899731)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(793072550186899771)
,p_name=>'P2_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(793072160195899769)
,p_item_default=>'Pasted Data'
,p_prompt=>'Loaded File'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(792928068450816952)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(793073739510899784)
,p_name=>'P2_XLSX_WORKSHEET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(793072160195899769)
,p_prompt=>'XLSX Worksheet'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.sheet_display_name,',
'       p.sheet_file_name',
'  from apex_application_temp_files f,',
'       table( apex_data_parser.get_xlsx_worksheets( p_content => f.blob_content ) ) p',
' where f.name = :P2_FILE'))
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sheet_count number;',
'begin',
'    select count(*)',
'      into l_sheet_count',
'      from apex_application_temp_files f,',
'           table( apex_data_parser.get_xlsx_worksheets( p_content => f.blob_content ) ) p',
'     where f.name = :P2_FILE;',
'    ',
'     -- display if the XSLX file contains multiple worksheets',
'    return ( l_sheet_count > 1 );',
'exception',
'    when others then ',
'        return false;',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(792928068450816952)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(793073124393899777)
,p_computation_sequence=>10
,p_computation_item=>'P2_FILE_NAME'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select filename',
'  from apex_application_temp_files ',
' where name = :P2_FILE'))
,p_compute_when=>'P2_FILE'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(793073498227899779)
,p_validation_name=>'Is valid file type'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_data_parser.assert_file_type(',
'       p_file_name => :P2_FILE_NAME,',
'       p_file_type => apex_data_parser.c_file_type_xlsx )',
'then',
'    return true;',
'else',
'    :P2_FILE := null;',
'    return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Invalid file type. Supported file types XLSX.'
,p_associated_item=>wwv_flow_imp.id(793070494578899737)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(792753582484816504)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(793071240675899740)
,p_name=>'Upload a File'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_FILE'
,p_condition_element=>'P2_FILE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(793071747729899747)
,p_event_id=>wwv_flow_imp.id(793071240675899740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(793074173767899787)
,p_name=>'Submit worksheet on change'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_XLSX_WORKSHEET'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(793074641685899788)
,p_event_id=>wwv_flow_imp.id(793074173767899787)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(793069000491899720)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_DATA_LOADING'
,p_process_name=>'Load Data'
,p_attribute_01=>wwv_flow_imp.id(793066296183897105)
,p_attribute_02=>'FILE'
,p_attribute_03=>'P2_FILE'
,p_attribute_06=>'P2_XLSX_WORKSHEET'
,p_attribute_08=>'P2_ERROR_ROW_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(793068523726899719)
,p_internal_uid=>143015064310043324
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(793084263976905004)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert To Table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  -- Insert Header (tetap pakai HEADER_ID dari view)',
'  FOR rec IN (',
'    SELECT DISTINCT',
'      HEADER_ID,',
'      BATCH_NO,',
'      VERSION_NO,',
'      COMPANY_NAME,',
'      YEAR,',
'      DEPT_NAME,',
'      BUDGET_TYPE,',
'      AMOUNT_TYPE,',
'      STATUS,',
'      FILE_NAME,',
'      REJECT_NOTES,',
'      HDR_CREATED_DATE AS CREATED_DATE,',
'      HDR_CREATED_BY AS CREATED_BY,',
'      HDR_UPDATED_DATE AS UPDATED_DATE,',
'      HDR_UPDATED_BY AS UPDATED_BY,',
'      LEDGER_ID,',
'      CHART_OF_ACCOUNTS_ID,',
'      SEGMENT_ACCOUNT,',
'      HDR_COST_CENTER AS COST_CENTER,',
'      SHORT_NAME,',
'      BUDGET_COMPILE_ID,',
'      SOURCE',
'    FROM APX_BUDGET_ENTRY_FULL_TBL',
'  ) LOOP',
'    INSERT INTO APX_BF_BUDGET_ENTRY_HDR (',
'      ID, -- manual insert ID (HEADER_ID dari Excel)',
'      BATCH_NO, VERSION_NO, COMPANY_NAME, YEAR, DEPT_NAME,',
'      BUDGET_TYPE, AMOUNT_TYPE, STATUS, FILE_NAME, REJECT_NOTES,',
'      CREATED_DATE, CREATED_BY, UPDATED_DATE, UPDATED_BY,',
'      LEDGER_ID, CHART_OF_ACCOUNTS_ID, SEGMENT_ACCOUNT, COST_CENTER,',
'      SHORT_NAME, BUDGET_COMPILE_ID, SOURCE',
'    )',
'    VALUES (',
'      rec.HEADER_ID,',
'      rec.BATCH_NO, rec.VERSION_NO, rec.COMPANY_NAME, rec.YEAR, rec.DEPT_NAME,',
'      rec.BUDGET_TYPE, rec.AMOUNT_TYPE, rec.STATUS, rec.FILE_NAME, rec.REJECT_NOTES,',
'      rec.CREATED_DATE, rec.CREATED_BY, rec.UPDATED_DATE, rec.UPDATED_BY,',
'      rec.LEDGER_ID, rec.CHART_OF_ACCOUNTS_ID, rec.SEGMENT_ACCOUNT, rec.COST_CENTER,',
'      rec.SHORT_NAME, rec.BUDGET_COMPILE_ID, rec.SOURCE',
'    );',
'  END LOOP;',
'',
'  -- Insert Lines pakai HEADER_ID dari Excel',
'  FOR rec IN (',
'    SELECT ',
'      HEADER_ID,',
'      BUDGET_CATEGORY,',
'      ACTIVITY,',
'      COA,',
'      COA_DESC,',
'      LOCATION,',
'      PRODUCT,',
'      UOM,',
'      QUANTITY,',
'      PRICE,',
'      TOTAL,',
'      PERIOD,',
'      LNS_REJECT_NOTES AS REJECT_NOTES,',
'      LNS_CREATED_DATE AS CREATED_DATE,',
'      LNS_CREATED_BY AS CREATED_BY,',
'      LNS_UPDATED_DATE AS UPDATED_DATE,',
'      LNS_UPDATED_BY AS UPDATED_BY,',
'      LINE_DESCRIPTION,',
'      LNS_COST_CENTER AS COST_CENTER,',
'      LINE_SOURCE,',
'      LNS_ACTIVITY_CODE',
'    FROM APX_BUDGET_ENTRY_FULL_TBL',
'  ) LOOP',
'    INSERT INTO APX_BF_BUDGET_ENTRY_LNS (',
'      HEADER_ID, BUDGET_CATEGORY, ACTIVITY, COA, COA_DESC, LOCATION,',
'      PRODUCT, UOM, QUANTITY, PRICE, TOTAL, PERIOD,',
'      REJECT_NOTES, CREATED_DATE, CREATED_BY, UPDATED_DATE, UPDATED_BY,',
'      LINE_DESCRIPTION, COST_CENTER, LINE_SOURCE,',
'      ACTIVITY_CODE',
'    )',
'    VALUES (',
'      rec.HEADER_ID, rec.BUDGET_CATEGORY, rec.ACTIVITY, rec.COA, rec.COA_DESC, rec.LOCATION,',
'      rec.PRODUCT, rec.UOM, rec.QUANTITY, rec.PRICE, rec.TOTAL, rec.PERIOD,',
'      rec.REJECT_NOTES, rec.CREATED_DATE, rec.CREATED_BY, rec.UPDATED_DATE, rec.UPDATED_BY,',
'      rec.LINE_DESCRIPTION, rec.COST_CENTER, rec.LINE_SOURCE,',
'      rec.LNS_ACTIVITY_CODE',
'    );',
'  END LOOP;',
'',
'  COMMIT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(793068523726899719)
,p_internal_uid=>143030327795048608
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(793084340794905005)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert To Batch ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_upload_batch_id VARCHAR2(20);',
'BEGIN',
'    IF :P2_FILE IS NOT NULL THEN',
'        -- Ambil sequence batch ID',
'        l_upload_batch_id := APX_BUDGET_ENTRY_FULL_TBL_BATCH_ID_SEQ.NEXTVAL();',
'',
'    UPDATE APX_BUDGET_ENTRY_FULL_TBL',
'    SET BATCH_ID = l_upload_batch_id,',
'        FILENAME_BATCH =:P2_FILE_NAME',
'    -- WHERE FILENAME IS NULL',
'    WHERE BATCH_ID IS NULL;',
'',
'',
'    END IF;',
'    ',
'    COMMIT;',
'    ',
'    EXCEPTION WHEN OTHERS THEN',
'        ROLLBACK; ',
'        RAISE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(793068523726899719)
,p_internal_uid=>143030404613048609
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(793069394586899730)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''CLEAR'' or :P2_ERROR_ROW_COUNT = 0'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>143015458405043334
);
wwv_flow_imp.component_end;
end;
/
