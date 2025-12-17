prompt --workspace/credentials/credentials_for_budget_monitor_lines_3
begin
--   Manifest
--     CREDENTIAL: Credentials for Budget Monitor Lines (3)
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
 p_id=>wwv_flow_imp.id(31137178870445070)
,p_name=>'Credentials for Budget Monitor Lines (3)'
,p_static_id=>'credentials_for_budget_monitor_lines_3_'
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
