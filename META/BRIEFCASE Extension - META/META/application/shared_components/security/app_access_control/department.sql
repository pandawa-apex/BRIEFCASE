prompt --application/shared_components/security/app_access_control/department
begin
--   Manifest
--     ACL ROLE: Department
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.5'
,p_default_workspace_id=>1389747021320061
,p_default_application_id=>107
,p_default_id_offset=>776066518237927778
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(1378678710903507786)
,p_static_id=>'DEPARTMENT'
,p_name=>'Department'
,p_description=>'This is role for Manager in each Department.'
,p_version_scn=>39509518114415
);
wwv_flow_imp.component_end;
end;
/
