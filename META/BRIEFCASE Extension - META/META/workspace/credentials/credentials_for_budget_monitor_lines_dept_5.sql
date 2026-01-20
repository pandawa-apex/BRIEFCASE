prompt --workspace/credentials/credentials_for_budget_monitor_lines_dept_5
begin
--   Manifest
--     CREDENTIAL: Credentials for Budget Monitor Lines Dept 5
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.5'
,p_default_workspace_id=>1389747021320061
,p_default_application_id=>107
,p_default_id_offset=>776066518237927778
,p_default_owner=>'EXT'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(779765670794552399)
,p_name=>'Credentials for Budget Monitor Lines Dept 5'
,p_static_id=>'credentials_for_budget_monitor_lines_dept_5'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'http://192.168.150.114:8080/ords/consapex/',
''))
,p_prompt_on_install=>true
);
wwv_flow_imp.component_end;
end;
/
