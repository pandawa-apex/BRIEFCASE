prompt --application/shared_components/security/app_access_control/budget_forecast
begin
--   Manifest
--     ACL ROLE: BUDGET FORECAST
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1475951226492231
,p_default_application_id=>102
,p_default_id_offset=>28679468460710035
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(31488236943816093)
,p_static_id=>'BUDGET_FORECAST'
,p_name=>'BUDGET FORECAST'
,p_description=>'This is role for Budget and Forecast department.'
,p_version_scn=>39509505762392
);
wwv_flow_imp.component_end;
end;
/
