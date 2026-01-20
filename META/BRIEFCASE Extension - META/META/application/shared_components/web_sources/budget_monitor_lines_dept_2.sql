prompt --application/shared_components/web_sources/budget_monitor_lines_dept_2
begin
--   Manifest
--     WEB SOURCE: Budget Monitor Lines Dept 2
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
 p_id=>wwv_flow_imp.id(779762816556537118)
,p_name=>'Budget Monitor Lines Dept 2'
,p_static_id=>'budget_monitor_lines_dept_2'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(779755440255537102)
,p_remote_server_id=>wwv_flow_imp.id(1371589583372695304)
,p_url_path_prefix=>'budget/budget_monitor_lines_meta_dept2'
,p_auth_remote_server_id=>wwv_flow_imp.id(1371622674628815904)
,p_auth_url_path_prefix=>'ords/consapex/oauth/token'
,p_credential_id=>wwv_flow_imp.id(779755156384537089)
,p_sync_is_active=>true
,p_sync_table_owner=>'EXT'
,p_sync_table_name=>'APX_BF_BUDGET_MONITOR_LNS'
,p_sync_type=>'MERGE'
,p_sync_interval=>'FREQ=MINUTELY;INTERVAL=34;BYSECOND=0'
,p_sync_max_http_requests=>1000
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(779763494968537126)
,p_web_src_module_id=>wwv_flow_imp.id(779762816556537118)
,p_name=>'company_name'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'NNA'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(779763004188537121)
,p_web_src_module_id=>wwv_flow_imp.id(779762816556537118)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
