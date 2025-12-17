prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 102
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1475951226492231
,p_default_application_id=>102
,p_default_id_offset=>28679468460710035
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(774801514491625584)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'23.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(774800435394625528)
,p_default_page_template=>wwv_flow_imp.id(40068233589113203)
,p_default_dialog_template=>wwv_flow_imp.id(774557307287624742)
,p_error_template=>wwv_flow_imp.id(774554670913624741)
,p_printer_friendly_template=>wwv_flow_imp.id(774549795149624739)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(774554670913624741)
,p_default_button_template=>wwv_flow_imp.id(774711513981624922)
,p_default_region_template=>wwv_flow_imp.id(774638277445624820)
,p_default_chart_template=>wwv_flow_imp.id(774638277445624820)
,p_default_form_template=>wwv_flow_imp.id(774638277445624820)
,p_default_reportr_template=>wwv_flow_imp.id(774638277445624820)
,p_default_tabform_template=>wwv_flow_imp.id(774638277445624820)
,p_default_wizard_template=>wwv_flow_imp.id(774638277445624820)
,p_default_menur_template=>wwv_flow_imp.id(774650625947624824)
,p_default_listr_template=>wwv_flow_imp.id(774638277445624820)
,p_default_irr_template=>wwv_flow_imp.id(774628479150624817)
,p_default_report_template=>wwv_flow_imp.id(774676452752624850)
,p_default_label_template=>wwv_flow_imp.id(774708951888624906)
,p_default_menu_template=>wwv_flow_imp.id(774713089463624929)
,p_default_calendar_template=>wwv_flow_imp.id(774713127736624958)
,p_default_list_template=>wwv_flow_imp.id(774692862236624880)
,p_default_nav_list_template=>wwv_flow_imp.id(774704626392624894)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(774704626392624894)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(774699285858624890)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(774574468998624786)
,p_default_dialogr_template=>wwv_flow_imp.id(774571699333624785)
,p_default_option_label=>wwv_flow_imp.id(774708951888624906)
,p_default_required_label=>wwv_flow_imp.id(774710222994624911)
,p_default_navbar_list_template=>wwv_flow_imp.id(774698901372624888)
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
