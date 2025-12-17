prompt --workspace/credentials/credentials_for_bf_dept_access
begin
--   Manifest
--     CREDENTIAL: Credentials for BF - Dept Access
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1475951226492231
,p_default_application_id=>102
,p_default_id_offset=>28679468460710035
,p_default_owner=>'EXT'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(29573292058035590)
,p_name=>'Credentials for BF - Dept Access'
,p_static_id=>'credentials_for_bf_dept_access'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'http://192.168.150.96:8080/ords/consapex/',
'http://192.168.150.96:8080/ords/consapex/oauth/token',
''))
,p_prompt_on_install=>true
);
wwv_flow_imp.component_end;
end;
/
