prompt --application/shared_components/web_sources/activity
begin
--   Manifest
--     WEB SOURCE: Activity
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
 p_id=>wwv_flow_imp.id(39382075807438075)
,p_name=>'Activity'
,p_static_id=>'activity'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(39370739189438117)
,p_remote_server_id=>wwv_flow_imp.id(30645307497151921)
,p_url_path_prefix=>'/bf_activity/all'
,p_sync_is_active=>true
,p_sync_table_owner=>'EXT'
,p_sync_table_name=>'APX_BF_ACTIVITY'
,p_sync_type=>'REPLACE'
,p_sync_interval=>'FREQ=MINUTELY;INTERVAL=35;BYSECOND=0'
,p_sync_max_http_requests=>1000
,p_version_scn=>39507012019511
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(39382686795438069)
,p_web_src_module_id=>wwv_flow_imp.id(39382075807438075)
,p_name=>'company'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'NSTI'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(39382229831438072)
,p_web_src_module_id=>wwv_flow_imp.id(39382075807438075)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
