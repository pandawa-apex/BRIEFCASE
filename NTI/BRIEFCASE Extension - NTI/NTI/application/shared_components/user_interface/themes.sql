prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1466964046809863
,p_default_application_id=>101
,p_default_id_offset=>18923207992089920
,p_default_owner=>'XTD'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(762846296093988900)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'23.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(762845216996988844)
,p_default_page_template=>wwv_flow_imp.id(28113015191476519)
,p_default_dialog_template=>wwv_flow_imp.id(762602088889988058)
,p_error_template=>wwv_flow_imp.id(762599452515988057)
,p_printer_friendly_template=>wwv_flow_imp.id(762594576751988055)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(762599452515988057)
,p_default_button_template=>wwv_flow_imp.id(762756295583988238)
,p_default_region_template=>wwv_flow_imp.id(762683059047988136)
,p_default_chart_template=>wwv_flow_imp.id(762683059047988136)
,p_default_form_template=>wwv_flow_imp.id(762683059047988136)
,p_default_reportr_template=>wwv_flow_imp.id(762683059047988136)
,p_default_tabform_template=>wwv_flow_imp.id(762683059047988136)
,p_default_wizard_template=>wwv_flow_imp.id(762683059047988136)
,p_default_menur_template=>wwv_flow_imp.id(762695407549988140)
,p_default_listr_template=>wwv_flow_imp.id(762683059047988136)
,p_default_irr_template=>wwv_flow_imp.id(762673260752988133)
,p_default_report_template=>wwv_flow_imp.id(762721234354988166)
,p_default_label_template=>wwv_flow_imp.id(762753733490988222)
,p_default_menu_template=>wwv_flow_imp.id(762757871065988245)
,p_default_calendar_template=>wwv_flow_imp.id(762757909338988274)
,p_default_list_template=>wwv_flow_imp.id(762737643838988196)
,p_default_nav_list_template=>wwv_flow_imp.id(762749407994988210)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(762749407994988210)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(762744067460988206)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(762619250600988102)
,p_default_dialogr_template=>wwv_flow_imp.id(762616480935988101)
,p_default_option_label=>wwv_flow_imp.id(762753733490988222)
,p_default_required_label=>wwv_flow_imp.id(762755004596988227)
,p_default_navbar_list_template=>wwv_flow_imp.id(762743682974988204)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
