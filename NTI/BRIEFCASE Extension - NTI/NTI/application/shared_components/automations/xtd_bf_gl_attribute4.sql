prompt --application/shared_components/automations/xtd_bf_gl_attribute4
begin
--   Manifest
--     AUTOMATION: XTD_BF_GL_ATTRIBUTE4
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1466964046809863
,p_default_application_id=>101
,p_default_id_offset=>18923207992089920
,p_default_owner=>'XTD'
);
wwv_flow_imp_shared.create_automation(
 p_id=>wwv_flow_imp.id(19200678706455339)
,p_name=>'XTD_BF_GL_ATTRIBUTE4'
,p_static_id=>'xtd-bf-gl-attribute4'
,p_trigger_type=>'POLLING'
,p_polling_interval=>'FREQ=MINUTELY;INTERVAL=5'
,p_polling_status=>'ACTIVE'
,p_result_type=>'ROWS'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from apps.XTD_BF_GL_P2P_V'))
,p_include_rowid_column=>false
,p_commit_each_row=>false
,p_error_handling_type=>'IGNORE'
);
wwv_flow_imp_shared.create_automation_action(
 p_id=>wwv_flow_imp.id(19200954666455365)
,p_automation_id=>wwv_flow_imp.id(19200678706455339)
,p_name=>'Procedure Update Attribute4 Activity Code'
,p_execution_sequence=>10
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'apps.xtd_test_wrap_proc;',
'end;'))
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_error_message=>'Error Procedure Update'
,p_stop_execution_on_error=>true
);
wwv_flow_imp.component_end;
end;
/
