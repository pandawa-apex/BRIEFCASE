prompt --application/shared_components/web_sources/bf_user_comp_access
begin
--   Manifest
--     WEB SOURCE: BF - User Comp Access
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1466964046809863
,p_default_application_id=>101
,p_default_id_offset=>18923207992089920
,p_default_owner=>'XTD'
);
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(21058814724608886)
,p_name=>'BF - User Comp Access'
,p_static_id=>'bf_user_comp_access'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(21053885039608883)
,p_remote_server_id=>wwv_flow_imp.id(18290385261748631)
,p_url_path_prefix=>'user/user_comp_access'
,p_auth_remote_server_id=>wwv_flow_imp.id(18354519036015174)
,p_auth_url_path_prefix=>'ords/consapex/oauth/token'
,p_credential_id=>wwv_flow_imp.id(21053509341608881)
,p_sync_is_active=>true
,p_sync_table_owner=>'XTD'
,p_sync_table_name=>'APX_BF_USER_COMP_ACCESS'
,p_sync_type=>'MERGE'
,p_sync_interval=>'FREQ=MINUTELY;INTERVAL=15;BYSECOND=0'
,p_sync_max_http_requests=>1000
,p_version_scn=>39509820737828
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(21059447786608887)
,p_web_src_module_id=>wwv_flow_imp.id(21058814724608886)
,p_name=>'company'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'21000'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(21059048926608886)
,p_web_src_module_id=>wwv_flow_imp.id(21058814724608886)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
