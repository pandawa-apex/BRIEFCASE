prompt --application/shared_components/security/authorizations/budget_forecast_rights
begin
--   Manifest
--     SECURITY SCHEME: Budget Forecast Rights
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1468196320002782
,p_default_application_id=>101
,p_default_id_offset=>11904843373585791
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(14405829692721685)
,p_name=>'Budget Forecast Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'BUDGET FORECAST'
,p_attribute_02=>'A'
,p_version_scn=>39509120903706
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_imp.component_end;
end;
/
