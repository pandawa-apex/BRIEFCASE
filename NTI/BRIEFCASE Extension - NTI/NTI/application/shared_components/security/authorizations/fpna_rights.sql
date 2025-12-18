prompt --application/shared_components/security/authorizations/fpna_rights
begin
--   Manifest
--     SECURITY SCHEME: FPNA Rights
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1466964046809863
,p_default_application_id=>101
,p_default_id_offset=>18923207992089920
,p_default_owner=>'XTD'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(22373235797037126)
,p_name=>'FPNA Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'FPNA'
,p_attribute_02=>'A'
,p_version_scn=>39509122274457
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_imp.component_end;
end;
/
