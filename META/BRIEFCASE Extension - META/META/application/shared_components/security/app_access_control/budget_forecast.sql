prompt --application/shared_components/security/app_access_control/budget_forecast
begin
--   Manifest
--     ACL ROLE: BUDGET FORECAST
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
 p_id=>wwv_flow_imp.id(1379277913581435219)
,p_static_id=>'BUDGET_FORECAST'
,p_name=>'BUDGET FORECAST'
,p_description=>'This is role for Budget and Forecast department.'
,p_version_scn=>39509518114180
);
wwv_flow_imp.component_end;
end;
/
