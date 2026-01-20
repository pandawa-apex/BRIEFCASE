prompt --workspace/credentials/credentials_for_bf_user_comp_access_2
begin
--   Manifest
--     CREDENTIAL: Credentials for BF - User Comp Access (2)
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1468196320002782
,p_default_application_id=>101
,p_default_id_offset=>11904843373585791
,p_default_owner=>'EXT'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(14112105817605842)
,p_name=>'Credentials for BF - User Comp Access (2)'
,p_static_id=>'credentials_for_bf_user_comp_access_2_'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'http://192.168.150.114:8080/ords/consapex/',
'http://192.168.150.114:8080/ords/consapex/oauth/token',
''))
,p_prompt_on_install=>true
);
wwv_flow_imp.component_end;
end;
/
