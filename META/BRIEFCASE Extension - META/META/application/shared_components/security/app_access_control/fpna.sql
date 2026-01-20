prompt --application/shared_components/security/app_access_control/fpna
begin
--   Manifest
--     ACL ROLE: FPNA
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
 p_id=>wwv_flow_imp.id(1379278079723438442)
,p_static_id=>'FPNA'
,p_name=>'FPNA'
,p_description=>'This is role for Finance Planning and Analysis.'
,p_version_scn=>39509518114445
);
wwv_flow_imp.component_end;
end;
/
