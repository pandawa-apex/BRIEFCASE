prompt --application/shared_components/security/app_access_control/bod
begin
--   Manifest
--     ACL ROLE: BOD
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1468196320002782
,p_default_application_id=>101
,p_default_id_offset=>11904843373585791
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(14404864090741171)
,p_static_id=>'BOD'
,p_name=>'BOD'
,p_description=>'This is role for Board of Director from the Department.'
,p_version_scn=>39509120900400
);
wwv_flow_imp.component_end;
end;
/
