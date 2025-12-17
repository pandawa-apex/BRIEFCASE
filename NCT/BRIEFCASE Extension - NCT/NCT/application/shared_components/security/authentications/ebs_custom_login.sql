prompt --application/shared_components/security/authentications/ebs_custom_login
begin
--   Manifest
--     AUTHENTICATION: EBS Custom Login
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1475951226492231
,p_default_application_id=>102
,p_default_id_offset=>28679468460710035
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(34049989976630882)
,p_name=>'EBS Custom Login'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_01=>'xtd_apex_global.sentry_func'
,p_attribute_03=>'xtd_apex_global.validate_ebs_login'
,p_attribute_05=>'N'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>39510282480544
);
wwv_flow_imp.component_end;
end;
/
