prompt --application/shared_components/security/app_access_control/fpna
begin
--   Manifest
--     ACL ROLE: FPNA
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
 p_id=>wwv_flow_imp.id(14405263278732594)
,p_static_id=>'FPNA'
,p_name=>'FPNA'
,p_description=>'This is role for Finance Planning and Analysis.'
,p_version_scn=>39509121991811
);
wwv_flow_imp.component_end;
end;
/
