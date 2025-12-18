prompt --application/shared_components/user_interface/templates/page/login_copy
begin
--   Manifest
--     TEMPLATE: LOGIN_COPY
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1466964046809863
,p_default_application_id=>101
,p_default_id_offset=>18923207992089920
,p_default_owner=>'XTD'
);
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(19729600927629106)
,p_theme_id=>42
,p_name=>'Login - Copy'
,p_internal_name=>'LOGIN_COPY'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Login-bg {',
'    background: linear-gradient(135deg, #7ffff8 2%, #4fd3c4 100%);',
'}',
'',
'@keyframes cloudFloat {',
'    0% { ',
'        transform: translateX(-150px) translateY(0px) scale(1); ',
'        opacity: 0.8;',
'    }',
'    25% { ',
'        transform: translateX(-50px) translateY(-5px) scale(1.02); ',
'        opacity: 0.9;',
'    }',
'    50% { ',
'        transform: translateX(50px) translateY(2px) scale(1); ',
'        opacity: 0.85;',
'    }',
'    75% { ',
'        transform: translateX(100px) translateY(-3px) scale(0.98); ',
'        opacity: 0.9;',
'    }',
'    100% { ',
'        transform: translateX(150px) translateY(0px) scale(1); ',
'        opacity: 0.8;',
'    }',
'}',
'',
'@keyframes cloudMove {',
'    0% { ',
'        transform: translateX(-300px) translateY(0px);',
'        opacity: 0.7;',
'    }',
'    50% { ',
'        transform: translateX(calc(50vw - 150px)) translateY(-8px);',
'        opacity: 0.9;',
'    }',
'    100% { ',
'        transform: translateX(calc(100vw + 300px)) translateY(0px);',
'        opacity: 0.7;',
'    }',
'}',
'',
'@keyframes gentleSway {',
'    0%, 100% { transform: translateY(0px) rotate(0.5deg); }',
'    50% { transform: translateY(-5px) rotate(-0.5deg); }',
'}',
'',
'.cloud {',
'    position: absolute;',
'    background: rgba(255, 255, 255, 0.95);',
'    border-radius: 100px;',
'    filter: blur(1px);',
'    animation-timing-function: ease-in-out;',
'    animation-iteration-count: infinite;',
'    box-shadow: ',
'        0 8px 32px rgba(255, 255, 255, 0.3),',
'        inset 0 -2px 4px rgba(0, 0, 0, 0.1),',
'        inset 0 2px 4px rgba(255, 255, 255, 0.8);',
'}',
'',
'.cloud::before, .cloud::after {',
'    content: '''';',
'    position: absolute;',
'    background: rgba(255, 255, 255, 0.95);',
'    border-radius: 50%;',
'    box-shadow: ',
'        inset 0 -2px 4px rgba(0, 0, 0, 0.1),',
'        inset 0 2px 4px rgba(255, 255, 255, 0.8);',
'}',
'',
'.cloud-large {',
'    width: 350px;',
'    height: 140px;',
'    top: 12%;',
'    animation: cloudMove 80s linear infinite;',
'    filter: blur(1.5px) brightness(1.1);',
'}',
'',
'.cloud-large::before {',
'    width: 140px;',
'    height: 140px;',
'    top: -70px;',
'    left: 40px;',
'    box-shadow: ',
'        inset 0 -3px 6px rgba(0, 0, 0, 0.15),',
'        inset 0 3px 6px rgba(255, 255, 255, 0.9);',
'}',
'',
'.cloud-large::after {',
'    width: 200px;',
'    height: 200px;',
'    top: -100px;',
'    right: 50px;',
'    box-shadow: ',
'        inset 0 -3px 6px rgba(0, 0, 0, 0.15),',
'        inset 0 3px 6px rgba(255, 255, 255, 0.9);',
'}',
'',
'.cloud-medium {',
'    width: 250px;',
'    height: 100px;',
'    top: 28%;',
'    animation: cloudMove 60s linear infinite;',
'    animation-delay: -15s;',
'    filter: blur(1px) brightness(1.05);',
'}',
'',
'.cloud-medium::before {',
'    width: 100px;',
'    height: 100px;',
'    top: -50px;',
'    left: 30px;',
'}',
'',
'.cloud-medium::after {',
'    width: 140px;',
'    height: 140px;',
'    top: -70px;',
'    right: 35px;',
'}',
'',
'.cloud-small {',
'    width: 180px;',
'    height: 70px;',
'    top: 45%;',
'    animation: cloudMove 45s linear infinite;',
'    animation-delay: -8s;',
'    filter: blur(0.8px);',
'}',
'',
'.cloud-small::before {',
'    width: 70px;',
'    height: 70px;',
'    top: -35px;',
'    left: 25px;',
'}',
'',
'.cloud-small::after {',
'    width: 100px;',
'    height: 100px;',
'    top: -50px;',
'    right: 25px;',
'}',
'',
'.cloud-tiny {',
'    width: 120px;',
'    height: 50px;',
'    top: 62%;',
'    animation: cloudMove 35s linear infinite;',
'    animation-delay: -25s;',
'    opacity: 0.8;',
'    filter: blur(1.2px) brightness(0.9);',
'}',
'',
'.cloud-tiny::before {',
'    width: 50px;',
'    height: 50px;',
'    top: -25px;',
'    left: 15px;',
'}',
'',
'.cloud-tiny::after {',
'    width: 70px;',
'    height: 70px;',
'    top: -35px;',
'    right: 20px;',
'}',
'',
'.cloud-cirrus {',
'    width: 400px;',
'    height: 30px;',
'    top: 8%;',
'    animation: cloudMove 120s linear infinite;',
'    animation-delay: -40s;',
'    opacity: 0.6;',
'    filter: blur(3px) brightness(1.2);',
'    background: rgba(255, 255, 255, 0.7);',
'}',
'',
'.cloud-cirrus::before {',
'    width: 200px;',
'    height: 30px;',
'    top: -15px;',
'    left: 50px;',
'    border-radius: 100px;',
'}',
'',
'.cloud-cirrus::after {',
'    width: 150px;',
'    height: 25px;',
'    top: -12px;',
'    right: 80px;',
'    border-radius: 100px;',
'}',
'',
'@keyframes sunPulse {',
'    0%, 100% { ',
'        transform: scale(1) rotate(0deg); ',
'        opacity: 0.7; ',
'    }',
'    25% { ',
'        transform: scale(1.05) rotate(1deg); ',
'        opacity: 0.8; ',
'    }',
'    50% { ',
'        transform: scale(1.1) rotate(0deg); ',
'        opacity: 0.9; ',
'    }',
'    75% { ',
'        transform: scale(1.05) rotate(-1deg); ',
'        opacity: 0.8; ',
'    }',
'}',
'',
'.cloud-shadow {',
'    position: absolute;',
'    background: rgba(0, 0, 0, 0.1);',
'    border-radius: 100px;',
'    filter: blur(8px);',
'    z-index: -1;',
'}',
'',
'.cloud-large {',
'    animation-duration: 90s;',
'    z-index: 1;',
'}',
'',
'.cloud-medium {',
'    animation-duration: 70s;',
'    z-index: 2;',
'}',
'',
'.cloud-small {',
'    animation-duration: 50s;',
'    z-index: 3;',
'}',
'',
'.cloud-tiny {',
'    animation-duration: 40s;',
'    z-index: 4;',
'}',
'',
'.cloud-cirrus {',
'    animation-duration: 150s;',
'    z-index: 0;',
'}',
'',
'@media (hover: hover) {',
'    .cloud:hover {',
'        filter: brightness(1.1) blur(0.5px);',
'        transition: filter 0.3s ease;',
'    }',
'}',
'',
'@media (max-width: 768px) {',
'    .cloud-large { width: 250px; height: 100px; }',
'    .cloud-medium { width: 180px; height: 70px; }',
'    .cloud-small { width: 120px; height: 50px; }',
'    .cloud-tiny { width: 80px; height: 35px; }',
'    .cloud-cirrus { width: 300px; height: 25px; }',
'}'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login t-PageTemplate--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#',
'<div class="t-Login-bg">',
'  #BACKGROUND_IMAGE#',
'  <div class="t-Login-bgImg"></div>',
'</div>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(19730091552629106)
,p_page_template_id=>wwv_flow_imp.id(19729600927629106)
,p_name=>'Background Image'
,p_placeholder=>'BACKGROUND_IMAGE'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(19730548341629107)
,p_page_template_id=>wwv_flow_imp.id(19729600927629106)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(19731097075629107)
,p_page_template_id=>wwv_flow_imp.id(19729600927629106)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(19731552676629108)
,p_page_template_id=>wwv_flow_imp.id(19729600927629106)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp.component_end;
end;
/
