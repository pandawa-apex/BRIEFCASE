prompt --application/shared_components/automations/xtd_bf_revenue_actual
begin
--   Manifest
--     AUTOMATION: XTD_BF_REVENUE_ACTUAL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.5'
,p_default_workspace_id=>1389747021320061
,p_default_application_id=>107
,p_default_id_offset=>776066518237927778
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_automation(
 p_id=>wwv_flow_imp.id(1377884664384789050)
,p_name=>'XTD_BF_REVENUE_ACTUAL'
,p_static_id=>'xtd-bf-revenue-actual'
,p_trigger_type=>'POLLING'
,p_polling_interval=>'FREQ=DAILY;INTERVAL=1;BYHOUR=0;BYMINUTE=0'
,p_polling_status=>'DISABLED'
,p_result_type=>'ALWAYS'
,p_use_local_sync_table=>false
,p_query_type=>'TABLE'
,p_include_rowid_column=>false
,p_commit_each_row=>false
,p_error_handling_type=>'IGNORE'
);
wwv_flow_imp_shared.create_automation_action(
 p_id=>wwv_flow_imp.id(1377884966565789081)
,p_automation_id=>wwv_flow_imp.id(1377884664384789050)
,p_name=>'Truncate Table APX_BF_REVENUE_ACT_AMT'
,p_execution_sequence=>10
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   EXECUTE IMMEDIATE ''TRUNCATE TABLE APX_BF_REVENUE_ACT_AMT'';',
'END;',
''))
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_error_message=>'Error ketika membersihkan table staging: APX_BF_REVENUE_ACT_AMT'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_shared.create_automation_action(
 p_id=>wwv_flow_imp.id(1377886038608843871)
,p_automation_id=>wwv_flow_imp.id(1377884664384789050)
,p_name=>'Insert Data into APX_BF_REVENUE_ACT_AMT'
,p_execution_sequence=>20
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   INSERT INTO APX_BF_REVENUE_ACT_AMT',
'   (',
'       COMPANY,',
'       SOURCE,',
'       SOURCE_STATUS,',
'       PRODUCT,',
'       PRODUCT_DESC,',
'       COA,',
'       COA_DESC,',
'       TOTAL_BALANCE,',
'       PERIOD,',
'       LAST_SYNCHRONIZED,',
'       DEPT_NAME_SYNC,',
'       STAGE_ID_SYNC,',
'       SYNC_STATUS',
'   )',
'   SELECT ',
'       base.company,',
'       ''Revenue'',',
'       ''Revenue'',',
'       base.PRODUCT,',
'       base.PRODUCT_DESC,',
'       base.COA,',
'       base.COA_DESC,',
'       base.TOTAL_BALANCE,',
'       base.PERIOD,',
'       SYSTIMESTAMP AS last_synchronized,',
'       NULL AS dept_name_sync,',
'       NULL AS stage_id_sync,',
'       ''Done'' AS sync_status',
'   FROM apps.XTD_BF_REVENUE_ACTUAL_V base;',
'',
'   COMMIT;',
'',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      ROLLBACK;',
'      RAISE_APPLICATION_ERROR(-20001, ''Error inserting into APX_BF_REVENUE_ACT_AMT: '' || SQLERRM);',
'END;',
''))
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_error_message=>'Terjadi kesalahan ketika refreshing data table APX_BF_REVENUE_ACT_AMT'
,p_stop_execution_on_error=>true
);
wwv_flow_imp.component_end;
end;
/
