prompt --application/shared_components/web_sources/bf_user_comp_access
begin
--   Manifest
--     WEB SOURCE: BF - User Comp Access
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1468196320002782
,p_default_application_id=>101
,p_default_id_offset=>11904843373585791
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(14117409095605836)
,p_name=>'BF - User Comp Access'
,p_static_id=>'bf_user_comp_access'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(14112365872605840)
,p_remote_server_id=>wwv_flow_imp.id(21587426991381088)
,p_url_path_prefix=>'user/user_comp_access'
,p_auth_remote_server_id=>wwv_flow_imp.id(21587609100381084)
,p_auth_url_path_prefix=>'ords/consapex/oauth/token'
,p_credential_id=>wwv_flow_imp.id(14112105817605842)
,p_sync_is_active=>true
,p_sync_table_owner=>'EXT'
,p_sync_table_name=>'APX_BF_USER_COMP_ACCESS'
,p_sync_type=>'MERGE'
,p_sync_interval=>'FREQ=MINUTELY;INTERVAL=15;BYSECOND=0'
,p_sync_max_http_requests=>1000
,p_version_scn=>39516390754098
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(14118028321605836)
,p_web_src_module_id=>wwv_flow_imp.id(14117409095605836)
,p_name=>'company'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'22101'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(14117599219605836)
,p_web_src_module_id=>wwv_flow_imp.id(14117409095605836)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
