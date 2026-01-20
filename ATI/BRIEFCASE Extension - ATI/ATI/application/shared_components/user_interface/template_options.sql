prompt --application/shared_components/user_interface/template_options
begin
--   Manifest
--     THEME OPTIONS: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1468196320002782
,p_default_application_id=>101
,p_default_id_offset=>11904843373585791
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(30895838034893261)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(30890431312893301)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp.component_end;
end;
/
