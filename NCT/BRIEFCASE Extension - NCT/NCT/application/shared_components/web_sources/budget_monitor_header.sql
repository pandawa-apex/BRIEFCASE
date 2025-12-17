prompt --application/shared_components/web_sources/budget_monitor_header
begin
--   Manifest
--     WEB SOURCE: Budget Monitor Header
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1475951226492231
,p_default_application_id=>102
,p_default_id_offset=>28679468460710035
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(30996280042699202)
,p_name=>'Budget Monitor Header'
,p_static_id=>'budget_monitor_header'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(30991310182699190)
,p_remote_server_id=>wwv_flow_imp.id(30645307497151921)
,p_url_path_prefix=>'budget/budget_monitor'
,p_auth_remote_server_id=>wwv_flow_imp.id(30645479235151925)
,p_auth_url_path_prefix=>'ords/consapex/oauth/token'
,p_credential_id=>wwv_flow_imp.id(30990988770699184)
,p_sync_is_active=>true
,p_sync_table_owner=>'EXT'
,p_sync_table_name=>'APX_BF_BUDGET_MONITOR_HDR'
,p_sync_type=>'REPLACE'
,p_sync_interval=>'FREQ=MINUTELY;INTERVAL=35;BYSECOND=0'
,p_sync_max_http_requests=>1000
,p_version_scn=>39507012049804
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(30996964904699205)
,p_web_src_module_id=>wwv_flow_imp.id(30996280042699202)
,p_name=>'company'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'NCT'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(30996529054699203)
,p_web_src_module_id=>wwv_flow_imp.id(30996280042699202)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
