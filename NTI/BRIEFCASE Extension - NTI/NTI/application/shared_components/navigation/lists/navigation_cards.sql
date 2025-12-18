prompt --application/shared_components/navigation/lists/navigation_cards
begin
--   Manifest
--     LIST: Navigation Cards
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1466964046809863
,p_default_application_id=>101
,p_default_id_offset=>18923207992089920
,p_default_owner=>'XTD'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(28105322670104825)
,p_name=>'Navigation Cards'
,p_list_status=>'PUBLIC'
,p_version_scn=>39510215250918
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(28105906017104813)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Budget Activity'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-workflow'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(28106384308104812)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Budget Monitoring'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-laptop'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(28106730694104812)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Master Hak Akses'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-users'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_imp.component_end;
end;
/
