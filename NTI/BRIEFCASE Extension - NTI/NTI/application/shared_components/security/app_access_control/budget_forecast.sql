prompt --application/shared_components/security/app_access_control/budget_forecast
begin
--   Manifest
--     ACL ROLE: BUDGET FORECAST
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
 p_id=>wwv_flow_imp.id(22371284955063141)
,p_static_id=>'BUDGET_FORECAST'
,p_name=>'BUDGET FORECAST'
,p_description=>'This is role for Budget and Forecast department.'
,p_version_scn=>39509122264288
);
wwv_flow_imp.component_end;
end;
/
