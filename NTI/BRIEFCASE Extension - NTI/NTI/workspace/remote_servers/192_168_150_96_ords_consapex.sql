prompt --workspace/remote_servers/192_168_150_96_ords_consapex
begin
--   Manifest
--     REMOTE SERVER: 192-168-150-96-ords-consapex
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1466964046809863
,p_default_application_id=>101
,p_default_id_offset=>18923207992089920
,p_default_owner=>'XTD'
);
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(18290385261748631)
,p_name=>'192-168-150-96-ords-consapex'
,p_static_id=>'192_168_150_96_ords_consapex'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('192_168_150_96_ords_consapex'),'http://192.168.150.96:8080/ords/consapex/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('192_168_150_96_ords_consapex'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('192_168_150_96_ords_consapex'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('192_168_150_96_ords_consapex'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('192_168_150_96_ords_consapex'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('192_168_150_96_ords_consapex'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('192_168_150_96_ords_consapex'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('192_168_150_96_ords_consapex'),'')
);
wwv_flow_imp.component_end;
end;
/
