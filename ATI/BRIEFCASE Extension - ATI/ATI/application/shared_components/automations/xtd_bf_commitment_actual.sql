prompt --application/shared_components/automations/xtd_bf_commitment_actual
begin
--   Manifest
--     AUTOMATION: XTD_BF_COMMITMENT_ACTUAL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1468196320002782
,p_default_application_id=>101
,p_default_id_offset=>11904843373585791
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_automation(
 p_id=>wwv_flow_imp.id(24245095874357859)
,p_name=>'XTD_BF_COMMITMENT_ACTUAL'
,p_static_id=>'xtd-bf-commitment-actual'
,p_trigger_type=>'POLLING'
,p_polling_interval=>'FREQ=HOURLY;INTERVAL=1;BYMINUTE=0'
,p_polling_status=>'ACTIVE'
,p_result_type=>'ALWAYS'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_include_rowid_column=>false
,p_commit_each_row=>false
,p_error_handling_type=>'IGNORE'
);
wwv_flow_imp_shared.create_automation_action(
 p_id=>wwv_flow_imp.id(24245404813357573)
,p_automation_id=>wwv_flow_imp.id(24245095874357859)
,p_name=>'Truncate Table APX_BF_COMM_ACT_AMT'
,p_execution_sequence=>10
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   EXECUTE IMMEDIATE ''TRUNCATE TABLE APX_BF_COMM_ACT_AMT'';',
'END;',
''))
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_error_message=>'Error ketika membersihkan table staging: APX_BF_COMM_ACT_AMT'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_shared.create_automation_action(
 p_id=>wwv_flow_imp.id(24246954476348384)
,p_automation_id=>wwv_flow_imp.id(24245095874357859)
,p_name=>'Insert Data into APX_BF_COMM_ACT_AMT'
,p_execution_sequence=>20
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   INSERT INTO APX_BF_COMM_ACT_AMT',
'   (',
'       COMPANY,',
'       SOURCE,',
'       SOURCE_STATUS,',
'       ACTIVITY,',
'       COMMITMENT,',
'       ACTUAL_AMOUNT,',
'       PERIOD,',
'       PR_QUANTITY,',
'       PO_QUANTITY,',
'       RECEIPT_QUANTITY,',
'       INVOICED_QUANTITY,',
'       PR_COMMITMENT,',
'       PO_COMMITMENT,',
'       RCV_ACTUAL,',
'       INVOICE_ACTUAL,',
'       GL_MANUAL_ACTUAL,',
'       AR_INVOICE_ACTUAL,',
'       AR_MISC_ACTUAL,',
'       INVENTORY_ACTUAL,',
'       PR_NUMBER,',
'       PO_NUMBER,',
'       RCV_NUMBER,',
'       INVOICE_NUMBER,',
'       INVENTORY_NUMBER,',
'       JOURNAL_NAME,',
'       JOURNAL_BATCH,',
'       JOURNAL_LINE_DESC,',
'       AR_INVOICE_NUM,',
'       AR_MISC_RECEIPT,',
'       REQ_HEADER_ID,',
'       REQ_LINE_ID,',
'       REQ_DISTRIBUTION_ID,',
'       PO_HEADER_ID,',
'       PO_LINE_ID,',
'       PO_DISTRIBUTION_ID,',
'       PO_STATUS,',
'       RCV_ID,',
'       TRANSACTION_ID,',
'       INVOICE_ID,',
'       INVOICE_LINE_NUM,',
'       INVOICE_DISTRIBUTION_ID,',
'       JE_HEADER_ID,',
'       INVENTORY_TRX_ID,',
'       INV_ACTUAL_COST,',
'       INV_QUANTITY,',
'       INV_TRX_NUMBER,',
'       INV_DESC,',
'       INV_TRX_TYPE,',
'       INV_SOURCE_NAME,',
'       AR_TRX_NUMBER,',
'       AR_UNIT_PRICE,',
'       AR_UNIT_QUANTITY,',
'       AR_TOTAL_AMOUNT,',
'       AR_MISC_TRX_ID,',
'       AR_MISC_STATUS,',
'       AR_MISC_COMMENT,',
'       FA_DEPRN_AMOUNT,',
'       FA_ASSET_ID,',
'       FA_DISTRIBUTION_ID,',
'       FA_INVOICE_ID,',
'       FA_ITEM_DESC,',
'       OPM_ADJ_ID,',
'       OPM_ADJUST_QTY,',
'       OPM_ADJUST_COST,',
'       OPM_COST_TYPE_ID,',
'       OPM_DESCRIPTION,',
'       OPM_ITEM,',
'       OPM_PERIOD,',
'       LAST_SYNCHRONIZED,',
'       DEPT_NAME_SYNC,',
'       STAGE_ID_SYNC,',
'       SYNC_STATUS',
'   )',
'   SELECT ',
'       base.company,',
'       base.source,',
'       base.source_status,',
'       base.activity,',
'       base.commitment,',
'       base.actual_amount,',
'       base.period,',
'       base.pr_quantity,',
'       base.po_quantity,',
'       base.receipt_quantity,',
'       base.invoiced_quantity,',
'       base.pr_commitment,',
'       base.po_commitment,',
'       base.rcv_actual,',
'       base.invoice_actual,',
'       base.gl_manual_actual,',
'       base.ar_invoice_actual,',
'       base.ar_misc_actual,',
'       base.inventory_actual,',
'       base.pr_number,',
'       base.po_number,',
'       base.rcv_number,',
'       base.invoice_number,',
'       base.inventory_number,',
'       base.journal_name,',
'       base.journal_batch,',
'       base.journal_line_desc,',
'       base.ar_invoice_num,',
'       base.ar_misc_receipt,',
'       base.req_header_id,',
'       base.req_line_id,',
'       base.req_distribution_id,',
'       base.po_header_id,',
'       base.po_line_id,',
'       base.po_distribution_id,',
'       base.po_status,',
'       base.rcv_id,',
'       base.transaction_id,',
'       base.invoice_id,',
'       base.invoice_line_num,',
'       base.invoice_distribution_id,',
'       base.je_header_id,',
'       base.inventory_trx_id,',
'       base.inv_actual_cost,',
'       base.inv_quantity,',
'       base.inv_trx_number,',
'       base.inv_desc,',
'       base.inv_trx_type,',
'       base.inv_source_name,',
'       base.ar_trx_number,',
'       base.ar_unit_price,',
'       base.ar_unit_quantity,',
'       base.ar_total_amount,',
'       base.ar_misc_trx_id,',
'       base.ar_misc_status,',
'       base.ar_misc_comment,',
'       base.fa_deprn_amount,',
'       base.fa_asset_id,',
'       base.fa_distribution_id,',
'       base.fa_invoice_id,',
'       base.fa_item_desc,',
'       base.opm_adj_id,',
'       base.opm_adjust_qty,',
'       base.opm_adjust_cost,',
'       base.opm_cost_type_id,',
'       base.opm_description,',
'       base.opm_item,',
'       base.opm_period,',
'       SYSTIMESTAMP AS last_synchronized,',
'       TRIM(REGEXP_SUBSTR(base.ACTIVITY, ''[^|]+'', 1, 2)) AS dept_name_sync,',
'       NULL AS stage_id_sync,',
'       ''Done'' AS sync_status',
'   FROM apps.xtd_bf_comm_act_amt_v base;',
'',
'   COMMIT;',
'',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      ROLLBACK;',
'      RAISE_APPLICATION_ERROR(-20001, ''Error inserting into APX_BF_COMM_ACT_AMT: '' || SQLERRM);',
'END;',
''))
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_error_message=>'Terjadi kesalahan ketika refreshing data table APX_BF_COMM_ACT_AMT'
,p_stop_execution_on_error=>true
);
wwv_flow_imp.component_end;
end;
/
