prompt --application/shared_components/navigation/lists/navigation_bar
begin
--   Manifest
--     LIST: Navigation Bar
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1468196320002782
,p_default_application_id=>101
,p_default_id_offset=>11904843373585791
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(765646510466405749)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>39512832576066
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19063948465417978)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'User Guide'
,p_list_item_link_target=>'https://drive.google.com/file/d/1z5kRnqUQh2SOtg7EXVqHYCJ4tdAULLWs/view'
,p_list_item_icon=>'fa-address-book-o'
,p_list_text_06=>'https://drive.google.com/file/d/1z5kRnqUQh2SOtg7EXVqHYCJ4tdAULLWs/view'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(765658236684406099)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(765658731712406099)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(765658236684406099)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(765659179250406100)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(765658236684406099)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
