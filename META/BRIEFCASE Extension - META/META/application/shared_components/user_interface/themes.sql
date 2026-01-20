prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 107
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.5'
,p_default_workspace_id=>1389747021320061
,p_default_application_id=>107
,p_default_id_offset=>776066518237927778
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(1512368724325912804)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(1371780148034351107)
,p_default_dialog_template=>wwv_flow_imp.id(1512124517121911962)
,p_error_template=>wwv_flow_imp.id(1512121880747911961)
,p_printer_friendly_template=>wwv_flow_imp.id(1512117004983911959)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(1512121880747911961)
,p_default_button_template=>wwv_flow_imp.id(1512278723815912142)
,p_default_region_template=>wwv_flow_imp.id(1512205487279912040)
,p_default_chart_template=>wwv_flow_imp.id(1512205487279912040)
,p_default_form_template=>wwv_flow_imp.id(1512205487279912040)
,p_default_reportr_template=>wwv_flow_imp.id(1512205487279912040)
,p_default_tabform_template=>wwv_flow_imp.id(1512205487279912040)
,p_default_wizard_template=>wwv_flow_imp.id(1512205487279912040)
,p_default_menur_template=>wwv_flow_imp.id(1512217835781912044)
,p_default_listr_template=>wwv_flow_imp.id(1512205487279912040)
,p_default_irr_template=>wwv_flow_imp.id(1512195688984912037)
,p_default_report_template=>wwv_flow_imp.id(1512243662586912070)
,p_default_label_template=>wwv_flow_imp.id(1512276161722912126)
,p_default_menu_template=>wwv_flow_imp.id(1512280299297912149)
,p_default_calendar_template=>wwv_flow_imp.id(1512280337570912178)
,p_default_list_template=>wwv_flow_imp.id(1512260072070912100)
,p_default_nav_list_template=>wwv_flow_imp.id(1512271836226912114)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(1512271836226912114)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(1512266495692912110)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(1512141678832912006)
,p_default_dialogr_template=>wwv_flow_imp.id(1512138909167912005)
,p_default_option_label=>wwv_flow_imp.id(1512276161722912126)
,p_default_required_label=>wwv_flow_imp.id(1512277432828912131)
,p_default_navbar_list_template=>wwv_flow_imp.id(1512266111206912108)
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
