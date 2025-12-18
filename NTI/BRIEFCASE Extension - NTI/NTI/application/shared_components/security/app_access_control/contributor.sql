prompt --application/shared_components/security/app_access_control/contributor
begin
--   Manifest
--     ACL ROLE: Contributor
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1466964046809863
,p_default_application_id=>101
,p_default_id_offset=>18923207992089920
,p_default_owner=>'XTD'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(22371351226061849)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>39509122264368
);
wwv_flow_imp.component_end;
end;
/
