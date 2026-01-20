prompt --application/shared_components/web_sources/bf_user_comp_access
begin
--   Manifest
--     WEB SOURCE: BF - User Comp Access
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
 p_id=>wwv_flow_imp.id(1374207764963489056)
,p_name=>'BF - User Comp Access'
,p_static_id=>'bf_user_comp_access'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(1374202767186489055)
,p_remote_server_id=>wwv_flow_imp.id(1371589583372695304)
,p_url_path_prefix=>'user/user_comp_access_meta'
,p_auth_remote_server_id=>wwv_flow_imp.id(1371622674628815904)
,p_auth_url_path_prefix=>'ords/consapex/oauth/token'
,p_credential_id=>wwv_flow_imp.id(1374198662746432359)
,p_sync_table_owner=>'EXT'
,p_sync_table_name=>'APX_BF_USER_COMP_ACCESS'
,p_sync_type=>'MERGE'
,p_sync_interval=>'FREQ=MINUTELY;INTERVAL=15;BYSECOND=0'
,p_sync_max_http_requests=>1000
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(1374208334967489057)
,p_web_src_module_id=>wwv_flow_imp.id(1374207764963489056)
,p_name=>'company'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'11000,11101'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(1374207989804489056)
,p_web_src_module_id=>wwv_flow_imp.id(1374207764963489056)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
