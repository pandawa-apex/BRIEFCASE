prompt --workspace/credentials/credentials_for_budget_monitoring_lines
begin
--   Manifest
--     CREDENTIAL: Credentials for Budget Monitoring Lines
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1466964046809863
,p_default_application_id=>101
,p_default_id_offset=>18923207992089920
,p_default_owner=>'XTD'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(19075942947251916)
,p_name=>'Credentials for Budget Monitoring Lines'
,p_static_id=>'credentials_for_budget_monitoring_lines'
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
