prompt --application/shared_components/web_sources/budget_monitoring_header
begin
--   Manifest
--     WEB SOURCE: Budget Monitoring Header
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
 p_id=>wwv_flow_imp.id(19006166497232005)
,p_name=>'Budget Monitoring Header'
,p_static_id=>'budget_monitoring_header'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(19001164511232000)
,p_remote_server_id=>wwv_flow_imp.id(18290385261748631)
,p_url_path_prefix=>'budget/budget_monitor'
,p_auth_remote_server_id=>wwv_flow_imp.id(18354519036015174)
,p_auth_url_path_prefix=>'ords/consapex/oauth/token'
,p_credential_id=>wwv_flow_imp.id(19000884221231997)
,p_sync_is_active=>true
,p_sync_table_owner=>'XTD'
,p_sync_table_name=>'APX_BF_BUDGET_MONITOR_HDR'
,p_sync_type=>'REPLACE'
,p_sync_interval=>'FREQ=MINUTELY;INTERVAL=30;BYSECOND=0'
,p_sync_max_http_requests=>1000
,p_version_scn=>39507010944648
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(19006759998232006)
,p_web_src_module_id=>wwv_flow_imp.id(19006166497232005)
,p_name=>'company'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'NTI'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(19006307035232005)
,p_web_src_module_id=>wwv_flow_imp.id(19006166497232005)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
