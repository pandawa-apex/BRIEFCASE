prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1468196320002782
,p_default_application_id=>101
,p_default_id_offset=>11904843373585791
,p_default_owner=>'EXT'
);
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Hak Akses Form'
,p_alias=>'HAK-AKSES-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Hak Akses Form'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(765854151658570175)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(765876939391404286)
,p_plug_name=>'Hak Akses Form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APX_BF_ACCESS_RIGHTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(765878620067404330)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(765854151658570175)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(765880049262404334)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(765854151658570175)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_confirm_message=>'Apakah anda yakin untuk membuat Title Akses ini?'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(765879251514404334)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(765854151658570175)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'Apakah anda yakin untuk menghapus title ini dan seluruh aksesnya?'
,p_confirm_style=>'danger'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(765879658405404334)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(765854151658570175)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_confirm_message=>'Apakah anda yakin untuk memperbarui Title ini?'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765853505564570168)
,p_name=>'P10_USERNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(765876939391404286)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LISTAGG(username, '':'') WITHIN GROUP (ORDER BY username)',
'FROM apx_bf_user_access',
'WHERE apx_access_rights_id = :P10_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Username'
,p_display_as=>'NATIVE_COMBOBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT USER_NAME ',
'FROM APPS.FND_USER',
'WHERE 1=1',
'AND USER_ID > 1090'))
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'Y',
  'match_type', 'CONTAINS',
  'max_values_in_list', '99',
  'min_chars', '0',
  'multi_selection', 'Y',
  'use_cache', 'Y')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765877293895404286)
,p_name=>'P10_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(765876939391404286)
,p_item_source_plug_id=>wwv_flow_imp.id(765876939391404286)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765877618594404322)
,p_name=>'P10_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(765876939391404286)
,p_item_source_plug_id=>wwv_flow_imp.id(765876939391404286)
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(765853530956570169)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(765878620067404330)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(765853650075570170)
,p_event_id=>wwv_flow_imp.id(765853530956570169)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(765881225649404345)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(765876939391404286)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Hak Akses Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(765356663646404556)
,p_internal_uid=>143224208305959897
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(765853720191570171)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_new_access_rights_id apx_bf_access_rights.id%TYPE;',
'    v_usernames apex_t_varchar2;',
'BEGIN',
'    -- 1. Insert ke access_rights dan ambil ID-nya',
'    INSERT INTO apx_bf_access_rights (title)',
'    VALUES (:P10_TITLE)',
'    RETURNING id INTO v_new_access_rights_id;',
'',
'    -- 2. Split username berdasarkan delimiter `:`',
'    v_usernames := apex_string.split(:P10_USERNAME, '':'');',
'',
'    -- 3. Loop dan insert user_access',
'    FOR i IN 1 .. v_usernames.COUNT LOOP',
'        INSERT INTO apx_bf_user_access (username, apx_access_rights_id)',
'        VALUES (v_usernames(i), v_new_access_rights_id);',
'    END LOOP;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(765880049262404334)
,p_process_success_message=>'Hak Akses sudah dibuat'
,p_internal_uid=>143196702848125723
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(765853942290570173)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_usernames apex_t_varchar2;',
'BEGIN',
'    -- 1. Update judul hak akses',
'    UPDATE apx_bf_access_rights',
'    SET title = :P10_TITLE',
'    WHERE id = :P10_ID;',
'',
'    -- 2. Split username multi-select berdasarkan delimiter `:`',
'    v_usernames := apex_string.split(:P10_USERNAME, '':'');',
'',
'    -- 3. Insert yang belum ada (upsert)',
'    FOR i IN 1 .. v_usernames.COUNT LOOP',
'        MERGE INTO apx_bf_user_access t',
'        USING (SELECT v_usernames(i) AS username, :P10_ID AS rights_id FROM dual) s',
'        ON (t.username = s.username AND t.apx_access_rights_id = s.rights_id)',
'        WHEN NOT MATCHED THEN',
'            INSERT (username, apx_access_rights_id)',
'            VALUES (s.username, s.rights_id);',
'    END LOOP;',
'',
'    -- 4. Hapus user yang tidak ada lagi di list',
'    DELETE FROM apx_bf_user_access',
'     WHERE apx_access_rights_id = :P10_ID',
'       AND username NOT IN (SELECT column_value FROM TABLE(v_usernames));',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(765879658405404334)
,p_process_success_message=>'Hak akses sudah diperbarui'
,p_required_patch=>wwv_flow_imp.id(765356663646404556)
,p_internal_uid=>143196924947125725
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12582527496665403)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update (edited)'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_usernames apex_t_varchar2;',
'BEGIN',
'    -- 1. Update judul hak akses',
'    UPDATE apx_bf_access_rights',
'    SET title = :P10_TITLE',
'    WHERE id = :P10_ID;',
'',
'    -- 2. Split username multi-select berdasarkan delimiter `:`',
'    v_usernames := apex_string.split(:P10_USERNAME, '':'');',
'',
'    -- 3. Insert yang belum ada (upsert)',
'    FOR i IN 1 .. v_usernames.COUNT LOOP',
'        MERGE INTO apx_bf_user_access t',
'        USING (SELECT v_usernames(i) AS username, :P10_ID AS rights_id FROM dual) s',
'        ON (t.username = s.username AND t.apx_access_rights_id = s.rights_id)',
'        WHEN NOT MATCHED THEN',
'            INSERT (username, apx_access_rights_id)',
'            VALUES (s.username, s.rights_id);',
'    END LOOP;',
'',
'    -- 4. Hapus user yang tidak ada lagi di list',
'    DELETE FROM apx_bf_user_access',
'     WHERE apx_access_rights_id = :P10_ID',
'       AND username NOT IN (SELECT column_value FROM TABLE(v_usernames));',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(765879658405404334)
,p_process_success_message=>'Hak akses sudah diperbarui'
,p_internal_uid=>12582527496665403
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(765854094732570174)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- 1. Hapus semua user yang terkait dengan hak akses ini',
'    DELETE FROM apx_bf_user_access',
'    WHERE apx_access_rights_id = :P10_ID;',
'',
'    -- 2. Hapus hak akses-nya sendiri',
'    DELETE FROM apx_bf_access_rights',
'    WHERE id = :P10_ID;',
'',
'    -- 3. Hapus relation dengan department',
'    DELETE FROM APX_bf_ACCESS_RIGHTS_LISTS',
'    WHERE apx_access_rights_id = :P10_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(765879251514404334)
,p_process_success_message=>'Hak Akses sudah dihapus'
,p_internal_uid=>143197077389125726
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(765853884968570172)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>143196867625125724
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(765880857404404344)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(765876939391404286)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Hak Akses Form'
,p_internal_uid=>143223840060959896
);
wwv_flow_imp.component_end;
end;
/
