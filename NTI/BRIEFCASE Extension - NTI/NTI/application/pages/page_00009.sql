prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_name=>'Master Hak Akses'
,p_alias=>'MASTER-HAK-AKSES'
,p_step_title=>'Master Hak Akses'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#hak_akses_user, #hak_akses_dept {',
'    position: relative;',
'    border-radius: 24px;',
'    background: rgba(255, 255, 255, 0.95);',
'    backdrop-filter: blur(20px) saturate(180%);',
'    border: 1px solid rgba(255, 255, 255, 0.8);',
'    box-shadow: ',
'        0 4px 24px rgba(0, 0, 0, 0.06),',
'        0 1px 4px rgba(0, 0, 0, 0.03),',
'        inset 0 1px 0 rgba(255, 255, 255, 0.9),',
'        inset 0 0 0 1px rgba(255, 255, 255, 0.7);',
'    overflow: hidden;',
'    transition: all 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94);',
'    transform: translateY(0);',
'    color: #1a1a1a;',
'}',
'',
'#hak_akses_user::before, #hak_akses_dept::before {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: 0;',
'    right: 0;',
'    bottom: 0;',
'    background: ',
'        radial-gradient(circle at 20% 80%, rgba(145, 94, 255, 0.03) 0%, transparent 50%),',
'        radial-gradient(circle at 80% 20%, rgba(0, 219, 222, 0.03) 0%, transparent 50%),',
'        radial-gradient(circle at 40% 40%, rgba(255, 255, 255, 0.1) 0%, transparent 50%);',
'    pointer-events: none;',
'    border-radius: 24px;',
'    z-index: 1;',
'}',
'',
'#hak_akses_user:focus-within, #hak_akses_dept:focus-within,',
'#hak_akses_user:hover, #hak_akses_dept:hover {',
'    background: rgba(255, 255, 255, 0.98);',
'    backdrop-filter: blur(25px) saturate(200%);',
'    box-shadow: ',
'        0 8px 32px rgba(0, 0, 0, 0.08),',
'        0 2px 8px rgba(0, 0, 0, 0.04),',
'        inset 0 1px 0 rgba(255, 255, 255, 0.95),',
'        inset 0 0 0 1px rgba(255, 255, 255, 0.8);',
'    transform: translateY(-2px);',
'    border-color: rgba(145, 94, 255, 0.2);',
'}',
'',
'#hak_akses_user::after, #hak_akses_dept::after {',
'    content: '''';',
'    position: absolute;',
'    top: -2px;',
'    left: -2px;',
'    right: -2px;',
'    bottom: -2px;',
'    background: linear-gradient(45deg, ',
'        rgba(145, 94, 255, 0) 0%,',
'        rgba(145, 94, 255, 0.1) 25%,',
'        rgba(0, 219, 222, 0.1) 75%,',
'        rgba(0, 219, 222, 0) 100%);',
'    border-radius: 26px;',
'    z-index: -1;',
'    opacity: 0;',
'    transition: opacity 0.4s ease;',
'    animation: liquidFlow 3s ease-in-out infinite;',
'}',
'',
'#hak_akses_user:hover::after, #hak_akses_dept:hover::after {',
'    opacity: 1;',
'}',
'',
'@keyframes liquidFlow {',
'    0%, 100% {',
'        background-position: 0% 50%;',
'    }',
'    50% {',
'        background-position: 100% 50%;',
'    }',
'}',
'',
'#hak_akses_user .t-Region-header, ',
'#hak_akses_dept .t-Region-header {',
'    background: transparent;',
'    border-bottom: 1px solid rgba(0, 0, 0, 0.06);',
'    position: relative;',
'    z-index: 2;',
'    padding: 24px 24px 16px 24px;',
'}',
'',
'#hak_akses_user .t-Region-title, ',
'#hak_akses_dept .t-Region-title {',
'    color: #1a1a1a;',
'    font-weight: 600;',
'    font-size: 1.3em;',
'    letter-spacing: -0.01em;',
'    margin: 0;',
'    text-shadow: none;',
'}',
'',
'#hak_akses_user .t-Region-body, ',
'#hak_akses_dept .t-Region-body {',
'    position: relative;',
'    z-index: 2;',
'    padding: 24px;',
'    background: transparent;',
'}',
'',
'#hak_akses_user .t-ButtonRegion, ',
'#hak_akses_dept .t-ButtonRegion {',
'    background: transparent;',
'    border: none;',
'    padding: 0;',
'    gap: 12px;',
'}',
'',
'#hak_akses_user .t-Button, ',
'#hak_akses_dept .t-Button {',
'    border-radius: 16px;',
'    border: 1px solid rgba(0, 0, 0, 0.08);',
'    background: rgba(255, 255, 255, 0.8);',
'    backdrop-filter: blur(10px);',
'    color: #1a1a1a;',
'    transition: all 0.3s ease;',
'    font-weight: 500;',
'    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.03);',
'    padding: 12px 20px;',
'}',
'',
'#hak_akses_user .t-Button:hover, ',
'#hak_akses_dept .t-Button:hover {',
'    background: rgba(255, 255, 255, 0.95);',
'    border-color: rgba(145, 94, 255, 0.3);',
'    transform: translateY(-1px);',
'    box-shadow: 0 4px 16px rgba(0, 0, 0, 0.06);',
'}',
'',
'#hak_akses_user .t-Button--hot, ',
'#hak_akses_dept .t-Button--hot {',
'    background: linear-gradient(135deg, #915EFF, #00dbde);',
'    border: none;',
'    color: white;',
'    box-shadow: 0 4px 16px rgba(145, 94, 255, 0.25);',
'    font-weight: 600;',
'}',
'',
'#hak_akses_user .t-Button--hot:hover, ',
'#hak_akses_dept .t-Button--hot:hover {',
'    background: linear-gradient(135deg, #9d6eff, #00e6eb);',
'    box-shadow: 0 6px 20px rgba(145, 94, 255, 0.35);',
'    transform: translateY(-2px);',
'}',
'',
'@keyframes gentleAppear {',
'    from {',
'        opacity: 0;',
'        transform: translateY(12px) scale(0.995);',
'    }',
'    to {',
'        opacity: 1;',
'        transform: translateY(0) scale(1);',
'    }',
'}',
'',
'#hak_akses_user, #hak_akses_dept {',
'    animation: gentleAppear 0.6s ease-out;',
'}',
'',
'#hak_akses_dept {',
'    animation-delay: 0.08s;',
'}',
'',
'',
'@media (max-width: 768px) {',
'    #hak_akses_user, #hak_akses_dept {',
'        border-radius: 20px;',
'        margin-bottom: 16px;',
'        backdrop-filter: blur(15px);',
'    }',
'    ',
'    #hak_akses_user .t-Region-body, ',
'    #hak_akses_dept .t-Region-body {',
'        padding: 20px;',
'    }',
'    ',
'    #hak_akses_user .t-Region-header, ',
'    #hak_akses_dept .t-Region-header {',
'        padding: 20px 20px 16px 20px;',
'    }',
'}',
'',
'#hak_akses_user:focus, #hak_akses_dept:focus {',
'    outline: 2px solid rgba(145, 94, 255, 0.3);',
'    outline-offset: 2px;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24036971940737941)
,p_plug_name=>'Hak Akses User'
,p_region_name=>'hak_akses_user'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(762683059047988136)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24033290757737904)
,p_plug_name=>'Buttons Container (User)'
,p_parent_plug_id=>wwv_flow_imp.id(24036971940737941)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(762619250600988102)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24037031456737942)
,p_plug_name=>'Hak Akses Department'
,p_region_name=>'hak_akses_dept'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(762683059047988136)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24037197665737943)
,p_plug_name=>'Buttons Container (Dept)'
,p_parent_plug_id=>wwv_flow_imp.id(24037031456737942)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(762619250600988102)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(763094820898784602)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(763095532376784624)
,p_plug_name=>'Master Hak Akses'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762673260752988133)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       TITLE,',
'       ''<a href="'' || apex_util.prepare_url(',
'    ''f?p=&APP_ID.:10:&APP_SESSION.:::10:P10_ID:'' || ID',
') || ''" class="t-Button t-Button--noLabel t-Button--icon t-Button--warning t-Button--simple edit-icon" title="Edit">',
'    <span aria-hidden="true" class="t-Icon fa fa-pencil"></span>',
'</a>',
'&nbsp;',
'<a href="'' || apex_util.prepare_url(',
'    ''f?p=&APP_ID.:11:&APP_SESSION.:::11:P11_SET_APX_ACCESS_RIGHTS_ID:'' || ID',
') || ''" class="t-Button t-Button--noLabel t-Button--icon t-Button--success t-Button--simple add-icon" title="Tambah">',
'    <span aria-hidden="true" class="t-Icon fa fa-plus"></span>',
'</a>'' AS ACTION_TASK',
'',
'  from APX_BF_ACCESS_RIGHTS'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Master Hak Akses'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(763095610921784624)
,p_name=>'Master Hak Akses'
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
,p_owner=>'CHESAR.BUDIPRAKOSO@LIMAMAIL.NET'
,p_internal_uid=>143216009699756958
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(763096047494784656)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(763096489821784664)
,p_db_column_name=>'TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(763096842133784665)
,p_db_column_name=>'ACTION_TASK'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Action Task'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(763107537714042514)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1432280'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:TITLE:ACTION_TASK'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24033431846737906)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(24033290757737904)
,p_button_name=>'UPLOAD_HAK_AKSES_USER'
,p_button_static_id=>'upload_hak_akses_user_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(762756307229988239)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_HAK_AKSES:USER'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_ACL.HAS_USER_ROLE (',
'                     p_application_id  => :APP_ID,',
'                     p_user_name       => :APP_USER,',
'                     p_role_static_id  => ''ADMINISTRATOR'')'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-arrow-circle-o-up'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24037223973737944)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(24037197665737943)
,p_button_name=>'UPLOAD_HAK_AKSES_DEPT'
,p_button_static_id=>'upload_hak_akses_dept_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(762756307229988239)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_HAK_AKSES:DEPT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_ACL.HAS_USER_ROLE (',
'                     p_application_id  => :APP_ID,',
'                     p_user_name       => :APP_USER,',
'                     p_role_static_id  => ''ADMINISTRATOR'')'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-arrow-circle-o-up'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(763075959392153385)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(763095532376784624)
,p_button_name=>'Add'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(762756307229988239)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Tambah Hak Akses'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_USERNAME:'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(763075709148153383)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(763095532376784624)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(763075872530153384)
,p_event_id=>wwv_flow_imp.id(763075709148153383)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(763095532376784624)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
