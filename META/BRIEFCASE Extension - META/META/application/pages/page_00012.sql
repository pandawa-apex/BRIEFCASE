prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.5'
,p_default_workspace_id=>1389747021320061
,p_default_application_id=>107
,p_default_id_offset=>776066518237927778
,p_default_owner=>'EXT'
);
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Check Duplicate Hak Akses'
,p_alias=>'CHECK-DUPLICATE-HAK-AKSES'
,p_page_mode=>'MODAL'
,p_step_title=>'Check Duplicate Hak Akses'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'YEREMIA.NDAUMANU@LIMAMAIL.NET'
,p_last_upd_yyyymmddhh24miss=>'20260115134557'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(786973017317312365)
,p_plug_name=>'Check Duplicate Hak Akses'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1512195688984912037)
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT xbf.title, xbf.dept_name, xbf.username',
'  FROM ext.XTD_BF_USER_ACTIVITY_V  xbf',
'       JOIN (SELECT DISTINCT ch.username, ch.dept_name',
'               FROM (  SELECT username,',
'                              dept_name,',
'                              ACTIVITY_DEPT,',
'                              ACTIVITY_CODE,',
'                              COUNT (*)     AS total_rows',
'                         FROM ext.XTD_BF_USER_ACTIVITY_V',
'                         WHERE COMPANY_NAME = :P12_COMPANY_VALUE',
'                     GROUP BY username,',
'                              dept_name,',
'                              ACTIVITY_DEPT,',
'                              ACTIVITY_CODE',
'                       HAVING COUNT (*) > 1',
'                     ORDER BY username, dept_name) ch) dup',
'           ON xbf.dept_name = dup.dept_name AND xbf.username = dup.username'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12_COMPANY_VALUE'
,p_prn_page_header=>'Check Duplicate Hak Akses'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(786973155944312365)
,p_name=>'Check Duplicate Hak Akses'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No duplicate found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'YEREMIA.NDAUMANU@LIMAMAIL.NET'
,p_internal_uid=>786973155944312365
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(786973429253312378)
,p_db_column_name=>'TITLE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(786973865802312383)
,p_db_column_name=>'DEPT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Dept Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(786974200538312383)
,p_db_column_name=>'USERNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(786975343566318026)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'7869754'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TITLE:DEPT_NAME:USERNAME'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(778311932989848706)
,p_button_sequence=>40
,p_button_name=>'CHECK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1512278723815912142)
,p_button_image_alt=>'Check'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(778311806633848705)
,p_name=>'P12_COMPANY'
,p_is_required=>true
,p_item_sequence=>30
,p_prompt=>'Company'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT FLEX_SEGMENT_VALUE FROM apps.gl_legal_entities_bsvs WHERE END_DATE IS NULL'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(1512276161722912126)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(778312056355848707)
,p_name=>'P12_COMPANY_VALUE'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(778312158940848708)
,p_name=>'Set Value'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(778311932989848706)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(778312274805848709)
,p_event_id=>wwv_flow_imp.id(778312158940848708)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_COMPANY_VALUE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P12_COMPANY'
,p_attribute_07=>'P12_COMPANY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(778312329583848710)
,p_event_id=>wwv_flow_imp.id(778312158940848708)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(786973017317312365)
);
wwv_flow_imp.component_end;
end;
/
