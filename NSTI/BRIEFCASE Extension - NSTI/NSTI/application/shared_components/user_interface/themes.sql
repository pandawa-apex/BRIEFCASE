prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 104
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1643206756007669
,p_default_application_id=>104
,p_default_id_offset=>17112880843997265
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(793020631053817630)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'23.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(793019551956817574)
,p_default_page_template=>wwv_flow_imp.id(58287350151305249)
,p_default_dialog_template=>wwv_flow_imp.id(792776423849816788)
,p_error_template=>wwv_flow_imp.id(792773787475816787)
,p_printer_friendly_template=>wwv_flow_imp.id(792768911711816785)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(792773787475816787)
,p_default_button_template=>wwv_flow_imp.id(792930630543816968)
,p_default_region_template=>wwv_flow_imp.id(792857394007816866)
,p_default_chart_template=>wwv_flow_imp.id(792857394007816866)
,p_default_form_template=>wwv_flow_imp.id(792857394007816866)
,p_default_reportr_template=>wwv_flow_imp.id(792857394007816866)
,p_default_tabform_template=>wwv_flow_imp.id(792857394007816866)
,p_default_wizard_template=>wwv_flow_imp.id(792857394007816866)
,p_default_menur_template=>wwv_flow_imp.id(792869742509816870)
,p_default_listr_template=>wwv_flow_imp.id(792857394007816866)
,p_default_irr_template=>wwv_flow_imp.id(792847595712816863)
,p_default_report_template=>wwv_flow_imp.id(792895569314816896)
,p_default_label_template=>wwv_flow_imp.id(792928068450816952)
,p_default_menu_template=>wwv_flow_imp.id(792932206025816975)
,p_default_calendar_template=>wwv_flow_imp.id(792932244298817004)
,p_default_list_template=>wwv_flow_imp.id(792911978798816926)
,p_default_nav_list_template=>wwv_flow_imp.id(792923742954816940)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(792923742954816940)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(792918402420816936)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(792793585560816832)
,p_default_dialogr_template=>wwv_flow_imp.id(792790815895816831)
,p_default_option_label=>wwv_flow_imp.id(792928068450816952)
,p_default_required_label=>wwv_flow_imp.id(792929339556816957)
,p_default_navbar_list_template=>wwv_flow_imp.id(792918017934816934)
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
