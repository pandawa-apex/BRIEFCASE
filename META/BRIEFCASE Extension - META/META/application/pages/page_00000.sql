prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_last_updated_by=>'MANUEL'
,p_last_upd_yyyymmddhh24miss=>'20251110095520'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1371753162379662013)
,p_name=>'P0_LOGIN_LINK'
,p_item_sequence=>10
,p_item_default=>'http://metauat.nna.net:8080/ords/r/metaapex/briefcase-extension/login'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1371753277436662014)
,p_name=>'P0_EMAIL_FROM'
,p_item_sequence=>20
,p_item_default=>'noreply.briefcase@nusamail.net'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
