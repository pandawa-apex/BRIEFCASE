prompt --application/shared_components/web_sources/activity
begin
--   Manifest
--     WEB SOURCE: Activity
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.5'
,p_default_workspace_id=>1389747021320061
,p_default_application_id=>107
,p_default_id_offset=>776066518237927778
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(1371623194389839068)
,p_name=>'Activity'
,p_static_id=>'activity'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(1371611833275839063)
,p_remote_server_id=>wwv_flow_imp.id(1371589583372695304)
,p_url_path_prefix=>'bf_activity/all_meta'
,p_sync_table_owner=>'EXT'
,p_sync_table_name=>'APX_BF_ACTIVITY'
,p_sync_type=>'REPLACE'
,p_sync_interval=>'FREQ=MINUTELY;INTERVAL=35;BYSECOND=0'
,p_sync_max_http_requests=>1000
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(1371623743669839068)
,p_web_src_module_id=>wwv_flow_imp.id(1371623194389839068)
,p_name=>'company'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'NNA,DNN'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(1371623369918839068)
,p_web_src_module_id=>wwv_flow_imp.id(1371623194389839068)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
